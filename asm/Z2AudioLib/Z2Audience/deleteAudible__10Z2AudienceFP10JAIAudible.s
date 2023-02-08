lbl_802BD4D4:
/* 802BD4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BD4D8  7C 08 02 A6 */	mflr r0
/* 802BD4DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BD4E0  28 04 00 00 */	cmplwi r4, 0
/* 802BD4E4  41 82 00 1C */	beq lbl_802BD500
/* 802BD4E8  7C 83 23 78 */	mr r3, r4
/* 802BD4EC  38 80 00 01 */	li r4, 1
/* 802BD4F0  81 83 00 00 */	lwz r12, 0(r3)
/* 802BD4F4  81 8C 00 08 */	lwz r12, 8(r12)
/* 802BD4F8  7D 89 03 A6 */	mtctr r12
/* 802BD4FC  4E 80 04 21 */	bctrl 
lbl_802BD500:
/* 802BD500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BD504  7C 08 03 A6 */	mtlr r0
/* 802BD508  38 21 00 10 */	addi r1, r1, 0x10
/* 802BD50C  4E 80 00 20 */	blr 
