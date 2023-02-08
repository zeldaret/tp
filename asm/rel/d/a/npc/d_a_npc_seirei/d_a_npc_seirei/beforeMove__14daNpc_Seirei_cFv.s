lbl_80AD62A4:
/* 80AD62A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD62A8  7C 08 02 A6 */	mflr r0
/* 80AD62AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD62B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD62B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD62B8  7C 7E 1B 78 */	mr r30, r3
/* 80AD62BC  3B E0 00 00 */	li r31, 0
/* 80AD62C0  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80AD62C4  28 00 00 00 */	cmplwi r0, 0
/* 80AD62C8  40 82 00 1C */	bne lbl_80AD62E4
/* 80AD62CC  4B 55 97 89 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80AD62D0  2C 03 00 00 */	cmpwi r3, 0
/* 80AD62D4  40 82 00 14 */	bne lbl_80AD62E8
/* 80AD62D8  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80AD62DC  28 00 00 00 */	cmplwi r0, 0
/* 80AD62E0  41 82 00 08 */	beq lbl_80AD62E8
lbl_80AD62E4:
/* 80AD62E4  3B E0 00 01 */	li r31, 1
lbl_80AD62E8:
/* 80AD62E8  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AD62EC  40 82 00 10 */	bne lbl_80AD62FC
/* 80AD62F0  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80AD62F4  28 00 00 00 */	cmplwi r0, 0
/* 80AD62F8  41 82 00 0C */	beq lbl_80AD6304
lbl_80AD62FC:
/* 80AD62FC  38 00 00 00 */	li r0, 0
/* 80AD6300  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80AD6304:
/* 80AD6304  88 1E 0E 45 */	lbz r0, 0xe45(r30)
/* 80AD6308  28 00 00 00 */	cmplwi r0, 0
/* 80AD630C  41 82 00 0C */	beq lbl_80AD6318
/* 80AD6310  7F C3 F3 78 */	mr r3, r30
/* 80AD6314  48 00 04 0D */	bl ctrlWaitAnm__14daNpc_Seirei_cFv
lbl_80AD6318:
/* 80AD6318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD631C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD6320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD6324  7C 08 03 A6 */	mtlr r0
/* 80AD6328  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD632C  4E 80 00 20 */	blr 
