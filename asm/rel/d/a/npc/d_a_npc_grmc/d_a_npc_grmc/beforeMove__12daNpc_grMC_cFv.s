lbl_809D8398:
/* 809D8398  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D839C  7C 08 02 A6 */	mflr r0
/* 809D83A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D83A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D83A8  93 C1 00 08 */	stw r30, 8(r1)
/* 809D83AC  7C 7E 1B 78 */	mr r30, r3
/* 809D83B0  3B E0 00 00 */	li r31, 0
/* 809D83B4  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 809D83B8  28 00 00 00 */	cmplwi r0, 0
/* 809D83BC  40 82 00 1C */	bne lbl_809D83D8
/* 809D83C0  4B 65 76 94 */	b dComIfGs_wolfeye_effect_check__Fv
/* 809D83C4  2C 03 00 00 */	cmpwi r3, 0
/* 809D83C8  40 82 00 14 */	bne lbl_809D83DC
/* 809D83CC  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 809D83D0  28 00 00 00 */	cmplwi r0, 0
/* 809D83D4  41 82 00 08 */	beq lbl_809D83DC
lbl_809D83D8:
/* 809D83D8  3B E0 00 01 */	li r31, 1
lbl_809D83DC:
/* 809D83DC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 809D83E0  40 82 00 10 */	bne lbl_809D83F0
/* 809D83E4  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 809D83E8  28 00 00 00 */	cmplwi r0, 0
/* 809D83EC  41 82 00 0C */	beq lbl_809D83F8
lbl_809D83F0:
/* 809D83F0  38 00 00 00 */	li r0, 0
/* 809D83F4  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_809D83F8:
/* 809D83F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D83FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D8400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D8404  7C 08 03 A6 */	mtlr r0
/* 809D8408  38 21 00 10 */	addi r1, r1, 0x10
/* 809D840C  4E 80 00 20 */	blr 
