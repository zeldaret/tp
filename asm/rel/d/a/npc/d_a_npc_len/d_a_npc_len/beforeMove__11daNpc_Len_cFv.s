lbl_80A65A60:
/* 80A65A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A65A64  7C 08 02 A6 */	mflr r0
/* 80A65A68  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A65A6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A65A70  93 C1 00 08 */	stw r30, 8(r1)
/* 80A65A74  7C 7E 1B 78 */	mr r30, r3
/* 80A65A78  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80A65A7C  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80A65A80  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80A65A84  3B E0 00 00 */	li r31, 0
/* 80A65A88  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A65A8C  28 00 00 00 */	cmplwi r0, 0
/* 80A65A90  40 82 00 1C */	bne lbl_80A65AAC
/* 80A65A94  4B 5C 9F C1 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80A65A98  2C 03 00 00 */	cmpwi r3, 0
/* 80A65A9C  40 82 00 14 */	bne lbl_80A65AB0
/* 80A65AA0  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A65AA4  28 00 00 00 */	cmplwi r0, 0
/* 80A65AA8  41 82 00 08 */	beq lbl_80A65AB0
lbl_80A65AAC:
/* 80A65AAC  3B E0 00 01 */	li r31, 1
lbl_80A65AB0:
/* 80A65AB0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A65AB4  41 82 00 10 */	beq lbl_80A65AC4
/* 80A65AB8  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80A65ABC  64 00 08 00 */	oris r0, r0, 0x800
/* 80A65AC0  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80A65AC4:
/* 80A65AC4  3B E0 00 00 */	li r31, 0
/* 80A65AC8  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80A65ACC  28 00 00 00 */	cmplwi r0, 0
/* 80A65AD0  40 82 00 1C */	bne lbl_80A65AEC
/* 80A65AD4  4B 5C 9F 81 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80A65AD8  2C 03 00 00 */	cmpwi r3, 0
/* 80A65ADC  40 82 00 14 */	bne lbl_80A65AF0
/* 80A65AE0  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A65AE4  28 00 00 00 */	cmplwi r0, 0
/* 80A65AE8  41 82 00 08 */	beq lbl_80A65AF0
lbl_80A65AEC:
/* 80A65AEC  3B E0 00 01 */	li r31, 1
lbl_80A65AF0:
/* 80A65AF0  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A65AF4  40 82 00 10 */	bne lbl_80A65B04
/* 80A65AF8  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80A65AFC  28 00 00 00 */	cmplwi r0, 0
/* 80A65B00  41 82 00 0C */	beq lbl_80A65B0C
lbl_80A65B04:
/* 80A65B04  38 00 00 00 */	li r0, 0
/* 80A65B08  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A65B0C:
/* 80A65B0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A65B10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A65B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A65B18  7C 08 03 A6 */	mtlr r0
/* 80A65B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A65B20  4E 80 00 20 */	blr 
