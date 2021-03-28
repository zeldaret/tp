lbl_8007C484:
/* 8007C484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007C488  7C 08 02 A6 */	mflr r0
/* 8007C48C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007C490  A0 A3 00 92 */	lhz r5, 0x92(r3)
/* 8007C494  38 C0 00 01 */	li r6, 1
/* 8007C498  4B FF FE C9 */	bl WallCorrectGrpRp__4dBgWFP9dBgS_Acchii
/* 8007C49C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007C4A0  7C 08 03 A6 */	mtlr r0
/* 8007C4A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8007C4A8  4E 80 00 20 */	blr 
