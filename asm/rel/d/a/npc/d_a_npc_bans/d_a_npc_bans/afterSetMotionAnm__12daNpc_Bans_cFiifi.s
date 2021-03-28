lbl_80964B9C:
/* 80964B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80964BA0  7C 08 02 A6 */	mflr r0
/* 80964BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80964BA8  88 03 0A 88 */	lbz r0, 0xa88(r3)
/* 80964BAC  28 00 00 01 */	cmplwi r0, 1
/* 80964BB0  40 82 00 0C */	bne lbl_80964BBC
/* 80964BB4  3C C0 80 96 */	lis r6, lit_4103@ha
/* 80964BB8  C0 26 7E E8 */	lfs f1, lit_4103@l(r6)
lbl_80964BBC:
/* 80964BBC  4B FF FF 1D */	bl setScoopAnm__12daNpc_Bans_cFiif
/* 80964BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80964BC4  7C 08 03 A6 */	mtlr r0
/* 80964BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80964BCC  4E 80 00 20 */	blr 
