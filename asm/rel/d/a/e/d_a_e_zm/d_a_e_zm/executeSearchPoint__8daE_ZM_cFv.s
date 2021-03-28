lbl_8083033C:
/* 8083033C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80830340  7C 08 02 A6 */	mflr r0
/* 80830344  90 01 00 14 */	stw r0, 0x14(r1)
/* 80830348  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8083034C  7C 7F 1B 78 */	mr r31, r3
/* 80830350  88 03 07 25 */	lbz r0, 0x725(r3)
/* 80830354  28 00 00 00 */	cmplwi r0, 0
/* 80830358  40 82 00 2C */	bne lbl_80830384
/* 8083035C  38 00 00 00 */	li r0, 0
/* 80830360  98 1F 06 E5 */	stb r0, 0x6e5(r31)
/* 80830364  3C 60 80 83 */	lis r3, s_PointSearch__FPvPv@ha
/* 80830368  38 63 02 88 */	addi r3, r3, s_PointSearch__FPvPv@l
/* 8083036C  7F E4 FB 78 */	mr r4, r31
/* 80830370  4B 7F 0F C8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80830374  7F E3 FB 78 */	mr r3, r31
/* 80830378  38 80 00 01 */	li r4, 1
/* 8083037C  38 A0 00 00 */	li r5, 0
/* 80830380  4B FF F9 01 */	bl setActionMode__8daE_ZM_cFii
lbl_80830384:
/* 80830384  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80830388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8083038C  7C 08 03 A6 */	mtlr r0
/* 80830390  38 21 00 10 */	addi r1, r1, 0x10
/* 80830394  4E 80 00 20 */	blr 
