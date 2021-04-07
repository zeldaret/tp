lbl_80A15CA4:
/* 80A15CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A15CA8  7C 08 02 A6 */	mflr r0
/* 80A15CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A15CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A15CB4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A15CB8  7C 7E 1B 78 */	mr r30, r3
/* 80A15CBC  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80A15CC0  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80A15CC4  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80A15CC8  3B E0 00 00 */	li r31, 0
/* 80A15CCC  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80A15CD0  28 00 00 00 */	cmplwi r0, 0
/* 80A15CD4  40 82 00 1C */	bne lbl_80A15CF0
/* 80A15CD8  4B 61 9D 7D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80A15CDC  2C 03 00 00 */	cmpwi r3, 0
/* 80A15CE0  40 82 00 14 */	bne lbl_80A15CF4
/* 80A15CE4  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A15CE8  28 00 00 00 */	cmplwi r0, 0
/* 80A15CEC  41 82 00 08 */	beq lbl_80A15CF4
lbl_80A15CF0:
/* 80A15CF0  3B E0 00 01 */	li r31, 1
lbl_80A15CF4:
/* 80A15CF4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A15CF8  41 82 00 10 */	beq lbl_80A15D08
/* 80A15CFC  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80A15D00  64 00 08 00 */	oris r0, r0, 0x800
/* 80A15D04  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80A15D08:
/* 80A15D08  3B E0 00 00 */	li r31, 0
/* 80A15D0C  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80A15D10  28 00 00 00 */	cmplwi r0, 0
/* 80A15D14  40 82 00 1C */	bne lbl_80A15D30
/* 80A15D18  4B 61 9D 3D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80A15D1C  2C 03 00 00 */	cmpwi r3, 0
/* 80A15D20  40 82 00 14 */	bne lbl_80A15D34
/* 80A15D24  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80A15D28  28 00 00 00 */	cmplwi r0, 0
/* 80A15D2C  41 82 00 08 */	beq lbl_80A15D34
lbl_80A15D30:
/* 80A15D30  3B E0 00 01 */	li r31, 1
lbl_80A15D34:
/* 80A15D34  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80A15D38  40 82 00 10 */	bne lbl_80A15D48
/* 80A15D3C  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80A15D40  28 00 00 00 */	cmplwi r0, 0
/* 80A15D44  41 82 00 0C */	beq lbl_80A15D50
lbl_80A15D48:
/* 80A15D48  38 00 00 00 */	li r0, 0
/* 80A15D4C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80A15D50:
/* 80A15D50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A15D54  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A15D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A15D5C  7C 08 03 A6 */	mtlr r0
/* 80A15D60  38 21 00 10 */	addi r1, r1, 0x10
/* 80A15D64  4E 80 00 20 */	blr 
