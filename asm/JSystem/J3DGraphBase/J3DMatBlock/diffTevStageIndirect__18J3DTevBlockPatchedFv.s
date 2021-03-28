lbl_8031CF78:
/* 8031CF78  88 03 00 D0 */	lbz r0, 0xd0(r3)
/* 8031CF7C  39 20 00 00 */	li r9, 0
/* 8031CF80  38 80 00 00 */	li r4, 0
/* 8031CF84  7C 09 03 A6 */	mtctr r0
/* 8031CF88  28 00 00 00 */	cmplwi r0, 0
/* 8031CF8C  4C 81 00 20 */	blelr 
lbl_8031CF90:
/* 8031CF90  38 04 00 78 */	addi r0, r4, 0x78
/* 8031CF94  7C A3 00 2E */	lwzx r5, r3, r0
/* 8031CF98  38 09 00 10 */	addi r0, r9, 0x10
/* 8031CF9C  54 00 C0 0E */	slwi r0, r0, 0x18
/* 8031CFA0  7C A8 03 78 */	or r8, r5, r0
/* 8031CFA4  38 E0 00 61 */	li r7, 0x61
/* 8031CFA8  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031CFAC  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031CFB0  38 05 00 01 */	addi r0, r5, 1
/* 8031CFB4  90 06 00 08 */	stw r0, 8(r6)
/* 8031CFB8  98 E5 00 00 */	stb r7, 0(r5)
/* 8031CFBC  55 07 46 3E */	srwi r7, r8, 0x18
/* 8031CFC0  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031CFC4  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031CFC8  38 05 00 01 */	addi r0, r5, 1
/* 8031CFCC  90 06 00 08 */	stw r0, 8(r6)
/* 8031CFD0  98 E5 00 00 */	stb r7, 0(r5)
/* 8031CFD4  55 07 86 3E */	rlwinm r7, r8, 0x10, 0x18, 0x1f
/* 8031CFD8  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031CFDC  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031CFE0  38 05 00 01 */	addi r0, r5, 1
/* 8031CFE4  90 06 00 08 */	stw r0, 8(r6)
/* 8031CFE8  98 E5 00 00 */	stb r7, 0(r5)
/* 8031CFEC  55 07 C6 3E */	rlwinm r7, r8, 0x18, 0x18, 0x1f
/* 8031CFF0  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031CFF4  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031CFF8  38 05 00 01 */	addi r0, r5, 1
/* 8031CFFC  90 06 00 08 */	stw r0, 8(r6)
/* 8031D000  98 E5 00 00 */	stb r7, 0(r5)
/* 8031D004  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031D008  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031D00C  38 05 00 01 */	addi r0, r5, 1
/* 8031D010  90 06 00 08 */	stw r0, 8(r6)
/* 8031D014  99 05 00 00 */	stb r8, 0(r5)
/* 8031D018  39 29 00 01 */	addi r9, r9, 1
/* 8031D01C  38 84 00 04 */	addi r4, r4, 4
/* 8031D020  42 00 FF 70 */	bdnz lbl_8031CF90
/* 8031D024  4E 80 00 20 */	blr 
