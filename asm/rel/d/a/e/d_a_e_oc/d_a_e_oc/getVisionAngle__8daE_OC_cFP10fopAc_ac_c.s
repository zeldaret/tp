lbl_8072CBD4:
/* 8072CBD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8072CBD8  7C 08 02 A6 */	mflr r0
/* 8072CBDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8072CBE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8072CBE4  7C 7F 1B 78 */	mr r31, r3
/* 8072CBE8  4B 8E DB 29 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8072CBEC  7C 64 1B 78 */	mr r4, r3
/* 8072CBF0  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8072CBF4  4B B4 42 31 */	bl cLib_distanceAngleS__Fss
/* 8072CBF8  7C 63 07 34 */	extsh r3, r3
/* 8072CBFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8072CC00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8072CC04  7C 08 03 A6 */	mtlr r0
/* 8072CC08  38 21 00 10 */	addi r1, r1, 0x10
/* 8072CC0C  4E 80 00 20 */	blr 
