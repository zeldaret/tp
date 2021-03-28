lbl_801396F8:
/* 801396F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801396FC  7C 08 02 A6 */	mflr r0
/* 80139700  90 01 00 24 */	stw r0, 0x24(r1)
/* 80139704  7C 67 1B 78 */	mr r7, r3
/* 80139708  7C 85 23 78 */	mr r5, r4
/* 8013970C  A0 04 05 8E */	lhz r0, 0x58e(r4)
/* 80139710  60 00 00 40 */	ori r0, r0, 0x40
/* 80139714  B0 04 05 8E */	sth r0, 0x58e(r4)
/* 80139718  80 63 06 50 */	lwz r3, 0x650(r3)
/* 8013971C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80139720  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80139724  C0 03 02 7C */	lfs f0, 0x27c(r3)
/* 80139728  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8013972C  C0 03 02 8C */	lfs f0, 0x28c(r3)
/* 80139730  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80139734  C0 03 02 9C */	lfs f0, 0x29c(r3)
/* 80139738  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8013973C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80139740  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80139744  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80139748  38 80 00 01 */	li r4, 1
/* 8013974C  38 C1 00 14 */	addi r6, r1, 0x14
/* 80139750  38 E7 04 E4 */	addi r7, r7, 0x4e4
/* 80139754  3D 00 80 42 */	lis r8, l_wolfBiteHitMarkScale@ha
/* 80139758  39 08 56 F8 */	addi r8, r8, l_wolfBiteHitMarkScale@l
/* 8013975C  39 20 00 00 */	li r9, 0
/* 80139760  4B F1 2A B9 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 80139764  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80139768  D0 21 00 08 */	stfs f1, 8(r1)
/* 8013976C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80139770  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80139774  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80139778  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8013977C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80139780  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80139784  38 80 00 03 */	li r4, 3
/* 80139788  38 A0 00 1F */	li r5, 0x1f
/* 8013978C  38 C1 00 08 */	addi r6, r1, 8
/* 80139790  4B F3 62 95 */	bl StartShock__12dVibration_cFii4cXyz
/* 80139794  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80139798  7C 08 03 A6 */	mtlr r0
/* 8013979C  38 21 00 20 */	addi r1, r1, 0x20
/* 801397A0  4E 80 00 20 */	blr 
