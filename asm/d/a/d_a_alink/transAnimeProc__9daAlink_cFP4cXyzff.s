lbl_800BB7A0:
/* 800BB7A0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 800BB7A4  7C 08 02 A6 */	mflr r0
/* 800BB7A8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 800BB7AC  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 800BB7B0  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 800BB7B4  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 800BB7B8  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 800BB7BC  39 61 00 90 */	addi r11, r1, 0x90
/* 800BB7C0  48 2A 6A 15 */	bl _savegpr_27
/* 800BB7C4  7C 7D 1B 78 */	mr r29, r3
/* 800BB7C8  7C 9E 23 78 */	mr r30, r4
/* 800BB7CC  FF C0 08 90 */	fmr f30, f1
/* 800BB7D0  FF E0 10 90 */	fmr f31, f2
/* 800BB7D4  83 83 1F 20 */	lwz r28, 0x1f20(r3)
/* 800BB7D8  C0 03 34 D4 */	lfs f0, 0x34d4(r3)
/* 800BB7DC  D0 04 00 00 */	stfs f0, 0(r4)
/* 800BB7E0  C0 03 34 D8 */	lfs f0, 0x34d8(r3)
/* 800BB7E4  D0 04 00 04 */	stfs f0, 4(r4)
/* 800BB7E8  C0 03 34 DC */	lfs f0, 0x34dc(r3)
/* 800BB7EC  D0 04 00 08 */	stfs f0, 8(r4)
/* 800BB7F0  80 7C 00 08 */	lwz r3, 8(r28)
/* 800BB7F4  80 63 00 04 */	lwz r3, 4(r3)
/* 800BB7F8  38 80 00 00 */	li r4, 0
/* 800BB7FC  38 A1 00 58 */	addi r5, r1, 0x58
/* 800BB800  81 83 00 00 */	lwz r12, 0(r3)
/* 800BB804  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800BB808  7D 89 03 A6 */	mtctr r12
/* 800BB80C  4E 80 04 21 */	bctrl 
/* 800BB810  3B 60 00 01 */	li r27, 1
/* 800BB814  3B E0 00 08 */	li r31, 8
lbl_800BB818:
/* 800BB818  80 7C 00 08 */	lwz r3, 8(r28)
/* 800BB81C  38 1F 00 04 */	addi r0, r31, 4
/* 800BB820  7C 63 00 2E */	lwzx r3, r3, r0
/* 800BB824  28 03 00 00 */	cmplwi r3, 0
/* 800BB828  41 82 00 74 */	beq lbl_800BB89C
/* 800BB82C  38 80 00 00 */	li r4, 0
/* 800BB830  38 A1 00 38 */	addi r5, r1, 0x38
/* 800BB834  81 83 00 00 */	lwz r12, 0(r3)
/* 800BB838  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 800BB83C  7D 89 03 A6 */	mtctr r12
/* 800BB840  4E 80 04 21 */	bctrl 
/* 800BB844  80 7C 00 08 */	lwz r3, 8(r28)
/* 800BB848  7C 43 FC 2E */	lfsx f2, r3, r31
/* 800BB84C  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800BB850  EC 60 10 28 */	fsubs f3, f0, f2
/* 800BB854  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 800BB858  EC 20 00 F2 */	fmuls f1, f0, f3
/* 800BB85C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 800BB860  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800BB864  EC 01 00 2A */	fadds f0, f1, f0
/* 800BB868  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 800BB86C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 800BB870  EC 20 00 F2 */	fmuls f1, f0, f3
/* 800BB874  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 800BB878  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800BB87C  EC 01 00 2A */	fadds f0, f1, f0
/* 800BB880  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 800BB884  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 800BB888  EC 20 00 F2 */	fmuls f1, f0, f3
/* 800BB88C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 800BB890  EC 00 00 B2 */	fmuls f0, f0, f2
/* 800BB894  EC 01 00 2A */	fadds f0, f1, f0
/* 800BB898  D0 01 00 74 */	stfs f0, 0x74(r1)
lbl_800BB89C:
/* 800BB89C  3B 7B 00 01 */	addi r27, r27, 1
/* 800BB8A0  2C 1B 00 03 */	cmpwi r27, 3
/* 800BB8A4  3B FF 00 08 */	addi r31, r31, 8
/* 800BB8A8  41 80 FF 70 */	blt lbl_800BB818
/* 800BB8AC  80 7D 20 60 */	lwz r3, 0x2060(r29)
/* 800BB8B0  83 E3 00 1C */	lwz r31, 0x1c(r3)
/* 800BB8B4  88 1D 2F 99 */	lbz r0, 0x2f99(r29)
/* 800BB8B8  28 00 00 50 */	cmplwi r0, 0x50
/* 800BB8BC  40 82 00 EC */	bne lbl_800BB9A8
/* 800BB8C0  38 61 00 08 */	addi r3, r1, 8
/* 800BB8C4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 800BB8C8  38 BD 37 98 */	addi r5, r29, 0x3798
/* 800BB8CC  48 1A B2 69 */	bl __mi__4cXyzCFRC3Vec
/* 800BB8D0  C0 01 00 08 */	lfs f0, 8(r1)
/* 800BB8D4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800BB8D8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800BB8DC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800BB8E0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800BB8E4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800BB8E8  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800BB8EC  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800BB8F0  40 82 00 18 */	bne lbl_800BB908
/* 800BB8F4  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800BB8F8  28 00 00 1B */	cmplwi r0, 0x1b
/* 800BB8FC  41 82 00 0C */	beq lbl_800BB908
/* 800BB900  28 00 01 04 */	cmplwi r0, 0x104
/* 800BB904  40 82 00 4C */	bne lbl_800BB950
lbl_800BB908:
/* 800BB908  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 800BB90C  C0 1D 2B A8 */	lfs f0, 0x2ba8(r29)
/* 800BB910  EC 01 00 28 */	fsubs f0, f1, f0
/* 800BB914  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800BB918  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BB91C  D0 1D 2B A8 */	stfs f0, 0x2ba8(r29)
/* 800BB920  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 800BB924  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 800BB928  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 800BB92C  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 800BB930  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 800BB934  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 800BB938  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 800BB93C  D0 1D 37 98 */	stfs f0, 0x3798(r29)
/* 800BB940  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 800BB944  D0 1D 37 9C */	stfs f0, 0x379c(r29)
/* 800BB948  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 800BB94C  D0 1D 37 A0 */	stfs f0, 0x37a0(r29)
lbl_800BB950:
/* 800BB950  C0 5F 00 14 */	lfs f2, 0x14(r31)
/* 800BB954  FC 20 F0 50 */	fneg f1, f30
/* 800BB958  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800BB95C  EC 21 00 32 */	fmuls f1, f1, f0
/* 800BB960  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800BB964  EC 1F 00 32 */	fmuls f0, f31, f0
/* 800BB968  EC 01 00 2A */	fadds f0, f1, f0
/* 800BB96C  EC 02 00 28 */	fsubs f0, f2, f0
/* 800BB970  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 800BB974  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 800BB978  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800BB97C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800BB980  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 800BB984  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 800BB988  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800BB98C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 800BB990  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800BB994  EC 1E 00 32 */	fmuls f0, f30, f0
/* 800BB998  EC 01 00 2A */	fadds f0, f1, f0
/* 800BB99C  EC 02 00 28 */	fsubs f0, f2, f0
/* 800BB9A0  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 800BB9A4  48 00 03 5C */	b lbl_800BBD00
lbl_800BB9A8:
/* 800BB9A8  28 00 00 40 */	cmplwi r0, 0x40
/* 800BB9AC  41 82 00 24 */	beq lbl_800BB9D0
/* 800BB9B0  28 00 00 90 */	cmplwi r0, 0x90
/* 800BB9B4  41 82 00 1C */	beq lbl_800BB9D0
/* 800BB9B8  28 00 00 80 */	cmplwi r0, 0x80
/* 800BB9BC  41 82 00 14 */	beq lbl_800BB9D0
/* 800BB9C0  28 00 00 A0 */	cmplwi r0, 0xa0
/* 800BB9C4  41 82 00 0C */	beq lbl_800BB9D0
/* 800BB9C8  28 00 00 70 */	cmplwi r0, 0x70
/* 800BB9CC  40 82 02 40 */	bne lbl_800BBC0C
lbl_800BB9D0:
/* 800BB9D0  28 00 00 80 */	cmplwi r0, 0x80
/* 800BB9D4  40 82 00 24 */	bne lbl_800BB9F8
/* 800BB9D8  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 800BB9DC  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 800BB9E0  EC 21 00 28 */	fsubs f1, f1, f0
/* 800BB9E4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BB9E8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800BB9EC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800BB9F0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800BB9F4  48 00 00 C0 */	b lbl_800BBAB4
lbl_800BB9F8:
/* 800BB9F8  28 00 00 A0 */	cmplwi r0, 0xa0
/* 800BB9FC  40 82 00 54 */	bne lbl_800BBA50
/* 800BBA00  80 7D 38 4C */	lwz r3, 0x384c(r29)
/* 800BBA04  C0 43 00 08 */	lfs f2, 8(r3)
/* 800BBA08  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 800BBA0C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 800BBA10  EC 01 00 28 */	fsubs f0, f1, f0
/* 800BBA14  EC 82 00 2A */	fadds f4, f2, f0
/* 800BBA18  C0 43 00 04 */	lfs f2, 4(r3)
/* 800BBA1C  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 800BBA20  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 800BBA24  EC 01 00 28 */	fsubs f0, f1, f0
/* 800BBA28  EC 62 00 2A */	fadds f3, f2, f0
/* 800BBA2C  C0 43 00 00 */	lfs f2, 0(r3)
/* 800BBA30  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 800BBA34  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 800BBA38  EC 01 00 28 */	fsubs f0, f1, f0
/* 800BBA3C  EC 02 00 2A */	fadds f0, f2, f0
/* 800BBA40  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800BBA44  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 800BBA48  D0 81 00 34 */	stfs f4, 0x34(r1)
/* 800BBA4C  48 00 00 68 */	b lbl_800BBAB4
lbl_800BBA50:
/* 800BBA50  28 00 00 90 */	cmplwi r0, 0x90
/* 800BBA54  40 82 00 30 */	bne lbl_800BBA84
/* 800BBA58  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 800BBA5C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 800BBA60  EC 41 00 28 */	fsubs f2, f1, f0
/* 800BBA64  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 800BBA68  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 800BBA6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 800BBA70  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800BBA74  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BBA78  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 800BBA7C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 800BBA80  48 00 00 34 */	b lbl_800BBAB4
lbl_800BBA84:
/* 800BBA84  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 800BBA88  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 800BBA8C  EC 61 00 28 */	fsubs f3, f1, f0
/* 800BBA90  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 800BBA94  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 800BBA98  EC 41 00 28 */	fsubs f2, f1, f0
/* 800BBA9C  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 800BBAA0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 800BBAA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 800BBAA8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800BBAAC  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 800BBAB0  D0 61 00 34 */	stfs f3, 0x34(r1)
lbl_800BBAB4:
/* 800BBAB4  C0 61 00 34 */	lfs f3, 0x34(r1)
/* 800BBAB8  EC 3E 00 F2 */	fmuls f1, f30, f3
/* 800BBABC  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 800BBAC0  EC 1F 00 B2 */	fmuls f0, f31, f2
/* 800BBAC4  EC 01 00 2A */	fadds f0, f1, f0
/* 800BBAC8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800BBACC  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800BBAD0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800BBAD4  EC 3F 00 F2 */	fmuls f1, f31, f3
/* 800BBAD8  EC 1E 00 B2 */	fmuls f0, f30, f2
/* 800BBADC  EC 01 00 28 */	fsubs f0, f1, f0
/* 800BBAE0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800BBAE4  80 1D 05 70 */	lwz r0, 0x570(r29)
/* 800BBAE8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800BBAEC  41 82 00 38 */	beq lbl_800BBB24
/* 800BBAF0  38 7D 2C 48 */	addi r3, r29, 0x2c48
/* 800BBAF4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 800BBAF8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 800BBAFC  48 28 A9 B5 */	bl PSMTXCopy
/* 800BBB00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800BBB04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800BBB08  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 800BBB0C  4B F5 09 29 */	bl mDoMtx_YrotM__FPA4_fs
/* 800BBB10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 800BBB14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 800BBB18  38 81 00 2C */	addi r4, r1, 0x2c
/* 800BBB1C  38 A1 00 20 */	addi r5, r1, 0x20
/* 800BBB20  48 28 B2 4D */	bl PSMTXMultVec
lbl_800BBB24:
/* 800BBB24  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 800BBB28  38 81 00 20 */	addi r4, r1, 0x20
/* 800BBB2C  7C 65 1B 78 */	mr r5, r3
/* 800BBB30  48 28 B5 85 */	bl PSVECSubtract
/* 800BBB34  38 7D 37 98 */	addi r3, r29, 0x3798
/* 800BBB38  38 81 00 20 */	addi r4, r1, 0x20
/* 800BBB3C  7C 65 1B 78 */	mr r5, r3
/* 800BBB40  48 28 B5 75 */	bl PSVECSubtract
/* 800BBB44  88 1D 2F 99 */	lbz r0, 0x2f99(r29)
/* 800BBB48  28 00 00 A0 */	cmplwi r0, 0xa0
/* 800BBB4C  40 82 00 20 */	bne lbl_800BBB6C
/* 800BBB50  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800BBB54  28 00 00 12 */	cmplwi r0, 0x12
/* 800BBB58  40 82 00 14 */	bne lbl_800BBB6C
/* 800BBB5C  38 7D 34 F8 */	addi r3, r29, 0x34f8
/* 800BBB60  38 81 00 20 */	addi r4, r1, 0x20
/* 800BBB64  7C 65 1B 78 */	mr r5, r3
/* 800BBB68  48 28 B5 4D */	bl PSVECSubtract
lbl_800BBB6C:
/* 800BBB6C  88 1D 2F 99 */	lbz r0, 0x2f99(r29)
/* 800BBB70  28 00 00 70 */	cmplwi r0, 0x70
/* 800BBB74  40 82 00 70 */	bne lbl_800BBBE4
/* 800BBB78  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 800BBB7C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 800BBB80  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800BBB84  EC 21 00 2A */	fadds f1, f1, f0
/* 800BBB88  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 800BBB8C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800BBB90  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800BBB94  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800BBB98  38 7D 1D 08 */	addi r3, r29, 0x1d08
/* 800BBB9C  38 81 00 14 */	addi r4, r1, 0x14
/* 800BBBA0  48 1A C1 89 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 800BBBA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800BBBA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800BBBAC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800BBBB0  38 9D 1D 08 */	addi r4, r29, 0x1d08
/* 800BBBB4  4B FB 88 ED */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 800BBBB8  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 800BBBBC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 800BBBC0  40 80 00 24 */	bge lbl_800BBBE4
/* 800BBBC4  EC 01 10 28 */	fsubs f0, f1, f2
/* 800BBBC8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800BBBCC  EC 02 00 2A */	fadds f0, f2, f0
/* 800BBBD0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 800BBBD4  C0 3D 37 9C */	lfs f1, 0x379c(r29)
/* 800BBBD8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 800BBBDC  EC 01 00 2A */	fadds f0, f1, f0
/* 800BBBE0  D0 1D 37 9C */	stfs f0, 0x379c(r29)
lbl_800BBBE4:
/* 800BBBE4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 800BBBE8  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 800BBBEC  88 1D 2F 99 */	lbz r0, 0x2f99(r29)
/* 800BBBF0  28 00 00 80 */	cmplwi r0, 0x80
/* 800BBBF4  41 82 01 0C */	beq lbl_800BBD00
/* 800BBBF8  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 800BBBFC  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 800BBC00  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 800BBC04  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 800BBC08  48 00 00 F8 */	b lbl_800BBD00
lbl_800BBC0C:
/* 800BBC0C  28 00 00 20 */	cmplwi r0, 0x20
/* 800BBC10  41 82 00 0C */	beq lbl_800BBC1C
/* 800BBC14  28 00 00 30 */	cmplwi r0, 0x30
/* 800BBC18  40 82 00 24 */	bne lbl_800BBC3C
lbl_800BBC1C:
/* 800BBC1C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 800BBC20  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 800BBC24  88 1D 2F 99 */	lbz r0, 0x2f99(r29)
/* 800BBC28  28 00 00 20 */	cmplwi r0, 0x20
/* 800BBC2C  41 82 00 D4 */	beq lbl_800BBD00
/* 800BBC30  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 800BBC34  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 800BBC38  48 00 00 C8 */	b lbl_800BBD00
lbl_800BBC3C:
/* 800BBC3C  28 00 00 10 */	cmplwi r0, 0x10
/* 800BBC40  40 82 00 94 */	bne lbl_800BBCD4
/* 800BBC44  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800BBC48  D0 3D 34 D4 */	stfs f1, 0x34d4(r29)
/* 800BBC4C  D0 3D 34 DC */	stfs f1, 0x34dc(r29)
/* 800BBC50  D0 3E 00 00 */	stfs f1, 0(r30)
/* 800BBC54  D0 3E 00 08 */	stfs f1, 8(r30)
/* 800BBC58  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 800BBC5C  D0 1E 00 04 */	stfs f0, 4(r30)
/* 800BBC60  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 800BBC64  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 800BBC68  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 800BBC6C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 800BBC70  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 800BBC74  D0 1D 33 B0 */	stfs f0, 0x33b0(r29)
/* 800BBC78  80 1D 31 A0 */	lwz r0, 0x31a0(r29)
/* 800BBC7C  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800BBC80  41 82 00 10 */	beq lbl_800BBC90
/* 800BBC84  38 00 00 06 */	li r0, 6
/* 800BBC88  98 1D 2F 99 */	stb r0, 0x2f99(r29)
/* 800BBC8C  48 00 00 0C */	b lbl_800BBC98
lbl_800BBC90:
/* 800BBC90  38 00 00 07 */	li r0, 7
/* 800BBC94  98 1D 2F 99 */	stb r0, 0x2f99(r29)
lbl_800BBC98:
/* 800BBC98  A0 1D 2F E8 */	lhz r0, 0x2fe8(r29)
/* 800BBC9C  28 00 00 3A */	cmplwi r0, 0x3a
/* 800BBCA0  41 82 00 0C */	beq lbl_800BBCAC
/* 800BBCA4  28 00 00 7C */	cmplwi r0, 0x7c
/* 800BBCA8  40 82 00 14 */	bne lbl_800BBCBC
lbl_800BBCAC:
/* 800BBCAC  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800BBCB0  D0 1E 00 04 */	stfs f0, 4(r30)
/* 800BBCB4  D0 1D 33 B0 */	stfs f0, 0x33b0(r29)
/* 800BBCB8  48 00 00 48 */	b lbl_800BBD00
lbl_800BBCBC:
/* 800BBCBC  28 00 00 DD */	cmplwi r0, 0xdd
/* 800BBCC0  40 82 00 40 */	bne lbl_800BBD00
/* 800BBCC4  C0 02 95 E0 */	lfs f0, lit_28016(r2)
/* 800BBCC8  D0 1D 33 B0 */	stfs f0, 0x33b0(r29)
/* 800BBCCC  D0 1E 00 04 */	stfs f0, 4(r30)
/* 800BBCD0  48 00 00 30 */	b lbl_800BBD00
lbl_800BBCD4:
/* 800BBCD4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800BBCD8  41 82 00 28 */	beq lbl_800BBD00
/* 800BBCDC  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 800BBCE0  D0 1E 00 00 */	stfs f0, 0(r30)
/* 800BBCE4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 800BBCE8  D0 1E 00 04 */	stfs f0, 4(r30)
/* 800BBCEC  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 800BBCF0  D0 1E 00 08 */	stfs f0, 8(r30)
/* 800BBCF4  88 1D 2F 99 */	lbz r0, 0x2f99(r29)
/* 800BBCF8  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 800BBCFC  98 1D 2F 99 */	stb r0, 0x2f99(r29)
lbl_800BBD00:
/* 800BBD00  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 800BBD04  D0 1D 34 D4 */	stfs f0, 0x34d4(r29)
/* 800BBD08  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 800BBD0C  D0 1D 34 D8 */	stfs f0, 0x34d8(r29)
/* 800BBD10  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 800BBD14  D0 1D 34 DC */	stfs f0, 0x34dc(r29)
/* 800BBD18  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 800BBD1C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 800BBD20  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 800BBD24  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 800BBD28  39 61 00 90 */	addi r11, r1, 0x90
/* 800BBD2C  48 2A 64 F5 */	bl _restgpr_27
/* 800BBD30  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 800BBD34  7C 08 03 A6 */	mtlr r0
/* 800BBD38  38 21 00 B0 */	addi r1, r1, 0xb0
/* 800BBD3C  4E 80 00 20 */	blr 
