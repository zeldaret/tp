lbl_802D0B30:
/* 802D0B30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D0B34  7C 08 02 A6 */	mflr r0
/* 802D0B38  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D0B3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D0B40  7C 7F 1B 78 */	mr r31, r3
/* 802D0B44  4B FF D5 F5 */	bl __ct__7JKRHeapFPvUlP7JKRHeapb
/* 802D0B48  3C 60 80 3D */	lis r3, __vt__12JKRSolidHeap@ha
/* 802D0B4C  38 03 C0 30 */	addi r0, r3, __vt__12JKRSolidHeap@l
/* 802D0B50  90 1F 00 00 */	stw r0, 0(r31)
/* 802D0B54  80 1F 00 38 */	lwz r0, 0x38(r31)
/* 802D0B58  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 802D0B5C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 802D0B60  90 1F 00 70 */	stw r0, 0x70(r31)
/* 802D0B64  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 802D0B68  90 1F 00 74 */	stw r0, 0x74(r31)
/* 802D0B6C  38 00 00 00 */	li r0, 0
/* 802D0B70  90 1F 00 78 */	stw r0, 0x78(r31)
/* 802D0B74  7F E3 FB 78 */	mr r3, r31
/* 802D0B78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D0B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D0B80  7C 08 03 A6 */	mtlr r0
/* 802D0B84  38 21 00 10 */	addi r1, r1, 0x10
/* 802D0B88  4E 80 00 20 */	blr 
