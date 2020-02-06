#  abaqus python二次开发
##  运行and开发环境
###  abaqus中
####  KCLI
#####  主界面左下角
######  逐行运行
######  execfile('file position')
####  CAE-Run script
#####  file-run script 选择文件
####  abaqus command
#####  abaqus cae noGUI=script.py（要求文件在当前工作目录下，否则用cd切换）
####  abaqus PDE（调试）
#####  输入 abaqus pde
###  python开发环境
####  abaqus PDE
####  IDLE
####  notepad++
####  editplus
##  python基础
###  数据类型、操作符
####  #：注释；
####  type（）
#####  int
#####  float
#####  bool
######  True Flase（大写）
#####  str
######  path=r"E:\Temp",防止转义字符生效
####  [ ] 、( )、' '
#####  list
######  如[3,'t','!',[2,'a']]
#######  对象不定
#######  下标从0开始，负数表示从尾部开始数
#######  嵌套从左到右看
#######  [1:3],冒号表示左开右闭
#######  常用功能
########  del a[0] ，删除
########  a.move(3)  不论位置删除
########  a.append(3)  尾部扩展
########  a.insert(1,3)    位置1前插入3
########  len(a)  列表长度
########  a.index(3) 某元素位置
########  3 in a   判断元素在不在a中
########  max min
#####  tuple(元组)
######  如 (1,2,3,'a')
#######  不可变类型
#####  str
######  不可变
#######  格式化输出 ljust rjust center
#######  name.split  拆分提取
#####  dict(字典）
######  映射 关联
#######  d={ key1:value1, key2:value2}
########  d[key3]=value3 插入
#####  集合
####  操作符
#####  / 除
#####  ** 乘方
#####  % 取余
###  表达式 流程控制
####  5.1
####  if elif else
####  while
####  for	
#####  for item in ab（ab=[1,2,3,]）
#####  c=[(i,j) for i in x for j in y if (i+j)>1]
####  break contiune pass
###  函数
####  6.1
####  参数传递、调用
#####  4种形式
####  特殊关键字
#####  lambda   匿名函数
#####  Map  批量化函数
#####  reduce  求和
#####  Filter(func,sequ)   过滤
###  类和对象
####  7.1
####  父类和子类
####  模块和包
#####  一般一个文件就是一个模块
######  如case1.py    调用为: import case1
#####  模块路径搜索
######  输出当前工作路径
######  模块路径添加至sys.path
#####  名称空间
######  先搜索局部名称空间，之后全局名称空间，最后内置
#######  局部会覆盖全局
#####  包
######  就是一个目录
###  文件 目录
####  8.1
####  目录操作
####  CAE文件清理
###  异常处理
###  常用扩展模块介绍
####  Numpy科学计算
####  SciPy数值计算
####  Matplotlib图表绘制
####  Xlrd/xlwt 读写excel
####  reportlab  PDF
###  效率问题
####  计时函数timeit
####  save time tips
#####  使用内建函数（built_in）
#####  避免循环内部创建
#####  避免循环内部不必要函数调用
#####  减少IO读写
#####  优秀的第三方库
####  save space tips
#####  xrange处理长序列
#####  注意数据类型使用
##  Abaqus/python基础
###  首次尝试
###  主要数据类型及对象
####  数据类型
#####  符号常值
#####  布尔值
#####  特有的模型对象
#####  序列sequences
######  table
######  geomsequence
######  meshsequence
######  surfacesequence
#####  仓库Repositories
####  对象
#####  访问形式
######  face0=mdb.models['Model-1'].parts['Part-1'].face[0]
#####  修改
######  必须用setValues(）修改
###  三个根对象
####  Session 会话
#####  可视化工作
######  Viewport相关对象
######  Path对象
######  XYData对象
######  XYCurve XYPlot
######  writeXYPlot  writeFieldReport
####  Mdb
#####  Model对象
#####  Job对象
####  Odb对象
