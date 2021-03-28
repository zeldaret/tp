lbl_8084D50C:
/* 8084D50C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8084D510  7C 08 02 A6 */	mflr r0
/* 8084D514  90 01 00 64 */	stw r0, 0x64(r1)
/* 8084D518  39 61 00 60 */	addi r11, r1, 0x60
/* 8084D51C  4B B1 4C C0 */	b _savegpr_29
/* 8084D520  7C 7E 1B 78 */	mr r30, r3
/* 8084D524  3C 60 80 85 */	lis r3, lit_3929@ha
/* 8084D528  3B E3 4B 04 */	addi r31, r3, lit_3929@l
/* 8084D52C  38 00 00 01 */	li r0, 1
/* 8084D530  98 1E 06 DD */	stb r0, 0x6dd(r30)
/* 8084D534  88 1E 06 E7 */	lbz r0, 0x6e7(r30)
/* 8084D538  28 00 00 01 */	cmplwi r0, 1
/* 8084D53C  40 82 00 20 */	bne lbl_8084D55C
/* 8084D540  38 00 00 2A */	li r0, 0x2a
/* 8084D544  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084D548  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084D54C  98 03 5E 35 */	stb r0, 0x5e35(r3)
/* 8084D550  38 00 00 00 */	li r0, 0
/* 8084D554  98 03 5E 50 */	stb r0, 0x5e50(r3)
/* 8084D558  48 00 00 1C */	b lbl_8084D574
lbl_8084D55C:
/* 8084D55C  38 00 00 27 */	li r0, 0x27
/* 8084D560  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084D564  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084D568  98 03 5E 35 */	stb r0, 0x5e35(r3)
/* 8084D56C  38 00 00 00 */	li r0, 0
/* 8084D570  98 03 5E 50 */	stb r0, 0x5e50(r3)
lbl_8084D574:
/* 8084D574  7F C3 F3 78 */	mr r3, r30
/* 8084D578  4B FF DB 91 */	bl checkHeight__8daKago_cFv
/* 8084D57C  38 00 00 01 */	li r0, 1
/* 8084D580  98 1E 06 E1 */	stb r0, 0x6e1(r30)
/* 8084D584  88 1E 06 E6 */	lbz r0, 0x6e6(r30)
/* 8084D588  28 00 00 00 */	cmplwi r0, 0
/* 8084D58C  41 82 00 14 */	beq lbl_8084D5A0
/* 8084D590  7F C3 F3 78 */	mr r3, r30
/* 8084D594  48 00 5F 79 */	bl setSibukiEffect__8daKago_cFv
/* 8084D598  7F C3 F3 78 */	mr r3, r30
/* 8084D59C  48 00 60 D1 */	bl setDashSibukiEffect__8daKago_cFv
lbl_8084D5A0:
/* 8084D5A0  80 1E 07 44 */	lwz r0, 0x744(r30)
/* 8084D5A4  2C 00 00 03 */	cmpwi r0, 3
/* 8084D5A8  41 82 03 3C */	beq lbl_8084D8E4
/* 8084D5AC  40 80 00 1C */	bge lbl_8084D5C8
/* 8084D5B0  2C 00 00 01 */	cmpwi r0, 1
/* 8084D5B4  41 82 00 F8 */	beq lbl_8084D6AC
/* 8084D5B8  40 80 02 64 */	bge lbl_8084D81C
/* 8084D5BC  2C 00 00 00 */	cmpwi r0, 0
/* 8084D5C0  40 80 00 18 */	bge lbl_8084D5D8
/* 8084D5C4  48 00 04 3C */	b lbl_8084DA00
lbl_8084D5C8:
/* 8084D5C8  2C 00 00 05 */	cmpwi r0, 5
/* 8084D5CC  41 82 03 B8 */	beq lbl_8084D984
/* 8084D5D0  40 80 04 30 */	bge lbl_8084DA00
/* 8084D5D4  48 00 03 A8 */	b lbl_8084D97C
lbl_8084D5D8:
/* 8084D5D8  3C 60 80 85 */	lis r3, l_HIO@ha
/* 8084D5DC  38 63 4F 78 */	addi r3, r3, l_HIO@l
/* 8084D5E0  C0 03 00 40 */	lfs f0, 0x40(r3)
/* 8084D5E4  FC 00 00 1E */	fctiwz f0, f0
/* 8084D5E8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8084D5EC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8084D5F0  90 1E 07 30 */	stw r0, 0x730(r30)
/* 8084D5F4  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8084D5F8  FC 00 00 1E */	fctiwz f0, f0
/* 8084D5FC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8084D600  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8084D604  90 1E 07 34 */	stw r0, 0x734(r30)
/* 8084D608  38 00 00 01 */	li r0, 1
/* 8084D60C  90 1E 07 44 */	stw r0, 0x744(r30)
/* 8084D610  7F C3 F3 78 */	mr r3, r30
/* 8084D614  38 80 00 00 */	li r4, 0
/* 8084D618  48 00 5C 11 */	bl setDashBlurEffect__8daKago_cFi
/* 8084D61C  7F C3 F3 78 */	mr r3, r30
/* 8084D620  38 80 00 0B */	li r4, 0xb
/* 8084D624  38 A0 00 00 */	li r5, 0
/* 8084D628  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 8084D62C  3C C0 80 85 */	lis r6, l_HIO@ha
/* 8084D630  38 C6 4F 78 */	addi r6, r6, l_HIO@l
/* 8084D634  C0 46 00 38 */	lfs f2, 0x38(r6)
/* 8084D638  4B FF C0 B9 */	bl setBck__8daKago_cFiUcff
/* 8084D63C  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084D640  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8084D644  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084D648  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8084D64C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8084D650  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084D654  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 8084D658  38 7D 5B D4 */	addi r3, r29, 0x5bd4
/* 8084D65C  38 80 00 01 */	li r4, 1
/* 8084D660  38 A0 00 1F */	li r5, 0x1f
/* 8084D664  38 C1 00 28 */	addi r6, r1, 0x28
/* 8084D668  4B 82 23 BC */	b StartShock__12dVibration_cFii4cXyz
/* 8084D66C  38 00 00 00 */	li r0, 0
/* 8084D670  90 1E 06 18 */	stw r0, 0x618(r30)
/* 8084D674  3B BD 56 B8 */	addi r29, r29, 0x56b8
/* 8084D678  7F A3 EB 78 */	mr r3, r29
/* 8084D67C  4B 82 61 68 */	b LockonTruth__12dAttention_cFv
/* 8084D680  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084D684  41 82 03 7C */	beq lbl_8084DA00
/* 8084D688  7F A3 EB 78 */	mr r3, r29
/* 8084D68C  38 80 00 00 */	li r4, 0
/* 8084D690  4B 82 5E AC */	b LockonTarget__12dAttention_cFl
/* 8084D694  A8 03 00 08 */	lha r0, 8(r3)
/* 8084D698  2C 00 01 F4 */	cmpwi r0, 0x1f4
/* 8084D69C  40 82 03 64 */	bne lbl_8084DA00
/* 8084D6A0  90 7E 06 18 */	stw r3, 0x618(r30)
/* 8084D6A4  4B FC 4D 20 */	b setLockByCargo__8daE_YM_cFv
/* 8084D6A8  48 00 03 58 */	b lbl_8084DA00
lbl_8084D6AC:
/* 8084D6AC  7F C3 F3 78 */	mr r3, r30
/* 8084D6B0  48 00 58 65 */	bl setDashEffect__8daKago_cFv
/* 8084D6B4  7F C3 F3 78 */	mr r3, r30
/* 8084D6B8  38 80 00 00 */	li r4, 0
/* 8084D6BC  4B FF FC 99 */	bl calcAttackMove__8daKago_cFi
/* 8084D6C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084D6C4  40 82 03 3C */	bne lbl_8084DA00
/* 8084D6C8  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 8084D6CC  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 8084D6D0  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8084D6D4  3C 80 80 85 */	lis r4, l_HIO@ha
/* 8084D6D8  38 84 4F 78 */	addi r4, r4, l_HIO@l
/* 8084D6DC  C0 04 00 38 */	lfs f0, 0x38(r4)
/* 8084D6E0  EC 42 00 32 */	fmuls f2, f2, f0
/* 8084D6E4  4B A2 30 5C */	b cLib_chaseF__FPfff
/* 8084D6E8  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8084D6EC  38 63 00 0C */	addi r3, r3, 0xc
/* 8084D6F0  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 8084D6F4  4B AD AD 38 */	b checkPass__12J3DFrameCtrlFf
/* 8084D6F8  2C 03 00 00 */	cmpwi r3, 0
/* 8084D6FC  41 82 00 6C */	beq lbl_8084D768
/* 8084D700  88 1E 06 E7 */	lbz r0, 0x6e7(r30)
/* 8084D704  28 00 00 00 */	cmplwi r0, 0
/* 8084D708  40 82 00 34 */	bne lbl_8084D73C
/* 8084D70C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070492@ha */
/* 8084D710  38 03 04 92 */	addi r0, r3, 0x0492 /* 0x00070492@l */
/* 8084D714  90 01 00 0C */	stw r0, 0xc(r1)
/* 8084D718  38 7E 05 74 */	addi r3, r30, 0x574
/* 8084D71C  38 81 00 0C */	addi r4, r1, 0xc
/* 8084D720  38 A0 00 00 */	li r5, 0
/* 8084D724  38 C0 FF FF */	li r6, -1
/* 8084D728  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 8084D72C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8084D730  7D 89 03 A6 */	mtctr r12
/* 8084D734  4E 80 04 21 */	bctrl 
/* 8084D738  48 00 00 30 */	b lbl_8084D768
lbl_8084D73C:
/* 8084D73C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007049B@ha */
/* 8084D740  38 03 04 9B */	addi r0, r3, 0x049B /* 0x0007049B@l */
/* 8084D744  90 01 00 08 */	stw r0, 8(r1)
/* 8084D748  38 7E 05 74 */	addi r3, r30, 0x574
/* 8084D74C  38 81 00 08 */	addi r4, r1, 8
/* 8084D750  38 A0 00 00 */	li r5, 0
/* 8084D754  38 C0 FF FF */	li r6, -1
/* 8084D758  81 9E 05 74 */	lwz r12, 0x574(r30)
/* 8084D75C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8084D760  7D 89 03 A6 */	mtctr r12
/* 8084D764  4E 80 04 21 */	bctrl 
lbl_8084D768:
/* 8084D768  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8084D76C  38 63 00 0C */	addi r3, r3, 0xc
/* 8084D770  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 8084D774  4B AD AC B8 */	b checkPass__12J3DFrameCtrlFf
/* 8084D778  2C 03 00 00 */	cmpwi r3, 0
/* 8084D77C  41 82 02 84 */	beq lbl_8084DA00
/* 8084D780  38 00 00 02 */	li r0, 2
/* 8084D784  90 1E 07 44 */	stw r0, 0x744(r30)
/* 8084D788  38 00 00 14 */	li r0, 0x14
/* 8084D78C  90 1E 07 28 */	stw r0, 0x728(r30)
/* 8084D790  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084D794  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8084D798  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084D79C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8084D7A0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8084D7A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084D7A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084D7AC  3B A3 5B D4 */	addi r29, r3, 0x5bd4
/* 8084D7B0  7F A3 EB 78 */	mr r3, r29
/* 8084D7B4  38 80 00 02 */	li r4, 2
/* 8084D7B8  38 A0 00 1F */	li r5, 0x1f
/* 8084D7BC  38 C1 00 1C */	addi r6, r1, 0x1c
/* 8084D7C0  4B 82 22 64 */	b StartShock__12dVibration_cFii4cXyz
/* 8084D7C4  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8084D7C8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8084D7CC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8084D7D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8084D7D4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8084D7D8  7F A3 EB 78 */	mr r3, r29
/* 8084D7DC  38 80 00 01 */	li r4, 1
/* 8084D7E0  38 A0 00 1F */	li r5, 0x1f
/* 8084D7E4  38 C1 00 10 */	addi r6, r1, 0x10
/* 8084D7E8  4B 82 23 28 */	b StartQuake__12dVibration_cFii4cXyz
/* 8084D7EC  3C 60 80 85 */	lis r3, l_HIO@ha
/* 8084D7F0  38 63 4F 78 */	addi r3, r3, l_HIO@l
/* 8084D7F4  C0 23 00 34 */	lfs f1, 0x34(r3)
/* 8084D7F8  C0 1F 01 00 */	lfs f0, 0x100(r31)
/* 8084D7FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8084D800  FC 00 00 1E */	fctiwz f0, f0
/* 8084D804  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8084D808  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8084D80C  90 1E 07 34 */	stw r0, 0x734(r30)
/* 8084D810  38 00 00 00 */	li r0, 0
/* 8084D814  98 1E 06 E6 */	stb r0, 0x6e6(r30)
/* 8084D818  48 00 01 E8 */	b lbl_8084DA00
lbl_8084D81C:
/* 8084D81C  7F C3 F3 78 */	mr r3, r30
/* 8084D820  48 00 56 F5 */	bl setDashEffect__8daKago_cFv
/* 8084D824  80 7E 05 70 */	lwz r3, 0x570(r30)
/* 8084D828  38 63 00 0C */	addi r3, r3, 0xc
/* 8084D82C  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 8084D830  4B AD AB FC */	b checkPass__12J3DFrameCtrlFf
/* 8084D834  2C 03 00 00 */	cmpwi r3, 0
/* 8084D838  41 82 00 10 */	beq lbl_8084D848
/* 8084D83C  80 1E 09 CC */	lwz r0, 0x9cc(r30)
/* 8084D840  60 00 00 01 */	ori r0, r0, 1
/* 8084D844  90 1E 09 CC */	stw r0, 0x9cc(r30)
lbl_8084D848:
/* 8084D848  7F C3 F3 78 */	mr r3, r30
/* 8084D84C  38 80 00 01 */	li r4, 1
/* 8084D850  4B FF FB 05 */	bl calcAttackMove__8daKago_cFi
/* 8084D854  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084D858  40 82 01 A8 */	bne lbl_8084DA00
/* 8084D85C  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 8084D860  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8084D864  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8084D868  4B A2 2E D8 */	b cLib_chaseF__FPfff
/* 8084D86C  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 8084D870  2C 00 00 00 */	cmpwi r0, 0
/* 8084D874  40 82 00 0C */	bne lbl_8084D880
/* 8084D878  38 00 00 03 */	li r0, 3
/* 8084D87C  90 1E 07 44 */	stw r0, 0x744(r30)
lbl_8084D880:
/* 8084D880  80 1E 07 28 */	lwz r0, 0x728(r30)
/* 8084D884  2C 00 00 0A */	cmpwi r0, 0xa
/* 8084D888  40 80 00 38 */	bge lbl_8084D8C0
/* 8084D88C  7F C3 F3 78 */	mr r3, r30
/* 8084D890  38 80 00 00 */	li r4, 0
/* 8084D894  4B FF D9 4D */	bl checkWallHitFall__8daKago_cFi
/* 8084D898  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084D89C  41 82 00 24 */	beq lbl_8084D8C0
/* 8084D8A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084D8A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084D8A8  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8084D8AC  38 80 00 1F */	li r4, 0x1f
/* 8084D8B0  4B 82 24 E4 */	b StopQuake__12dVibration_cFi
/* 8084D8B4  38 00 00 00 */	li r0, 0
/* 8084D8B8  90 1E 06 18 */	stw r0, 0x618(r30)
/* 8084D8BC  48 00 01 44 */	b lbl_8084DA00
lbl_8084D8C0:
/* 8084D8C0  80 7E 07 34 */	lwz r3, 0x734(r30)
/* 8084D8C4  38 03 FF FF */	addi r0, r3, -1
/* 8084D8C8  90 1E 07 34 */	stw r0, 0x734(r30)
/* 8084D8CC  80 1E 07 34 */	lwz r0, 0x734(r30)
/* 8084D8D0  2C 00 00 01 */	cmpwi r0, 1
/* 8084D8D4  40 80 01 2C */	bge lbl_8084DA00
/* 8084D8D8  38 00 00 01 */	li r0, 1
/* 8084D8DC  90 1E 07 34 */	stw r0, 0x734(r30)
/* 8084D8E0  48 00 01 20 */	b lbl_8084DA00
lbl_8084D8E4:
/* 8084D8E4  7F C3 F3 78 */	mr r3, r30
/* 8084D8E8  48 00 56 2D */	bl setDashEffect__8daKago_cFv
/* 8084D8EC  7F C3 F3 78 */	mr r3, r30
/* 8084D8F0  38 80 00 01 */	li r4, 1
/* 8084D8F4  4B FF FA 61 */	bl calcAttackMove__8daKago_cFi
/* 8084D8F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084D8FC  40 82 01 04 */	bne lbl_8084DA00
/* 8084D900  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 8084D904  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8084D908  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 8084D90C  4B A2 2E 34 */	b cLib_chaseF__FPfff
/* 8084D910  7F C3 F3 78 */	mr r3, r30
/* 8084D914  38 80 00 00 */	li r4, 0
/* 8084D918  4B FF D8 C9 */	bl checkWallHitFall__8daKago_cFi
/* 8084D91C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084D920  41 82 00 24 */	beq lbl_8084D944
/* 8084D924  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084D928  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084D92C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8084D930  38 80 00 1F */	li r4, 0x1f
/* 8084D934  4B 82 24 60 */	b StopQuake__12dVibration_cFi
/* 8084D938  38 00 00 00 */	li r0, 0
/* 8084D93C  90 1E 06 18 */	stw r0, 0x618(r30)
/* 8084D940  48 00 00 C0 */	b lbl_8084DA00
lbl_8084D944:
/* 8084D944  80 7E 07 34 */	lwz r3, 0x734(r30)
/* 8084D948  38 03 FF FF */	addi r0, r3, -1
/* 8084D94C  90 1E 07 34 */	stw r0, 0x734(r30)
/* 8084D950  80 1E 07 34 */	lwz r0, 0x734(r30)
/* 8084D954  2C 00 00 00 */	cmpwi r0, 0
/* 8084D958  40 82 00 A8 */	bne lbl_8084DA00
/* 8084D95C  38 00 00 04 */	li r0, 4
/* 8084D960  90 1E 07 44 */	stw r0, 0x744(r30)
/* 8084D964  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8084D968  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8084D96C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8084D970  38 80 00 1F */	li r4, 0x1f
/* 8084D974  4B 82 24 20 */	b StopQuake__12dVibration_cFi
/* 8084D978  48 00 00 88 */	b lbl_8084DA00
lbl_8084D97C:
/* 8084D97C  7F C3 F3 78 */	mr r3, r30
/* 8084D980  48 00 55 95 */	bl setDashEffect__8daKago_cFv
lbl_8084D984:
/* 8084D984  7F C3 F3 78 */	mr r3, r30
/* 8084D988  38 80 00 00 */	li r4, 0
/* 8084D98C  4B FF F9 C9 */	bl calcAttackMove__8daKago_cFi
/* 8084D990  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8084D994  40 82 00 6C */	bne lbl_8084DA00
/* 8084D998  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 8084D99C  3C 80 80 85 */	lis r4, l_HIO@ha
/* 8084D9A0  3B A4 4F 78 */	addi r29, r4, l_HIO@l
/* 8084D9A4  C0 3D 00 1C */	lfs f1, 0x1c(r29)
/* 8084D9A8  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 8084D9AC  4B A2 2D 94 */	b cLib_chaseF__FPfff
/* 8084D9B0  C0 3E 06 F8 */	lfs f1, 0x6f8(r30)
/* 8084D9B4  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8084D9B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084D9BC  4C 40 13 82 */	cror 2, 0, 2
/* 8084D9C0  40 82 00 40 */	bne lbl_8084DA00
/* 8084D9C4  38 00 00 00 */	li r0, 0
/* 8084D9C8  90 1E 06 18 */	stw r0, 0x618(r30)
/* 8084D9CC  80 1E 09 CC */	lwz r0, 0x9cc(r30)
/* 8084D9D0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8084D9D4  90 1E 09 CC */	stw r0, 0x9cc(r30)
/* 8084D9D8  7F C3 F3 78 */	mr r3, r30
/* 8084D9DC  38 80 00 00 */	li r4, 0
/* 8084D9E0  38 A0 00 02 */	li r5, 2
/* 8084D9E4  4B FF D0 B5 */	bl setActionMode__8daKago_cFii
/* 8084D9E8  38 00 00 00 */	li r0, 0
/* 8084D9EC  B0 1E 06 C8 */	sth r0, 0x6c8(r30)
/* 8084D9F0  C0 1F 01 08 */	lfs f0, 0x108(r31)
/* 8084D9F4  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 8084D9F8  B0 1E 07 12 */	sth r0, 0x712(r30)
/* 8084D9FC  B0 1E 07 10 */	sth r0, 0x710(r30)
lbl_8084DA00:
/* 8084DA00  39 61 00 60 */	addi r11, r1, 0x60
/* 8084DA04  4B B1 48 24 */	b _restgpr_29
/* 8084DA08  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8084DA0C  7C 08 03 A6 */	mtlr r0
/* 8084DA10  38 21 00 60 */	addi r1, r1, 0x60
/* 8084DA14  4E 80 00 20 */	blr 
