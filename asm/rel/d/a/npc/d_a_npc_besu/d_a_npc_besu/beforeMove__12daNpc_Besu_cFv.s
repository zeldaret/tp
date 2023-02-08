lbl_80538B54:
/* 80538B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80538B58  7C 08 02 A6 */	mflr r0
/* 80538B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80538B60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80538B64  93 C1 00 08 */	stw r30, 8(r1)
/* 80538B68  7C 7E 1B 78 */	mr r30, r3
/* 80538B6C  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80538B70  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80538B74  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80538B78  3B E0 00 00 */	li r31, 0
/* 80538B7C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80538B80  28 00 00 00 */	cmplwi r0, 0
/* 80538B84  40 82 00 1C */	bne lbl_80538BA0
/* 80538B88  4B AF 6E CD */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80538B8C  2C 03 00 00 */	cmpwi r3, 0
/* 80538B90  40 82 00 14 */	bne lbl_80538BA4
/* 80538B94  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80538B98  28 00 00 00 */	cmplwi r0, 0
/* 80538B9C  41 82 00 08 */	beq lbl_80538BA4
lbl_80538BA0:
/* 80538BA0  3B E0 00 01 */	li r31, 1
lbl_80538BA4:
/* 80538BA4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80538BA8  41 82 00 10 */	beq lbl_80538BB8
/* 80538BAC  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80538BB0  64 00 08 00 */	oris r0, r0, 0x800
/* 80538BB4  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80538BB8:
/* 80538BB8  3B E0 00 00 */	li r31, 0
/* 80538BBC  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80538BC0  28 00 00 00 */	cmplwi r0, 0
/* 80538BC4  40 82 00 1C */	bne lbl_80538BE0
/* 80538BC8  4B AF 6E 8D */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80538BCC  2C 03 00 00 */	cmpwi r3, 0
/* 80538BD0  40 82 00 14 */	bne lbl_80538BE4
/* 80538BD4  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80538BD8  28 00 00 00 */	cmplwi r0, 0
/* 80538BDC  41 82 00 08 */	beq lbl_80538BE4
lbl_80538BE0:
/* 80538BE0  3B E0 00 01 */	li r31, 1
lbl_80538BE4:
/* 80538BE4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80538BE8  40 82 00 10 */	bne lbl_80538BF8
/* 80538BEC  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80538BF0  28 00 00 00 */	cmplwi r0, 0
/* 80538BF4  41 82 00 0C */	beq lbl_80538C00
lbl_80538BF8:
/* 80538BF8  38 00 00 00 */	li r0, 0
/* 80538BFC  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80538C00:
/* 80538C00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80538C04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80538C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80538C0C  7C 08 03 A6 */	mtlr r0
/* 80538C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80538C14  4E 80 00 20 */	blr 
