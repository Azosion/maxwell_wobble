/*
 * SPDX-FileCopyrightText: 2012 Reza Fatahilah Shah <rshah0385@kireihana.com>
 *
 * SPDX-License-Identifier: GPL-2.0-or-later
 */

import QtQuick
import QtQuick.Layouts
import org.kde.plasma.plasmoid
import org.kde.plasma.core as PlasmaCore
import org.kde.kirigami as Kirigami
import org.kde.kquickcontrolsaddons

PlasmoidItem {
    id: mainWindow

    Plasmoid.backgroundHints: PlasmaCore.Types.NoBackground

    AnimatedImage {
        id: animation
        source: plasmoid.configuration.isSpinning ? "maxwell-spinning.gif" : "maxwell-wobble.gif"
        width: mainWindow.width
        fillMode: Image.PreserveAspectFit
        mirror: plasmoid.configuration.mirror
        speed: plasmoid.configuration.speed
        mipmap: plasmoid.configuration.hq
    }
}


