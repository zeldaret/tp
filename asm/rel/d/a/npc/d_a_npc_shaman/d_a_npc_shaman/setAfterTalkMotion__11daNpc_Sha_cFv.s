lbl_80AE3B78:
/* 80AE3B78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AE3B7C  7C 08 02 A6 */	mflr r0
/* 80AE3B80  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AE3B84  39 61 00 20 */	addi r11, r1, 0x20
/* 80AE3B88  4B 87 E6 55 */	bl _savegpr_29
/* 80AE3B8C  7C 7D 1B 78 */	mr r29, r3
/* 80AE3B90  3B C0 00 09 */	li r30, 9
/* 80AE3B94  80 03 0B 58 */	lwz r0, 0xb58(r3)
/* 80AE3B98  2C 00 00 03 */	cmpwi r0, 3
/* 80AE3B9C  41 82 00 34 */	beq lbl_80AE3BD0
/* 80AE3BA0  40 80 00 14 */	bge lbl_80AE3BB4
/* 80AE3BA4  2C 00 00 01 */	cmpwi r0, 1
/* 80AE3BA8  41 82 00 18 */	beq lbl_80AE3BC0
/* 80AE3BAC  40 80 00 1C */	bge lbl_80AE3BC8
/* 80AE3BB0  48 00 00 2C */	b lbl_80AE3BDC
lbl_80AE3BB4:
/* 80AE3BB4  2C 00 00 05 */	cmpwi r0, 5
/* 80AE3BB8  40 80 00 24 */	bge lbl_80AE3BDC
/* 80AE3BBC  48 00 00 1C */	b lbl_80AE3BD8
lbl_80AE3BC0:
/* 80AE3BC0  3B C0 00 07 */	li r30, 7
/* 80AE3BC4  48 00 00 18 */	b lbl_80AE3BDC
lbl_80AE3BC8:
/* 80AE3BC8  3B C0 00 08 */	li r30, 8
/* 80AE3BCC  48 00 00 10 */	b lbl_80AE3BDC
lbl_80AE3BD0:
/* 80AE3BD0  3B C0 00 05 */	li r30, 5
/* 80AE3BD4  48 00 00 08 */	b lbl_80AE3BDC
lbl_80AE3BD8:
/* 80AE3BD8  3B C0 00 05 */	li r30, 5
lbl_80AE3BDC:
/* 80AE3BDC  2C 1E 00 00 */	cmpwi r30, 0
/* 80AE3BE0  41 80 00 2C */	blt lbl_80AE3C0C
/* 80AE3BE4  7C 1E 00 00 */	cmpw r30, r0
/* 80AE3BE8  41 82 00 24 */	beq lbl_80AE3C0C
/* 80AE3BEC  83 FD 0B 5C */	lwz r31, 0xb5c(r29)
/* 80AE3BF0  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80AE3BF4  4B 66 1C A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AE3BF8  93 FD 0B 5C */	stw r31, 0xb5c(r29)
/* 80AE3BFC  93 DD 0B 58 */	stw r30, 0xb58(r29)
/* 80AE3C00  3C 60 80 AE */	lis r3, lit_4537@ha /* 0x80AE6C88@ha */
/* 80AE3C04  C0 03 6C 88 */	lfs f0, lit_4537@l(r3)  /* 0x80AE6C88@l */
/* 80AE3C08  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80AE3C0C:
/* 80AE3C0C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AE3C10  4B 87 E6 19 */	bl _restgpr_29
/* 80AE3C14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AE3C18  7C 08 03 A6 */	mtlr r0
/* 80AE3C1C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AE3C20  4E 80 00 20 */	blr 
