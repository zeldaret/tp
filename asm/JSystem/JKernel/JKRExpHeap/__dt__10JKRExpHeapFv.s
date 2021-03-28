lbl_802CF0C0:
/* 802CF0C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CF0C4  7C 08 02 A6 */	mflr r0
/* 802CF0C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CF0CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CF0D0  93 C1 00 08 */	stw r30, 8(r1)
/* 802CF0D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 802CF0D8  7C 9F 23 78 */	mr r31, r4
/* 802CF0DC  41 82 00 30 */	beq lbl_802CF10C
/* 802CF0E0  3C 80 80 3D */	lis r4, __vt__10JKRExpHeap@ha
/* 802CF0E4  38 04 BF D0 */	addi r0, r4, __vt__10JKRExpHeap@l
/* 802CF0E8  90 1E 00 00 */	stw r0, 0(r30)
/* 802CF0EC  4B FF F9 D5 */	bl dispose__7JKRHeapFv
/* 802CF0F0  7F C3 F3 78 */	mr r3, r30
/* 802CF0F4  38 80 00 00 */	li r4, 0
/* 802CF0F8  4B FF F1 6D */	bl __dt__7JKRHeapFv
/* 802CF0FC  7F E0 07 35 */	extsh. r0, r31
/* 802CF100  40 81 00 0C */	ble lbl_802CF10C
/* 802CF104  7F C3 F3 78 */	mr r3, r30
/* 802CF108  4B FF FC 35 */	bl __dl__FPv
lbl_802CF10C:
/* 802CF10C  7F C3 F3 78 */	mr r3, r30
/* 802CF110  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CF114  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CF118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CF11C  7C 08 03 A6 */	mtlr r0
/* 802CF120  38 21 00 10 */	addi r1, r1, 0x10
/* 802CF124  4E 80 00 20 */	blr 
