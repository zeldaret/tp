lbl_802E46D8:
/* 802E46D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E46DC  7C 08 02 A6 */	mflr r0
/* 802E46E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E46E4  7C C7 33 78 */	mr r7, r6
/* 802E46E8  3C C0 80 3A */	lis r6, JUTDirectPrint__stringBase0@ha
/* 802E46EC  38 C6 D9 A0 */	addi r6, r6, JUTDirectPrint__stringBase0@l
/* 802E46F0  4C C6 31 82 */	crclr 6
/* 802E46F4  48 00 00 15 */	bl drawString_f__14JUTDirectPrintFUsUsPCce
/* 802E46F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E46FC  7C 08 03 A6 */	mtlr r0
/* 802E4700  38 21 00 10 */	addi r1, r1, 0x10
/* 802E4704  4E 80 00 20 */	blr 
