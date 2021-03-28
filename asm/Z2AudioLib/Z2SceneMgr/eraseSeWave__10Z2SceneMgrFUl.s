lbl_802BA5C8:
/* 802BA5C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802BA5CC  7C 08 02 A6 */	mflr r0
/* 802BA5D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802BA5D4  80 6D 87 40 */	lwz r3, data_80450CC0(r13)
/* 802BA5D8  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 802BA5DC  28 00 00 00 */	cmplwi r0, 0
/* 802BA5E0  41 81 00 0C */	bgt lbl_802BA5EC
/* 802BA5E4  38 60 00 00 */	li r3, 0
/* 802BA5E8  48 00 00 0C */	b lbl_802BA5F4
lbl_802BA5EC:
/* 802BA5EC  80 63 00 F4 */	lwz r3, 0xf4(r3)
/* 802BA5F0  80 63 00 00 */	lwz r3, 0(r3)
lbl_802BA5F4:
/* 802BA5F4  28 03 00 00 */	cmplwi r3, 0
/* 802BA5F8  41 82 00 24 */	beq lbl_802BA61C
/* 802BA5FC  81 83 00 00 */	lwz r12, 0(r3)
/* 802BA600  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 802BA604  7D 89 03 A6 */	mtctr r12
/* 802BA608  4E 80 04 21 */	bctrl 
/* 802BA60C  28 03 00 00 */	cmplwi r3, 0
/* 802BA610  41 82 00 0C */	beq lbl_802BA61C
/* 802BA614  4B FE 00 2D */	bl erase__10JASWaveArcFv
/* 802BA618  48 00 00 08 */	b lbl_802BA620
lbl_802BA61C:
/* 802BA61C  38 60 00 00 */	li r3, 0
lbl_802BA620:
/* 802BA620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802BA624  7C 08 03 A6 */	mtlr r0
/* 802BA628  38 21 00 10 */	addi r1, r1, 0x10
/* 802BA62C  4E 80 00 20 */	blr 
