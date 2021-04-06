lbl_80AC5B44:
/* 80AC5B44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC5B48  7C 08 02 A6 */	mflr r0
/* 80AC5B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC5B50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC5B54  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC5B58  7C 7E 1B 78 */	mr r30, r3
/* 80AC5B5C  3B E0 00 00 */	li r31, 0
/* 80AC5B60  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80AC5B64  28 00 00 00 */	cmplwi r0, 0
/* 80AC5B68  40 82 00 1C */	bne lbl_80AC5B84
/* 80AC5B6C  4B 56 9E E9 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80AC5B70  2C 03 00 00 */	cmpwi r3, 0
/* 80AC5B74  40 82 00 14 */	bne lbl_80AC5B88
/* 80AC5B78  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80AC5B7C  28 00 00 00 */	cmplwi r0, 0
/* 80AC5B80  41 82 00 08 */	beq lbl_80AC5B88
lbl_80AC5B84:
/* 80AC5B84  3B E0 00 01 */	li r31, 1
lbl_80AC5B88:
/* 80AC5B88  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AC5B8C  40 82 00 10 */	bne lbl_80AC5B9C
/* 80AC5B90  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80AC5B94  28 00 00 00 */	cmplwi r0, 0
/* 80AC5B98  41 82 00 0C */	beq lbl_80AC5BA4
lbl_80AC5B9C:
/* 80AC5B9C  38 00 00 00 */	li r0, 0
/* 80AC5BA0  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80AC5BA4:
/* 80AC5BA4  7F C3 F3 78 */	mr r3, r30
/* 80AC5BA8  48 00 03 35 */	bl ctrlWaitAnm__12daNpc_seiB_cFv
/* 80AC5BAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC5BB0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC5BB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC5BB8  7C 08 03 A6 */	mtlr r0
/* 80AC5BBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC5BC0  4E 80 00 20 */	blr 
