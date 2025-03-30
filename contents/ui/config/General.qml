import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import org.kde.kirigami as Kirigami
import org.kde.kcmutils as KCM
import QtQuick.Dialogs as QtDialogs

Kirigami.FormLayout {
    id: page

    property alias cfg_speed: speed.value
    property alias cfg_mirror: mirror.checked
    property alias cfg_hq: hq.checked
    property alias cfg_isSpinning: toggleButton.checked
    

    Slider {
        Layout.preferredWidth: 15 * Kirigami.Units.gridUnit
        id: speed
        from: 0.6
        to: 10
        stepSize: 0.4
        Kirigami.FormData.label: i18n("Speed")
    }

    CheckBox {
        id: mirror
        Kirigami.FormData.label: i18n("Mirror")
    }

    CheckBox {
        id: hq
        Kirigami.FormData.label: i18n("High render quality")
    }

    CheckBox {
        id: toggleButton
        Kirigami.FormData.label: i18n("Spinning Mode")
    }
}