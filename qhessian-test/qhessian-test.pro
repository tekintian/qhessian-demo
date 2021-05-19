#资源目录定义
SOURCES_DIRS = \
../qhessian \ #相对路径,当前的上一级目录中的qhessian文件夹
source #当前的目录source

defineReplace(sources) {
	out = 

	for(file, SOURCES_DIRS) {
		entries = $$files($$file/$$ARGS)
		for(entry, entries) {
			out += $$entry 
		}
	}

	return($$out)
}

DESTDIR = bin

CONFIG += qt debug
QT -= gui
QT += network

SOURCES += $$sources(*.cpp)
HEADERS += $$sources(*.h) 
