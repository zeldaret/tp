lbl_80051424:
/* 80051424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80051428  7C 08 02 A6 */	mflr r0
/* 8005142C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80051430  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80051434  7C 7F 1B 78 */	mr r31, r3
/* 80051438  38 9F 00 80 */	addi r4, r31, 0x80
/* 8005143C  38 BF 00 C4 */	addi r5, r31, 0xc4
/* 80051440  4B FF FC FD */	bl clearID__7dPaPo_cFPUlPUc
/* 80051444  7F E3 FB 78 */	mr r3, r31
/* 80051448  38 9F 00 A0 */	addi r4, r31, 0xa0
/* 8005144C  38 BF 00 C5 */	addi r5, r31, 0xc5
/* 80051450  4B FF FC ED */	bl clearID__7dPaPo_cFPUlPUc
/* 80051454  7F E3 FB 78 */	mr r3, r31
/* 80051458  4B FF FE 3D */	bl clearTwoAllID__8dPaPoT_cFv
/* 8005145C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80051460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80051464  7C 08 03 A6 */	mtlr r0
/* 80051468  38 21 00 10 */	addi r1, r1, 0x10
/* 8005146C  4E 80 00 20 */	blr 
