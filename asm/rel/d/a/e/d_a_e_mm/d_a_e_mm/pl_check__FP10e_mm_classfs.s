lbl_8071FBC4:
/* 8071FBC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071FBC8  7C 08 02 A6 */	mflr r0
/* 8071FBCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071FBD0  C0 03 06 94 */	lfs f0, 0x694(r3)
/* 8071FBD4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8071FBD8  40 80 00 38 */	bge lbl_8071FC10
/* 8071FBDC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8071FBE0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8071FBE4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8071FBE8  4B 8F D2 14 */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8071FBEC  2C 03 00 00 */	cmpwi r3, 0
/* 8071FBF0  40 82 00 20 */	bne lbl_8071FC10
/* 8071FBF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071FBF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071FBFC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8071FC00  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8071FC04  40 82 00 0C */	bne lbl_8071FC10
/* 8071FC08  38 60 00 01 */	li r3, 1
/* 8071FC0C  48 00 00 08 */	b lbl_8071FC14
lbl_8071FC10:
/* 8071FC10  38 60 00 00 */	li r3, 0
lbl_8071FC14:
/* 8071FC14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071FC18  7C 08 03 A6 */	mtlr r0
/* 8071FC1C  38 21 00 10 */	addi r1, r1, 0x10
/* 8071FC20  4E 80 00 20 */	blr 
