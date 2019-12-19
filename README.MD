	The stylesheet file is /Implement/MyStylesheet.nb, you can ignore any other file.
	The following description is written in Chinese.

## 功能定位
* 单元样式
	* 缩进
	* 颜色
	* 字体
	* 字号
* 单元的快捷创建与转换：MenuCommandKey与StyleKeyMapping
	* Figure
	* Table
	* Reference（含Hyperlink）
	* LaTeX Equation
* 单元标签的计数：CounterIncrement与CounterAssignment等
* 单元的自动分组与隐藏（主要是隐藏一些控制结构用的辅助单元）
* 单元间的替代与依赖（应该需要作为一个外部程序包来起到格式化笔记本文件的作用，样式表支持的指令太少了）
	* CellWhich
	* CellDependence
* Palette

## 单元设计
* 层级单元
  * 标题
  * 章
  * 节
    * MenuCommandKey:1
  * 小节
* 逻辑单元
	* Plain
    	* MenuCommandKey:2
	* Box 
    	* MenuCommandKey:3
    	* 说明
        	* 定义
          	* 例子
        	* 评论
    	* 命题
        	* 命题
        	* 定理
        	* 证明
      	* 练习
        	* 解
* 结构单元
	* 有序列表（三层）
	* 无序列表（三层）
* 内容单元
	* 文本
    	* MenuCommandKey:4
	* 公式/代码
	* 演示（图/表/多媒体）
* 辅助单元（最低分组优先级--可以是任何单元的子单元）：
	* 脚注
	* 超链接
	* 格式化标签（用于被格式化器处理）