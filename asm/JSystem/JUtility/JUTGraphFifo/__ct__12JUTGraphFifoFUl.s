lbl_802DEB58:
/* 802DEB58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DEB5C  7C 08 02 A6 */	mflr r0
/* 802DEB60  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DEB64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DEB68  7C 7F 1B 78 */	mr r31, r3
/* 802DEB6C  3C 60 80 3D */	lis r3, __vt__12JUTGraphFifo@ha
/* 802DEB70  38 03 C5 90 */	addi r0, r3, __vt__12JUTGraphFifo@l
/* 802DEB74  90 1F 00 00 */	stw r0, 0(r31)
/* 802DEB78  38 04 00 1F */	addi r0, r4, 0x1f
/* 802DEB7C  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 802DEB80  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802DEB84  88 0D 8F 38 */	lbz r0, data_804514B8(r13)
/* 802DEB88  28 00 00 00 */	cmplwi r0, 0
/* 802DEB8C  41 82 00 4C */	beq lbl_802DEBD8
/* 802DEB90  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802DEB94  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802DEB98  38 84 00 80 */	addi r4, r4, 0x80
/* 802DEB9C  38 A0 00 20 */	li r5, 0x20
/* 802DEBA0  4B FE F9 35 */	bl alloc__7JKRHeapFUli
/* 802DEBA4  90 7F 00 04 */	stw r3, 4(r31)
/* 802DEBA8  80 7F 00 04 */	lwz r3, 4(r31)
/* 802DEBAC  38 03 00 80 */	addi r0, r3, 0x80
/* 802DEBB0  90 1F 00 08 */	stw r0, 8(r31)
/* 802DEBB4  80 7F 00 04 */	lwz r3, 4(r31)
/* 802DEBB8  80 9F 00 08 */	lwz r4, 8(r31)
/* 802DEBBC  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 802DEBC0  48 07 BB 1D */	bl GXInitFifoBase
/* 802DEBC4  80 9F 00 08 */	lwz r4, 8(r31)
/* 802DEBC8  80 7F 00 04 */	lwz r3, 4(r31)
/* 802DEBCC  7C 85 23 78 */	mr r5, r4
/* 802DEBD0  48 07 BB 79 */	bl GXInitFifoPtrs
/* 802DEBD4  48 00 00 48 */	b lbl_802DEC1C
lbl_802DEBD8:
/* 802DEBD8  80 6D 8D F0 */	lwz r3, sSystemHeap__7JKRHeap(r13)
/* 802DEBDC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802DEBE0  38 84 00 A0 */	addi r4, r4, 0xa0
/* 802DEBE4  38 A0 00 20 */	li r5, 0x20
/* 802DEBE8  4B FE F8 ED */	bl alloc__7JKRHeapFUli
/* 802DEBEC  90 7F 00 08 */	stw r3, 8(r31)
/* 802DEBF0  80 7F 00 08 */	lwz r3, 8(r31)
/* 802DEBF4  38 03 00 1F */	addi r0, r3, 0x1f
/* 802DEBF8  54 00 00 34 */	rlwinm r0, r0, 0, 0, 0x1a
/* 802DEBFC  90 1F 00 08 */	stw r0, 8(r31)
/* 802DEC00  80 7F 00 08 */	lwz r3, 8(r31)
/* 802DEC04  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 802DEC08  48 07 AA 69 */	bl GXInit
/* 802DEC0C  90 7F 00 04 */	stw r3, 4(r31)
/* 802DEC10  38 00 00 01 */	li r0, 1
/* 802DEC14  98 0D 8F 38 */	stb r0, data_804514B8(r13)
/* 802DEC18  93 ED 8F 3C */	stw r31, sCurrentFifo__12JUTGraphFifo(r13)
lbl_802DEC1C:
/* 802DEC1C  7F E3 FB 78 */	mr r3, r31
/* 802DEC20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DEC24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DEC28  7C 08 03 A6 */	mtlr r0
/* 802DEC2C  38 21 00 10 */	addi r1, r1, 0x10
/* 802DEC30  4E 80 00 20 */	blr 
