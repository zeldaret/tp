lbl_8072CE00:
/* 8072CE00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8072CE04  7C 08 02 A6 */	mflr r0
/* 8072CE08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072CE0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8072CE10  4B C3 53 CC */	b _savegpr_29
/* 8072CE14  7C 7D 1B 78 */	mr r29, r3
/* 8072CE18  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8072CE1C  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 8072CE20  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8072CE24  4B 8E D9 BC */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072CE28  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 8072CE2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072CE30  40 80 00 B4 */	bge lbl_8072CEE4
/* 8072CE34  7F A3 EB 78 */	mr r3, r29
/* 8072CE38  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8072CE3C  4B 8E D8 D4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072CE40  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8072CE44  7C 03 00 50 */	subf r0, r3, r0
/* 8072CE48  7C 1E 07 34 */	extsh r30, r0
/* 8072CE4C  7F A3 EB 78 */	mr r3, r29
/* 8072CE50  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8072CE54  4B 8E D9 8C */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072CE58  3C 60 80 73 */	lis r3, l_HIO@ha
/* 8072CE5C  38 63 60 60 */	addi r3, r3, l_HIO@l
/* 8072CE60  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8072CE64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072CE68  40 80 00 50 */	bge lbl_8072CEB8
/* 8072CE6C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8072CE70  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 8072CE74  3C 60 80 73 */	lis r3, lit_4206@ha
/* 8072CE78  C0 03 5B C8 */	lfs f0, lit_4206@l(r3)
/* 8072CE7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072CE80  40 81 00 0C */	ble lbl_8072CE8C
/* 8072CE84  38 60 00 01 */	li r3, 1
/* 8072CE88  48 00 00 60 */	b lbl_8072CEE8
lbl_8072CE8C:
/* 8072CE8C  7F C3 F3 78 */	mr r3, r30
/* 8072CE90  4B C3 82 40 */	b abs
/* 8072CE94  2C 03 50 00 */	cmpwi r3, 0x5000
/* 8072CE98  40 80 00 4C */	bge lbl_8072CEE4
/* 8072CE9C  7F A3 EB 78 */	mr r3, r29
/* 8072CEA0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8072CEA4  4B 8E FF 58 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072CEA8  2C 03 00 00 */	cmpwi r3, 0
/* 8072CEAC  40 82 00 38 */	bne lbl_8072CEE4
/* 8072CEB0  38 60 00 01 */	li r3, 1
/* 8072CEB4  48 00 00 34 */	b lbl_8072CEE8
lbl_8072CEB8:
/* 8072CEB8  7F C3 F3 78 */	mr r3, r30
/* 8072CEBC  4B C3 82 14 */	b abs
/* 8072CEC0  2C 03 40 00 */	cmpwi r3, 0x4000
/* 8072CEC4  40 80 00 20 */	bge lbl_8072CEE4
/* 8072CEC8  7F A3 EB 78 */	mr r3, r29
/* 8072CECC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8072CED0  4B 8E FF 2C */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072CED4  2C 03 00 00 */	cmpwi r3, 0
/* 8072CED8  40 82 00 0C */	bne lbl_8072CEE4
/* 8072CEDC  38 60 00 01 */	li r3, 1
/* 8072CEE0  48 00 00 08 */	b lbl_8072CEE8
lbl_8072CEE4:
/* 8072CEE4  38 60 00 00 */	li r3, 0
lbl_8072CEE8:
/* 8072CEE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8072CEEC  4B C3 53 3C */	b _restgpr_29
/* 8072CEF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072CEF4  7C 08 03 A6 */	mtlr r0
/* 8072CEF8  38 21 00 20 */	addi r1, r1, 0x20
/* 8072CEFC  4E 80 00 20 */	blr 
