lbl_802DE95C:
/* 802DE95C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DE960  7C 08 02 A6 */	mflr r0
/* 802DE964  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DE968  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DE96C  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 802DE970  30 04 FF FF */	addic r0, r4, -1
/* 802DE974  7F E0 21 10 */	subfe r31, r0, r4
/* 802DE978  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 802DE97C  41 82 00 0C */	beq lbl_802DE988
/* 802DE980  88 83 00 0C */	lbz r4, 0xc(r3)
/* 802DE984  48 07 FB 1D */	bl GXLoadTlut
lbl_802DE988:
/* 802DE988  7F E3 FB 78 */	mr r3, r31
/* 802DE98C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DE990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DE994  7C 08 03 A6 */	mtlr r0
/* 802DE998  38 21 00 10 */	addi r1, r1, 0x10
/* 802DE99C  4E 80 00 20 */	blr 
