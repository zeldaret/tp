lbl_80660544:
/* 80660544  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80660548  7C 08 02 A6 */	mflr r0
/* 8066054C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80660550  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 80660554  93 C1 00 48 */	stw r30, 0x48(r1)
/* 80660558  7C 7E 1B 78 */	mr r30, r3
/* 8066055C  3C 60 80 66 */	lis r3, cNullVec__6Z2Calc@ha
/* 80660560  3B E3 2F 58 */	addi r31, r3, cNullVec__6Z2Calc@l
/* 80660564  A0 1E 0C 5C */	lhz r0, 0xc5c(r30)
/* 80660568  2C 00 00 02 */	cmpwi r0, 2
/* 8066056C  41 82 02 34 */	beq lbl_806607A0
/* 80660570  40 80 00 14 */	bge lbl_80660584
/* 80660574  2C 00 00 00 */	cmpwi r0, 0
/* 80660578  41 82 00 18 */	beq lbl_80660590
/* 8066057C  40 80 00 38 */	bge lbl_806605B4
/* 80660580  48 00 02 20 */	b lbl_806607A0
lbl_80660584:
/* 80660584  2C 00 00 04 */	cmpwi r0, 4
/* 80660588  40 80 02 18 */	bge lbl_806607A0
/* 8066058C  48 00 01 FC */	b lbl_80660788
lbl_80660590:
/* 80660590  38 00 00 02 */	li r0, 2
/* 80660594  98 1E 0C 9F */	stb r0, 0xc9f(r30)
/* 80660598  38 00 00 01 */	li r0, 1
/* 8066059C  B0 1E 0C 5C */	sth r0, 0xc5c(r30)
/* 806605A0  3C 60 80 45 */	lis r3, g_dComIfGoat_gameInfo@ha
/* 806605A4  93 C3 06 18 */	stw r30, g_dComIfGoat_gameInfo@l(r3)
/* 806605A8  38 00 00 00 */	li r0, 0
/* 806605AC  98 1E 0C 9E */	stb r0, 0xc9e(r30)
/* 806605B0  48 00 01 F0 */	b lbl_806607A0
lbl_806605B4:
/* 806605B4  80 7E 0C 94 */	lwz r3, 0xc94(r30)
/* 806605B8  2C 03 00 00 */	cmpwi r3, 0
/* 806605BC  41 82 00 0C */	beq lbl_806605C8
/* 806605C0  38 03 FF FF */	addi r0, r3, -1
/* 806605C4  90 1E 0C 94 */	stw r0, 0xc94(r30)
lbl_806605C8:
/* 806605C8  80 7E 0C 90 */	lwz r3, 0xc90(r30)
/* 806605CC  2C 03 00 00 */	cmpwi r3, 0
/* 806605D0  41 82 00 0C */	beq lbl_806605DC
/* 806605D4  38 03 FF FF */	addi r0, r3, -1
/* 806605D8  90 1E 0C 90 */	stw r0, 0xc90(r30)
lbl_806605DC:
/* 806605DC  88 1E 0C 9F */	lbz r0, 0xc9f(r30)
/* 806605E0  28 00 00 08 */	cmplwi r0, 8
/* 806605E4  41 81 01 70 */	bgt lbl_80660754
/* 806605E8  3C 60 80 66 */	lis r3, lit_7189@ha
/* 806605EC  38 63 32 DC */	addi r3, r3, lit_7189@l
/* 806605F0  54 00 10 3A */	slwi r0, r0, 2
/* 806605F4  7C 03 00 2E */	lwzx r0, r3, r0
/* 806605F8  7C 09 03 A6 */	mtctr r0
/* 806605FC  4E 80 04 20 */	bctr 
lbl_80660600:
/* 80660600  7F C3 F3 78 */	mr r3, r30
/* 80660604  4B FF E0 E5 */	bl executeCrazyBeforeCatch__7daCow_cFv
/* 80660608  48 00 01 4C */	b lbl_80660754
lbl_8066060C:
/* 8066060C  7F C3 F3 78 */	mr r3, r30
/* 80660610  4B FF E2 79 */	bl executeCrazyCatch__7daCow_cFv
/* 80660614  48 00 01 40 */	b lbl_80660754
lbl_80660618:
/* 80660618  7F C3 F3 78 */	mr r3, r30
/* 8066061C  4B FF E5 D5 */	bl executeCrazyThrow__7daCow_cFv
/* 80660620  48 00 01 34 */	b lbl_80660754
lbl_80660624:
/* 80660624  7F C3 F3 78 */	mr r3, r30
/* 80660628  4B FF EB 1D */	bl executeCrazyAttack__7daCow_cFv
/* 8066062C  48 00 01 28 */	b lbl_80660754
lbl_80660630:
/* 80660630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80660634  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80660638  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8066063C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80660640  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80660644  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80660648  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8066064C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80660650  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80660654  7F C3 F3 78 */	mr r3, r30
/* 80660658  38 81 00 38 */	addi r4, r1, 0x38
/* 8066065C  4B FF B1 05 */	bl checkOutOfGate__7daCow_cF4cXyz
/* 80660660  2C 03 00 00 */	cmpwi r3, 0
/* 80660664  40 82 00 30 */	bne lbl_80660694
/* 80660668  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8066066C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80660670  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80660674  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80660678  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8066067C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80660680  7F C3 F3 78 */	mr r3, r30
/* 80660684  38 81 00 2C */	addi r4, r1, 0x2c
/* 80660688  4B FF B0 D9 */	bl checkOutOfGate__7daCow_cF4cXyz
/* 8066068C  2C 03 00 00 */	cmpwi r3, 0
/* 80660690  41 82 00 38 */	beq lbl_806606C8
lbl_80660694:
/* 80660694  80 7F 03 60 */	lwz r3, 0x360(r31)
/* 80660698  80 1F 03 64 */	lwz r0, 0x364(r31)
/* 8066069C  90 61 00 20 */	stw r3, 0x20(r1)
/* 806606A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 806606A4  80 1F 03 68 */	lwz r0, 0x368(r31)
/* 806606A8  90 01 00 28 */	stw r0, 0x28(r1)
/* 806606AC  7F C3 F3 78 */	mr r3, r30
/* 806606B0  38 81 00 20 */	addi r4, r1, 0x20
/* 806606B4  38 A0 00 00 */	li r5, 0
/* 806606B8  4B FF 8A 5D */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 806606BC  38 00 00 01 */	li r0, 1
/* 806606C0  98 1E 0C 9E */	stb r0, 0xc9e(r30)
/* 806606C4  48 00 00 DC */	b lbl_806607A0
lbl_806606C8:
/* 806606C8  7F C3 F3 78 */	mr r3, r30
/* 806606CC  3C 80 00 01 */	lis r4, 0x0001 /* 0x00008000@ha */
/* 806606D0  38 84 80 00 */	addi r4, r4, 0x8000 /* 0x00008000@l */
/* 806606D4  4B FF B4 61 */	bl checkCowInOwn__7daCow_cFi
/* 806606D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806606DC  40 82 00 C4 */	bne lbl_806607A0
/* 806606E0  7F C3 F3 78 */	mr r3, r30
/* 806606E4  38 80 00 15 */	li r4, 0x15
/* 806606E8  4B FF 80 ED */	bl checkBck__7daCow_cFi
/* 806606EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806606F0  41 82 00 30 */	beq lbl_80660720
/* 806606F4  80 7F 03 6C */	lwz r3, 0x36c(r31)
/* 806606F8  80 1F 03 70 */	lwz r0, 0x370(r31)
/* 806606FC  90 61 00 14 */	stw r3, 0x14(r1)
/* 80660700  90 01 00 18 */	stw r0, 0x18(r1)
/* 80660704  80 1F 03 74 */	lwz r0, 0x374(r31)
/* 80660708  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8066070C  7F C3 F3 78 */	mr r3, r30
/* 80660710  38 81 00 14 */	addi r4, r1, 0x14
/* 80660714  38 A0 00 01 */	li r5, 1
/* 80660718  4B FF 89 FD */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8066071C  48 00 00 38 */	b lbl_80660754
lbl_80660720:
/* 80660720  80 7F 03 78 */	lwz r3, 0x378(r31)
/* 80660724  80 1F 03 7C */	lwz r0, 0x37c(r31)
/* 80660728  90 61 00 08 */	stw r3, 8(r1)
/* 8066072C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80660730  80 1F 03 80 */	lwz r0, 0x380(r31)
/* 80660734  90 01 00 10 */	stw r0, 0x10(r1)
/* 80660738  7F C3 F3 78 */	mr r3, r30
/* 8066073C  38 81 00 08 */	addi r4, r1, 8
/* 80660740  38 A0 00 00 */	li r5, 0
/* 80660744  4B FF 89 D1 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 80660748  48 00 00 0C */	b lbl_80660754
lbl_8066074C:
/* 8066074C  7F C3 F3 78 */	mr r3, r30
/* 80660750  4B FF F9 BD */	bl executeCrazyBack2__7daCow_cFv
lbl_80660754:
/* 80660754  88 1E 0C 9F */	lbz r0, 0xc9f(r30)
/* 80660758  28 00 00 08 */	cmplwi r0, 8
/* 8066075C  41 82 00 44 */	beq lbl_806607A0
/* 80660760  38 60 00 00 */	li r3, 0
/* 80660764  38 00 00 03 */	li r0, 3
/* 80660768  7C 09 03 A6 */	mtctr r0
lbl_8066076C:
/* 8066076C  38 83 08 78 */	addi r4, r3, 0x878
/* 80660770  7C 1E 20 2E */	lwzx r0, r30, r4
/* 80660774  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80660778  7C 1E 21 2E */	stwx r0, r30, r4
/* 8066077C  38 63 01 38 */	addi r3, r3, 0x138
/* 80660780  42 00 FF EC */	bdnz lbl_8066076C
/* 80660784  48 00 00 1C */	b lbl_806607A0
lbl_80660788:
/* 80660788  38 00 00 00 */	li r0, 0
/* 8066078C  B0 1E 0C 42 */	sth r0, 0xc42(r30)
/* 80660790  B0 1E 0C 3A */	sth r0, 0xc3a(r30)
/* 80660794  B0 1E 0C 40 */	sth r0, 0xc40(r30)
/* 80660798  3C 60 80 45 */	lis r3, g_dComIfGoat_gameInfo@ha
/* 8066079C  90 03 06 18 */	stw r0, g_dComIfGoat_gameInfo@l(r3)
lbl_806607A0:
/* 806607A0  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 806607A4  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 806607A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806607AC  7C 08 03 A6 */	mtlr r0
/* 806607B0  38 21 00 50 */	addi r1, r1, 0x50
/* 806607B4  4E 80 00 20 */	blr 
