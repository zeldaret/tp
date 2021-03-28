lbl_80AEDF10:
/* 80AEDF10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEDF14  7C 08 02 A6 */	mflr r0
/* 80AEDF18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEDF1C  4B FF F2 11 */	bl Execute__12daNpc_solA_cFv
/* 80AEDF20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEDF24  7C 08 03 A6 */	mtlr r0
/* 80AEDF28  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEDF2C  4E 80 00 20 */	blr 
