lbl_8072D100:
/* 8072D100  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8072D104  7C 08 02 A6 */	mflr r0
/* 8072D108  90 01 00 24 */	stw r0, 0x24(r1)
/* 8072D10C  39 61 00 20 */	addi r11, r1, 0x20
/* 8072D110  4B C3 50 CD */	bl _savegpr_29
/* 8072D114  7C 7D 1B 78 */	mr r29, r3
/* 8072D118  88 03 06 E3 */	lbz r0, 0x6e3(r3)
/* 8072D11C  28 00 00 00 */	cmplwi r0, 0
/* 8072D120  41 82 00 0C */	beq lbl_8072D12C
/* 8072D124  38 60 00 00 */	li r3, 0
/* 8072D128  48 00 00 9C */	b lbl_8072D1C4
lbl_8072D12C:
/* 8072D12C  80 1D 06 B4 */	lwz r0, 0x6b4(r29)
/* 8072D130  2C 00 00 02 */	cmpwi r0, 2
/* 8072D134  40 82 00 24 */	bne lbl_8072D158
/* 8072D138  80 7D 06 78 */	lwz r3, 0x678(r29)
/* 8072D13C  28 03 00 00 */	cmplwi r3, 0
/* 8072D140  41 82 00 18 */	beq lbl_8072D158
/* 8072D144  88 03 05 AF */	lbz r0, 0x5af(r3)
/* 8072D148  28 00 00 00 */	cmplwi r0, 0
/* 8072D14C  41 82 00 0C */	beq lbl_8072D158
/* 8072D150  38 60 00 00 */	li r3, 0
/* 8072D154  48 00 00 70 */	b lbl_8072D1C4
lbl_8072D158:
/* 8072D158  7F A3 EB 78 */	mr r3, r29
/* 8072D15C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8072D160  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8072D164  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8072D168  4B 8E D6 79 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072D16C  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 8072D170  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8072D174  40 80 00 4C */	bge lbl_8072D1C0
/* 8072D178  7F A3 EB 78 */	mr r3, r29
/* 8072D17C  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8072D180  4B 8E D5 91 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072D184  7C 7F 1B 78 */	mr r31, r3
/* 8072D188  7F A3 EB 78 */	mr r3, r29
/* 8072D18C  48 00 12 A1 */	bl getHeadAngle__8daE_OC_cFv
/* 8072D190  7C 1F 18 50 */	subf r0, r31, r3
/* 8072D194  7C 03 07 34 */	extsh r3, r0
/* 8072D198  4B C3 7F 39 */	bl abs
/* 8072D19C  2C 03 20 00 */	cmpwi r3, 0x2000
/* 8072D1A0  40 80 00 20 */	bge lbl_8072D1C0
/* 8072D1A4  7F A3 EB 78 */	mr r3, r29
/* 8072D1A8  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8072D1AC  4B 8E FC 51 */	bl fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072D1B0  2C 03 00 00 */	cmpwi r3, 0
/* 8072D1B4  40 82 00 0C */	bne lbl_8072D1C0
/* 8072D1B8  38 60 00 01 */	li r3, 1
/* 8072D1BC  48 00 00 08 */	b lbl_8072D1C4
lbl_8072D1C0:
/* 8072D1C0  38 60 00 00 */	li r3, 0
lbl_8072D1C4:
/* 8072D1C4  39 61 00 20 */	addi r11, r1, 0x20
/* 8072D1C8  4B C3 50 61 */	bl _restgpr_29
/* 8072D1CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8072D1D0  7C 08 03 A6 */	mtlr r0
/* 8072D1D4  38 21 00 20 */	addi r1, r1, 0x20
/* 8072D1D8  4E 80 00 20 */	blr 
