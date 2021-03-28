lbl_80179590:
/* 80179590  94 21 FC 50 */	stwu r1, -0x3b0(r1)
/* 80179594  7C 08 02 A6 */	mflr r0
/* 80179598  90 01 03 B4 */	stw r0, 0x3b4(r1)
/* 8017959C  DB E1 03 A0 */	stfd f31, 0x3a0(r1)
/* 801795A0  F3 E1 03 A8 */	psq_st f31, 936(r1), 0, 0 /* qr0 */
/* 801795A4  DB C1 03 90 */	stfd f30, 0x390(r1)
/* 801795A8  F3 C1 03 98 */	psq_st f30, 920(r1), 0, 0 /* qr0 */
/* 801795AC  DB A1 03 80 */	stfd f29, 0x380(r1)
/* 801795B0  F3 A1 03 88 */	psq_st f29, 904(r1), 0, 0 /* qr0 */
/* 801795B4  DB 81 03 70 */	stfd f28, 0x370(r1)
/* 801795B8  F3 81 03 78 */	psq_st f28, 888(r1), 0, 0 /* qr0 */
/* 801795BC  DB 61 03 60 */	stfd f27, 0x360(r1)
/* 801795C0  F3 61 03 68 */	psq_st f27, 872(r1), 0, 0 /* qr0 */
/* 801795C4  DB 41 03 50 */	stfd f26, 0x350(r1)
/* 801795C8  F3 41 03 58 */	psq_st f26, 856(r1), 0, 0 /* qr0 */
/* 801795CC  DB 21 03 40 */	stfd f25, 0x340(r1)
/* 801795D0  F3 21 03 48 */	psq_st f25, 840(r1), 0, 0 /* qr0 */
/* 801795D4  DB 01 03 30 */	stfd f24, 0x330(r1)
/* 801795D8  F3 01 03 38 */	psq_st f24, 824(r1), 0, 0 /* qr0 */
/* 801795DC  DA E1 03 20 */	stfd f23, 0x320(r1)
/* 801795E0  F2 E1 03 28 */	psq_st f23, 808(r1), 0, 0 /* qr0 */
/* 801795E4  DA C1 03 10 */	stfd f22, 0x310(r1)
/* 801795E8  F2 C1 03 18 */	psq_st f22, 792(r1), 0, 0 /* qr0 */
/* 801795EC  DA A1 03 00 */	stfd f21, 0x300(r1)
/* 801795F0  F2 A1 03 08 */	psq_st f21, 776(r1), 0, 0 /* qr0 */
/* 801795F4  DA 81 02 F0 */	stfd f20, 0x2f0(r1)
/* 801795F8  F2 81 02 F8 */	psq_st f20, 760(r1), 0, 0 /* qr0 */
/* 801795FC  DA 61 02 E0 */	stfd f19, 0x2e0(r1)
/* 80179600  F2 61 02 E8 */	psq_st f19, 744(r1), 0, 0 /* qr0 */
/* 80179604  DA 41 02 D0 */	stfd f18, 0x2d0(r1)
/* 80179608  F2 41 02 D8 */	psq_st f18, 728(r1), 0, 0 /* qr0 */
/* 8017960C  39 61 02 D0 */	addi r11, r1, 0x2d0
/* 80179610  48 1E 8B B9 */	bl _savegpr_24
/* 80179614  7C 7C 1B 78 */	mr r28, r3
/* 80179618  80 03 0A F4 */	lwz r0, 0xaf4(r3)
/* 8017961C  1F C4 00 78 */	mulli r30, r4, 0x78
/* 80179620  7C 60 F2 14 */	add r3, r0, r30
/* 80179624  C3 C3 00 44 */	lfs f30, 0x44(r3)
/* 80179628  C3 A3 00 24 */	lfs f29, 0x24(r3)
/* 8017962C  C3 83 00 30 */	lfs f28, 0x30(r3)
/* 80179630  C2 63 00 34 */	lfs f19, 0x34(r3)
/* 80179634  C3 63 00 2C */	lfs f27, 0x2c(r3)
/* 80179638  C3 43 00 4C */	lfs f26, 0x4c(r3)
/* 8017963C  C3 23 00 58 */	lfs f25, 0x58(r3)
/* 80179640  C3 E3 00 5C */	lfs f31, 0x5c(r3)
/* 80179644  C0 43 00 40 */	lfs f2, 0x40(r3)
/* 80179648  C3 03 00 1C */	lfs f24, 0x1c(r3)
/* 8017964C  C2 E3 00 20 */	lfs f23, 0x20(r3)
/* 80179650  C2 C3 00 08 */	lfs f22, 8(r3)
/* 80179654  C2 A3 00 10 */	lfs f21, 0x10(r3)
/* 80179658  C2 83 00 0C */	lfs f20, 0xc(r3)
/* 8017965C  80 1C 01 74 */	lwz r0, 0x174(r28)
/* 80179660  28 00 00 00 */	cmplwi r0, 0
/* 80179664  40 82 00 2C */	bne lbl_80179690
/* 80179668  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 8017966C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80179670  41 82 00 10 */	beq lbl_80179680
/* 80179674  C3 E2 9C A8 */	lfs f31, lit_5658(r2)
/* 80179678  D3 FC 03 F8 */	stfs f31, 0x3f8(r28)
/* 8017967C  48 00 00 0C */	b lbl_80179688
lbl_80179680:
/* 80179680  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80179684  D0 1C 03 F8 */	stfs f0, 0x3f8(r28)
lbl_80179688:
/* 80179688  38 00 00 FF */	li r0, 0xff
/* 8017968C  98 1C 03 F5 */	stb r0, 0x3f5(r28)
lbl_80179690:
/* 80179690  C0 3C 03 F8 */	lfs f1, 0x3f8(r28)
/* 80179694  EC 1F 08 28 */	fsubs f0, f31, f1
/* 80179698  EC 02 00 32 */	fmuls f0, f2, f0
/* 8017969C  EC 01 00 2A */	fadds f0, f1, f0
/* 801796A0  D0 1C 03 F8 */	stfs f0, 0x3f8(r28)
/* 801796A4  80 1C 07 DC */	lwz r0, 0x7dc(r28)
/* 801796A8  2C 00 00 FF */	cmpwi r0, 0xff
/* 801796AC  41 82 00 10 */	beq lbl_801796BC
/* 801796B0  88 7C 07 E7 */	lbz r3, 0x7e7(r28)
/* 801796B4  28 03 00 FF */	cmplwi r3, 0xff
/* 801796B8  40 82 00 0C */	bne lbl_801796C4
lbl_801796BC:
/* 801796BC  38 60 00 00 */	li r3, 0
/* 801796C0  48 00 0B 58 */	b lbl_8017A218
lbl_801796C4:
/* 801796C4  80 9C 01 80 */	lwz r4, 0x180(r28)
/* 801796C8  88 04 04 E2 */	lbz r0, 0x4e2(r4)
/* 801796CC  7C 04 07 74 */	extsb r4, r0
/* 801796D0  4B ED 81 1D */	bl dPath_GetRoomPath__Fii
/* 801796D4  7C 7F 1B 79 */	or. r31, r3, r3
/* 801796D8  40 82 00 0C */	bne lbl_801796E4
/* 801796DC  38 60 00 00 */	li r3, 0
/* 801796E0  48 00 0B 38 */	b lbl_8017A218
lbl_801796E4:
/* 801796E4  88 1C 07 BE */	lbz r0, 0x7be(r28)
/* 801796E8  98 1C 0A ED */	stb r0, 0xaed(r28)
/* 801796EC  88 1C 0A ED */	lbz r0, 0xaed(r28)
/* 801796F0  28 00 00 FF */	cmplwi r0, 0xff
/* 801796F4  41 82 00 2C */	beq lbl_80179720
/* 801796F8  C0 42 9D 38 */	lfs f2, lit_9399(r2)
/* 801796FC  7C 00 07 74 */	extsb r0, r0
/* 80179700  C8 22 9C 98 */	lfd f1, lit_4448(r2)
/* 80179704  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80179708  90 01 02 A4 */	stw r0, 0x2a4(r1)
/* 8017970C  3C 00 43 30 */	lis r0, 0x4330
/* 80179710  90 01 02 A0 */	stw r0, 0x2a0(r1)
/* 80179714  C8 01 02 A0 */	lfd f0, 0x2a0(r1)
/* 80179718  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017971C  EE 62 00 32 */	fmuls f19, f2, f0
lbl_80179720:
/* 80179720  A3 BF 00 00 */	lhz r29, 0(r31)
/* 80179724  80 1C 01 74 */	lwz r0, 0x174(r28)
/* 80179728  28 00 00 00 */	cmplwi r0, 0
/* 8017972C  40 82 00 74 */	bne lbl_801797A0
/* 80179730  3C 60 52 41 */	lis r3, 0x5241 /* 0x5241494C@ha */
/* 80179734  38 03 49 4C */	addi r0, r3, 0x494C /* 0x5241494C@l */
/* 80179738  90 1C 03 E8 */	stw r0, 0x3e8(r28)
/* 8017973C  38 00 00 01 */	li r0, 1
/* 80179740  98 1C 01 58 */	stb r0, 0x158(r28)
/* 80179744  38 00 00 FF */	li r0, 0xff
/* 80179748  98 1C 03 F4 */	stb r0, 0x3f4(r28)
/* 8017974C  38 61 01 9C */	addi r3, r1, 0x19c
/* 80179750  7F 84 E3 78 */	mr r4, r28
/* 80179754  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 80179758  4B F1 DF C5 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 8017975C  C0 01 01 9C */	lfs f0, 0x19c(r1)
/* 80179760  D0 1C 03 FC */	stfs f0, 0x3fc(r28)
/* 80179764  C0 01 01 A0 */	lfs f0, 0x1a0(r1)
/* 80179768  D0 1C 04 00 */	stfs f0, 0x400(r28)
/* 8017976C  C0 01 01 A4 */	lfs f0, 0x1a4(r1)
/* 80179770  D0 1C 04 04 */	stfs f0, 0x404(r28)
/* 80179774  80 1C 0A F4 */	lwz r0, 0xaf4(r28)
/* 80179778  7C 60 F2 14 */	add r3, r0, r30
/* 8017977C  A0 03 00 06 */	lhz r0, 6(r3)
/* 80179780  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80179784  41 82 00 14 */	beq lbl_80179798
/* 80179788  7F 83 E3 78 */	mr r3, r28
/* 8017978C  80 9C 06 8C */	lwz r4, 0x68c(r28)
/* 80179790  4B FE B0 E9 */	bl getParamTargetActor__9dCamera_cFl
/* 80179794  90 7C 03 F0 */	stw r3, 0x3f0(r28)
lbl_80179798:
/* 80179798  38 00 00 FE */	li r0, 0xfe
/* 8017979C  98 1C 03 F5 */	stb r0, 0x3f5(r28)
lbl_801797A0:
/* 801797A0  88 1C 03 F5 */	lbz r0, 0x3f5(r28)
/* 801797A4  88 7C 07 E7 */	lbz r3, 0x7e7(r28)
/* 801797A8  7C 00 18 40 */	cmplw r0, r3
/* 801797AC  41 82 00 F8 */	beq lbl_801798A4
/* 801797B0  98 7C 03 F5 */	stb r3, 0x3f5(r28)
/* 801797B4  C0 1C 07 C4 */	lfs f0, 0x7c4(r28)
/* 801797B8  D0 1C 04 08 */	stfs f0, 0x408(r28)
/* 801797BC  C0 1C 07 C8 */	lfs f0, 0x7c8(r28)
/* 801797C0  D0 1C 04 0C */	stfs f0, 0x40c(r28)
/* 801797C4  C0 1C 07 CC */	lfs f0, 0x7cc(r28)
/* 801797C8  D0 1C 04 10 */	stfs f0, 0x410(r28)
/* 801797CC  80 1C 0A F4 */	lwz r0, 0xaf4(r28)
/* 801797D0  7C 60 F2 14 */	add r3, r0, r30
/* 801797D4  A0 03 00 06 */	lhz r0, 6(r3)
/* 801797D8  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 801797DC  41 82 00 C8 */	beq lbl_801798A4
/* 801797E0  38 61 01 90 */	addi r3, r1, 0x190
/* 801797E4  7F 84 E3 78 */	mr r4, r28
/* 801797E8  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 801797EC  4B F1 DF 31 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801797F0  C0 01 01 90 */	lfs f0, 0x190(r1)
/* 801797F4  D0 01 02 44 */	stfs f0, 0x244(r1)
/* 801797F8  C0 01 01 94 */	lfs f0, 0x194(r1)
/* 801797FC  D0 01 02 48 */	stfs f0, 0x248(r1)
/* 80179800  C0 01 01 98 */	lfs f0, 0x198(r1)
/* 80179804  D0 01 02 4C */	stfs f0, 0x24c(r1)
/* 80179808  80 9F 00 08 */	lwz r4, 8(r31)
/* 8017980C  C0 04 00 04 */	lfs f0, 4(r4)
/* 80179810  D0 01 02 38 */	stfs f0, 0x238(r1)
/* 80179814  C0 04 00 08 */	lfs f0, 8(r4)
/* 80179818  D0 01 02 3C */	stfs f0, 0x23c(r1)
/* 8017981C  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80179820  D0 01 02 40 */	stfs f0, 0x240(r1)
/* 80179824  38 1D FF FF */	addi r0, r29, -1
/* 80179828  54 03 20 36 */	slwi r3, r0, 4
/* 8017982C  38 63 00 04 */	addi r3, r3, 4
/* 80179830  7C 64 1A 14 */	add r3, r4, r3
/* 80179834  C0 03 00 00 */	lfs f0, 0(r3)
/* 80179838  D0 01 02 2C */	stfs f0, 0x22c(r1)
/* 8017983C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80179840  D0 01 02 30 */	stfs f0, 0x230(r1)
/* 80179844  C0 03 00 08 */	lfs f0, 8(r3)
/* 80179848  D0 01 02 34 */	stfs f0, 0x234(r1)
/* 8017984C  38 61 02 38 */	addi r3, r1, 0x238
/* 80179850  38 81 02 44 */	addi r4, r1, 0x244
/* 80179854  4B F0 EB 99 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 80179858  FE 40 08 90 */	fmr f18, f1
/* 8017985C  38 61 02 2C */	addi r3, r1, 0x22c
/* 80179860  38 81 02 44 */	addi r4, r1, 0x244
/* 80179864  4B F0 EB 89 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 80179868  FC 12 08 40 */	fcmpo cr0, f18, f1
/* 8017986C  40 80 00 20 */	bge lbl_8017988C
/* 80179870  C0 01 02 2C */	lfs f0, 0x22c(r1)
/* 80179874  D0 1C 03 FC */	stfs f0, 0x3fc(r28)
/* 80179878  C0 01 02 30 */	lfs f0, 0x230(r1)
/* 8017987C  D0 1C 04 00 */	stfs f0, 0x400(r28)
/* 80179880  C0 01 02 34 */	lfs f0, 0x234(r1)
/* 80179884  D0 1C 04 04 */	stfs f0, 0x404(r28)
/* 80179888  48 00 00 1C */	b lbl_801798A4
lbl_8017988C:
/* 8017988C  C0 01 02 38 */	lfs f0, 0x238(r1)
/* 80179890  D0 1C 03 FC */	stfs f0, 0x3fc(r28)
/* 80179894  C0 01 02 3C */	lfs f0, 0x23c(r1)
/* 80179898  D0 1C 04 00 */	stfs f0, 0x400(r28)
/* 8017989C  C0 01 02 40 */	lfs f0, 0x240(r1)
/* 801798A0  D0 1C 04 04 */	stfs f0, 0x404(r28)
lbl_801798A4:
/* 801798A4  80 1C 0A F4 */	lwz r0, 0xaf4(r28)
/* 801798A8  7C 60 F2 14 */	add r3, r0, r30
/* 801798AC  A0 63 00 06 */	lhz r3, 6(r3)
/* 801798B0  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 801798B4  41 82 00 C0 */	beq lbl_80179974
/* 801798B8  80 BC 03 F0 */	lwz r5, 0x3f0(r28)
/* 801798BC  28 05 00 00 */	cmplwi r5, 0
/* 801798C0  41 82 00 B4 */	beq lbl_80179974
/* 801798C4  38 61 01 84 */	addi r3, r1, 0x184
/* 801798C8  7F 84 E3 78 */	mr r4, r28
/* 801798CC  4B F1 DE 91 */	bl positionOf__9dCamera_cFP10fopAc_ac_c
/* 801798D0  C0 01 01 84 */	lfs f0, 0x184(r1)
/* 801798D4  D0 01 02 14 */	stfs f0, 0x214(r1)
/* 801798D8  C0 21 01 88 */	lfs f1, 0x188(r1)
/* 801798DC  D0 21 02 18 */	stfs f1, 0x218(r1)
/* 801798E0  C0 01 01 8C */	lfs f0, 0x18c(r1)
/* 801798E4  D0 01 02 1C */	stfs f0, 0x21c(r1)
/* 801798E8  C0 02 9C B4 */	lfs f0, lit_5661(r2)
/* 801798EC  EC 01 00 2A */	fadds f0, f1, f0
/* 801798F0  D0 01 02 18 */	stfs f0, 0x218(r1)
/* 801798F4  80 1C 01 84 */	lwz r0, 0x184(r28)
/* 801798F8  28 00 00 00 */	cmplwi r0, 0
/* 801798FC  41 82 00 44 */	beq lbl_80179940
/* 80179900  90 1C 03 EC */	stw r0, 0x3ec(r28)
/* 80179904  90 1C 01 88 */	stw r0, 0x188(r28)
/* 80179908  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 8017990C  60 00 20 00 */	ori r0, r0, 0x2000
/* 80179910  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80179914  38 61 01 78 */	addi r3, r1, 0x178
/* 80179918  7F 84 E3 78 */	mr r4, r28
/* 8017991C  80 BC 03 EC */	lwz r5, 0x3ec(r28)
/* 80179920  4B F1 DD FD */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80179924  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 80179928  D0 01 02 20 */	stfs f0, 0x220(r1)
/* 8017992C  C0 01 01 7C */	lfs f0, 0x17c(r1)
/* 80179930  D0 01 02 24 */	stfs f0, 0x224(r1)
/* 80179934  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 80179938  D0 01 02 28 */	stfs f0, 0x228(r1)
/* 8017993C  48 00 01 54 */	b lbl_80179A90
lbl_80179940:
/* 80179940  80 1C 03 F0 */	lwz r0, 0x3f0(r28)
/* 80179944  90 1C 03 EC */	stw r0, 0x3ec(r28)
/* 80179948  90 1C 01 88 */	stw r0, 0x188(r28)
/* 8017994C  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80179950  60 00 20 00 */	ori r0, r0, 0x2000
/* 80179954  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80179958  C0 01 02 14 */	lfs f0, 0x214(r1)
/* 8017995C  D0 01 02 20 */	stfs f0, 0x220(r1)
/* 80179960  C0 01 02 18 */	lfs f0, 0x218(r1)
/* 80179964  D0 01 02 24 */	stfs f0, 0x224(r1)
/* 80179968  C0 01 02 1C */	lfs f0, 0x21c(r1)
/* 8017996C  D0 01 02 28 */	stfs f0, 0x228(r1)
/* 80179970  48 00 01 20 */	b lbl_80179A90
lbl_80179974:
/* 80179974  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80179978  41 82 00 54 */	beq lbl_801799CC
/* 8017997C  38 00 00 00 */	li r0, 0
/* 80179980  90 1C 03 EC */	stw r0, 0x3ec(r28)
/* 80179984  90 1C 03 F0 */	stw r0, 0x3f0(r28)
/* 80179988  38 61 01 6C */	addi r3, r1, 0x16c
/* 8017998C  7F 84 E3 78 */	mr r4, r28
/* 80179990  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 80179994  4B F1 DD 89 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80179998  C0 01 01 6C */	lfs f0, 0x16c(r1)
/* 8017999C  D0 01 02 20 */	stfs f0, 0x220(r1)
/* 801799A0  C0 01 01 70 */	lfs f0, 0x170(r1)
/* 801799A4  D0 01 02 24 */	stfs f0, 0x224(r1)
/* 801799A8  C0 01 01 74 */	lfs f0, 0x174(r1)
/* 801799AC  D0 01 02 28 */	stfs f0, 0x228(r1)
/* 801799B0  C0 1C 04 08 */	lfs f0, 0x408(r28)
/* 801799B4  D0 01 02 14 */	stfs f0, 0x214(r1)
/* 801799B8  C0 1C 04 0C */	lfs f0, 0x40c(r28)
/* 801799BC  D0 01 02 18 */	stfs f0, 0x218(r1)
/* 801799C0  C0 1C 04 10 */	lfs f0, 0x410(r28)
/* 801799C4  D0 01 02 1C */	stfs f0, 0x21c(r1)
/* 801799C8  48 00 00 C8 */	b lbl_80179A90
lbl_801799CC:
/* 801799CC  80 1C 01 84 */	lwz r0, 0x184(r28)
/* 801799D0  28 00 00 00 */	cmplwi r0, 0
/* 801799D4  41 82 00 70 */	beq lbl_80179A44
/* 801799D8  90 1C 03 EC */	stw r0, 0x3ec(r28)
/* 801799DC  90 1C 03 F0 */	stw r0, 0x3f0(r28)
/* 801799E0  90 1C 01 88 */	stw r0, 0x188(r28)
/* 801799E4  38 61 01 60 */	addi r3, r1, 0x160
/* 801799E8  7F 84 E3 78 */	mr r4, r28
/* 801799EC  80 BC 03 EC */	lwz r5, 0x3ec(r28)
/* 801799F0  4B F1 DD 2D */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 801799F4  C0 01 01 60 */	lfs f0, 0x160(r1)
/* 801799F8  D0 01 02 20 */	stfs f0, 0x220(r1)
/* 801799FC  C0 01 01 64 */	lfs f0, 0x164(r1)
/* 80179A00  D0 01 02 24 */	stfs f0, 0x224(r1)
/* 80179A04  C0 01 01 68 */	lfs f0, 0x168(r1)
/* 80179A08  D0 01 02 28 */	stfs f0, 0x228(r1)
/* 80179A0C  80 1C 06 0C */	lwz r0, 0x60c(r28)
/* 80179A10  60 00 20 00 */	ori r0, r0, 0x2000
/* 80179A14  90 1C 06 0C */	stw r0, 0x60c(r28)
/* 80179A18  38 61 01 54 */	addi r3, r1, 0x154
/* 80179A1C  7F 84 E3 78 */	mr r4, r28
/* 80179A20  80 BC 03 F0 */	lwz r5, 0x3f0(r28)
/* 80179A24  4B F1 DC F9 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80179A28  C0 01 01 54 */	lfs f0, 0x154(r1)
/* 80179A2C  D0 01 02 14 */	stfs f0, 0x214(r1)
/* 80179A30  C0 01 01 58 */	lfs f0, 0x158(r1)
/* 80179A34  D0 01 02 18 */	stfs f0, 0x218(r1)
/* 80179A38  C0 01 01 5C */	lfs f0, 0x15c(r1)
/* 80179A3C  D0 01 02 1C */	stfs f0, 0x21c(r1)
/* 80179A40  48 00 00 50 */	b lbl_80179A90
lbl_80179A44:
/* 80179A44  38 00 00 00 */	li r0, 0
/* 80179A48  90 1C 03 EC */	stw r0, 0x3ec(r28)
/* 80179A4C  90 1C 03 F0 */	stw r0, 0x3f0(r28)
/* 80179A50  38 61 01 48 */	addi r3, r1, 0x148
/* 80179A54  7F 84 E3 78 */	mr r4, r28
/* 80179A58  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 80179A5C  4B F1 DC C1 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80179A60  C0 01 01 48 */	lfs f0, 0x148(r1)
/* 80179A64  D0 01 02 20 */	stfs f0, 0x220(r1)
/* 80179A68  C0 01 01 4C */	lfs f0, 0x14c(r1)
/* 80179A6C  D0 01 02 24 */	stfs f0, 0x224(r1)
/* 80179A70  C0 01 01 50 */	lfs f0, 0x150(r1)
/* 80179A74  D0 01 02 28 */	stfs f0, 0x228(r1)
/* 80179A78  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 80179A7C  D0 01 02 14 */	stfs f0, 0x214(r1)
/* 80179A80  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 80179A84  D0 01 02 18 */	stfs f0, 0x218(r1)
/* 80179A88  C0 1C 00 44 */	lfs f0, 0x44(r28)
/* 80179A8C  D0 01 02 1C */	stfs f0, 0x21c(r1)
lbl_80179A90:
/* 80179A90  38 61 01 3C */	addi r3, r1, 0x13c
/* 80179A94  7F 84 E3 78 */	mr r4, r28
/* 80179A98  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 80179A9C  4B F1 DC 81 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80179AA0  38 61 01 30 */	addi r3, r1, 0x130
/* 80179AA4  38 81 02 20 */	addi r4, r1, 0x220
/* 80179AA8  38 A1 01 3C */	addi r5, r1, 0x13c
/* 80179AAC  48 0E D0 89 */	bl __mi__4cXyzCFRC3Vec
/* 80179AB0  38 61 00 44 */	addi r3, r1, 0x44
/* 80179AB4  38 81 01 30 */	addi r4, r1, 0x130
/* 80179AB8  48 0F 7D C9 */	bl __ct__7cSGlobeFRC4cXyz
/* 80179ABC  C0 22 9C A8 */	lfs f1, lit_5658(r2)
/* 80179AC0  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80179AC4  EC 02 D8 24 */	fdivs f0, f2, f27
/* 80179AC8  EF 61 00 28 */	fsubs f27, f1, f0
/* 80179ACC  C0 02 9C F8 */	lfs f0, lit_8016(r2)
/* 80179AD0  EC 00 04 F2 */	fmuls f0, f0, f19
/* 80179AD4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80179AD8  40 81 00 7C */	ble lbl_80179B54
/* 80179ADC  38 00 00 00 */	li r0, 0
/* 80179AE0  90 1C 03 EC */	stw r0, 0x3ec(r28)
/* 80179AE4  90 1C 03 F0 */	stw r0, 0x3f0(r28)
/* 80179AE8  38 61 00 3C */	addi r3, r1, 0x3c
/* 80179AEC  38 9C 00 5C */	addi r4, r28, 0x5c
/* 80179AF0  48 0F 7D 01 */	bl __ct__7cSGlobeFRC7cSGlobe
/* 80179AF4  FC 00 98 50 */	fneg f0, f19
/* 80179AF8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80179AFC  38 61 01 24 */	addi r3, r1, 0x124
/* 80179B00  7F 84 E3 78 */	mr r4, r28
/* 80179B04  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 80179B08  4B F1 DC 15 */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80179B0C  38 61 01 18 */	addi r3, r1, 0x118
/* 80179B10  38 81 00 3C */	addi r4, r1, 0x3c
/* 80179B14  48 0F 7F A1 */	bl Xyz__7cSGlobeCFv
/* 80179B18  38 61 01 0C */	addi r3, r1, 0x10c
/* 80179B1C  38 81 01 24 */	addi r4, r1, 0x124
/* 80179B20  38 A1 01 18 */	addi r5, r1, 0x118
/* 80179B24  48 0E CF C1 */	bl __pl__4cXyzCFRC3Vec
/* 80179B28  C0 41 01 0C */	lfs f2, 0x10c(r1)
/* 80179B2C  D0 41 02 14 */	stfs f2, 0x214(r1)
/* 80179B30  C0 21 01 10 */	lfs f1, 0x110(r1)
/* 80179B34  D0 21 02 18 */	stfs f1, 0x218(r1)
/* 80179B38  C0 01 01 14 */	lfs f0, 0x114(r1)
/* 80179B3C  D0 01 02 1C */	stfs f0, 0x21c(r1)
/* 80179B40  D0 41 02 20 */	stfs f2, 0x220(r1)
/* 80179B44  D0 21 02 24 */	stfs f1, 0x224(r1)
/* 80179B48  D0 01 02 28 */	stfs f0, 0x228(r1)
/* 80179B4C  C3 62 9C A0 */	lfs f27, lit_5656(r2)
/* 80179B50  48 00 00 24 */	b lbl_80179B74
lbl_80179B54:
/* 80179B54  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80179B58  FC 1B 00 40 */	fcmpo cr0, f27, f0
/* 80179B5C  40 80 00 0C */	bge lbl_80179B68
/* 80179B60  FF 60 00 90 */	fmr f27, f0
/* 80179B64  48 00 00 10 */	b lbl_80179B74
lbl_80179B68:
/* 80179B68  FC 1B 08 40 */	fcmpo cr0, f27, f1
/* 80179B6C  40 81 00 08 */	ble lbl_80179B74
/* 80179B70  FF 60 08 90 */	fmr f27, f1
lbl_80179B74:
/* 80179B74  D2 E1 01 FC */	stfs f23, 0x1fc(r1)
/* 80179B78  D3 01 02 00 */	stfs f24, 0x200(r1)
/* 80179B7C  D2 E1 02 04 */	stfs f23, 0x204(r1)
/* 80179B80  D2 C1 01 F0 */	stfs f22, 0x1f0(r1)
/* 80179B84  D2 A1 01 F4 */	stfs f21, 0x1f4(r1)
/* 80179B88  D2 81 01 F8 */	stfs f20, 0x1f8(r1)
/* 80179B8C  C0 22 9D 24 */	lfs f1, lit_8530(r2)
/* 80179B90  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80179B94  EC 1B 00 32 */	fmuls f0, f27, f0
/* 80179B98  EC 01 00 32 */	fmuls f0, f1, f0
/* 80179B9C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80179BA0  80 1C 0A F4 */	lwz r0, 0xaf4(r28)
/* 80179BA4  7C 60 F2 14 */	add r3, r0, r30
/* 80179BA8  A0 03 00 06 */	lhz r0, 6(r3)
/* 80179BAC  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80179BB0  41 82 01 50 */	beq lbl_80179D00
/* 80179BB4  3B 00 00 00 */	li r24, 0
/* 80179BB8  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 80179BBC  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80179BC0  90 01 02 98 */	stw r0, 0x298(r1)
/* 80179BC4  3B 20 00 00 */	li r25, 0
/* 80179BC8  3B 60 00 00 */	li r27, 0
/* 80179BCC  3B 5D FF FF */	addi r26, r29, -1
/* 80179BD0  48 00 00 84 */	b lbl_80179C54
lbl_80179BD4:
/* 80179BD4  80 DF 00 08 */	lwz r6, 8(r31)
/* 80179BD8  38 61 02 80 */	addi r3, r1, 0x280
/* 80179BDC  38 9B 00 04 */	addi r4, r27, 4
/* 80179BE0  7C 86 22 14 */	add r4, r6, r4
/* 80179BE4  38 19 00 01 */	addi r0, r25, 1
/* 80179BE8  54 05 20 36 */	slwi r5, r0, 4
/* 80179BEC  38 A5 00 04 */	addi r5, r5, 4
/* 80179BF0  7C A6 2A 14 */	add r5, r6, r5
/* 80179BF4  48 0F 57 29 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 80179BF8  38 61 02 80 */	addi r3, r1, 0x280
/* 80179BFC  38 81 02 14 */	addi r4, r1, 0x214
/* 80179C00  38 A1 01 E4 */	addi r5, r1, 0x1e4
/* 80179C04  38 C1 00 30 */	addi r6, r1, 0x30
/* 80179C08  48 0E EB 09 */	bl cM3d_Len3dSqPntAndSegLine__FPC8cM3dGLinPC3VecP3VecPf
/* 80179C0C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80179C10  41 82 00 3C */	beq lbl_80179C4C
/* 80179C14  38 61 01 00 */	addi r3, r1, 0x100
/* 80179C18  38 81 02 14 */	addi r4, r1, 0x214
/* 80179C1C  38 A1 01 E4 */	addi r5, r1, 0x1e4
/* 80179C20  48 0E CF 15 */	bl __mi__4cXyzCFRC3Vec
/* 80179C24  38 61 00 F4 */	addi r3, r1, 0xf4
/* 80179C28  38 81 01 00 */	addi r4, r1, 0x100
/* 80179C2C  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 80179C30  48 0E CF 55 */	bl __ml__4cXyzCFf
/* 80179C34  38 61 01 E4 */	addi r3, r1, 0x1e4
/* 80179C38  38 81 00 F4 */	addi r4, r1, 0xf4
/* 80179C3C  7C 65 1B 78 */	mr r5, r3
/* 80179C40  48 1C D4 51 */	bl PSVECAdd
/* 80179C44  3B 00 00 01 */	li r24, 1
/* 80179C48  48 00 00 14 */	b lbl_80179C5C
lbl_80179C4C:
/* 80179C4C  3B 39 00 01 */	addi r25, r25, 1
/* 80179C50  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_80179C54:
/* 80179C54  7C 19 D0 00 */	cmpw r25, r26
/* 80179C58  41 80 FF 7C */	blt lbl_80179BD4
lbl_80179C5C:
/* 80179C5C  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 80179C60  40 82 00 48 */	bne lbl_80179CA8
/* 80179C64  38 61 00 E8 */	addi r3, r1, 0xe8
/* 80179C68  7F 84 E3 78 */	mr r4, r28
/* 80179C6C  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 80179C70  4B F1 DA AD */	bl attentionPos__9dCamera_cFP10fopAc_ac_c
/* 80179C74  38 61 00 DC */	addi r3, r1, 0xdc
/* 80179C78  38 81 00 44 */	addi r4, r1, 0x44
/* 80179C7C  48 0F 7E 39 */	bl Xyz__7cSGlobeCFv
/* 80179C80  38 61 00 D0 */	addi r3, r1, 0xd0
/* 80179C84  38 81 00 E8 */	addi r4, r1, 0xe8
/* 80179C88  38 A1 00 DC */	addi r5, r1, 0xdc
/* 80179C8C  48 0E CE 59 */	bl __pl__4cXyzCFRC3Vec
/* 80179C90  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 80179C94  D0 01 01 E4 */	stfs f0, 0x1e4(r1)
/* 80179C98  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 80179C9C  D0 01 01 E8 */	stfs f0, 0x1e8(r1)
/* 80179CA0  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 80179CA4  D0 01 01 EC */	stfs f0, 0x1ec(r1)
lbl_80179CA8:
/* 80179CA8  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80179CAC  38 81 01 E4 */	addi r4, r1, 0x1e4
/* 80179CB0  38 BC 00 64 */	addi r5, r28, 0x64
/* 80179CB4  48 0E CE 81 */	bl __mi__4cXyzCFRC3Vec
/* 80179CB8  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80179CBC  38 81 00 C4 */	addi r4, r1, 0xc4
/* 80179CC0  C0 22 9D 0C */	lfs f1, lit_8021(r2)
/* 80179CC4  48 0E CE C1 */	bl __ml__4cXyzCFf
/* 80179CC8  38 61 00 AC */	addi r3, r1, 0xac
/* 80179CCC  38 9C 00 64 */	addi r4, r28, 0x64
/* 80179CD0  38 A1 00 B8 */	addi r5, r1, 0xb8
/* 80179CD4  48 0E CE 11 */	bl __pl__4cXyzCFRC3Vec
/* 80179CD8  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 80179CDC  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 80179CE0  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 80179CE4  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 80179CE8  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 80179CEC  D0 01 02 10 */	stfs f0, 0x210(r1)
/* 80179CF0  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 80179CF4  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80179CF8  90 01 02 98 */	stw r0, 0x298(r1)
/* 80179CFC  48 00 00 4C */	b lbl_80179D48
lbl_80179D00:
/* 80179D00  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80179D04  7F 84 E3 78 */	mr r4, r28
/* 80179D08  80 BC 01 80 */	lwz r5, 0x180(r28)
/* 80179D0C  38 C1 01 F0 */	addi r6, r1, 0x1f0
/* 80179D10  4B FE B0 5D */	bl relationalPos__9dCamera_cFP10fopAc_ac_cP4cXyz
/* 80179D14  38 61 00 94 */	addi r3, r1, 0x94
/* 80179D18  38 81 00 44 */	addi r4, r1, 0x44
/* 80179D1C  48 0F 7D 99 */	bl Xyz__7cSGlobeCFv
/* 80179D20  38 61 00 88 */	addi r3, r1, 0x88
/* 80179D24  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80179D28  38 A1 00 94 */	addi r5, r1, 0x94
/* 80179D2C  48 0E CD B9 */	bl __pl__4cXyzCFRC3Vec
/* 80179D30  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 80179D34  D0 01 02 08 */	stfs f0, 0x208(r1)
/* 80179D38  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 80179D3C  D0 01 02 0C */	stfs f0, 0x20c(r1)
/* 80179D40  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 80179D44  D0 01 02 10 */	stfs f0, 0x210(r1)
lbl_80179D48:
/* 80179D48  38 61 00 7C */	addi r3, r1, 0x7c
/* 80179D4C  38 81 02 08 */	addi r4, r1, 0x208
/* 80179D50  38 BC 00 64 */	addi r5, r28, 0x64
/* 80179D54  48 0E CD E1 */	bl __mi__4cXyzCFRC3Vec
/* 80179D58  38 61 00 70 */	addi r3, r1, 0x70
/* 80179D5C  38 81 00 7C */	addi r4, r1, 0x7c
/* 80179D60  38 A1 01 FC */	addi r5, r1, 0x1fc
/* 80179D64  48 0E CE 6D */	bl __ml__4cXyzCFRC3Vec
/* 80179D68  38 7C 00 64 */	addi r3, r28, 0x64
/* 80179D6C  38 81 00 70 */	addi r4, r1, 0x70
/* 80179D70  7C 65 1B 78 */	mr r5, r3
/* 80179D74  48 1C D3 1D */	bl PSVECAdd
/* 80179D78  FC 20 D8 90 */	fmr f1, f27
/* 80179D7C  FC 40 F0 90 */	fmr f2, f30
/* 80179D80  4B F0 E3 BD */	bl rationalBezierRatio__8dCamMathFff
/* 80179D84  FF C0 08 90 */	fmr f30, f1
/* 80179D88  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha
/* 80179D8C  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l
/* 80179D90  90 01 02 7C */	stw r0, 0x27c(r1)
/* 80179D94  38 61 02 6C */	addi r3, r1, 0x26c
/* 80179D98  38 9C 00 64 */	addi r4, r28, 0x64
/* 80179D9C  FC 20 98 90 */	fmr f1, f19
/* 80179DA0  48 0F 58 C5 */	bl Set__8cM3dGSphFRC4cXyzf
/* 80179DA4  C2 62 9C A0 */	lfs f19, lit_5656(r2)
/* 80179DA8  C0 1C 00 70 */	lfs f0, 0x70(r28)
/* 80179DAC  D0 01 01 D8 */	stfs f0, 0x1d8(r1)
/* 80179DB0  C0 1C 00 74 */	lfs f0, 0x74(r28)
/* 80179DB4  D0 01 01 DC */	stfs f0, 0x1dc(r1)
/* 80179DB8  C0 1C 00 78 */	lfs f0, 0x78(r28)
/* 80179DBC  D0 01 01 E0 */	stfs f0, 0x1e0(r1)
/* 80179DC0  80 1C 0A F4 */	lwz r0, 0xaf4(r28)
/* 80179DC4  7C 60 F2 14 */	add r3, r0, r30
/* 80179DC8  A0 03 00 06 */	lhz r0, 6(r3)
/* 80179DCC  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80179DD0  41 82 00 1C */	beq lbl_80179DEC
/* 80179DD4  C0 1C 03 FC */	lfs f0, 0x3fc(r28)
/* 80179DD8  D0 01 02 14 */	stfs f0, 0x214(r1)
/* 80179DDC  C0 1C 04 00 */	lfs f0, 0x400(r28)
/* 80179DE0  D0 01 02 18 */	stfs f0, 0x218(r1)
/* 80179DE4  C0 1C 04 04 */	lfs f0, 0x404(r28)
/* 80179DE8  D0 01 02 1C */	stfs f0, 0x21c(r1)
lbl_80179DEC:
/* 80179DEC  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 80179DF0  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80179DF4  90 01 02 68 */	stw r0, 0x268(r1)
/* 80179DF8  3B 40 00 00 */	li r26, 0
/* 80179DFC  3B 60 00 00 */	li r27, 0
/* 80179E00  3B BD FF FF */	addi r29, r29, -1
/* 80179E04  48 00 01 24 */	b lbl_80179F28
lbl_80179E08:
/* 80179E08  80 9F 00 08 */	lwz r4, 8(r31)
/* 80179E0C  38 7B 00 04 */	addi r3, r27, 4
/* 80179E10  7C 64 1A 14 */	add r3, r4, r3
/* 80179E14  C0 03 00 00 */	lfs f0, 0(r3)
/* 80179E18  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 80179E1C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80179E20  D0 01 01 D0 */	stfs f0, 0x1d0(r1)
/* 80179E24  C0 03 00 08 */	lfs f0, 8(r3)
/* 80179E28  D0 01 01 D4 */	stfs f0, 0x1d4(r1)
/* 80179E2C  38 1A 00 01 */	addi r0, r26, 1
/* 80179E30  54 03 20 36 */	slwi r3, r0, 4
/* 80179E34  38 63 00 04 */	addi r3, r3, 4
/* 80179E38  7C 64 1A 14 */	add r3, r4, r3
/* 80179E3C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80179E40  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 80179E44  C0 03 00 04 */	lfs f0, 4(r3)
/* 80179E48  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80179E4C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80179E50  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80179E54  38 61 02 50 */	addi r3, r1, 0x250
/* 80179E58  38 81 01 CC */	addi r4, r1, 0x1cc
/* 80179E5C  38 A1 01 C0 */	addi r5, r1, 0x1c0
/* 80179E60  48 0F 54 BD */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 80179E64  38 61 02 6C */	addi r3, r1, 0x26c
/* 80179E68  38 81 02 50 */	addi r4, r1, 0x250
/* 80179E6C  38 A1 01 B4 */	addi r5, r1, 0x1b4
/* 80179E70  38 C1 01 A8 */	addi r6, r1, 0x1a8
/* 80179E74  48 0F 16 75 */	bl cM3d_Cross_LinSph_CrossPos__FRC8cM3dGSphRC8cM3dGLinP3VecP3Vec
/* 80179E78  2C 03 00 02 */	cmpwi r3, 2
/* 80179E7C  41 82 00 14 */	beq lbl_80179E90
/* 80179E80  40 80 00 A0 */	bge lbl_80179F20
/* 80179E84  2C 03 00 01 */	cmpwi r3, 1
/* 80179E88  40 80 00 50 */	bge lbl_80179ED8
/* 80179E8C  48 00 00 94 */	b lbl_80179F20
lbl_80179E90:
/* 80179E90  38 61 01 CC */	addi r3, r1, 0x1cc
/* 80179E94  38 81 01 C0 */	addi r4, r1, 0x1c0
/* 80179E98  38 A1 01 A8 */	addi r5, r1, 0x1a8
/* 80179E9C  4B FE 5C 8D */	bl func_8015FB28
/* 80179EA0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80179EA4  41 82 00 34 */	beq lbl_80179ED8
/* 80179EA8  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 80179EAC  38 81 02 14 */	addi r4, r1, 0x214
/* 80179EB0  4B F0 E5 3D */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 80179EB4  FC 01 98 40 */	fcmpo cr0, f1, f19
/* 80179EB8  40 81 00 20 */	ble lbl_80179ED8
/* 80179EBC  FE 60 08 90 */	fmr f19, f1
/* 80179EC0  C0 01 01 A8 */	lfs f0, 0x1a8(r1)
/* 80179EC4  D0 01 01 D8 */	stfs f0, 0x1d8(r1)
/* 80179EC8  C0 01 01 AC */	lfs f0, 0x1ac(r1)
/* 80179ECC  D0 01 01 DC */	stfs f0, 0x1dc(r1)
/* 80179ED0  C0 01 01 B0 */	lfs f0, 0x1b0(r1)
/* 80179ED4  D0 01 01 E0 */	stfs f0, 0x1e0(r1)
lbl_80179ED8:
/* 80179ED8  38 61 01 CC */	addi r3, r1, 0x1cc
/* 80179EDC  38 81 01 C0 */	addi r4, r1, 0x1c0
/* 80179EE0  38 A1 01 B4 */	addi r5, r1, 0x1b4
/* 80179EE4  4B FE 5C 45 */	bl func_8015FB28
/* 80179EE8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80179EEC  41 82 00 34 */	beq lbl_80179F20
/* 80179EF0  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 80179EF4  38 81 02 14 */	addi r4, r1, 0x214
/* 80179EF8  4B F0 E4 F5 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 80179EFC  FC 01 98 40 */	fcmpo cr0, f1, f19
/* 80179F00  40 81 00 20 */	ble lbl_80179F20
/* 80179F04  FE 60 08 90 */	fmr f19, f1
/* 80179F08  C0 01 01 B4 */	lfs f0, 0x1b4(r1)
/* 80179F0C  D0 01 01 D8 */	stfs f0, 0x1d8(r1)
/* 80179F10  C0 01 01 B8 */	lfs f0, 0x1b8(r1)
/* 80179F14  D0 01 01 DC */	stfs f0, 0x1dc(r1)
/* 80179F18  C0 01 01 BC */	lfs f0, 0x1bc(r1)
/* 80179F1C  D0 01 01 E0 */	stfs f0, 0x1e0(r1)
lbl_80179F20:
/* 80179F20  3B 5A 00 01 */	addi r26, r26, 1
/* 80179F24  3B 7B 00 10 */	addi r27, r27, 0x10
lbl_80179F28:
/* 80179F28  7C 1A E8 00 */	cmpw r26, r29
/* 80179F2C  41 80 FE DC */	blt lbl_80179E08
/* 80179F30  88 1F 00 05 */	lbz r0, 5(r31)
/* 80179F34  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80179F38  41 82 01 0C */	beq lbl_8017A044
/* 80179F3C  80 9F 00 08 */	lwz r4, 8(r31)
/* 80179F40  57 43 20 36 */	slwi r3, r26, 4
/* 80179F44  38 63 00 04 */	addi r3, r3, 4
/* 80179F48  7C 64 1A 14 */	add r3, r4, r3
/* 80179F4C  C0 03 00 00 */	lfs f0, 0(r3)
/* 80179F50  D0 01 01 CC */	stfs f0, 0x1cc(r1)
/* 80179F54  C0 03 00 04 */	lfs f0, 4(r3)
/* 80179F58  D0 01 01 D0 */	stfs f0, 0x1d0(r1)
/* 80179F5C  C0 03 00 08 */	lfs f0, 8(r3)
/* 80179F60  D0 01 01 D4 */	stfs f0, 0x1d4(r1)
/* 80179F64  C0 04 00 04 */	lfs f0, 4(r4)
/* 80179F68  D0 01 01 C0 */	stfs f0, 0x1c0(r1)
/* 80179F6C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80179F70  D0 01 01 C4 */	stfs f0, 0x1c4(r1)
/* 80179F74  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80179F78  D0 01 01 C8 */	stfs f0, 0x1c8(r1)
/* 80179F7C  38 61 02 50 */	addi r3, r1, 0x250
/* 80179F80  38 81 01 CC */	addi r4, r1, 0x1cc
/* 80179F84  38 A1 01 C0 */	addi r5, r1, 0x1c0
/* 80179F88  48 0F 53 95 */	bl SetStartEnd__8cM3dGLinFRC3VecRC3Vec
/* 80179F8C  38 61 02 6C */	addi r3, r1, 0x26c
/* 80179F90  38 81 02 50 */	addi r4, r1, 0x250
/* 80179F94  38 A1 01 B4 */	addi r5, r1, 0x1b4
/* 80179F98  38 C1 01 A8 */	addi r6, r1, 0x1a8
/* 80179F9C  48 0F 15 4D */	bl cM3d_Cross_LinSph_CrossPos__FRC8cM3dGSphRC8cM3dGLinP3VecP3Vec
/* 80179FA0  2C 03 00 02 */	cmpwi r3, 2
/* 80179FA4  41 82 00 14 */	beq lbl_80179FB8
/* 80179FA8  40 80 00 9C */	bge lbl_8017A044
/* 80179FAC  2C 03 00 01 */	cmpwi r3, 1
/* 80179FB0  40 80 00 50 */	bge lbl_8017A000
/* 80179FB4  48 00 00 90 */	b lbl_8017A044
lbl_80179FB8:
/* 80179FB8  38 61 01 CC */	addi r3, r1, 0x1cc
/* 80179FBC  38 81 01 C0 */	addi r4, r1, 0x1c0
/* 80179FC0  38 A1 01 A8 */	addi r5, r1, 0x1a8
/* 80179FC4  4B FE 5B 65 */	bl func_8015FB28
/* 80179FC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80179FCC  41 82 00 34 */	beq lbl_8017A000
/* 80179FD0  38 61 01 A8 */	addi r3, r1, 0x1a8
/* 80179FD4  38 81 02 14 */	addi r4, r1, 0x214
/* 80179FD8  4B F0 E4 15 */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 80179FDC  FC 01 98 40 */	fcmpo cr0, f1, f19
/* 80179FE0  40 81 00 20 */	ble lbl_8017A000
/* 80179FE4  FE 60 08 90 */	fmr f19, f1
/* 80179FE8  C0 01 01 A8 */	lfs f0, 0x1a8(r1)
/* 80179FEC  D0 01 01 D8 */	stfs f0, 0x1d8(r1)
/* 80179FF0  C0 01 01 AC */	lfs f0, 0x1ac(r1)
/* 80179FF4  D0 01 01 DC */	stfs f0, 0x1dc(r1)
/* 80179FF8  C0 01 01 B0 */	lfs f0, 0x1b0(r1)
/* 80179FFC  D0 01 01 E0 */	stfs f0, 0x1e0(r1)
lbl_8017A000:
/* 8017A000  38 61 01 CC */	addi r3, r1, 0x1cc
/* 8017A004  38 81 01 C0 */	addi r4, r1, 0x1c0
/* 8017A008  38 A1 01 B4 */	addi r5, r1, 0x1b4
/* 8017A00C  4B FE 5B 1D */	bl func_8015FB28
/* 8017A010  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8017A014  41 82 00 30 */	beq lbl_8017A044
/* 8017A018  38 61 01 B4 */	addi r3, r1, 0x1b4
/* 8017A01C  38 81 02 14 */	addi r4, r1, 0x214
/* 8017A020  4B F0 E3 CD */	bl xyzHorizontalDistance__8dCamMathFR4cXyzR4cXyz
/* 8017A024  FC 01 98 40 */	fcmpo cr0, f1, f19
/* 8017A028  40 81 00 1C */	ble lbl_8017A044
/* 8017A02C  C0 01 01 B4 */	lfs f0, 0x1b4(r1)
/* 8017A030  D0 01 01 D8 */	stfs f0, 0x1d8(r1)
/* 8017A034  C0 01 01 B8 */	lfs f0, 0x1b8(r1)
/* 8017A038  D0 01 01 DC */	stfs f0, 0x1dc(r1)
/* 8017A03C  C0 01 01 BC */	lfs f0, 0x1bc(r1)
/* 8017A040  D0 01 01 E0 */	stfs f0, 0x1e0(r1)
lbl_8017A044:
/* 8017A044  38 61 00 64 */	addi r3, r1, 0x64
/* 8017A048  38 81 01 D8 */	addi r4, r1, 0x1d8
/* 8017A04C  38 BC 00 64 */	addi r5, r28, 0x64
/* 8017A050  48 0E CA E5 */	bl __mi__4cXyzCFRC3Vec
/* 8017A054  38 61 00 34 */	addi r3, r1, 0x34
/* 8017A058  38 81 00 64 */	addi r4, r1, 0x64
/* 8017A05C  48 0F 78 25 */	bl __ct__7cSGlobeFRC4cXyz
/* 8017A060  38 61 00 28 */	addi r3, r1, 0x28
/* 8017A064  3B A1 00 3A */	addi r29, r1, 0x3a
/* 8017A068  7F A4 EB 78 */	mr r4, r29
/* 8017A06C  3B FC 00 62 */	addi r31, r28, 0x62
/* 8017A070  7F E5 FB 78 */	mr r5, r31
/* 8017A074  48 0F 71 31 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017A078  38 61 00 2C */	addi r3, r1, 0x2c
/* 8017A07C  38 81 00 28 */	addi r4, r1, 0x28
/* 8017A080  48 0F 6E E9 */	bl __ct__7cSAngleFRC7cSAngle
/* 8017A084  88 0D 8A BE */	lbz r0, struct_8045103C+0x2(r13)
/* 8017A088  7C 00 07 75 */	extsb. r0, r0
/* 8017A08C  40 82 00 2C */	bne lbl_8017A0B8
/* 8017A090  38 6D 8A C0 */	la r3, struct_80451040+0x0(r13) /* 80451040-_SDA_BASE_ */
/* 8017A094  C0 22 9E 58 */	lfs f1, lit_12285(r2)
/* 8017A098  48 0F 6F 31 */	bl __ct__7cSAngleFf
/* 8017A09C  3C 80 80 03 */	lis r4, __dt__7cSAngleFv@ha
/* 8017A0A0  38 84 05 10 */	addi r4, r4, __dt__7cSAngleFv@l
/* 8017A0A4  3C A0 80 43 */	lis r5, lit_14159@ha
/* 8017A0A8  38 A5 C9 AC */	addi r5, r5, lit_14159@l
/* 8017A0AC  48 1E 7B 79 */	bl __register_global_object
/* 8017A0B0  38 00 00 01 */	li r0, 1
/* 8017A0B4  98 0D 8A BE */	stb r0, struct_8045103C+0x2(r13)
lbl_8017A0B8:
/* 8017A0B8  AB 4D 8A C0 */	lha r26, struct_80451040+0x0(r13)
/* 8017A0BC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8017A0C0  48 0F 70 0D */	bl Abs__7cSAngleCFv
/* 8017A0C4  7C 63 07 34 */	extsh r3, r3
/* 8017A0C8  7F 40 07 34 */	extsh r0, r26
/* 8017A0CC  7C 03 00 00 */	cmpw r3, r0
/* 8017A0D0  40 81 00 0C */	ble lbl_8017A0DC
/* 8017A0D4  7F 83 E3 78 */	mr r3, r28
/* 8017A0D8  4B FE B0 2D */	bl setUSOAngle__9dCamera_cFv
lbl_8017A0DC:
/* 8017A0DC  80 1C 0A F4 */	lwz r0, 0xaf4(r28)
/* 8017A0E0  7C 60 F2 14 */	add r3, r0, r30
/* 8017A0E4  A0 03 00 06 */	lhz r0, 6(r3)
/* 8017A0E8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8017A0EC  41 82 00 0C */	beq lbl_8017A0F8
/* 8017A0F0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8017A0F4  48 00 00 10 */	b lbl_8017A104
lbl_8017A0F8:
/* 8017A0F8  EC 1D E0 28 */	fsubs f0, f29, f28
/* 8017A0FC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8017A100  EC 1D 00 28 */	fsubs f0, f29, f0
lbl_8017A104:
/* 8017A104  C0 5C 00 5C */	lfs f2, 0x5c(r28)
/* 8017A108  C0 3C 03 F8 */	lfs f1, 0x3f8(r28)
/* 8017A10C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8017A110  EC 01 00 32 */	fmuls f0, f1, f0
/* 8017A114  EC 02 00 2A */	fadds f0, f2, f0
/* 8017A118  D0 1C 00 5C */	stfs f0, 0x5c(r28)
/* 8017A11C  38 61 00 24 */	addi r3, r1, 0x24
/* 8017A120  7F A4 EB 78 */	mr r4, r29
/* 8017A124  7F E5 FB 78 */	mr r5, r31
/* 8017A128  48 0F 70 7D */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017A12C  38 61 00 20 */	addi r3, r1, 0x20
/* 8017A130  38 81 00 24 */	addi r4, r1, 0x24
/* 8017A134  C0 3C 03 F8 */	lfs f1, 0x3f8(r28)
/* 8017A138  48 0F 71 2D */	bl __ml__7cSAngleCFf
/* 8017A13C  38 61 00 1C */	addi r3, r1, 0x1c
/* 8017A140  7F E4 FB 78 */	mr r4, r31
/* 8017A144  38 A1 00 20 */	addi r5, r1, 0x20
/* 8017A148  48 0F 70 2D */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017A14C  38 61 00 0C */	addi r3, r1, 0xc
/* 8017A150  A8 81 00 1C */	lha r4, 0x1c(r1)
/* 8017A154  48 0F 6E 45 */	bl __ct__7cSAngleFs
/* 8017A158  A8 01 00 0C */	lha r0, 0xc(r1)
/* 8017A15C  B0 1C 00 62 */	sth r0, 0x62(r28)
/* 8017A160  38 61 00 18 */	addi r3, r1, 0x18
/* 8017A164  38 81 00 38 */	addi r4, r1, 0x38
/* 8017A168  3B 5C 00 60 */	addi r26, r28, 0x60
/* 8017A16C  7F 45 D3 78 */	mr r5, r26
/* 8017A170  48 0F 70 35 */	bl __mi__7cSAngleCFRC7cSAngle
/* 8017A174  38 61 00 14 */	addi r3, r1, 0x14
/* 8017A178  38 81 00 18 */	addi r4, r1, 0x18
/* 8017A17C  C0 3C 03 F8 */	lfs f1, 0x3f8(r28)
/* 8017A180  48 0F 70 E5 */	bl __ml__7cSAngleCFf
/* 8017A184  38 61 00 10 */	addi r3, r1, 0x10
/* 8017A188  7F 44 D3 78 */	mr r4, r26
/* 8017A18C  38 A1 00 14 */	addi r5, r1, 0x14
/* 8017A190  48 0F 6F E5 */	bl __pl__7cSAngleCFRC7cSAngle
/* 8017A194  38 61 00 08 */	addi r3, r1, 8
/* 8017A198  A8 81 00 10 */	lha r4, 0x10(r1)
/* 8017A19C  48 0F 6D FD */	bl __ct__7cSAngleFs
/* 8017A1A0  A8 01 00 08 */	lha r0, 8(r1)
/* 8017A1A4  B0 1C 00 60 */	sth r0, 0x60(r28)
/* 8017A1A8  38 61 00 58 */	addi r3, r1, 0x58
/* 8017A1AC  38 9C 00 5C */	addi r4, r28, 0x5c
/* 8017A1B0  48 0F 79 05 */	bl Xyz__7cSGlobeCFv
/* 8017A1B4  38 61 00 4C */	addi r3, r1, 0x4c
/* 8017A1B8  38 9C 00 64 */	addi r4, r28, 0x64
/* 8017A1BC  38 A1 00 58 */	addi r5, r1, 0x58
/* 8017A1C0  48 0E C9 25 */	bl __pl__4cXyzCFRC3Vec
/* 8017A1C4  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8017A1C8  D0 1C 00 70 */	stfs f0, 0x70(r28)
/* 8017A1CC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8017A1D0  D0 1C 00 74 */	stfs f0, 0x74(r28)
/* 8017A1D4  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8017A1D8  D0 1C 00 78 */	stfs f0, 0x78(r28)
/* 8017A1DC  C0 3C 00 80 */	lfs f1, 0x80(r28)
/* 8017A1E0  EC 1A C8 28 */	fsubs f0, f26, f25
/* 8017A1E4  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8017A1E8  EC 1A 00 28 */	fsubs f0, f26, f0
/* 8017A1EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 8017A1F0  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8017A1F4  EC 01 00 2A */	fadds f0, f1, f0
/* 8017A1F8  D0 1C 00 80 */	stfs f0, 0x80(r28)
/* 8017A1FC  3C 60 80 3A */	lis r3, __vt__8cM3dGLin@ha
/* 8017A200  38 03 78 F8 */	addi r0, r3, __vt__8cM3dGLin@l
/* 8017A204  90 01 02 68 */	stw r0, 0x268(r1)
/* 8017A208  3C 60 80 3A */	lis r3, __vt__8cM3dGSph@ha
/* 8017A20C  38 03 79 04 */	addi r0, r3, __vt__8cM3dGSph@l
/* 8017A210  90 01 02 7C */	stw r0, 0x27c(r1)
/* 8017A214  38 60 00 01 */	li r3, 1
lbl_8017A218:
/* 8017A218  E3 E1 03 A8 */	psq_l f31, 936(r1), 0, 0 /* qr0 */
/* 8017A21C  CB E1 03 A0 */	lfd f31, 0x3a0(r1)
/* 8017A220  E3 C1 03 98 */	psq_l f30, 920(r1), 0, 0 /* qr0 */
/* 8017A224  CB C1 03 90 */	lfd f30, 0x390(r1)
/* 8017A228  E3 A1 03 88 */	psq_l f29, 904(r1), 0, 0 /* qr0 */
/* 8017A22C  CB A1 03 80 */	lfd f29, 0x380(r1)
/* 8017A230  E3 81 03 78 */	psq_l f28, 888(r1), 0, 0 /* qr0 */
/* 8017A234  CB 81 03 70 */	lfd f28, 0x370(r1)
/* 8017A238  E3 61 03 68 */	psq_l f27, 872(r1), 0, 0 /* qr0 */
/* 8017A23C  CB 61 03 60 */	lfd f27, 0x360(r1)
/* 8017A240  E3 41 03 58 */	psq_l f26, 856(r1), 0, 0 /* qr0 */
/* 8017A244  CB 41 03 50 */	lfd f26, 0x350(r1)
/* 8017A248  E3 21 03 48 */	psq_l f25, 840(r1), 0, 0 /* qr0 */
/* 8017A24C  CB 21 03 40 */	lfd f25, 0x340(r1)
/* 8017A250  E3 01 03 38 */	psq_l f24, 824(r1), 0, 0 /* qr0 */
/* 8017A254  CB 01 03 30 */	lfd f24, 0x330(r1)
/* 8017A258  E2 E1 03 28 */	psq_l f23, 808(r1), 0, 0 /* qr0 */
/* 8017A25C  CA E1 03 20 */	lfd f23, 0x320(r1)
/* 8017A260  E2 C1 03 18 */	psq_l f22, 792(r1), 0, 0 /* qr0 */
/* 8017A264  CA C1 03 10 */	lfd f22, 0x310(r1)
/* 8017A268  E2 A1 03 08 */	psq_l f21, 776(r1), 0, 0 /* qr0 */
/* 8017A26C  CA A1 03 00 */	lfd f21, 0x300(r1)
/* 8017A270  E2 81 02 F8 */	psq_l f20, 760(r1), 0, 0 /* qr0 */
/* 8017A274  CA 81 02 F0 */	lfd f20, 0x2f0(r1)
/* 8017A278  E2 61 02 E8 */	psq_l f19, 744(r1), 0, 0 /* qr0 */
/* 8017A27C  CA 61 02 E0 */	lfd f19, 0x2e0(r1)
/* 8017A280  E2 41 02 D8 */	psq_l f18, 728(r1), 0, 0 /* qr0 */
/* 8017A284  CA 41 02 D0 */	lfd f18, 0x2d0(r1)
/* 8017A288  39 61 02 D0 */	addi r11, r1, 0x2d0
/* 8017A28C  48 1E 7F 89 */	bl _restgpr_24
/* 8017A290  80 01 03 B4 */	lwz r0, 0x3b4(r1)
/* 8017A294  7C 08 03 A6 */	mtlr r0
/* 8017A298  38 21 03 B0 */	addi r1, r1, 0x3b0
/* 8017A29C  4E 80 00 20 */	blr 
