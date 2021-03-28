lbl_8007D830:
/* 8007D830  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007D834  7C 08 02 A6 */	mflr r0
/* 8007D838  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007D83C  A0 A3 00 92 */	lhz r5, 0x92(r3)
/* 8007D840  38 C0 00 01 */	li r6, 1
/* 8007D844  4B FF FE AD */	bl SplGrpChkGrpRp__4dBgWFP14dBgS_SplGrpChkii
/* 8007D848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007D84C  7C 08 03 A6 */	mtlr r0
/* 8007D850  38 21 00 10 */	addi r1, r1, 0x10
/* 8007D854  4E 80 00 20 */	blr 
