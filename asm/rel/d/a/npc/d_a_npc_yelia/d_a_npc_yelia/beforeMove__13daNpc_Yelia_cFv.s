lbl_80B4EA28:
/* 80B4EA28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4EA2C  7C 08 02 A6 */	mflr r0
/* 80B4EA30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4EA34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B4EA38  93 C1 00 08 */	stw r30, 8(r1)
/* 80B4EA3C  7C 7E 1B 78 */	mr r30, r3
/* 80B4EA40  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80B4EA44  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80B4EA48  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80B4EA4C  3B E0 00 00 */	li r31, 0
/* 80B4EA50  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80B4EA54  28 00 00 00 */	cmplwi r0, 0
/* 80B4EA58  40 82 00 1C */	bne lbl_80B4EA74
/* 80B4EA5C  4B 4E 0F F9 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80B4EA60  2C 03 00 00 */	cmpwi r3, 0
/* 80B4EA64  40 82 00 14 */	bne lbl_80B4EA78
/* 80B4EA68  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B4EA6C  28 00 00 00 */	cmplwi r0, 0
/* 80B4EA70  41 82 00 08 */	beq lbl_80B4EA78
lbl_80B4EA74:
/* 80B4EA74  3B E0 00 01 */	li r31, 1
lbl_80B4EA78:
/* 80B4EA78  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B4EA7C  41 82 00 10 */	beq lbl_80B4EA8C
/* 80B4EA80  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80B4EA84  64 00 08 00 */	oris r0, r0, 0x800
/* 80B4EA88  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80B4EA8C:
/* 80B4EA8C  3B E0 00 00 */	li r31, 0
/* 80B4EA90  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80B4EA94  28 00 00 00 */	cmplwi r0, 0
/* 80B4EA98  40 82 00 1C */	bne lbl_80B4EAB4
/* 80B4EA9C  4B 4E 0F B9 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80B4EAA0  2C 03 00 00 */	cmpwi r3, 0
/* 80B4EAA4  40 82 00 14 */	bne lbl_80B4EAB8
/* 80B4EAA8  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B4EAAC  28 00 00 00 */	cmplwi r0, 0
/* 80B4EAB0  41 82 00 08 */	beq lbl_80B4EAB8
lbl_80B4EAB4:
/* 80B4EAB4  3B E0 00 01 */	li r31, 1
lbl_80B4EAB8:
/* 80B4EAB8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B4EABC  40 82 00 10 */	bne lbl_80B4EACC
/* 80B4EAC0  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80B4EAC4  28 00 00 00 */	cmplwi r0, 0
/* 80B4EAC8  41 82 00 0C */	beq lbl_80B4EAD4
lbl_80B4EACC:
/* 80B4EACC  38 00 00 00 */	li r0, 0
/* 80B4EAD0  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80B4EAD4:
/* 80B4EAD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B4EAD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B4EADC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4EAE0  7C 08 03 A6 */	mtlr r0
/* 80B4EAE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4EAE8  4E 80 00 20 */	blr 
