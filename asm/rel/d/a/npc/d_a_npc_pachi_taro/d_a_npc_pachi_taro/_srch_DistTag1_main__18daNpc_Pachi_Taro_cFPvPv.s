lbl_80A9D2A8:
/* 80A9D2A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9D2AC  7C 08 02 A6 */	mflr r0
/* 80A9D2B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9D2B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A9D2B8  7C 7F 1B 78 */	mr r31, r3
/* 80A9D2BC  4B 57 BA 25 */	bl fopAc_IsActor__FPv
/* 80A9D2C0  2C 03 00 00 */	cmpwi r3, 0
/* 80A9D2C4  40 82 00 0C */	bne lbl_80A9D2D0
/* 80A9D2C8  38 60 00 00 */	li r3, 0
/* 80A9D2CC  48 00 00 30 */	b lbl_80A9D2FC
lbl_80A9D2D0:
/* 80A9D2D0  A8 1F 00 08 */	lha r0, 8(r31)
/* 80A9D2D4  2C 00 02 72 */	cmpwi r0, 0x272
/* 80A9D2D8  41 82 00 0C */	beq lbl_80A9D2E4
/* 80A9D2DC  38 60 00 00 */	li r3, 0
/* 80A9D2E0  48 00 00 1C */	b lbl_80A9D2FC
lbl_80A9D2E4:
/* 80A9D2E4  80 1F 06 E0 */	lwz r0, 0x6e0(r31)
/* 80A9D2E8  28 00 00 00 */	cmplwi r0, 0
/* 80A9D2EC  40 82 00 0C */	bne lbl_80A9D2F8
/* 80A9D2F0  7F E3 FB 78 */	mr r3, r31
/* 80A9D2F4  48 00 00 08 */	b lbl_80A9D2FC
lbl_80A9D2F8:
/* 80A9D2F8  38 60 00 00 */	li r3, 0
lbl_80A9D2FC:
/* 80A9D2FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9D300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9D304  7C 08 03 A6 */	mtlr r0
/* 80A9D308  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9D30C  4E 80 00 20 */	blr 
