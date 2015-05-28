DEPENDPATH += $$PWD
INCLUDEPATH += $$PWD $$PWD/. $$PWD/..

TARGET = qompoter
TEMPLATE = app
QT += network widgets
CONFIG += c++11 solilog

include($$PWD/../common.pri)
include($$PWD/../vendor/vendor.pri)

SOURCES += \
    $$PWD/model/Config.cpp \
    $$PWD/model/AuthorInfo.cpp \
    $$PWD/model/RequireInfo.cpp \
    $$PWD/model/PackageInfo.cpp \
    $$PWD/model/RepositoryInfo.cpp \
    $$PWD/model/Query.cpp \
    $$PWD/model/QuerySettings.cpp \
    $$PWD/model/BuildMode.cpp \
    $$PWD/model/IncludeMode.cpp \
    $$PWD/loader/FsLoader.cpp \
    $$PWD/loader/GitLoader.cpp \
    $$PWD/loader/HttpLoader.cpp \

HEADERS += \
    $$PWD/model/Config.h \
    $$PWD/model/AuthorInfo.h \
    $$PWD/model/RequireInfo.h \
    $$PWD/model/PackageInfo.h \
    $$PWD/model/RepositoryInfo.h \
    $$PWD/model/Query.h \
    $$PWD/model/QuerySettings.h \
    $$PWD/model/BuildMode.h \
    $$PWD/model/IncludeMode.h \
    $$PWD/loader/ILoader.h \
    $$PWD/loader/FsLoader.h \
    $$PWD/loader/GitLoader.h \
    $$PWD/loader/HttpLoader.h \

INCLUDEPATH += \
    $$PWD/model \
    $$PWD/loader \

!autotester {
    SOURCES += $$PWD/main.cpp
}
