class ReadBookEventsController < ApplicationController
  before_action :set_read_book_event, only: [:show, :edit, :update, :destroy]
  before_action :set_stack_book_event

  # GET /read_book_events
  # GET /read_book_events.json
  def index
    @read_book_events = ReadBookEvent.all
  end

  # GET /read_book_events/1
  # GET /read_book_events/1.json
  def show
  end

  # GET /read_book_events/new
  def new
    @read_book_event = ReadBookEvent.new
    @read_book_event.finish_date = Time.zone.now
    @read_book_event.stack_book_event = @stack_book_event
    respond_to do |format|
      if @read_book_event.save
        format.html { redirect_to @stack_book_event, notice: 'Read book event was successfully created.' }
        format.json { render :show, status: :created, location: @read_book_event }
      else
        format.html { render :new }
        format.json { render json: @read_book_event.errors, status: :unprocessable_entity }
      end
    end

  end

  # GET /read_book_events/1/edit
  def edit
  end

  # POST /read_book_events
  # POST /read_book_events.json
  def create
    @read_book_event = ReadBookEvent.new(read_book_event_params)

    respond_to do |format|
      if @read_book_event.save
        format.html { redirect_to @read_book_event, notice: 'Read book event was successfully created.' }
        format.json { render :show, status: :created, location: @read_book_event }
      else
        format.html { render :new }
        format.json { render json: @read_book_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /read_book_events/1
  # PATCH/PUT /read_book_events/1.json
  def update
    respond_to do |format|
      if @read_book_event.update(read_book_event_params)
        format.html { redirect_to @read_book_event, notice: 'Read book event was successfully updated.' }
        format.json { render :show, status: :ok, location: @read_book_event }
      else
        format.html { render :edit }
        format.json { render json: @read_book_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /read_book_events/1
  # DELETE /read_book_events/1.json
  def destroy
    @read_book_event.destroy
    respond_to do |format|
      format.html { redirect_to read_book_events_url, notice: 'Read book event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_read_book_event
      @read_book_event = ReadBookEvent.find(params[:id])
    end

    def set_stack_book_event
      @stack_book_event = StackBookEvent.find_by(id: params[:stack_book_event_id])
      if @stack_book_event.nil?
        flash[:notice] = "StackBookEvent not found"
        redirect_to stack_book_events_path
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def read_book_event_params
      params.fetch(:read_book_event, {})
    end
end
