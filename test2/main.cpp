#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load("c:\\Users\\tz-lom\\Documents\\SCXMLtests\\test2\\main.qml");
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
