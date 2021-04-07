lbl_802CEB40:
/* 802CEB40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CEB44  7C 08 02 A6 */	mflr r0
/* 802CEB48  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CEB4C  3C 60 80 3A */	lis r3, JKRHeap__stringBase0@ha /* 0x8039CAD8@ha */
/* 802CEB50  38 63 CA D8 */	addi r3, r3, JKRHeap__stringBase0@l /* 0x8039CAD8@l */
/* 802CEB54  38 80 03 3F */	li r4, 0x33f
/* 802CEB58  38 A3 00 0C */	addi r5, r3, 0xc
/* 802CEB5C  38 C3 00 0F */	addi r6, r3, 0xf
/* 802CEB60  4C C6 31 82 */	crclr 6
/* 802CEB64  48 01 36 99 */	bl panic_f__12JUTExceptionFPCciPCce
/* 802CEB68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CEB6C  7C 08 03 A6 */	mtlr r0
/* 802CEB70  38 21 00 10 */	addi r1, r1, 0x10
/* 802CEB74  4E 80 00 20 */	blr 
