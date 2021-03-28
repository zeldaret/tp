lbl_80AED758:
/* 80AED758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AED75C  7C 08 02 A6 */	mflr r0
/* 80AED760  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AED764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AED768  93 C1 00 08 */	stw r30, 8(r1)
/* 80AED76C  7C 7E 1B 78 */	mr r30, r3
/* 80AED770  3B E0 00 00 */	li r31, 0
/* 80AED774  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80AED778  28 00 00 00 */	cmplwi r0, 0
/* 80AED77C  40 82 00 1C */	bne lbl_80AED798
/* 80AED780  4B 54 22 D4 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80AED784  2C 03 00 00 */	cmpwi r3, 0
/* 80AED788  40 82 00 14 */	bne lbl_80AED79C
/* 80AED78C  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80AED790  28 00 00 00 */	cmplwi r0, 0
/* 80AED794  41 82 00 08 */	beq lbl_80AED79C
lbl_80AED798:
/* 80AED798  3B E0 00 01 */	li r31, 1
lbl_80AED79C:
/* 80AED79C  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80AED7A0  40 82 00 10 */	bne lbl_80AED7B0
/* 80AED7A4  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80AED7A8  28 00 00 00 */	cmplwi r0, 0
/* 80AED7AC  41 82 00 0C */	beq lbl_80AED7B8
lbl_80AED7B0:
/* 80AED7B0  38 00 00 00 */	li r0, 0
/* 80AED7B4  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80AED7B8:
/* 80AED7B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AED7BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AED7C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AED7C4  7C 08 03 A6 */	mtlr r0
/* 80AED7C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AED7CC  4E 80 00 20 */	blr 
