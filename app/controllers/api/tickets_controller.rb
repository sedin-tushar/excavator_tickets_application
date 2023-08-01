class Api::TicketsController < ApplicationController
  def create
    data = JSON.parse(request.body.read)

    ticket_params = {
      request_number: data['RequestNumber'],
      sequence_number: data['SequenceNumber'],
      request_type: data['RequestType'],
      response_due_date_time: data.dig('DateTimes', 'ResponseDueDateTime'),
      sacode: data.dig('ServiceArea', 'PrimaryServiceAreaCode', 'SACode'),
      additional_sacodes: data.dig('ServiceArea', 'AdditionalServiceAreaCodes', 'SACode'),
      digsite_info: data.dig('ExcavationInfo', 'DigsiteInfo', 'WellKnownText')
    }

    ticket = Ticket.create(ticket_params)

    excavator_params = {
      company_name: data.dig('Excavator', 'CompanyName'),
      address: "#{data.dig('Excavator', 'Address')}, #{data.dig('Excavator', 'City')}, #{data.dig('Excavator', 'State')} #{data.dig('Excavator', 'Zip')}",
      crew_on_site: data.dig('Excavator', 'CrewOnsite') == 'true',
      ticket_id: ticket.id
    }

    Excavator.create(excavator_params)

    render json: { message: 'Ticket and Excavator data created successfully.' }, status: :created
  rescue JSON::ParserError => e
    render json: { error: 'Invalid JSON format in the request body.' }, status: :unprocessable_entity
  rescue StandardError => e
    render json: { error: 'Failed to create Ticket and Excavator data.', details: e.message }, status: :unprocessable_entity
  end
end
