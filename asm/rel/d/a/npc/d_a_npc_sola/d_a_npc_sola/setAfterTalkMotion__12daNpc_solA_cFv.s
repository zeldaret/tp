lbl_80AED4A4:
/* 80AED4A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AED4A8  7C 08 02 A6 */	mflr r0
/* 80AED4AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AED4B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AED4B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AED4B8  7C 7E 1B 78 */	mr r30, r3
/* 80AED4BC  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80AED4C0  2C 00 00 00 */	cmpwi r0, 0
/* 80AED4C4  41 82 00 28 */	beq lbl_80AED4EC
/* 80AED4C8  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80AED4CC  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80AED4D0  4B 65 83 C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AED4D4  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80AED4D8  38 00 00 00 */	li r0, 0
/* 80AED4DC  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80AED4E0  3C 60 80 AF */	lis r3, lit_4568@ha
/* 80AED4E4  C0 03 F1 B0 */	lfs f0, lit_4568@l(r3)
/* 80AED4E8  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80AED4EC:
/* 80AED4EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AED4F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AED4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AED4F8  7C 08 03 A6 */	mtlr r0
/* 80AED4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AED500  4E 80 00 20 */	blr 
