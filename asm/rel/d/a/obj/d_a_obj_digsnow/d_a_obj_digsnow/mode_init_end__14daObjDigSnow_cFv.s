lbl_80BDD1BC:
/* 80BDD1BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDD1C0  7C 08 02 A6 */	mflr r0
/* 80BDD1C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDD1C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDD1CC  7C 7F 1B 78 */	mr r31, r3
/* 80BDD1D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDD1D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BDD1D8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BDD1DC  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BDD1E0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BDD1E4  7C 05 07 74 */	extsb r5, r0
/* 80BDD1E8  4B 45 80 18 */	b onSwitch__10dSv_info_cFii
/* 80BDD1EC  7F E3 FB 78 */	mr r3, r31
/* 80BDD1F0  4B 43 CA 8C */	b fopAcM_delete__FP10fopAc_ac_c
/* 80BDD1F4  38 00 00 02 */	li r0, 2
/* 80BDD1F8  98 1F 09 3D */	stb r0, 0x93d(r31)
/* 80BDD1FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDD200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDD204  7C 08 03 A6 */	mtlr r0
/* 80BDD208  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDD20C  4E 80 00 20 */	blr 
