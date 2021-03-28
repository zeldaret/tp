lbl_802EA89C:
/* 802EA89C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA8A0  7C 08 02 A6 */	mflr r0
/* 802EA8A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA8A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EA8AC  93 C1 00 08 */	stw r30, 8(r1)
/* 802EA8B0  7C 7E 1B 78 */	mr r30, r3
/* 802EA8B4  7C 9F 23 79 */	or. r31, r4, r4
/* 802EA8B8  40 82 00 10 */	bne lbl_802EA8C8
/* 802EA8BC  80 1E 00 84 */	lwz r0, 0x84(r30)
/* 802EA8C0  28 00 00 00 */	cmplwi r0, 0
/* 802EA8C4  41 82 00 70 */	beq lbl_802EA934
lbl_802EA8C8:
/* 802EA8C8  7F C3 F3 78 */	mr r3, r30
/* 802EA8CC  4B FF FF 81 */	bl makeAnmPointer__11J2DMaterialFv
/* 802EA8D0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 802EA8D4  93 E3 00 00 */	stw r31, 0(r3)
/* 802EA8D8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 802EA8DC  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 802EA8E0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 802EA8E4  B0 03 00 10 */	sth r0, 0x10(r3)
/* 802EA8E8  28 1F 00 00 */	cmplwi r31, 0
/* 802EA8EC  41 82 00 48 */	beq lbl_802EA934
/* 802EA8F0  A0 7F 00 18 */	lhz r3, 0x18(r31)
/* 802EA8F4  A0 9E 00 0C */	lhz r4, 0xc(r30)
/* 802EA8F8  38 C0 00 00 */	li r6, 0
/* 802EA8FC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 802EA900  48 00 00 28 */	b lbl_802EA928
lbl_802EA904:
/* 802EA904  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 802EA908  54 C3 0B FC */	rlwinm r3, r6, 1, 0xf, 0x1e
/* 802EA90C  7C 65 1A 2E */	lhzx r3, r5, r3
/* 802EA910  7C 04 18 40 */	cmplw r4, r3
/* 802EA914  40 82 00 10 */	bne lbl_802EA924
/* 802EA918  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 802EA91C  B0 C3 00 10 */	sth r6, 0x10(r3)
/* 802EA920  48 00 00 14 */	b lbl_802EA934
lbl_802EA924:
/* 802EA924  38 C6 00 01 */	addi r6, r6, 1
lbl_802EA928:
/* 802EA928  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 802EA92C  7C 03 00 40 */	cmplw r3, r0
/* 802EA930  41 80 FF D4 */	blt lbl_802EA904
lbl_802EA934:
/* 802EA934  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EA938  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EA93C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA940  7C 08 03 A6 */	mtlr r0
/* 802EA944  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA948  4E 80 00 20 */	blr 
