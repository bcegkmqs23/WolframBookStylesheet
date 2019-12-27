	The sample stylesheet and a notebook sample is in /Sample/.
	Directory "Quickstart" will include a stylesheet generator in the future.
	The following description is written in Chinese.

## 功能定位
* 单元样式
	* 缩进
	* 颜色
	* 字体
	* 字号
* 单元的快捷创建与转换：MenuCommandKey与StyleKeyMapping
	* Content
	* Figure
	* Table
	* Reference（含Hyperlink）
	* LaTeX Equation
	* 索引字典
* 单元标签的计数：CounterIncrement与CounterAssignment等
* 非单元名的自定义标签，如概念名、定理名等（这两个倒是可以就用Def,Theo单元代替）
	* CellLabel（这个好像在PublicationDefault里有实现）
	* CellRefer
* 单元的自动分组与隐藏（主要是隐藏一些控制结构用的辅助单元）
* 单元间的替代与依赖（应该需要作为一个外部程序包来起到格式化笔记本文件的作用，样式表支持的指令太少了）
	* CellWhich
	* CellDependence
	* 子上下文
* 进阶支持
	* Palette
	* ConversionRules
	* 提供一个quickstart来自动生成样式表，其中的一些规则由用户指定。

	各功能都可参考自带样式表（尤其是PublicationDefault）中的技术，并对标LaTeX等其他排版环境去展开实现。

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
	* 超链接
		* 用CellTags标记单元，用ButtonBox和NotebookLocate来索引。
	* 脚注
		* 自动生成超链接和FootnoteText单元。此外，可以通过TaggingRules来像全局变量那样储存单元间的对应信息，取用则用CurrentValue。
		* 是要求用户输入分割开了的单元，还是在文中由Esc快捷输入标记并对单元内容进行字符串匹配？有无两全之法？
		* CounterBox仅仅是一个Box而不能被$BoxForms之一解释为表达式，MMASE讨论指出：CurrentValue[{"CounterValue", "Section"}]
	* 格式化标签（用于被格式化器处理）
		* 格式化器通过匹配标签单元及其前面的一个单元，自动按照标签为前面的那个单元添加CellTags