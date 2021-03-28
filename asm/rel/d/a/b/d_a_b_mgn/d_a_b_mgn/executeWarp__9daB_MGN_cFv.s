lbl_8060B430:
/* 8060B430  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060B434  7C 08 02 A6 */	mflr r0
/* 8060B438  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060B43C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060B440  7C 7F 1B 78 */	mr r31, r3
/* 8060B444  88 03 0A FA */	lbz r0, 0xafa(r3)
/* 8060B448  2C 00 00 02 */	cmpwi r0, 2
/* 8060B44C  41 82 00 A0 */	beq lbl_8060B4EC
/* 8060B450  40 80 00 E0 */	bge lbl_8060B530
/* 8060B454  2C 00 00 00 */	cmpwi r0, 0
/* 8060B458  40 80 00 08 */	bge lbl_8060B460
/* 8060B45C  48 00 00 D4 */	b lbl_8060B530
lbl_8060B460:
/* 8060B460  28 00 00 00 */	cmplwi r0, 0
/* 8060B464  40 82 00 60 */	bne lbl_8060B4C4
/* 8060B468  88 1F 0A FF */	lbz r0, 0xaff(r31)
/* 8060B46C  28 00 00 02 */	cmplwi r0, 2
/* 8060B470  41 82 00 0C */	beq lbl_8060B47C
/* 8060B474  28 00 00 03 */	cmplwi r0, 3
/* 8060B478  40 82 00 38 */	bne lbl_8060B4B0
lbl_8060B47C:
/* 8060B47C  4B C5 C3 F0 */	b cM_rnd__Fv
/* 8060B480  3C 60 80 61 */	lis r3, lit_4927@ha
/* 8060B484  C0 03 FE 60 */	lfs f0, lit_4927@l(r3)
/* 8060B488  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8060B48C  4C 40 13 82 */	cror 2, 0, 2
/* 8060B490  41 82 00 10 */	beq lbl_8060B4A0
/* 8060B494  88 1F 0B 04 */	lbz r0, 0xb04(r31)
/* 8060B498  28 00 00 00 */	cmplwi r0, 0
/* 8060B49C  40 82 00 14 */	bne lbl_8060B4B0
lbl_8060B4A0:
/* 8060B4A0  38 00 00 01 */	li r0, 1
/* 8060B4A4  98 1F 0A FE */	stb r0, 0xafe(r31)
/* 8060B4A8  98 1F 0B 04 */	stb r0, 0xb04(r31)
/* 8060B4AC  48 00 00 0C */	b lbl_8060B4B8
lbl_8060B4B0:
/* 8060B4B0  38 00 00 00 */	li r0, 0
/* 8060B4B4  98 1F 0A FE */	stb r0, 0xafe(r31)
lbl_8060B4B8:
/* 8060B4B8  38 00 00 5A */	li r0, 0x5a
/* 8060B4BC  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 8060B4C0  48 00 00 14 */	b lbl_8060B4D4
lbl_8060B4C4:
/* 8060B4C4  38 00 00 01 */	li r0, 1
/* 8060B4C8  98 1F 0A FE */	stb r0, 0xafe(r31)
/* 8060B4CC  38 00 00 00 */	li r0, 0
/* 8060B4D0  90 1F 0A 9C */	stw r0, 0xa9c(r31)
lbl_8060B4D4:
/* 8060B4D4  38 00 00 00 */	li r0, 0
/* 8060B4D8  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8060B4DC  38 00 00 02 */	li r0, 2
/* 8060B4E0  98 1F 0A FA */	stb r0, 0xafa(r31)
/* 8060B4E4  7F E3 FB 78 */	mr r3, r31
/* 8060B4E8  4B FF C8 5D */	bl offBodyCo__9daB_MGN_cFv
lbl_8060B4EC:
/* 8060B4EC  80 1F 0A 9C */	lwz r0, 0xa9c(r31)
/* 8060B4F0  2C 00 00 00 */	cmpwi r0, 0
/* 8060B4F4  40 82 00 3C */	bne lbl_8060B530
/* 8060B4F8  88 1F 0A FE */	lbz r0, 0xafe(r31)
/* 8060B4FC  28 00 00 00 */	cmplwi r0, 0
/* 8060B500  40 82 00 20 */	bne lbl_8060B520
/* 8060B504  38 00 00 00 */	li r0, 0
/* 8060B508  98 1F 0B 02 */	stb r0, 0xb02(r31)
/* 8060B50C  7F E3 FB 78 */	mr r3, r31
/* 8060B510  38 80 00 02 */	li r4, 2
/* 8060B514  38 A0 00 0A */	li r5, 0xa
/* 8060B518  4B FF C5 15 */	bl setActionMode__9daB_MGN_cFii
/* 8060B51C  48 00 00 14 */	b lbl_8060B530
lbl_8060B520:
/* 8060B520  7F E3 FB 78 */	mr r3, r31
/* 8060B524  38 80 00 08 */	li r4, 8
/* 8060B528  38 A0 00 00 */	li r5, 0
/* 8060B52C  4B FF C5 01 */	bl setActionMode__9daB_MGN_cFii
lbl_8060B530:
/* 8060B530  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060B534  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060B538  7C 08 03 A6 */	mtlr r0
/* 8060B53C  38 21 00 10 */	addi r1, r1, 0x10
/* 8060B540  4E 80 00 20 */	blr 
