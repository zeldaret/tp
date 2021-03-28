lbl_802A8B20:
/* 802A8B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8B24  7C 08 02 A6 */	mflr r0
/* 802A8B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8B30  93 C1 00 08 */	stw r30, 8(r1)
/* 802A8B34  7C 7E 1B 78 */	mr r30, r3
/* 802A8B38  7C 9F 23 78 */	mr r31, r4
lbl_802A8B3C:
/* 802A8B3C  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 802A8B40  7C 00 F8 40 */	cmplw r0, r31
/* 802A8B44  40 82 00 34 */	bne lbl_802A8B78
/* 802A8B48  7F C3 F3 78 */	mr r3, r30
/* 802A8B4C  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A8B50  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 802A8B54  7D 89 03 A6 */	mtctr r12
/* 802A8B58  4E 80 04 21 */	bctrl 
/* 802A8B5C  7F C3 F3 78 */	mr r3, r30
/* 802A8B60  81 9E 00 00 */	lwz r12, 0(r30)
/* 802A8B64  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802A8B68  7D 89 03 A6 */	mtctr r12
/* 802A8B6C  4E 80 04 21 */	bctrl 
/* 802A8B70  38 60 00 00 */	li r3, 0
/* 802A8B74  48 00 00 18 */	b lbl_802A8B8C
lbl_802A8B78:
/* 802A8B78  7F C3 F3 78 */	mr r3, r30
/* 802A8B7C  4B FF F6 71 */	bl process_character___Q28JMessage10TProcessorFv
/* 802A8B80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A8B84  40 82 FF B8 */	bne lbl_802A8B3C
/* 802A8B88  38 60 00 00 */	li r3, 0
lbl_802A8B8C:
/* 802A8B8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8B90  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A8B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8B98  7C 08 03 A6 */	mtlr r0
/* 802A8B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8BA0  4E 80 00 20 */	blr 
