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

    Component.onCompleted: plasmoid.configuration.isSpinning = 1 

    /*I'm 99% sure I did this the wrong way, 
    but this is the only way that I have found to make maxwell appear 
    without going into the config, issue is that it starts from the middle
    of the ComboBox. AHHHHHHHH!!*/
    
    Plasmoid.backgroundHints: PlasmaCore.Types.NoBackground

    AnimatedImage {
        id: animation
        
        source: {
            switch (plasmoid.configuration.isSpinning) {
            case 1:
                return "maxwell-spinning.gif";
            case 2:
                return "maxwell-patted.gif";
            case 0:
                return "maxwell-wobble.gif";
            }
        }
        width: mainWindow.width
        fillMode: Image.PreserveAspectFit
        mirror: plasmoid.configuration.mirror 
        speed: plasmoid.configuration.speed 
        mipmap: plasmoid.configuration.hq 
    }
}


