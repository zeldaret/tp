lbl_803491C8:
/* 803491C8  7C 08 02 A6 */	mflr r0
/* 803491CC  3C 60 80 35 */	lis r3, stateReadingFST@ha
/* 803491D0  90 01 00 04 */	stw r0, 4(r1)
/* 803491D4  38 03 91 C8 */	addi r0, r3, stateReadingFST@l
/* 803491D8  3C 60 80 45 */	lis r3, BB2@ha
/* 803491DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803491E0  38 63 C9 00 */	addi r3, r3, BB2@l
/* 803491E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803491E8  3B E3 00 08 */	addi r31, r3, 8
/* 803491EC  90 0D 92 40 */	stw r0, LastState(r13)
/* 803491F0  80 8D 92 00 */	lwz r4, bootInfo(r13)
/* 803491F4  80 1F 00 00 */	lwz r0, 0(r31)
/* 803491F8  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 803491FC  7C 03 00 40 */	cmplw r3, r0
/* 80349200  40 80 00 1C */	bge lbl_8034921C
/* 80349204  3C 60 80 3D */	lis r3, lit_24@ha
/* 80349208  4C C6 31 82 */	crclr 6
/* 8034920C  38 A3 15 74 */	addi r5, r3, lit_24@l
/* 80349210  38 6D 84 74 */	la r3, lit_23(r13) /* 804509F4-_SDA_BASE_ */
/* 80349214  38 80 02 95 */	li r4, 0x295
/* 80349218  4B CB DC 65 */	bl OSPanic
lbl_8034921C:
/* 8034921C  3C 60 80 45 */	lis r3, BB2@ha
/* 80349220  80 DF 00 00 */	lwz r6, 0(r31)
/* 80349224  38 A3 C9 00 */	addi r5, r3, BB2@l
/* 80349228  80 ED 92 00 */	lwz r7, bootInfo(r13)
/* 8034922C  3C 80 80 35 */	lis r4, cbForStateReadingFST@ha
/* 80349230  80 A5 00 04 */	lwz r5, 4(r5)
/* 80349234  38 06 00 1F */	addi r0, r6, 0x1f
/* 80349238  80 67 00 38 */	lwz r3, 0x38(r7)
/* 8034923C  38 C4 92 5C */	addi r6, r4, cbForStateReadingFST@l
/* 80349240  54 04 00 34 */	rlwinm r4, r0, 0, 0, 0x1a
/* 80349244  4B FF E9 D5 */	bl DVDLowRead
/* 80349248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8034924C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80349250  38 21 00 10 */	addi r1, r1, 0x10
/* 80349254  7C 08 03 A6 */	mtlr r0
/* 80349258  4E 80 00 20 */	blr 
