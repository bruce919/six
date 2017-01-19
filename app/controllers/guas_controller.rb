class GuasController < ApplicationController
  before_action :set_gua, only: [:show, :edit, :update, :destroy]

  # GET /guas
  # GET /guas.json
  def index
    @guas = Gua.all

  end

  # GET /guas/1
  # GET /guas/1.json
  def show

      # gua_result = Gua.find_by(id: params[:id])

      @result = @gua.number % 6
      @text = ""

      case @result
        when @result = 1
           @text = "大安 大安事事昌，求財在坤方，失物去不遠，宅舍保安康

行人身未動，病者主無妨，將軍回田野，仔細更推詳"
        when @result = 2
           @text = "留連 留連事難成，求謀日未明，官事凡宜緩，去者未回程

失物南方見，急討方心稱，更須防口舌，人口且平平"
        when @result = 3
           @text = "速喜 速喜喜來臨，求財向南行，失物申未午，逢人路上尋

官事有福德，病者無禍侵，田宅六畜吉，行人有信音"
        when @result = 4
           @text = "赤口 赤口主口舌，官非切宜防，失物速速討，行人有驚慌

六畜多作怪，病者出西方，更須防咀咒，誠恐染瘟皇"
        when @result = 5
           @text = "小吉 小吉最吉昌，路上好商量，陰人來報喜，失物在坤方

行人即便至，交關甚是強，凡事皆和合，病者叩窮蒼"
        when @result = 0
          @text = "空亡 空亡事不祥，陰人多乖張，求財無利益，行人有災殃

失物尋一見，官事有刑傷，病人逢暗鬼，解禳保安康"
        # when @result = 7
        #   @text = "您選的是天秤座"
        # when @result = 8
        #   @text = "您選的是天蠍座"
        # when @result = 9
        #   @text = "您選的是射手座"
        # when @result = 10
        #   @text = "您選的是摩羯座"
        # when @result = 11
        #   @text = "您選的是水瓶座"
        # when @result = 0
        #   @text = "您選的是雙魚座"
      end

  end



  # GET /guas/new
  def new
    @gua = Gua.new
  end

  # GET /guas/1/edit
  def edit
  end

  # POST /guas
  # POST /guas.json
  def create
    @gua = Gua.new(gua_params)

    respond_to do |format|
      if @gua.save
        format.html { redirect_to @gua, notice: 'Gua was successfully created.' }
        format.json { render :show, status: :created, location: @gua }
      else
        format.html { render :new }
        format.json { render json: @gua.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guas/1
  # PATCH/PUT /guas/1.json
  def update
    respond_to do |format|
      if @gua.update(gua_params)
        format.html { redirect_to @gua, notice: 'Gua was successfully updated.' }
        format.json { render :show, status: :ok, location: @gua }
      else
        format.html { render :edit }
        format.json { render json: @gua.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guas/1
  # DELETE /guas/1.json
  def destroy
    @gua.destroy
    respond_to do |format|
      format.html { redirect_to guas_url, notice: 'Gua was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gua
      @gua = Gua.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gua_params
      params.require(:gua).permit(:name, :email, :number)
    end
end
