lbl_80C42380:
/* 80C42380  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80C42384  7C 08 02 A6 */	mflr r0
/* 80C42388  90 01 00 34 */	stw r0, 0x34(r1)
/* 80C4238C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80C42390  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80C42394  7C 7F 1B 78 */	mr r31, r3
/* 80C42398  3C 60 80 C4 */	lis r3, lit_3655@ha /* 0x80C439E4@ha */
/* 80C4239C  3B C3 39 E4 */	addi r30, r3, lit_3655@l /* 0x80C439E4@l */
/* 80C423A0  A8 1F 06 1E */	lha r0, 0x61e(r31)
/* 80C423A4  2C 00 00 01 */	cmpwi r0, 1
/* 80C423A8  41 82 00 58 */	beq lbl_80C42400
/* 80C423AC  40 80 00 10 */	bge lbl_80C423BC
/* 80C423B0  2C 00 00 00 */	cmpwi r0, 0
/* 80C423B4  40 80 00 14 */	bge lbl_80C423C8
/* 80C423B8  48 00 01 48 */	b lbl_80C42500
lbl_80C423BC:
/* 80C423BC  2C 00 00 0A */	cmpwi r0, 0xa
/* 80C423C0  41 82 00 7C */	beq lbl_80C4243C
/* 80C423C4  48 00 01 3C */	b lbl_80C42500
lbl_80C423C8:
/* 80C423C8  38 7F 2A FC */	addi r3, r31, 0x2afc
/* 80C423CC  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 80C423D0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80C423D4  FC 60 10 90 */	fmr f3, f2
/* 80C423D8  4B 62 D6 65 */	bl cLib_addCalc2__FPffff
/* 80C423DC  C0 3F 2A FC */	lfs f1, 0x2afc(r31)
/* 80C423E0  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 80C423E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C423E8  4C 41 13 82 */	cror 2, 1, 2
/* 80C423EC  40 82 01 14 */	bne lbl_80C42500
/* 80C423F0  A8 7F 06 1E */	lha r3, 0x61e(r31)
/* 80C423F4  38 03 00 01 */	addi r0, r3, 1
/* 80C423F8  B0 1F 06 1E */	sth r0, 0x61e(r31)
/* 80C423FC  48 00 01 04 */	b lbl_80C42500
lbl_80C42400:
/* 80C42400  38 7F 2B 00 */	addi r3, r31, 0x2b00
/* 80C42404  38 80 19 00 */	li r4, 0x1900
/* 80C42408  38 A0 00 01 */	li r5, 1
/* 80C4240C  38 C0 03 20 */	li r6, 0x320
/* 80C42410  4B 62 E1 F9 */	bl cLib_addCalcAngleS2__FPssss
/* 80C42414  A8 1F 2B 00 */	lha r0, 0x2b00(r31)
/* 80C42418  2C 00 19 00 */	cmpwi r0, 0x1900
/* 80C4241C  41 80 00 E4 */	blt lbl_80C42500
/* 80C42420  38 00 00 02 */	li r0, 2
/* 80C42424  B0 1F 06 1C */	sth r0, 0x61c(r31)
/* 80C42428  38 00 00 00 */	li r0, 0
/* 80C4242C  B0 1F 06 1E */	sth r0, 0x61e(r31)
/* 80C42430  38 00 00 01 */	li r0, 1
/* 80C42434  98 1F 2C A6 */	stb r0, 0x2ca6(r31)
/* 80C42438  48 00 00 C8 */	b lbl_80C42500
lbl_80C4243C:
/* 80C4243C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80C42440  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C42444  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80C42448  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C4244C  38 63 00 0C */	addi r3, r3, 0xc
/* 80C42450  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80C42454  4B 6E 5F D9 */	bl checkPass__12J3DFrameCtrlFf
/* 80C42458  2C 03 00 00 */	cmpwi r3, 0
/* 80C4245C  41 82 00 34 */	beq lbl_80C42490
/* 80C42460  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80C42464  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80C42468  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80C4246C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C42470  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C42474  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C42478  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C4247C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C42480  38 80 00 03 */	li r4, 3
/* 80C42484  38 A0 00 1F */	li r5, 0x1f
/* 80C42488  38 C1 00 14 */	addi r6, r1, 0x14
/* 80C4248C  4B 42 D5 99 */	bl StartShock__12dVibration_cFii4cXyz
lbl_80C42490:
/* 80C42490  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80C42494  38 80 00 01 */	li r4, 1
/* 80C42498  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80C4249C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80C424A0  40 82 00 18 */	bne lbl_80C424B8
/* 80C424A4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80C424A8  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80C424AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C424B0  41 82 00 08 */	beq lbl_80C424B8
/* 80C424B4  38 80 00 00 */	li r4, 0
lbl_80C424B8:
/* 80C424B8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80C424BC  41 82 00 44 */	beq lbl_80C42500
/* 80C424C0  C0 3E 00 04 */	lfs f1, 4(r30)
/* 80C424C4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80C424C8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80C424CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C424D0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C424D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C424D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C424DC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C424E0  38 80 00 03 */	li r4, 3
/* 80C424E4  38 A0 00 1F */	li r5, 0x1f
/* 80C424E8  38 C1 00 08 */	addi r6, r1, 8
/* 80C424EC  4B 42 D5 39 */	bl StartShock__12dVibration_cFii4cXyz
/* 80C424F0  38 00 00 02 */	li r0, 2
/* 80C424F4  B0 1F 06 1C */	sth r0, 0x61c(r31)
/* 80C424F8  38 00 00 00 */	li r0, 0
/* 80C424FC  B0 1F 06 1E */	sth r0, 0x61e(r31)
lbl_80C42500:
/* 80C42500  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80C42504  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80C42508  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C4250C  7C 08 03 A6 */	mtlr r0
/* 80C42510  38 21 00 30 */	addi r1, r1, 0x30
/* 80C42514  4E 80 00 20 */	blr 
