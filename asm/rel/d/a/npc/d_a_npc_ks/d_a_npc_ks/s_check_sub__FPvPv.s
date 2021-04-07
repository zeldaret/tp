lbl_80A5D2BC:
/* 80A5D2BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A5D2C0  7C 08 02 A6 */	mflr r0
/* 80A5D2C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A5D2C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A5D2CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A5D2D0  7C 7E 1B 78 */	mr r30, r3
/* 80A5D2D4  7C 9F 23 78 */	mr r31, r4
/* 80A5D2D8  4B 5B BA 09 */	bl fopAc_IsActor__FPv
/* 80A5D2DC  2C 03 00 00 */	cmpwi r3, 0
/* 80A5D2E0  41 82 00 58 */	beq lbl_80A5D338
/* 80A5D2E4  A8 1E 00 08 */	lha r0, 8(r30)
/* 80A5D2E8  2C 00 00 60 */	cmpwi r0, 0x60
/* 80A5D2EC  40 82 00 4C */	bne lbl_80A5D338
/* 80A5D2F0  28 1F 00 00 */	cmplwi r31, 0
/* 80A5D2F4  41 82 00 0C */	beq lbl_80A5D300
/* 80A5D2F8  80 7F 00 04 */	lwz r3, 4(r31)
/* 80A5D2FC  48 00 00 08 */	b lbl_80A5D304
lbl_80A5D300:
/* 80A5D300  38 60 FF FF */	li r3, -1
lbl_80A5D304:
/* 80A5D304  28 1E 00 00 */	cmplwi r30, 0
/* 80A5D308  41 82 00 0C */	beq lbl_80A5D314
/* 80A5D30C  80 1E 00 04 */	lwz r0, 4(r30)
/* 80A5D310  48 00 00 08 */	b lbl_80A5D318
lbl_80A5D314:
/* 80A5D314  38 00 FF FF */	li r0, -1
lbl_80A5D318:
/* 80A5D318  7C 00 18 40 */	cmplw r0, r3
/* 80A5D31C  41 82 00 1C */	beq lbl_80A5D338
/* 80A5D320  88 7E 05 B6 */	lbz r3, 0x5b6(r30)
/* 80A5D324  88 1F 05 B6 */	lbz r0, 0x5b6(r31)
/* 80A5D328  7C 03 00 40 */	cmplw r3, r0
/* 80A5D32C  40 82 00 0C */	bne lbl_80A5D338
/* 80A5D330  7F C3 F3 78 */	mr r3, r30
/* 80A5D334  48 00 00 08 */	b lbl_80A5D33C
lbl_80A5D338:
/* 80A5D338  38 60 00 00 */	li r3, 0
lbl_80A5D33C:
/* 80A5D33C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A5D340  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A5D344  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A5D348  7C 08 03 A6 */	mtlr r0
/* 80A5D34C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A5D350  4E 80 00 20 */	blr 
