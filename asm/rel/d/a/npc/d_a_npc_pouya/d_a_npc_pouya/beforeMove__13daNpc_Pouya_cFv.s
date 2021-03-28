lbl_80AAF4F8:
/* 80AAF4F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAF4FC  7C 08 02 A6 */	mflr r0
/* 80AAF500  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAF504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAF508  93 C1 00 08 */	stw r30, 8(r1)
/* 80AAF50C  7C 7E 1B 78 */	mr r30, r3
/* 80AAF510  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80AAF514  54 00 01 46 */	rlwinm r0, r0, 0, 5, 3
/* 80AAF518  90 03 04 9C */	stw r0, 0x49c(r3)
/* 80AAF51C  3B E0 00 00 */	li r31, 0
/* 80AAF520  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80AAF524  28 00 00 00 */	cmplwi r0, 0
/* 80AAF528  40 82 00 1C */	bne lbl_80AAF544
/* 80AAF52C  4B 58 05 28 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80AAF530  2C 03 00 00 */	cmpwi r3, 0
/* 80AAF534  40 82 00 14 */	bne lbl_80AAF548
/* 80AAF538  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80AAF53C  28 00 00 00 */	cmplwi r0, 0
/* 80AAF540  41 82 00 08 */	beq lbl_80AAF548
lbl_80AAF544:
/* 80AAF544  3B E0 00 01 */	li r31, 1
lbl_80AAF548:
/* 80AAF548  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AAF54C  41 82 00 10 */	beq lbl_80AAF55C
/* 80AAF550  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80AAF554  64 00 08 00 */	oris r0, r0, 0x800
/* 80AAF558  90 1E 04 9C */	stw r0, 0x49c(r30)
lbl_80AAF55C:
/* 80AAF55C  3B E0 00 00 */	li r31, 0
/* 80AAF560  88 1E 0E 25 */	lbz r0, 0xe25(r30)
/* 80AAF564  28 00 00 00 */	cmplwi r0, 0
/* 80AAF568  40 82 00 1C */	bne lbl_80AAF584
/* 80AAF56C  4B 58 04 E8 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80AAF570  2C 03 00 00 */	cmpwi r3, 0
/* 80AAF574  40 82 00 14 */	bne lbl_80AAF588
/* 80AAF578  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80AAF57C  28 00 00 00 */	cmplwi r0, 0
/* 80AAF580  41 82 00 08 */	beq lbl_80AAF588
lbl_80AAF584:
/* 80AAF584  3B E0 00 01 */	li r31, 1
lbl_80AAF588:
/* 80AAF588  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AAF58C  40 82 00 10 */	bne lbl_80AAF59C
/* 80AAF590  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80AAF594  28 00 00 00 */	cmplwi r0, 0
/* 80AAF598  41 82 00 0C */	beq lbl_80AAF5A4
lbl_80AAF59C:
/* 80AAF59C  38 00 00 00 */	li r0, 0
/* 80AAF5A0  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80AAF5A4:
/* 80AAF5A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAF5A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AAF5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAF5B0  7C 08 03 A6 */	mtlr r0
/* 80AAF5B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAF5B8  4E 80 00 20 */	blr 
