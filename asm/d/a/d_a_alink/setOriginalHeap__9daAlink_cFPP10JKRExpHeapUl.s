lbl_8013FFD8:
/* 8013FFD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8013FFDC  7C 08 02 A6 */	mflr r0
/* 8013FFE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8013FFE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8013FFE8  93 C1 00 08 */	stw r30, 8(r1)
/* 8013FFEC  7C 9E 23 78 */	mr r30, r4
/* 8013FFF0  7C BF 2B 78 */	mr r31, r5
/* 8013FFF4  80 04 00 00 */	lwz r0, 0(r4)
/* 8013FFF8  28 00 00 00 */	cmplwi r0, 0
/* 8013FFFC  40 82 00 24 */	bne lbl_80140020
/* 80140000  4B EC ED 51 */	bl mDoExt_getGameHeap__Fv
/* 80140004  7C 64 1B 78 */	mr r4, r3
/* 80140008  38 1F 00 0F */	addi r0, r31, 0xf
/* 8014000C  54 03 00 36 */	rlwinm r3, r0, 0, 0, 0x1b
/* 80140010  38 63 00 A0 */	addi r3, r3, 0xa0
/* 80140014  38 A0 00 01 */	li r5, 1
/* 80140018  48 18 EE 15 */	bl create__10JKRExpHeapFUlP7JKRHeapb
/* 8014001C  90 7E 00 00 */	stw r3, 0(r30)
lbl_80140020:
/* 80140020  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80140024  83 C1 00 08 */	lwz r30, 8(r1)
/* 80140028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014002C  7C 08 03 A6 */	mtlr r0
/* 80140030  38 21 00 10 */	addi r1, r1, 0x10
/* 80140034  4E 80 00 20 */	blr 
