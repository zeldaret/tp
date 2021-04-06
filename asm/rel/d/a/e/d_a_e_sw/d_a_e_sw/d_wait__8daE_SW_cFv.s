lbl_807AD4A8:
/* 807AD4A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807AD4AC  7C 08 02 A6 */	mflr r0
/* 807AD4B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 807AD4B4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 807AD4B8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 807AD4BC  7C 7E 1B 78 */	mr r30, r3
/* 807AD4C0  3C 80 80 7B */	lis r4, lit_3909@ha /* 0x807AFD2C@ha */
/* 807AD4C4  3B E4 FD 2C */	addi r31, r4, lit_3909@l /* 0x807AFD2C@l */
/* 807AD4C8  A8 03 06 80 */	lha r0, 0x680(r3)
/* 807AD4CC  2C 00 00 02 */	cmpwi r0, 2
/* 807AD4D0  41 82 00 F0 */	beq lbl_807AD5C0
/* 807AD4D4  40 80 00 14 */	bge lbl_807AD4E8
/* 807AD4D8  2C 00 00 00 */	cmpwi r0, 0
/* 807AD4DC  41 82 00 18 */	beq lbl_807AD4F4
/* 807AD4E0  40 80 00 74 */	bge lbl_807AD554
/* 807AD4E4  48 00 02 C4 */	b lbl_807AD7A8
lbl_807AD4E8:
/* 807AD4E8  2C 00 00 04 */	cmpwi r0, 4
/* 807AD4EC  40 80 02 BC */	bge lbl_807AD7A8
/* 807AD4F0  48 00 01 60 */	b lbl_807AD650
lbl_807AD4F4:
/* 807AD4F4  38 00 40 00 */	li r0, 0x4000
/* 807AD4F8  90 1E 09 B4 */	stw r0, 0x9b4(r30)
/* 807AD4FC  38 00 00 01 */	li r0, 1
/* 807AD500  98 1E 06 E4 */	stb r0, 0x6e4(r30)
/* 807AD504  98 1E 06 E5 */	stb r0, 0x6e5(r30)
/* 807AD508  38 80 00 0C */	li r4, 0xc
/* 807AD50C  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 807AD510  38 A0 00 02 */	li r5, 2
/* 807AD514  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AD518  4B FF 9F 49 */	bl bckSet__8daE_SW_cFifUcf
/* 807AD51C  38 00 00 32 */	li r0, 0x32
/* 807AD520  B0 1E 06 EA */	sth r0, 0x6ea(r30)
/* 807AD524  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 807AD528  4B AB A4 2D */	bl cM_rndF__Ff
/* 807AD52C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 807AD530  EC 00 08 2A */	fadds f0, f0, f1
/* 807AD534  FC 00 00 1E */	fctiwz f0, f0
/* 807AD538  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807AD53C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807AD540  B0 1E 06 EC */	sth r0, 0x6ec(r30)
/* 807AD544  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 807AD548  38 03 00 01 */	addi r0, r3, 1
/* 807AD54C  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807AD550  48 00 02 58 */	b lbl_807AD7A8
lbl_807AD554:
/* 807AD554  A8 1E 06 BC */	lha r0, 0x6bc(r30)
/* 807AD558  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 807AD55C  41 82 00 44 */	beq lbl_807AD5A0
/* 807AD560  C0 3E 06 D0 */	lfs f1, 0x6d0(r30)
/* 807AD564  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807AD568  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AD56C  40 81 00 18 */	ble lbl_807AD584
/* 807AD570  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 807AD574  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 807AD578  4B AC 36 8D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 807AD57C  B0 7E 06 9E */	sth r3, 0x69e(r30)
/* 807AD580  48 00 00 40 */	b lbl_807AD5C0
lbl_807AD584:
/* 807AD584  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 807AD588  4B AB A4 05 */	bl cM_rndFX__Ff
/* 807AD58C  FC 00 08 1E */	fctiwz f0, f1
/* 807AD590  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807AD594  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807AD598  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 807AD59C  48 00 00 24 */	b lbl_807AD5C0
lbl_807AD5A0:
/* 807AD5A0  C0 3F 01 3C */	lfs f1, 0x13c(r31)
/* 807AD5A4  4B AB A3 E9 */	bl cM_rndFX__Ff
/* 807AD5A8  C0 1F 01 38 */	lfs f0, 0x138(r31)
/* 807AD5AC  EC 00 08 2A */	fadds f0, f0, f1
/* 807AD5B0  FC 00 00 1E */	fctiwz f0, f0
/* 807AD5B4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 807AD5B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807AD5BC  B0 1E 06 9E */	sth r0, 0x69e(r30)
lbl_807AD5C0:
/* 807AD5C0  A8 1E 06 EC */	lha r0, 0x6ec(r30)
/* 807AD5C4  2C 00 00 00 */	cmpwi r0, 0
/* 807AD5C8  40 82 00 40 */	bne lbl_807AD608
/* 807AD5CC  80 1E 07 08 */	lwz r0, 0x708(r30)
/* 807AD5D0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 807AD5D4  41 82 00 18 */	beq lbl_807AD5EC
/* 807AD5D8  38 00 00 60 */	li r0, 0x60
/* 807AD5DC  B0 1E 06 EC */	sth r0, 0x6ec(r30)
/* 807AD5E0  A8 1E 07 34 */	lha r0, 0x734(r30)
/* 807AD5E4  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 807AD5E8  48 00 00 20 */	b lbl_807AD608
lbl_807AD5EC:
/* 807AD5EC  80 1E 07 48 */	lwz r0, 0x748(r30)
/* 807AD5F0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 807AD5F4  41 82 00 14 */	beq lbl_807AD608
/* 807AD5F8  38 00 00 60 */	li r0, 0x60
/* 807AD5FC  B0 1E 06 EC */	sth r0, 0x6ec(r30)
/* 807AD600  A8 1E 07 74 */	lha r0, 0x774(r30)
/* 807AD604  B0 1E 06 9E */	sth r0, 0x69e(r30)
lbl_807AD608:
/* 807AD608  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807AD60C  A8 9E 06 9E */	lha r4, 0x69e(r30)
/* 807AD610  38 A0 00 08 */	li r5, 8
/* 807AD614  38 C0 04 00 */	li r6, 0x400
/* 807AD618  4B AC 2F F1 */	bl cLib_addCalcAngleS2__FPssss
/* 807AD61C  A8 1E 06 EA */	lha r0, 0x6ea(r30)
/* 807AD620  2C 00 00 00 */	cmpwi r0, 0
/* 807AD624  40 82 00 18 */	bne lbl_807AD63C
/* 807AD628  38 00 00 32 */	li r0, 0x32
/* 807AD62C  B0 1E 06 EA */	sth r0, 0x6ea(r30)
/* 807AD630  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 807AD634  38 03 00 01 */	addi r0, r3, 1
/* 807AD638  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_807AD63C:
/* 807AD63C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807AD640  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 807AD644  C0 5F 00 08 */	lfs f2, 8(r31)
/* 807AD648  4B AC 30 F9 */	bl cLib_chaseF__FPfff
/* 807AD64C  48 00 00 B4 */	b lbl_807AD700
lbl_807AD650:
/* 807AD650  A8 1E 06 EA */	lha r0, 0x6ea(r30)
/* 807AD654  2C 00 00 00 */	cmpwi r0, 0
/* 807AD658  40 82 00 30 */	bne lbl_807AD688
/* 807AD65C  38 00 00 01 */	li r0, 1
/* 807AD660  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 807AD664  C0 3E 06 D0 */	lfs f1, 0x6d0(r30)
/* 807AD668  C0 1F 00 38 */	lfs f0, 0x38(r31)
/* 807AD66C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AD670  40 81 00 10 */	ble lbl_807AD680
/* 807AD674  38 00 00 5A */	li r0, 0x5a
/* 807AD678  B0 1E 06 EA */	sth r0, 0x6ea(r30)
/* 807AD67C  48 00 00 0C */	b lbl_807AD688
lbl_807AD680:
/* 807AD680  38 00 00 1E */	li r0, 0x1e
/* 807AD684  B0 1E 06 EA */	sth r0, 0x6ea(r30)
lbl_807AD688:
/* 807AD688  A8 1E 06 EC */	lha r0, 0x6ec(r30)
/* 807AD68C  2C 00 00 00 */	cmpwi r0, 0
/* 807AD690  40 82 00 40 */	bne lbl_807AD6D0
/* 807AD694  80 1E 07 08 */	lwz r0, 0x708(r30)
/* 807AD698  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 807AD69C  41 82 00 18 */	beq lbl_807AD6B4
/* 807AD6A0  38 00 00 60 */	li r0, 0x60
/* 807AD6A4  B0 1E 06 EC */	sth r0, 0x6ec(r30)
/* 807AD6A8  A8 1E 07 34 */	lha r0, 0x734(r30)
/* 807AD6AC  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 807AD6B0  48 00 00 20 */	b lbl_807AD6D0
lbl_807AD6B4:
/* 807AD6B4  80 1E 07 48 */	lwz r0, 0x748(r30)
/* 807AD6B8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 807AD6BC  41 82 00 14 */	beq lbl_807AD6D0
/* 807AD6C0  38 00 00 60 */	li r0, 0x60
/* 807AD6C4  B0 1E 06 EC */	sth r0, 0x6ec(r30)
/* 807AD6C8  A8 1E 07 74 */	lha r0, 0x774(r30)
/* 807AD6CC  B0 1E 06 9E */	sth r0, 0x69e(r30)
lbl_807AD6D0:
/* 807AD6D0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 807AD6D4  A8 9E 06 9E */	lha r4, 0x69e(r30)
/* 807AD6D8  38 A0 00 08 */	li r5, 8
/* 807AD6DC  38 C0 04 00 */	li r6, 0x400
/* 807AD6E0  4B AC 2F 29 */	bl cLib_addCalcAngleS2__FPssss
/* 807AD6E4  38 7E 05 2C */	addi r3, r30, 0x52c
/* 807AD6E8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807AD6EC  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 807AD6F0  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 807AD6F4  4B AC 23 49 */	bl cLib_addCalc2__FPffff
/* 807AD6F8  48 00 00 08 */	b lbl_807AD700
/* 807AD6FC  48 00 00 AC */	b lbl_807AD7A8
lbl_807AD700:
/* 807AD700  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 807AD704  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 807AD708  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807AD70C  40 81 00 0C */	ble lbl_807AD718
/* 807AD710  7F C3 F3 78 */	mr r3, r30
/* 807AD714  4B FF A1 A1 */	bl setSmokeEffect__8daE_SW_cFv
lbl_807AD718:
/* 807AD718  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 807AD71C  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 807AD720  7F C3 F3 78 */	mr r3, r30
/* 807AD724  4B FF F9 E9 */	bl d_bomb_check__8daE_SW_cFv
/* 807AD728  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807AD72C  41 82 00 34 */	beq lbl_807AD760
/* 807AD730  3C 60 80 7B */	lis r3, lit_6521@ha /* 0x807B0078@ha */
/* 807AD734  38 83 00 78 */	addi r4, r3, lit_6521@l /* 0x807B0078@l */
/* 807AD738  80 64 00 00 */	lwz r3, 0(r4)
/* 807AD73C  80 04 00 04 */	lwz r0, 4(r4)
/* 807AD740  90 61 00 14 */	stw r3, 0x14(r1)
/* 807AD744  90 01 00 18 */	stw r0, 0x18(r1)
/* 807AD748  80 04 00 08 */	lwz r0, 8(r4)
/* 807AD74C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807AD750  7F C3 F3 78 */	mr r3, r30
/* 807AD754  38 81 00 14 */	addi r4, r1, 0x14
/* 807AD758  4B FF F2 E9 */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
/* 807AD75C  48 00 00 4C */	b lbl_807AD7A8
lbl_807AD760:
/* 807AD760  A8 1E 06 EC */	lha r0, 0x6ec(r30)
/* 807AD764  2C 00 00 00 */	cmpwi r0, 0
/* 807AD768  40 82 00 40 */	bne lbl_807AD7A8
/* 807AD76C  7F C3 F3 78 */	mr r3, r30
/* 807AD770  48 00 00 51 */	bl d_chaseCheck__8daE_SW_cFv
/* 807AD774  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 807AD778  41 82 00 30 */	beq lbl_807AD7A8
/* 807AD77C  3C 60 80 7B */	lis r3, lit_6527@ha /* 0x807B0084@ha */
/* 807AD780  38 83 00 84 */	addi r4, r3, lit_6527@l /* 0x807B0084@l */
/* 807AD784  80 64 00 00 */	lwz r3, 0(r4)
/* 807AD788  80 04 00 04 */	lwz r0, 4(r4)
/* 807AD78C  90 61 00 08 */	stw r3, 8(r1)
/* 807AD790  90 01 00 0C */	stw r0, 0xc(r1)
/* 807AD794  80 04 00 08 */	lwz r0, 8(r4)
/* 807AD798  90 01 00 10 */	stw r0, 0x10(r1)
/* 807AD79C  7F C3 F3 78 */	mr r3, r30
/* 807AD7A0  38 81 00 08 */	addi r4, r1, 8
/* 807AD7A4  4B FF F2 9D */	bl d_setAction__8daE_SW_cFM8daE_SW_cFPCvPv_v
lbl_807AD7A8:
/* 807AD7A8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 807AD7AC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 807AD7B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807AD7B4  7C 08 03 A6 */	mtlr r0
/* 807AD7B8  38 21 00 30 */	addi r1, r1, 0x30
/* 807AD7BC  4E 80 00 20 */	blr 
