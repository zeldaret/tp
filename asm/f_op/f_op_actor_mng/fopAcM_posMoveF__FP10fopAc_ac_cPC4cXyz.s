lbl_8001A6CC:
/* 8001A6CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001A6D0  7C 08 02 A6 */	mflr r0
/* 8001A6D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001A6D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001A6DC  93 C1 00 08 */	stw r30, 8(r1)
/* 8001A6E0  7C 7E 1B 78 */	mr r30, r3
/* 8001A6E4  7C 9F 23 78 */	mr r31, r4
/* 8001A6E8  4B FF FF 25 */	bl fopAcM_calcSpeed__FP10fopAc_ac_c
/* 8001A6EC  7F C3 F3 78 */	mr r3, r30
/* 8001A6F0  7F E4 FB 78 */	mr r4, r31
/* 8001A6F4  4B FF FF 6D */	bl fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 8001A6F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001A6FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001A700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001A704  7C 08 03 A6 */	mtlr r0
/* 8001A708  38 21 00 10 */	addi r1, r1, 0x10
/* 8001A70C  4E 80 00 20 */	blr 
