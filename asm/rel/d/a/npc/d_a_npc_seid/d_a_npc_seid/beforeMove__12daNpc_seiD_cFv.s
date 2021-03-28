lbl_80ACA0DC:
/* 80ACA0DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACA0E0  7C 08 02 A6 */	mflr r0
/* 80ACA0E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACA0E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACA0EC  93 C1 00 08 */	stw r30, 8(r1)
/* 80ACA0F0  7C 7E 1B 78 */	mr r30, r3
/* 80ACA0F4  3B E0 00 00 */	li r31, 0
/* 80ACA0F8  88 03 0E 25 */	lbz r0, 0xe25(r3)
/* 80ACA0FC  28 00 00 00 */	cmplwi r0, 0
/* 80ACA100  40 82 00 1C */	bne lbl_80ACA11C
/* 80ACA104  4B 56 59 50 */	b dComIfGs_wolfeye_effect_check__Fv
/* 80ACA108  2C 03 00 00 */	cmpwi r3, 0
/* 80ACA10C  40 82 00 14 */	bne lbl_80ACA120
/* 80ACA110  88 1E 0A 89 */	lbz r0, 0xa89(r30)
/* 80ACA114  28 00 00 00 */	cmplwi r0, 0
/* 80ACA118  41 82 00 08 */	beq lbl_80ACA120
lbl_80ACA11C:
/* 80ACA11C  3B E0 00 01 */	li r31, 1
lbl_80ACA120:
/* 80ACA120  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 80ACA124  40 82 00 10 */	bne lbl_80ACA134
/* 80ACA128  88 1E 0E 2B */	lbz r0, 0xe2b(r30)
/* 80ACA12C  28 00 00 00 */	cmplwi r0, 0
/* 80ACA130  41 82 00 0C */	beq lbl_80ACA13C
lbl_80ACA134:
/* 80ACA134  38 00 00 00 */	li r0, 0
/* 80ACA138  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_80ACA13C:
/* 80ACA13C  7F C3 F3 78 */	mr r3, r30
/* 80ACA140  48 00 03 35 */	bl ctrlWaitAnm__12daNpc_seiD_cFv
/* 80ACA144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACA148  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ACA14C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACA150  7C 08 03 A6 */	mtlr r0
/* 80ACA154  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACA158  4E 80 00 20 */	blr 
