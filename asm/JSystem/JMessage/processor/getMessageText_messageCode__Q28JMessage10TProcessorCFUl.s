lbl_802A8C44:
/* 802A8C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8C48  7C 08 02 A6 */	mflr r0
/* 802A8C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A8C50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A8C54  93 C1 00 08 */	stw r30, 8(r1)
/* 802A8C58  7C 7E 1B 78 */	mr r30, r3
/* 802A8C5C  7C 9F 23 78 */	mr r31, r4
/* 802A8C60  54 84 84 3E */	srwi r4, r4, 0x10
/* 802A8C64  4B FF EF F1 */	bl getResource_groupID__Q28JMessage10TProcessorCFUs
/* 802A8C68  28 03 00 00 */	cmplwi r3, 0
/* 802A8C6C  40 82 00 0C */	bne lbl_802A8C78
/* 802A8C70  38 80 00 00 */	li r4, 0
/* 802A8C74  48 00 00 30 */	b lbl_802A8CA4
lbl_802A8C78:
/* 802A8C78  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 802A8C7C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 802A8C80  A0 03 00 08 */	lhz r0, 8(r3)
/* 802A8C84  7C 04 00 40 */	cmplw r4, r0
/* 802A8C88  40 80 00 18 */	bge lbl_802A8CA0
/* 802A8C8C  A0 03 00 0A */	lhz r0, 0xa(r3)
/* 802A8C90  7C 04 01 D6 */	mullw r0, r4, r0
/* 802A8C94  7C 83 02 14 */	add r4, r3, r0
/* 802A8C98  38 84 00 10 */	addi r4, r4, 0x10
/* 802A8C9C  48 00 00 08 */	b lbl_802A8CA4
lbl_802A8CA0:
/* 802A8CA0  38 80 00 00 */	li r4, 0
lbl_802A8CA4:
/* 802A8CA4  28 04 00 00 */	cmplwi r4, 0
/* 802A8CA8  40 82 00 0C */	bne lbl_802A8CB4
/* 802A8CAC  38 60 00 00 */	li r3, 0
/* 802A8CB0  48 00 00 14 */	b lbl_802A8CC4
lbl_802A8CB4:
/* 802A8CB4  80 7E 00 08 */	lwz r3, 8(r30)
/* 802A8CB8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802A8CBC  80 04 00 00 */	lwz r0, 0(r4)
/* 802A8CC0  7C 63 02 14 */	add r3, r3, r0
lbl_802A8CC4:
/* 802A8CC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8CC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A8CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8CD0  7C 08 03 A6 */	mtlr r0
/* 802A8CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8CD8  4E 80 00 20 */	blr 
