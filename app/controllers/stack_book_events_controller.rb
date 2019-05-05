class StackBookEventsController < ApplicationController
  before_action :set_stack_book_event, only: [:show, :edit, :update, :destroy]

  # GET /stack_book_events
  # GET /stack_book_events.json
  def index
    @stack_book_events = StackBookEvent.all
  end

  # GET /stack_book_events/1
  # GET /stack_book_events/1.json
  def show
  end

  # GET /stack_book_events/new
  def new
    @stack_book_event = StackBookEvent.new
  end

  # GET /stack_book_events/1/edit
  def edit
  end

  # POST /stack_book_events
  # POST /stack_book_events.json
  def create
    @stack_book_event = StackBookEvent.new(stack_book_event_params)

    respond_to do |format|
      if @stack_book_event.save
        format.html { redirect_to @stack_book_event, notice: 'Stack book event was successfully created.' }
        format.json { render :show, status: :created, location: @stack_book_event }
      else
        format.html { render :new }
        format.json { render json: @stack_book_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stack_book_events/1
  # PATCH/PUT /stack_book_events/1.json
  def update
    respond_to do |format|
      if @stack_book_event.update(stack_book_event_params)
        format.html { redirect_to @stack_book_event, notice: 'Stack book event was successfully updated.' }
        format.json { render :show, status: :ok, location: @stack_book_event }
      else
        format.html { render :edit }
        format.json { render json: @stack_book_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stack_book_events/1
  # DELETE /stack_book_events/1.json
  def destroy
    @stack_book_event.destroy
    respond_to do |format|
      format.html { redirect_to stack_book_events_url, notice: 'Stack book event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stack_book_event
      @stack_book_event = StackBookEvent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stack_book_event_params
      params.require(:stack_book_event).permit(:title, :author, :isbn, :date)
    end
end
