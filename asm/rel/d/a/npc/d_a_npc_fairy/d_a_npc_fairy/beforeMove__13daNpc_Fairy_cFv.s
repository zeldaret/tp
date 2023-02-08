lbl_809B3B20:
/* 809B3B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B3B24  7C 08 02 A6 */	mflr r0
/* 809B3B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B3B2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B3B30  93 C1 00 08 */	stw r30, 8(r1)
/* 809B3B34  7C 7E 1B 78 */	mr r30, r3
/* 809B3B38  3B E0 00 00 */	li r31, 0
/* 809B3B3C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 809B3B40  28 00 00 00 */	cmplwi r0, 0
/* 809B3B44  40 82 00 1C */	bne lbl_809B3B60
/* 809B3B48  4B 67 BF 0D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 809B3B4C  2C 03 00 00 */	cmpwi r3, 0
/* 809B3B50  40 82 00 14 */	bne lbl_809B3B64
/* 809B3B54  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 809B3B58  28 00 00 00 */	cmplwi r0, 0
/* 809B3B5C  41 82 00 08 */	beq lbl_809B3B64
lbl_809B3B60:
/* 809B3B60  3B E0 00 01 */	li r31, 1
lbl_809B3B64:
/* 809B3B64  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 809B3B68  40 82 00 10 */	bne lbl_809B3B78
/* 809B3B6C  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 809B3B70  28 00 00 00 */	cmplwi r0, 0
/* 809B3B74  41 82 00 0C */	beq lbl_809B3B80
lbl_809B3B78:
/* 809B3B78  38 00 00 00 */	li r0, 0
/* 809B3B7C  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_809B3B80:
/* 809B3B80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B3B84  83 C1 00 08 */	lwz r30, 8(r1)
/* 809B3B88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B3B8C  7C 08 03 A6 */	mtlr r0
/* 809B3B90  38 21 00 10 */	addi r1, r1, 0x10
/* 809B3B94  4E 80 00 20 */	blr 
