class TicketsController < BaseController
  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
    @excavator = @ticket.excavator
    @map_data = { "well_known_text": @ticket.digsite_info }
  end

  def destroy
    @ticket = Ticket.find(params[:id])
    if @ticket.destroy
      redirect_to tickets_path, notice: 'Ticket was successfully deleted.'
    else
      redirect_to tickets_path, notice: 'Ticket was not deleted.
    end
  end

end
