lbl_802CDB1C:
/* 802CDB1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CDB20  7C 08 02 A6 */	mflr r0
/* 802CDB24  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CDB28  88 03 05 18 */	lbz r0, 0x518(r3)
/* 802CDB2C  28 00 00 00 */	cmplwi r0, 0
/* 802CDB30  41 82 00 0C */	beq lbl_802CDB3C
/* 802CDB34  38 60 00 00 */	li r3, 0
/* 802CDB38  48 00 00 20 */	b lbl_802CDB58
lbl_802CDB3C:
/* 802CDB3C  80 04 00 00 */	lwz r0, 0(r4)
/* 802CDB40  90 01 00 08 */	stw r0, 8(r1)
/* 802CDB44  38 81 00 08 */	addi r4, r1, 8
/* 802CDB48  85 83 05 30 */	lwzu r12, 0x530(r3)
/* 802CDB4C  81 8C 00 08 */	lwz r12, 8(r12)
/* 802CDB50  7D 89 03 A6 */	mtctr r12
/* 802CDB54  4E 80 04 21 */	bctrl 
lbl_802CDB58:
/* 802CDB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CDB5C  7C 08 03 A6 */	mtlr r0
/* 802CDB60  38 21 00 10 */	addi r1, r1, 0x10
/* 802CDB64  4E 80 00 20 */	blr 
