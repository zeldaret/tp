lbl_802013CC:
/* 802013CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802013D0  7C 08 02 A6 */	mflr r0
/* 802013D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802013D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802013DC  7C 7F 1B 78 */	mr r31, r3
/* 802013E0  48 00 34 09 */	bl screenInitButton__14dMeterButton_cFv
/* 802013E4  7F E3 FB 78 */	mr r3, r31
/* 802013E8  48 00 44 4D */	bl screenInitText__14dMeterButton_cFv
/* 802013EC  38 60 00 04 */	li r3, 4
/* 802013F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802013F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802013F8  7C 08 03 A6 */	mtlr r0
/* 802013FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80201400  4E 80 00 20 */	blr 
