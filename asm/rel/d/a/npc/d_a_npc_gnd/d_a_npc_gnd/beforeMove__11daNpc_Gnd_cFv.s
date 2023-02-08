lbl_809BC760:
/* 809BC760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BC764  7C 08 02 A6 */	mflr r0
/* 809BC768  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BC76C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BC770  93 C1 00 08 */	stw r30, 8(r1)
/* 809BC774  7C 7E 1B 78 */	mr r30, r3
/* 809BC778  3B E0 00 00 */	li r31, 0
/* 809BC77C  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 809BC780  28 00 00 00 */	cmplwi r0, 0
/* 809BC784  40 82 00 1C */	bne lbl_809BC7A0
/* 809BC788  4B 67 32 CD */	bl dComIfGs_wolfeye_effect_check__Fv
/* 809BC78C  2C 03 00 00 */	cmpwi r3, 0
/* 809BC790  40 82 00 14 */	bne lbl_809BC7A4
/* 809BC794  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 809BC798  28 00 00 00 */	cmplwi r0, 0
/* 809BC79C  41 82 00 08 */	beq lbl_809BC7A4
lbl_809BC7A0:
/* 809BC7A0  3B E0 00 01 */	li r31, 1
lbl_809BC7A4:
/* 809BC7A4  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 809BC7A8  40 82 00 10 */	bne lbl_809BC7B8
/* 809BC7AC  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 809BC7B0  28 00 00 00 */	cmplwi r0, 0
/* 809BC7B4  41 82 00 0C */	beq lbl_809BC7C0
lbl_809BC7B8:
/* 809BC7B8  38 00 00 00 */	li r0, 0
/* 809BC7BC  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_809BC7C0:
/* 809BC7C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BC7C4  83 C1 00 08 */	lwz r30, 8(r1)
/* 809BC7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BC7CC  7C 08 03 A6 */	mtlr r0
/* 809BC7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 809BC7D4  4E 80 00 20 */	blr 
