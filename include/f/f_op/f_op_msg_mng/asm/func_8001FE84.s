/* 8001FE84 0001CDC4  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8001FE88 0001CDC8  7C 08 02 A6 */ mflr r0
/* 8001FE8C 0001CDCC  90 01 00 34 */ stw r0, 0x34(r1)
/* 8001FE90 0001CDD0  39 61 00 30 */ addi r11, r1, 0x30
/* 8001FE94 0001CDD4  48 34 23 49 */ bl _savegpr_29
/* 8001FE98 0001CDD8  7C 7D 1B 78 */ mr r29, r3
/* 8001FE9C 0001CDDC  7C 9E 23 78 */ mr r30, r4
/* 8001FEA0 0001CDE0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8001FEA4 0001CDE4  3B E3 61 C0 */ addi r31, r3, g_dComIfG_gameInfo@l
/* 8001FEA8 0001CDE8  88 1F 5E 8F */ lbz r0, 0x5e8f(r31)
/* 8001FEAC 0001CDEC  28 00 00 08 */ cmplwi r0, 8
/* 8001FEB0 0001CDF0  40 82 00 14 */ bne lbl_8001FEC4
/* 8001FEB4 0001CDF4  3C 60 80 43 */ lis r3, lbl_80430188@ha
/* 8001FEB8 0001CDF8  38 63 01 88 */ addi r3, r3, lbl_80430188@l
/* 8001FEBC 0001CDFC  80 63 00 1C */ lwz r3, 0x1c(r3)
/* 8001FEC0 0001CE00  48 1F F8 2D */ bl dMeter2_c_NS_emphasisButtonDelete
lbl_8001FEC4:
/* 8001FEC4 0001CE04  88 1F 5E 8F */ lbz r0, 0x5e8f(r31)
/* 8001FEC8 0001CE08  28 00 00 00 */ cmplwi r0, 0
/* 8001FECC 0001CE0C  41 82 00 2C */ beq lbl_8001FEF8
/* 8001FED0 0001CE10  28 00 00 05 */ cmplwi r0, 5
/* 8001FED4 0001CE14  41 82 00 24 */ beq lbl_8001FEF8
/* 8001FED8 0001CE18  28 00 00 02 */ cmplwi r0, 2
/* 8001FEDC 0001CE1C  41 82 00 1C */ beq lbl_8001FEF8
/* 8001FEE0 0001CE20  28 00 00 03 */ cmplwi r0, 3
/* 8001FEE4 0001CE24  41 82 00 14 */ beq lbl_8001FEF8
/* 8001FEE8 0001CE28  28 00 00 01 */ cmplwi r0, 1
/* 8001FEEC 0001CE2C  41 82 00 0C */ beq lbl_8001FEF8
/* 8001FEF0 0001CE30  38 60 FF FF */ li r3, -1
/* 8001FEF4 0001CE34  48 00 00 B8 */ b lbl_8001FFAC
lbl_8001FEF8:
/* 8001FEF8 0001CE38  C0 02 82 70 */ lfs f0, lbl_80451C70-_SDA2_BASE_(r2)
/* 8001FEFC 0001CE3C  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8001FF00 0001CE40  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 8001FF04 0001CE44  D0 01 00 08 */ stfs f0, 8(r1)
/* 8001FF08 0001CE48  80 6D 80 48 */ lwz r3, lbl_804505C8-_SDA_BASE_(r13)
/* 8001FF0C 0001CE4C  4B FF FB 19 */ bl fopMsgM_SearchByID
/* 8001FF10 0001CE50  7C 7F 1B 79 */ or. r31, r3, r3
/* 8001FF14 0001CE54  41 82 00 94 */ beq lbl_8001FFA8
/* 8001FF18 0001CE58  A0 1F 00 F8 */ lhz r0, 0xf8(r31)
/* 8001FF1C 0001CE5C  28 00 00 01 */ cmplwi r0, 1
/* 8001FF20 0001CE60  40 82 00 50 */ bne lbl_8001FF70
/* 8001FF24 0001CE64  C0 01 00 08 */ lfs f0, 8(r1)
/* 8001FF28 0001CE68  D0 1F 00 E0 */ stfs f0, 0xe0(r31)
/* 8001FF2C 0001CE6C  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 8001FF30 0001CE70  D0 1F 00 E4 */ stfs f0, 0xe4(r31)
/* 8001FF34 0001CE74  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 8001FF38 0001CE78  D0 1F 00 E8 */ stfs f0, 0xe8(r31)
/* 8001FF3C 0001CE7C  93 BF 00 EC */ stw r29, 0xec(r31)
/* 8001FF40 0001CE80  93 DF 00 F0 */ stw r30, 0xf0(r31)
/* 8001FF44 0001CE84  38 00 00 00 */ li r0, 0
/* 8001FF48 0001CE88  90 1F 00 DC */ stw r0, 0xdc(r31)
/* 8001FF4C 0001CE8C  38 60 00 00 */ li r3, 0
/* 8001FF50 0001CE90  48 21 7B 25 */ bl dMsgObject_c_NS_setTalkPartner
/* 8001FF54 0001CE94  7F E3 FB 78 */ mr r3, r31
/* 8001FF58 0001CE98  7F A4 EB 78 */ mr r4, r29
/* 8001FF5C 0001CE9C  7F C5 F3 78 */ mr r5, r30
/* 8001FF60 0001CEA0  38 C0 00 00 */ li r6, 0
/* 8001FF64 0001CEA4  48 21 3D A1 */ bl dMsgObject_c_NS_setMessageIndex
/* 8001FF68 0001CEA8  80 6D 80 48 */ lwz r3, lbl_804505C8-_SDA_BASE_(r13)
/* 8001FF6C 0001CEAC  48 00 00 40 */ b lbl_8001FFAC
lbl_8001FF70:
/* 8001FF70 0001CEB0  28 00 00 0F */ cmplwi r0, 0xf
/* 8001FF74 0001CEB4  40 82 00 34 */ bne lbl_8001FFA8
/* 8001FF78 0001CEB8  C0 01 00 08 */ lfs f0, 8(r1)
/* 8001FF7C 0001CEBC  D0 1F 00 E0 */ stfs f0, 0xe0(r31)
/* 8001FF80 0001CEC0  C0 01 00 0C */ lfs f0, 0xc(r1)
/* 8001FF84 0001CEC4  D0 1F 00 E4 */ stfs f0, 0xe4(r31)
/* 8001FF88 0001CEC8  C0 01 00 10 */ lfs f0, 0x10(r1)
/* 8001FF8C 0001CECC  D0 1F 00 E8 */ stfs f0, 0xe8(r31)
/* 8001FF90 0001CED0  93 BF 00 EC */ stw r29, 0xec(r31)
/* 8001FF94 0001CED4  93 DF 00 F0 */ stw r30, 0xf0(r31)
/* 8001FF98 0001CED8  38 00 00 00 */ li r0, 0
/* 8001FF9C 0001CEDC  90 1F 00 DC */ stw r0, 0xdc(r31)
/* 8001FFA0 0001CEE0  80 6D 80 48 */ lwz r3, lbl_804505C8-_SDA_BASE_(r13)
/* 8001FFA4 0001CEE4  48 00 00 08 */ b lbl_8001FFAC
lbl_8001FFA8:
/* 8001FFA8 0001CEE8  38 60 00 00 */ li r3, 0
lbl_8001FFAC:
/* 8001FFAC 0001CEEC  39 61 00 30 */ addi r11, r1, 0x30
/* 8001FFB0 0001CEF0  48 34 22 79 */ bl _restgpr_29
/* 8001FFB4 0001CEF4  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8001FFB8 0001CEF8  7C 08 03 A6 */ mtlr r0
/* 8001FFBC 0001CEFC  38 21 00 30 */ addi r1, r1, 0x30
/* 8001FFC0 0001CF00  4E 80 00 20 */ blr
