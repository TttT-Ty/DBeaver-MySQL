Q1:如何上传Scripts到GitHub?（DBeaver ultimate 25.1版）

参考：https://betterwithdata.substack.com/p/how-to-version-control-your-sql?s=r

1、DBeaver自定义保存路径为：选中的目录\GENERAL\Scripts
比如：D:\DBeaver workspace\General\Scripts\s1.SQL
因此不需要用此本地路径，只需要克隆GitHub上路径到本地

2、克隆GitHub上的仓库到本地
	(1) 文件 --> git --> 从git创建项目 --> Clone URl
	(2) 可用HTTP/SSH模式，以下使用HTTP模式，使用SSH模式一直显示未连接
		a.复制HTTP路径到URl,自动填写Host,Repository PATH,Protocol
		b.User填写GitHub账户名称
		c.Password选择GitHub上的Personal access tokens:
			头像 --> settings --> developer settings --> Personal access tokens
				Fine-grained tokens: 不知道如何设置访问权限，之后连接会导致无法read/write
				Tokens(classic): 选择这个可设置访问权限 --> repo访问权限
		d.记录下token,只会显示一次，填入Password
	(3) 选择要克隆的分支，没有则为空
	(4) 为克隆的项目选择本地路径，如果克隆仓库没有文件，initial branch要选择main,不然之后commit会再重新创建新的分支
	(5) 选择wizard,保持默认选项
	(6) 为克隆的项目填入项目名称
	(7) 完成
	
3、在新克隆的项目的Scripts里写sql文件

4、如何commit
	(1) 窗口 --> 显示视图 --> 其他
	(2) Git --> 打开Git Staging 暂存区
	(3) 在unstaged changes 里显示做的所有变动，选中变动的sql文件，以及.gitignore - .dbeaver
	(4) 拖动文件至 staged changes,在commit区域填写相关解释文字
	(5) 选择Commit AND push/COMMIT
	
	如果有多个Git Repositories，可以右击选中想要的仓库，选择Commit,打开Git Staging 暂存区

Q2:如何设置DBeaver的字体大小以及导航窗口/SQL编辑器的图标大小？

	(1) 字体大小
		窗口 --> 首选项 -->  用户界面 -->  外观 -->  颜色和字体 -->  DBeaver字体
		修改等宽字体/主字体
	(2) 图标大小
		修改DBeaver安装目录下的dbeaver.ini文件，在最后加入 -Dswt.autoScale=250 数字表示百分比
	