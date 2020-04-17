#ifndef S52_SYMBOL_H
#define S52_SYMBOL_H

#include <QImage>
#include <QPixmap>
#include <QStringList>
#include <QMap>

#ifdef LIB_S57_DLL
    #define LIB_S57_EXPORT __declspec(dllexport)
#else
    #define LIB_S57_EXPORT
#endif

class LIB_S57_EXPORT S52_Symbol
{
public:
    S52_Symbol();
    S52_Symbol(const S52_Symbol &);
    S52_Symbol & operator = (const S52_Symbol &);
    ~S52_Symbol();
    void setSources(const QStringList & _list);
    QImage image (const QString & _name) const;
    QPixmap pixmap (const QString & _name) const;
    QRgb color(const QString & _name) const;
    QRgb symbol_color(const QString & _name) const;

    bool setColorScheme(const QString & _scheme);
    QString colorScheme() const;

    QStringList symbols(const QString & _scheme) const;
    QStringList colorSchemes() const;

    QMap<QString, QImage> images() const;
    QMap<QString, QPixmap> pixmaps() const;

private:
    struct Data;
    Data * d;
};

#endif // S52_SYMBOL_H
