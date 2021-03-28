lbl_80A1BC88:
/* 80A1BC88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A1BC8C  7C 08 02 A6 */	mflr r0
/* 80A1BC90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A1BC94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A1BC98  7C 7F 1B 78 */	mr r31, r3
/* 80A1BC9C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80A1BCA0  3C 03 00 01 */	addis r0, r3, 1
/* 80A1BCA4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80A1BCA8  40 82 00 34 */	bne lbl_80A1BCDC
/* 80A1BCAC  38 00 00 00 */	li r0, 0
/* 80A1BCB0  90 01 00 08 */	stw r0, 8(r1)
/* 80A1BCB4  38 60 02 A5 */	li r3, 0x2a5
/* 80A1BCB8  38 81 00 08 */	addi r4, r1, 8
/* 80A1BCBC  4B 5F DD 70 */	b fopAcM_SearchByName__FsPP10fopAc_ac_c
/* 80A1BCC0  2C 03 00 00 */	cmpwi r3, 0
/* 80A1BCC4  41 82 00 18 */	beq lbl_80A1BCDC
/* 80A1BCC8  80 81 00 08 */	lwz r4, 8(r1)
/* 80A1BCCC  28 04 00 00 */	cmplwi r4, 0
/* 80A1BCD0  41 82 00 0C */	beq lbl_80A1BCDC
/* 80A1BCD4  38 7F 00 18 */	addi r3, r31, 0x18
/* 80A1BCD8  4B 73 49 E4 */	b entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
lbl_80A1BCDC:
/* 80A1BCDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A1BCE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A1BCE4  7C 08 03 A6 */	mtlr r0
/* 80A1BCE8  38 21 00 20 */	addi r1, r1, 0x20
/* 80A1BCEC  4E 80 00 20 */	blr 
