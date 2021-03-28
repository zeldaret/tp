lbl_8012E508:
/* 8012E508  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012E50C  7C 08 02 A6 */	mflr r0
/* 8012E510  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012E514  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012E518  7C 7F 1B 78 */	mr r31, r3
/* 8012E51C  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 8012E520  A8 9F 30 0C */	lha r4, 0x300c(r31)
/* 8012E524  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wlAtnMove_c0@ha
/* 8012E528  38 E5 EF 70 */	addi r7, r5, m__23daAlinkHIO_wlAtnMove_c0@l
/* 8012E52C  A8 A7 00 04 */	lha r5, 4(r7)
/* 8012E530  A8 C7 00 00 */	lha r6, 0(r7)
/* 8012E534  A8 E7 00 02 */	lha r7, 2(r7)
/* 8012E538  48 14 20 09 */	bl cLib_addCalcAngleS__FPsssss
/* 8012E53C  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 8012E540  3C 63 00 01 */	addis r3, r3, 1
/* 8012E544  38 03 80 00 */	addi r0, r3, -32768
/* 8012E548  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8012E54C  A8 1F 30 10 */	lha r0, 0x3010(r31)
/* 8012E550  2C 00 00 00 */	cmpwi r0, 0
/* 8012E554  41 82 00 0C */	beq lbl_8012E560
/* 8012E558  7F E3 FB 78 */	mr r3, r31
/* 8012E55C  4B FF DD AD */	bl checkWolfAtnDoCharge__9daAlink_cFv
lbl_8012E560:
/* 8012E560  7F E3 FB 78 */	mr r3, r31
/* 8012E564  4B F9 71 9D */	bl backJumpSpeedDec__9daAlink_cFv
/* 8012E568  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 8012E56C  48 02 FF 61 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8012E570  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8012E574  41 82 00 24 */	beq lbl_8012E598
/* 8012E578  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 8012E57C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8012E580  41 82 00 18 */	beq lbl_8012E598
/* 8012E584  7F E3 FB 78 */	mr r3, r31
/* 8012E588  A8 9F 30 12 */	lha r4, 0x3012(r31)
/* 8012E58C  A8 BF 30 10 */	lha r5, 0x3010(r31)
/* 8012E590  48 00 00 65 */	bl procWolfBackJumpLandInit__9daAlink_cFss
/* 8012E594  48 00 00 48 */	b lbl_8012E5DC
lbl_8012E598:
/* 8012E598  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 8012E59C  28 00 00 10 */	cmplwi r0, 0x10
/* 8012E5A0  41 82 00 3C */	beq lbl_8012E5DC
/* 8012E5A4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8012E5A8  C0 3F 34 FC */	lfs f1, 0x34fc(r31)
/* 8012E5AC  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlBackJump_c0@ha
/* 8012E5B0  38 A3 F0 10 */	addi r5, r3, m__24daAlinkHIO_wlBackJump_c0@l
/* 8012E5B4  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 8012E5B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8012E5BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8012E5C0  40 80 00 1C */	bge lbl_8012E5DC
/* 8012E5C4  38 00 00 00 */	li r0, 0
/* 8012E5C8  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 8012E5CC  7F E3 FB 78 */	mr r3, r31
/* 8012E5D0  38 80 00 02 */	li r4, 2
/* 8012E5D4  C0 25 00 34 */	lfs f1, 0x34(r5)
/* 8012E5D8  48 00 07 F9 */	bl procWolfFallInit__9daAlink_cFif
lbl_8012E5DC:
/* 8012E5DC  38 60 00 01 */	li r3, 1
/* 8012E5E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012E5E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012E5E8  7C 08 03 A6 */	mtlr r0
/* 8012E5EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8012E5F0  4E 80 00 20 */	blr 
