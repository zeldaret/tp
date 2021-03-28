lbl_8031DC14:
/* 8031DC14  88 03 00 58 */	lbz r0, 0x58(r3)
/* 8031DC18  38 80 00 00 */	li r4, 0
/* 8031DC1C  7C 09 03 A6 */	mtctr r0
/* 8031DC20  28 00 00 00 */	cmplwi r0, 0
/* 8031DC24  4C 81 00 20 */	blelr 
lbl_8031DC28:
/* 8031DC28  39 44 00 59 */	addi r10, r4, 0x59
/* 8031DC2C  7D 43 52 14 */	add r10, r3, r10
/* 8031DC30  81 2A 00 00 */	lwz r9, 0(r10)
/* 8031DC34  39 00 00 61 */	li r8, 0x61
/* 8031DC38  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DC3C  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DC40  38 05 00 01 */	addi r0, r5, 1
/* 8031DC44  90 06 00 08 */	stw r0, 8(r6)
/* 8031DC48  99 05 00 00 */	stb r8, 0(r5)
/* 8031DC4C  55 27 46 3E */	srwi r7, r9, 0x18
/* 8031DC50  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DC54  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DC58  38 05 00 01 */	addi r0, r5, 1
/* 8031DC5C  90 06 00 08 */	stw r0, 8(r6)
/* 8031DC60  98 E5 00 00 */	stb r7, 0(r5)
/* 8031DC64  55 27 86 3E */	rlwinm r7, r9, 0x10, 0x18, 0x1f
/* 8031DC68  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DC6C  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DC70  38 05 00 01 */	addi r0, r5, 1
/* 8031DC74  90 06 00 08 */	stw r0, 8(r6)
/* 8031DC78  98 E5 00 00 */	stb r7, 0(r5)
/* 8031DC7C  55 27 C6 3E */	rlwinm r7, r9, 0x18, 0x18, 0x1f
/* 8031DC80  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DC84  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DC88  38 05 00 01 */	addi r0, r5, 1
/* 8031DC8C  90 06 00 08 */	stw r0, 8(r6)
/* 8031DC90  98 E5 00 00 */	stb r7, 0(r5)
/* 8031DC94  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DC98  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DC9C  38 05 00 01 */	addi r0, r5, 1
/* 8031DCA0  90 06 00 08 */	stw r0, 8(r6)
/* 8031DCA4  99 25 00 00 */	stb r9, 0(r5)
/* 8031DCA8  81 2A 00 04 */	lwz r9, 4(r10)
/* 8031DCAC  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DCB0  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DCB4  38 05 00 01 */	addi r0, r5, 1
/* 8031DCB8  90 06 00 08 */	stw r0, 8(r6)
/* 8031DCBC  99 05 00 00 */	stb r8, 0(r5)
/* 8031DCC0  55 27 46 3E */	srwi r7, r9, 0x18
/* 8031DCC4  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DCC8  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DCCC  38 05 00 01 */	addi r0, r5, 1
/* 8031DCD0  90 06 00 08 */	stw r0, 8(r6)
/* 8031DCD4  98 E5 00 00 */	stb r7, 0(r5)
/* 8031DCD8  55 27 86 3E */	rlwinm r7, r9, 0x10, 0x18, 0x1f
/* 8031DCDC  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DCE0  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DCE4  38 05 00 01 */	addi r0, r5, 1
/* 8031DCE8  90 06 00 08 */	stw r0, 8(r6)
/* 8031DCEC  98 E5 00 00 */	stb r7, 0(r5)
/* 8031DCF0  55 27 C6 3E */	rlwinm r7, r9, 0x18, 0x18, 0x1f
/* 8031DCF4  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DCF8  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DCFC  38 05 00 01 */	addi r0, r5, 1
/* 8031DD00  90 06 00 08 */	stw r0, 8(r6)
/* 8031DD04  98 E5 00 00 */	stb r7, 0(r5)
/* 8031DD08  80 CD 94 00 */	lwz r6, __GDCurrentDL(r13)
/* 8031DD0C  80 A6 00 08 */	lwz r5, 8(r6)
/* 8031DD10  38 05 00 01 */	addi r0, r5, 1
/* 8031DD14  90 06 00 08 */	stw r0, 8(r6)
/* 8031DD18  99 25 00 00 */	stb r9, 0(r5)
/* 8031DD1C  38 84 00 08 */	addi r4, r4, 8
/* 8031DD20  42 00 FF 08 */	bdnz lbl_8031DC28
/* 8031DD24  4E 80 00 20 */	blr 
