# Controller：将每个http请求分发到对应的方法（增删改查操作）处理
# https://sg552.gitbooks.io/happy_book_rails/content/crud.html

class ApohealthsController < ApplicationController
  # 增
  # def new # GET /apohealths/new（展现创建项目的页面）
  #   @apohealth = Apohealth.new
  # end

  def create # POST /apohealths 加上各种参数
    @apohealth = Apohealth.new
  
    @apohealth.url = params[:url]
    @apohealth.product_id = params[:product_id]

    if params[:existence] == '是'
      @apohealth.existence = true
    else
      @apohealth.existence = false
    end

    # @apohealth

    @apohealth.title = params[:title]

    @apohealth.save
  end

  # 删


  # 改


  # 查
  def index # GET /apohealths（查询所有数据）
    # Apohealth：模型（Model），映射到apohealths表
    @apohealths = Apohealth.all # 调用数据持久层，转换为SQL以查询所有数据
  end

  def show # GET /apohealths/id（查询某个id的数据）
    @record = Apohealth.find(params[:id]) # 通过商品号查找商品
  end
end
