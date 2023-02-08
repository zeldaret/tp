lbl_8069D770:
/* 8069D770  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8069D774  7C 08 02 A6 */	mflr r0
/* 8069D778  90 01 00 54 */	stw r0, 0x54(r1)
/* 8069D77C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8069D780  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8069D784  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8069D788  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8069D78C  7C 7E 1B 78 */	mr r30, r3
/* 8069D790  3C 80 80 6A */	lis r4, lit_3902@ha /* 0x806A190C@ha */
/* 8069D794  3B E4 19 0C */	addi r31, r4, lit_3902@l /* 0x806A190C@l */
/* 8069D798  A8 03 06 6C */	lha r0, 0x66c(r3)
/* 8069D79C  2C 00 00 01 */	cmpwi r0, 1
/* 8069D7A0  41 82 01 14 */	beq lbl_8069D8B4
/* 8069D7A4  40 80 00 10 */	bge lbl_8069D7B4
/* 8069D7A8  2C 00 00 00 */	cmpwi r0, 0
/* 8069D7AC  40 80 00 14 */	bge lbl_8069D7C0
/* 8069D7B0  48 00 03 98 */	b lbl_8069DB48
lbl_8069D7B4:
/* 8069D7B4  2C 00 00 03 */	cmpwi r0, 3
/* 8069D7B8  40 80 03 90 */	bge lbl_8069DB48
/* 8069D7BC  48 00 02 58 */	b lbl_8069DA14
lbl_8069D7C0:
/* 8069D7C0  38 80 00 0B */	li r4, 0xb
/* 8069D7C4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8069D7C8  38 A0 00 00 */	li r5, 0
/* 8069D7CC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069D7D0  4B FF D3 65 */	bl anm_init__FP10e_db_classifUcf
/* 8069D7D4  7F C3 F3 78 */	mr r3, r30
/* 8069D7D8  38 80 00 13 */	li r4, 0x13
/* 8069D7DC  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8069D7E0  38 A0 00 02 */	li r5, 2
/* 8069D7E4  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8069D7E8  4B FF D3 F9 */	bl leaf_anm_init__FP10e_db_classifUcf
/* 8069D7EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070080@ha */
/* 8069D7F0  38 03 00 80 */	addi r0, r3, 0x0080 /* 0x00070080@l */
/* 8069D7F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8069D7F8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8069D7FC  38 81 00 10 */	addi r4, r1, 0x10
/* 8069D800  38 A0 00 00 */	li r5, 0
/* 8069D804  38 C0 FF FF */	li r6, -1
/* 8069D808  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8069D80C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8069D810  7D 89 03 A6 */	mtctr r12
/* 8069D814  4E 80 04 21 */	bctrl 
/* 8069D818  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8069D81C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8069D820  80 63 00 00 */	lwz r3, 0(r3)
/* 8069D824  A8 9E 06 80 */	lha r4, 0x680(r30)
/* 8069D828  4B 96 EB B5 */	bl mDoMtx_YrotS__FPA4_fs
/* 8069D82C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069D830  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8069D834  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 8069D838  28 00 00 01 */	cmplwi r0, 1
/* 8069D83C  41 82 00 2C */	beq lbl_8069D868
/* 8069D840  28 00 00 02 */	cmplwi r0, 2
/* 8069D844  40 82 00 10 */	bne lbl_8069D854
/* 8069D848  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8069D84C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8069D850  48 00 00 0C */	b lbl_8069D85C
lbl_8069D854:
/* 8069D854  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8069D858  D0 01 00 24 */	stfs f0, 0x24(r1)
lbl_8069D85C:
/* 8069D85C  C0 1F 00 D4 */	lfs f0, 0xd4(r31)
/* 8069D860  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8069D864  48 00 00 10 */	b lbl_8069D874
lbl_8069D868:
/* 8069D868  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8069D86C  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8069D870  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_8069D874:
/* 8069D874  38 61 00 20 */	addi r3, r1, 0x20
/* 8069D878  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8069D87C  4B BD 36 71 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8069D880  38 00 00 01 */	li r0, 1
/* 8069D884  B0 1E 06 6C */	sth r0, 0x66c(r30)
/* 8069D888  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070084@ha */
/* 8069D88C  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x00070084@l */
/* 8069D890  90 01 00 0C */	stw r0, 0xc(r1)
/* 8069D894  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 8069D898  38 81 00 0C */	addi r4, r1, 0xc
/* 8069D89C  38 A0 FF FF */	li r5, -1
/* 8069D8A0  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 8069D8A4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069D8A8  7D 89 03 A6 */	mtctr r12
/* 8069D8AC  4E 80 04 21 */	bctrl 
/* 8069D8B0  48 00 02 98 */	b lbl_8069DB48
lbl_8069D8B4:
/* 8069D8B4  38 61 00 14 */	addi r3, r1, 0x14
/* 8069D8B8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8069D8BC  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 8069D8C0  4B BC 92 75 */	bl __mi__4cXyzCFRC3Vec
/* 8069D8C4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8069D8C8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8069D8CC  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8069D8D0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8069D8D4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8069D8D8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8069D8DC  38 61 00 20 */	addi r3, r1, 0x20
/* 8069D8E0  4B CA 98 59 */	bl PSVECSquareMag
/* 8069D8E4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069D8E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069D8EC  40 81 00 58 */	ble lbl_8069D944
/* 8069D8F0  FC 00 08 34 */	frsqrte f0, f1
/* 8069D8F4  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8069D8F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8069D8FC  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8069D900  FC 00 00 32 */	fmul f0, f0, f0
/* 8069D904  FC 01 00 32 */	fmul f0, f1, f0
/* 8069D908  FC 03 00 28 */	fsub f0, f3, f0
/* 8069D90C  FC 02 00 32 */	fmul f0, f2, f0
/* 8069D910  FC 44 00 32 */	fmul f2, f4, f0
/* 8069D914  FC 00 00 32 */	fmul f0, f0, f0
/* 8069D918  FC 01 00 32 */	fmul f0, f1, f0
/* 8069D91C  FC 03 00 28 */	fsub f0, f3, f0
/* 8069D920  FC 02 00 32 */	fmul f0, f2, f0
/* 8069D924  FC 44 00 32 */	fmul f2, f4, f0
/* 8069D928  FC 00 00 32 */	fmul f0, f0, f0
/* 8069D92C  FC 01 00 32 */	fmul f0, f1, f0
/* 8069D930  FC 03 00 28 */	fsub f0, f3, f0
/* 8069D934  FC 02 00 32 */	fmul f0, f2, f0
/* 8069D938  FC 21 00 32 */	fmul f1, f1, f0
/* 8069D93C  FC 20 08 18 */	frsp f1, f1
/* 8069D940  48 00 00 88 */	b lbl_8069D9C8
lbl_8069D944:
/* 8069D944  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8069D948  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069D94C  40 80 00 10 */	bge lbl_8069D95C
/* 8069D950  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8069D954  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8069D958  48 00 00 70 */	b lbl_8069D9C8
lbl_8069D95C:
/* 8069D95C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8069D960  80 81 00 08 */	lwz r4, 8(r1)
/* 8069D964  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8069D968  3C 00 7F 80 */	lis r0, 0x7f80
/* 8069D96C  7C 03 00 00 */	cmpw r3, r0
/* 8069D970  41 82 00 14 */	beq lbl_8069D984
/* 8069D974  40 80 00 40 */	bge lbl_8069D9B4
/* 8069D978  2C 03 00 00 */	cmpwi r3, 0
/* 8069D97C  41 82 00 20 */	beq lbl_8069D99C
/* 8069D980  48 00 00 34 */	b lbl_8069D9B4
lbl_8069D984:
/* 8069D984  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8069D988  41 82 00 0C */	beq lbl_8069D994
/* 8069D98C  38 00 00 01 */	li r0, 1
/* 8069D990  48 00 00 28 */	b lbl_8069D9B8
lbl_8069D994:
/* 8069D994  38 00 00 02 */	li r0, 2
/* 8069D998  48 00 00 20 */	b lbl_8069D9B8
lbl_8069D99C:
/* 8069D99C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8069D9A0  41 82 00 0C */	beq lbl_8069D9AC
/* 8069D9A4  38 00 00 05 */	li r0, 5
/* 8069D9A8  48 00 00 10 */	b lbl_8069D9B8
lbl_8069D9AC:
/* 8069D9AC  38 00 00 03 */	li r0, 3
/* 8069D9B0  48 00 00 08 */	b lbl_8069D9B8
lbl_8069D9B4:
/* 8069D9B4  38 00 00 04 */	li r0, 4
lbl_8069D9B8:
/* 8069D9B8  2C 00 00 01 */	cmpwi r0, 1
/* 8069D9BC  40 82 00 0C */	bne lbl_8069D9C8
/* 8069D9C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8069D9C4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8069D9C8:
/* 8069D9C8  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8069D9CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069D9D0  40 81 00 44 */	ble lbl_8069DA14
/* 8069D9D4  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 8069D9D8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8069D9DC  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 8069D9E0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8069D9E4  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 8069D9E8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8069D9EC  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 8069D9F0  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8069D9F4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8069D9F8  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 8069D9FC  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 8069DA00  EC 00 00 72 */	fmuls f0, f0, f1
/* 8069DA04  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 8069DA08  A8 7E 06 6C */	lha r3, 0x66c(r30)
/* 8069DA0C  38 03 00 01 */	addi r0, r3, 1
/* 8069DA10  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_8069DA14:
/* 8069DA14  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8069DA18  A8 BE 06 80 */	lha r5, 0x680(r30)
/* 8069DA1C  88 9E 05 B4 */	lbz r4, 0x5b4(r30)
/* 8069DA20  38 04 FF FE */	addi r0, r4, -2
/* 8069DA24  30 00 FF FF */	addic r0, r0, -1
/* 8069DA28  7C 80 01 10 */	subfe r4, r0, r0
/* 8069DA2C  38 00 80 00 */	li r0, -32768
/* 8069DA30  7C 00 20 78 */	andc r0, r0, r4
/* 8069DA34  7C 05 02 14 */	add r0, r5, r0
/* 8069DA38  7C 04 07 34 */	extsh r4, r0
/* 8069DA3C  38 A0 00 02 */	li r5, 2
/* 8069DA40  38 C0 20 00 */	li r6, 0x2000
/* 8069DA44  4B BD 2B C5 */	bl cLib_addCalcAngleS2__FPssss
/* 8069DA48  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8069DA4C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 8069DA50  7C 65 1B 78 */	mr r5, r3
/* 8069DA54  4B CA 96 3D */	bl PSVECAdd
/* 8069DA58  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 8069DA5C  28 00 00 01 */	cmplwi r0, 1
/* 8069DA60  41 82 00 30 */	beq lbl_8069DA90
/* 8069DA64  28 00 00 02 */	cmplwi r0, 2
/* 8069DA68  40 82 00 18 */	bne lbl_8069DA80
/* 8069DA6C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8069DA70  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8069DA74  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069DA78  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8069DA7C  48 00 00 14 */	b lbl_8069DA90
lbl_8069DA80:
/* 8069DA80  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8069DA84  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8069DA88  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069DA8C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_8069DA90:
/* 8069DA90  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 8069DA94  C0 1E 06 90 */	lfs f0, 0x690(r30)
/* 8069DA98  EC 21 00 32 */	fmuls f1, f1, f0
/* 8069DA9C  3C 60 80 6A */	lis r3, l_HIO@ha /* 0x806A1DA8@ha */
/* 8069DAA0  38 63 1D A8 */	addi r3, r3, l_HIO@l /* 0x806A1DA8@l */
/* 8069DAA4  C0 03 00 08 */	lfs f0, 8(r3)
/* 8069DAA8  EF E1 00 32 */	fmuls f31, f1, f0
/* 8069DAAC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8069DAB0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8069DAB4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8069DAB8  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 8069DABC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8069DAC0  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8069DAC4  38 7E 10 5C */	addi r3, r30, 0x105c
/* 8069DAC8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8069DACC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8069DAD0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8069DAD4  4B 9D 8F D9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8069DAD8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8069DADC  EC 00 F8 2A */	fadds f0, f0, f31
/* 8069DAE0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8069DAE4  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 8069DAE8  EC 00 F8 2A */	fadds f0, f0, f31
/* 8069DAEC  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 8069DAF0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8069DAF4  38 80 00 01 */	li r4, 1
/* 8069DAF8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8069DAFC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8069DB00  40 82 00 18 */	bne lbl_8069DB18
/* 8069DB04  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8069DB08  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8069DB0C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8069DB10  41 82 00 08 */	beq lbl_8069DB18
/* 8069DB14  38 80 00 00 */	li r4, 0
lbl_8069DB18:
/* 8069DB18  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8069DB1C  41 82 00 2C */	beq lbl_8069DB48
/* 8069DB20  88 1E 05 B4 */	lbz r0, 0x5b4(r30)
/* 8069DB24  28 00 00 01 */	cmplwi r0, 1
/* 8069DB28  40 82 00 10 */	bne lbl_8069DB38
/* 8069DB2C  38 00 00 0A */	li r0, 0xa
/* 8069DB30  B0 1E 06 6A */	sth r0, 0x66a(r30)
/* 8069DB34  48 00 00 0C */	b lbl_8069DB40
lbl_8069DB38:
/* 8069DB38  38 00 00 03 */	li r0, 3
/* 8069DB3C  B0 1E 06 6A */	sth r0, 0x66a(r30)
lbl_8069DB40:
/* 8069DB40  38 00 00 00 */	li r0, 0
/* 8069DB44  B0 1E 06 6C */	sth r0, 0x66c(r30)
lbl_8069DB48:
/* 8069DB48  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8069DB4C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8069DB50  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8069DB54  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8069DB58  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8069DB5C  7C 08 03 A6 */	mtlr r0
/* 8069DB60  38 21 00 50 */	addi r1, r1, 0x50
/* 8069DB64  4E 80 00 20 */	blr 
