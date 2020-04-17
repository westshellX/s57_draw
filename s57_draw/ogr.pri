#GDAL_PATH = ../gdal
GDAL_PATH = C:/Users/westshell_ASUS/Documents/vcpkg/installed/x86-windows

LIBS += $$GDAL_PATH/lib/gdal.lib
INCLUDEPATH +=  $$GDAL_PATH/include \
                $$GDAL_PATH/ogr/ogrsf_frmts \
                $$GDAL_PATH/ogr/ogrsf_frmts/s57 \
                $$GDAL_PATH/port \
                $$GDAL_PATH/gcore \
                $$GDAL_PATH/frmts/iso8211
