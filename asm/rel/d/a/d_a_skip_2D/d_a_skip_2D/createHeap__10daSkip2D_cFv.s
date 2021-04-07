lbl_80D4D498:
/* 80D4D498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4D49C  7C 08 02 A6 */	mflr r0
/* 80D4D4A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4D4A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4D4A8  7C 7F 1B 78 */	mr r31, r3
/* 80D4D4AC  38 60 06 30 */	li r3, 0x630
/* 80D4D4B0  4B 58 17 9D */	bl __nw__FUl
/* 80D4D4B4  7C 60 1B 79 */	or. r0, r3, r3
/* 80D4D4B8  41 82 00 0C */	beq lbl_80D4D4C4
/* 80D4D4BC  4B 4B 3E 6D */	bl __ct__14dMeterButton_cFv
/* 80D4D4C0  7C 60 1B 78 */	mr r0, r3
lbl_80D4D4C4:
/* 80D4D4C4  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80D4D4C8  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80D4D4CC  28 00 00 00 */	cmplwi r0, 0
/* 80D4D4D0  40 82 00 0C */	bne lbl_80D4D4DC
/* 80D4D4D4  38 60 00 00 */	li r3, 0
/* 80D4D4D8  48 00 00 08 */	b lbl_80D4D4E0
lbl_80D4D4DC:
/* 80D4D4DC  38 60 00 01 */	li r3, 1
lbl_80D4D4E0:
/* 80D4D4E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4D4E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4D4E8  7C 08 03 A6 */	mtlr r0
/* 80D4D4EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4D4F0  4E 80 00 20 */	blr 
