lbl_80B762CC:
/* 80B762CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B762D0  7C 08 02 A6 */	mflr r0
/* 80B762D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B762D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B762DC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B762E0  7C 7E 1B 78 */	mr r30, r3
/* 80B762E4  3B E0 00 00 */	li r31, 0
/* 80B762E8  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80B762EC  28 00 00 00 */	cmplwi r0, 0
/* 80B762F0  40 82 00 1C */	bne lbl_80B7630C
/* 80B762F4  4B 4B 97 61 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80B762F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B762FC  40 82 00 14 */	bne lbl_80B76310
/* 80B76300  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80B76304  28 00 00 00 */	cmplwi r0, 0
/* 80B76308  41 82 00 08 */	beq lbl_80B76310
lbl_80B7630C:
/* 80B7630C  3B E0 00 01 */	li r31, 1
lbl_80B76310:
/* 80B76310  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80B76314  40 82 00 10 */	bne lbl_80B76324
/* 80B76318  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80B7631C  28 00 00 00 */	cmplwi r0, 0
/* 80B76320  41 82 00 0C */	beq lbl_80B7632C
lbl_80B76324:
/* 80B76324  38 00 00 00 */	li r0, 0
/* 80B76328  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80B7632C:
/* 80B7632C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B76330  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B76334  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B76338  7C 08 03 A6 */	mtlr r0
/* 80B7633C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B76340  4E 80 00 20 */	blr 
