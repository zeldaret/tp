lbl_806F81A8:
/* 806F81A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F81AC  7C 08 02 A6 */	mflr r0
/* 806F81B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F81B4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806F81B8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806F81BC  80 C5 5D AC */	lwz r6, 0x5dac(r5)
/* 806F81C0  C0 03 06 90 */	lfs f0, 0x690(r3)
/* 806F81C4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806F81C8  40 80 00 48 */	bge lbl_806F8210
/* 806F81CC  A8 A3 06 8C */	lha r5, 0x68c(r3)
/* 806F81D0  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 806F81D4  7C 05 00 50 */	subf r0, r5, r0
/* 806F81D8  7C 05 07 34 */	extsh r5, r0
/* 806F81DC  7C 80 07 34 */	extsh r0, r4
/* 806F81E0  7C 05 00 00 */	cmpw r5, r0
/* 806F81E4  40 80 00 2C */	bge lbl_806F8210
/* 806F81E8  7C 04 00 D0 */	neg r0, r4
/* 806F81EC  7C 00 07 34 */	extsh r0, r0
/* 806F81F0  7C 05 00 00 */	cmpw r5, r0
/* 806F81F4  40 81 00 1C */	ble lbl_806F8210
/* 806F81F8  7C C4 33 78 */	mr r4, r6
/* 806F81FC  4B FF FE D5 */	bl other_bg_check__FP10e_kg_classP10fopAc_ac_c
/* 806F8200  2C 03 00 00 */	cmpwi r3, 0
/* 806F8204  40 82 00 0C */	bne lbl_806F8210
/* 806F8208  38 60 00 01 */	li r3, 1
/* 806F820C  48 00 00 08 */	b lbl_806F8214
lbl_806F8210:
/* 806F8210  38 60 00 00 */	li r3, 0
lbl_806F8214:
/* 806F8214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F8218  7C 08 03 A6 */	mtlr r0
/* 806F821C  38 21 00 10 */	addi r1, r1, 0x10
/* 806F8220  4E 80 00 20 */	blr 
