lbl_80825ADC:
/* 80825ADC  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80825AE0  7C 08 02 A6 */	mflr r0
/* 80825AE4  90 01 00 74 */	stw r0, 0x74(r1)
/* 80825AE8  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80825AEC  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80825AF0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80825AF4  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80825AF8  39 61 00 50 */	addi r11, r1, 0x50
/* 80825AFC  4B B3 C6 D9 */	bl _savegpr_27
/* 80825B00  7C 7D 1B 78 */	mr r29, r3
/* 80825B04  3C 60 80 83 */	lis r3, lit_3902@ha /* 0x80828850@ha */
/* 80825B08  3B E3 88 50 */	addi r31, r3, lit_3902@l /* 0x80828850@l */
/* 80825B0C  3B C0 FF FF */	li r30, -1
/* 80825B10  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 80825B14  FC 00 02 10 */	fabs f0, f0
/* 80825B18  FC 20 00 18 */	frsp f1, f0
/* 80825B1C  FF E0 08 90 */	fmr f31, f1
/* 80825B20  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80825B24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80825B28  40 80 00 08 */	bge lbl_80825B30
/* 80825B2C  FF E0 00 90 */	fmr f31, f0
lbl_80825B30:
/* 80825B30  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 80825B34  FC 00 02 10 */	fabs f0, f0
/* 80825B38  FC 20 00 18 */	frsp f1, f0
/* 80825B3C  FF C0 08 90 */	fmr f30, f1
/* 80825B40  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80825B44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80825B48  40 80 00 08 */	bge lbl_80825B50
/* 80825B4C  FF C0 00 90 */	fmr f30, f0
lbl_80825B50:
/* 80825B50  38 00 00 02 */	li r0, 2
/* 80825B54  98 1D 0E 94 */	stb r0, 0xe94(r29)
/* 80825B58  88 1D 06 7D */	lbz r0, 0x67d(r29)
/* 80825B5C  7C 03 07 74 */	extsb r3, r0
/* 80825B60  38 03 00 01 */	addi r0, r3, 1
/* 80825B64  28 00 00 15 */	cmplwi r0, 0x15
/* 80825B68  41 81 05 44 */	bgt lbl_808260AC
/* 80825B6C  3C 60 80 83 */	lis r3, lit_5314@ha /* 0x80828B40@ha */
/* 80825B70  38 63 8B 40 */	addi r3, r3, lit_5314@l /* 0x80828B40@l */
/* 80825B74  54 00 10 3A */	slwi r0, r0, 2
/* 80825B78  7C 03 00 2E */	lwzx r0, r3, r0
/* 80825B7C  7C 09 03 A6 */	mtctr r0
/* 80825B80  4E 80 04 20 */	bctr 
lbl_80825B84:
/* 80825B84  38 80 00 01 */	li r4, 1
/* 80825B88  98 9D 09 24 */	stb r4, 0x924(r29)
/* 80825B8C  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 80825B90  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80825B94  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80825B98  40 82 00 18 */	bne lbl_80825BB0
/* 80825B9C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80825BA0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80825BA4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80825BA8  41 82 00 08 */	beq lbl_80825BB0
/* 80825BAC  38 80 00 00 */	li r4, 0
lbl_80825BB0:
/* 80825BB0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80825BB4  41 82 04 F8 */	beq lbl_808260AC
/* 80825BB8  38 00 00 00 */	li r0, 0
/* 80825BBC  98 1D 06 7D */	stb r0, 0x67d(r29)
lbl_80825BC0:
/* 80825BC0  7F A3 EB 78 */	mr r3, r29
/* 80825BC4  38 80 00 12 */	li r4, 0x12
/* 80825BC8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80825BCC  38 A0 00 02 */	li r5, 2
/* 80825BD0  FC 40 08 90 */	fmr f2, f1
/* 80825BD4  4B FF CB BD */	bl anm_init__FP10e_yr_classifUcf
/* 80825BD8  38 00 00 01 */	li r0, 1
/* 80825BDC  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 80825BE0  38 00 00 64 */	li r0, 0x64
/* 80825BE4  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
lbl_80825BE8:
/* 80825BE8  38 00 00 01 */	li r0, 1
/* 80825BEC  98 1D 09 24 */	stb r0, 0x924(r29)
/* 80825BF0  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80825BF4  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80825BF8  38 A0 00 05 */	li r5, 5
/* 80825BFC  38 C0 03 00 */	li r6, 0x300
/* 80825C00  4B A4 AA 09 */	bl cLib_addCalcAngleS2__FPssss
/* 80825C04  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80825C08  38 80 00 00 */	li r4, 0
/* 80825C0C  38 A0 00 05 */	li r5, 5
/* 80825C10  38 C0 08 00 */	li r6, 0x800
/* 80825C14  4B A4 A9 F5 */	bl cLib_addCalcAngleS2__FPssss
/* 80825C18  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 80825C1C  38 80 00 00 */	li r4, 0
/* 80825C20  38 A0 00 05 */	li r5, 5
/* 80825C24  38 C0 08 00 */	li r6, 0x800
/* 80825C28  4B A4 A9 E1 */	bl cLib_addCalcAngleS2__FPssss
/* 80825C2C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80825C30  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 80825C34  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 80825C38  FC 60 F8 90 */	fmr f3, f31
/* 80825C3C  4B A4 9E 01 */	bl cLib_addCalc2__FPffff
/* 80825C40  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 80825C44  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 80825C48  C0 5F 00 EC */	lfs f2, 0xec(r31)
/* 80825C4C  FC 60 F0 90 */	fmr f3, f30
/* 80825C50  4B A4 9D ED */	bl cLib_addCalc2__FPffff
/* 80825C54  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80825C58  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80825C5C  A8 1D 06 A4 */	lha r0, 0x6a4(r29)
/* 80825C60  2C 00 00 00 */	cmpwi r0, 0
/* 80825C64  40 82 04 48 */	bne lbl_808260AC
/* 80825C68  7F A3 EB 78 */	mr r3, r29
/* 80825C6C  4B FF CC E9 */	bl e_yr_player_view_check__FP10e_yr_class
/* 80825C70  2C 03 00 00 */	cmpwi r3, 0
/* 80825C74  41 82 04 38 */	beq lbl_808260AC
/* 80825C78  38 00 00 02 */	li r0, 2
/* 80825C7C  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 80825C80  38 00 00 1E */	li r0, 0x1e
/* 80825C84  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
/* 80825C88  7F A3 EB 78 */	mr r3, r29
/* 80825C8C  38 80 00 07 */	li r4, 7
/* 80825C90  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80825C94  38 A0 00 00 */	li r5, 0
/* 80825C98  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80825C9C  4B FF CA F5 */	bl anm_init__FP10e_yr_classifUcf
/* 80825CA0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000701BC@ha */
/* 80825CA4  38 03 01 BC */	addi r0, r3, 0x01BC /* 0x000701BC@l */
/* 80825CA8  90 01 00 08 */	stw r0, 8(r1)
/* 80825CAC  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 80825CB0  38 81 00 08 */	addi r4, r1, 8
/* 80825CB4  38 A0 FF FF */	li r5, -1
/* 80825CB8  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 80825CBC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80825CC0  7D 89 03 A6 */	mtctr r12
/* 80825CC4  4E 80 04 21 */	bctrl 
/* 80825CC8  48 00 03 E4 */	b lbl_808260AC
lbl_80825CCC:
/* 80825CCC  38 00 00 01 */	li r0, 1
/* 80825CD0  98 1D 0E 94 */	stb r0, 0xe94(r29)
/* 80825CD4  A8 1D 06 A4 */	lha r0, 0x6a4(r29)
/* 80825CD8  2C 00 00 00 */	cmpwi r0, 0
/* 80825CDC  40 82 03 D0 */	bne lbl_808260AC
/* 80825CE0  38 00 00 03 */	li r0, 3
/* 80825CE4  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 80825CE8  7F A3 EB 78 */	mr r3, r29
/* 80825CEC  38 80 00 08 */	li r4, 8
/* 80825CF0  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80825CF4  38 A0 00 02 */	li r5, 2
/* 80825CF8  C0 5F 01 04 */	lfs f2, 0x104(r31)
/* 80825CFC  3C C0 80 83 */	lis r6, l_e_yrHIO@ha /* 0x80828DBC@ha */
/* 80825D00  38 C6 8D BC */	addi r6, r6, l_e_yrHIO@l /* 0x80828DBC@l */
/* 80825D04  C0 06 00 28 */	lfs f0, 0x28(r6)
/* 80825D08  EC 42 00 32 */	fmuls f2, f2, f0
/* 80825D0C  4B FF CA 85 */	bl anm_init__FP10e_yr_classifUcf
/* 80825D10  38 00 00 46 */	li r0, 0x46
/* 80825D14  B0 1D 06 A4 */	sth r0, 0x6a4(r29)
lbl_80825D18:
/* 80825D18  38 00 00 01 */	li r0, 1
/* 80825D1C  98 1D 0E 94 */	stb r0, 0xe94(r29)
/* 80825D20  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80825D24  A8 9D 06 C8 */	lha r4, 0x6c8(r29)
/* 80825D28  38 A0 00 0A */	li r5, 0xa
/* 80825D2C  38 C0 02 00 */	li r6, 0x200
/* 80825D30  4B A4 A8 D9 */	bl cLib_addCalcAngleS2__FPssss
/* 80825D34  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80825D38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80825D3C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80825D40  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80825D44  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80825D48  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80825D4C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80825D50  80 63 00 00 */	lwz r3, 0(r3)
/* 80825D54  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80825D58  4B 7E 66 85 */	bl mDoMtx_YrotS__FPA4_fs
/* 80825D5C  38 61 00 18 */	addi r3, r1, 0x18
/* 80825D60  38 81 00 0C */	addi r4, r1, 0xc
/* 80825D64  4B A4 B1 89 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80825D68  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80825D6C  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 80825D70  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80825D74  EC 21 00 2A */	fadds f1, f1, f0
/* 80825D78  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80825D7C  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 80825D80  4B A4 9C BD */	bl cLib_addCalc2__FPffff
/* 80825D84  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 80825D88  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80825D8C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80825D90  EC 21 00 2A */	fadds f1, f1, f0
/* 80825D94  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80825D98  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 80825D9C  4B A4 9C A1 */	bl cLib_addCalc2__FPffff
/* 80825DA0  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 80825DA4  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 80825DA8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80825DAC  EC 21 00 2A */	fadds f1, f1, f0
/* 80825DB0  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80825DB4  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 80825DB8  4B A4 9C 85 */	bl cLib_addCalc2__FPffff
/* 80825DBC  A8 1D 06 A4 */	lha r0, 0x6a4(r29)
/* 80825DC0  2C 00 00 00 */	cmpwi r0, 0
/* 80825DC4  40 82 02 E8 */	bne lbl_808260AC
/* 80825DC8  38 00 00 03 */	li r0, 3
/* 80825DCC  98 1D 06 69 */	stb r0, 0x669(r29)
/* 80825DD0  38 00 00 00 */	li r0, 0
/* 80825DD4  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 80825DD8  48 00 02 D4 */	b lbl_808260AC
lbl_80825DDC:
/* 80825DDC  3B C0 00 00 */	li r30, 0
/* 80825DE0  38 00 00 00 */	li r0, 0
/* 80825DE4  98 1D 0E 94 */	stb r0, 0xe94(r29)
/* 80825DE8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80825DEC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80825DF0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80825DF4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80825DF8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80825DFC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80825E00  80 63 00 00 */	lwz r3, 0(r3)
/* 80825E04  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80825E08  4B 7E 65 D5 */	bl mDoMtx_YrotS__FPA4_fs
/* 80825E0C  38 61 00 18 */	addi r3, r1, 0x18
/* 80825E10  38 81 00 0C */	addi r4, r1, 0xc
/* 80825E14  4B A4 B0 D9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80825E18  C0 5F 01 08 */	lfs f2, 0x108(r31)
/* 80825E1C  88 1D 06 7D */	lbz r0, 0x67d(r29)
/* 80825E20  2C 00 00 0A */	cmpwi r0, 0xa
/* 80825E24  40 82 00 08 */	bne lbl_80825E2C
/* 80825E28  C0 5F 00 8C */	lfs f2, 0x8c(r31)
lbl_80825E2C:
/* 80825E2C  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 80825E30  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80825E34  EC 01 00 2A */	fadds f0, f1, f0
/* 80825E38  D0 1D 06 80 */	stfs f0, 0x680(r29)
/* 80825E3C  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80825E40  EC 00 10 2A */	fadds f0, f0, f2
/* 80825E44  D0 1D 06 84 */	stfs f0, 0x684(r29)
/* 80825E48  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 80825E4C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80825E50  EC 01 00 2A */	fadds f0, f1, f0
/* 80825E54  D0 1D 06 88 */	stfs f0, 0x688(r29)
/* 80825E58  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 80825E5C  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 80825E60  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80825E64  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 80825E68  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80825E6C  D0 1D 06 9C */	stfs f0, 0x69c(r29)
/* 80825E70  C0 3D 06 80 */	lfs f1, 0x680(r29)
/* 80825E74  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80825E78  EC 61 00 28 */	fsubs f3, f1, f0
/* 80825E7C  C0 3D 06 84 */	lfs f1, 0x684(r29)
/* 80825E80  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80825E84  EC 81 00 28 */	fsubs f4, f1, f0
/* 80825E88  C0 3D 06 88 */	lfs f1, 0x688(r29)
/* 80825E8C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80825E90  EC 01 00 28 */	fsubs f0, f1, f0
/* 80825E94  EC 40 00 32 */	fmuls f2, f0, f0
/* 80825E98  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80825E9C  EC 04 01 32 */	fmuls f0, f4, f4
/* 80825EA0  EC 01 00 2A */	fadds f0, f1, f0
/* 80825EA4  EC 42 00 2A */	fadds f2, f2, f0
/* 80825EA8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80825EAC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80825EB0  40 81 00 0C */	ble lbl_80825EBC
/* 80825EB4  FC 00 10 34 */	frsqrte f0, f2
/* 80825EB8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80825EBC:
/* 80825EBC  88 1D 06 7D */	lbz r0, 0x67d(r29)
/* 80825EC0  7C 00 07 74 */	extsb r0, r0
/* 80825EC4  2C 00 00 0A */	cmpwi r0, 0xa
/* 80825EC8  40 82 00 1C */	bne lbl_80825EE4
/* 80825ECC  C0 1F 00 AC */	lfs f0, 0xac(r31)
/* 80825ED0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80825ED4  40 80 01 D8 */	bge lbl_808260AC
/* 80825ED8  38 00 00 0B */	li r0, 0xb
/* 80825EDC  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 80825EE0  48 00 01 CC */	b lbl_808260AC
lbl_80825EE4:
/* 80825EE4  2C 00 00 0B */	cmpwi r0, 0xb
/* 80825EE8  40 82 00 58 */	bne lbl_80825F40
/* 80825EEC  3C 60 80 83 */	lis r3, l_e_yrHIO@ha /* 0x80828DBC@ha */
/* 80825EF0  38 63 8D BC */	addi r3, r3, l_e_yrHIO@l /* 0x80828DBC@l */
/* 80825EF4  A8 03 00 50 */	lha r0, 0x50(r3)
/* 80825EF8  C8 3F 00 E0 */	lfd f1, 0xe0(r31)
/* 80825EFC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80825F00  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80825F04  3C 00 43 30 */	lis r0, 0x4330
/* 80825F08  90 01 00 28 */	stw r0, 0x28(r1)
/* 80825F0C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80825F10  EC 00 08 28 */	fsubs f0, f0, f1
/* 80825F14  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80825F18  40 80 01 94 */	bge lbl_808260AC
/* 80825F1C  38 00 00 0C */	li r0, 0xc
/* 80825F20  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 80825F24  7F A3 EB 78 */	mr r3, r29
/* 80825F28  38 80 00 0B */	li r4, 0xb
/* 80825F2C  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 80825F30  38 A0 00 00 */	li r5, 0
/* 80825F34  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80825F38  4B FF C8 59 */	bl anm_init__FP10e_yr_classifUcf
/* 80825F3C  48 00 01 70 */	b lbl_808260AC
lbl_80825F40:
/* 80825F40  2C 00 00 0C */	cmpwi r0, 0xc
/* 80825F44  40 82 01 68 */	bne lbl_808260AC
/* 80825F48  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80825F4C  D0 1D 0E B0 */	stfs f0, 0xeb0(r29)
/* 80825F50  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80825F54  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80825F58  40 80 01 54 */	bge lbl_808260AC
/* 80825F5C  38 00 00 14 */	li r0, 0x14
/* 80825F60  98 1D 06 7D */	stb r0, 0x67d(r29)
/* 80825F64  7F A3 EB 78 */	mr r3, r29
/* 80825F68  38 80 00 0D */	li r4, 0xd
/* 80825F6C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80825F70  38 A0 00 02 */	li r5, 2
/* 80825F74  3C C0 80 83 */	lis r6, l_e_yrHIO@ha /* 0x80828DBC@ha */
/* 80825F78  38 C6 8D BC */	addi r6, r6, l_e_yrHIO@l /* 0x80828DBC@l */
/* 80825F7C  C0 46 00 44 */	lfs f2, 0x44(r6)
/* 80825F80  4B FF C8 11 */	bl anm_init__FP10e_yr_classifUcf
/* 80825F84  38 00 00 0A */	li r0, 0xa
/* 80825F88  98 1D 06 7C */	stb r0, 0x67c(r29)
/* 80825F8C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80825F90  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80825F94  38 00 00 00 */	li r0, 0
/* 80825F98  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 80825F9C  3B C0 FF FF */	li r30, -1
/* 80825FA0  48 00 01 0C */	b lbl_808260AC
lbl_80825FA4:
/* 80825FA4  38 00 00 01 */	li r0, 1
/* 80825FA8  98 1D 09 24 */	stb r0, 0x924(r29)
/* 80825FAC  38 00 00 00 */	li r0, 0
/* 80825FB0  98 1D 0E 94 */	stb r0, 0xe94(r29)
/* 80825FB4  AB 7D 06 E0 */	lha r27, 0x6e0(r29)
/* 80825FB8  38 1B 00 01 */	addi r0, r27, 1
/* 80825FBC  B0 1D 06 E0 */	sth r0, 0x6e0(r29)
/* 80825FC0  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80825FC4  C0 3D 04 A8 */	lfs f1, 0x4a8(r29)
/* 80825FC8  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80825FCC  FC 60 F8 90 */	fmr f3, f31
/* 80825FD0  4B A4 9A 6D */	bl cLib_addCalc2__FPffff
/* 80825FD4  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 80825FD8  C0 3D 04 B0 */	lfs f1, 0x4b0(r29)
/* 80825FDC  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 80825FE0  FC 60 F0 90 */	fmr f3, f30
/* 80825FE4  4B A4 9A 59 */	bl cLib_addCalc2__FPffff
/* 80825FE8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80825FEC  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80825FF0  EC 01 00 2A */	fadds f0, f1, f0
/* 80825FF4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80825FF8  3C 60 80 83 */	lis r3, l_e_yrHIO@ha /* 0x80828DBC@ha */
/* 80825FFC  3B 83 8D BC */	addi r28, r3, l_e_yrHIO@l /* 0x80828DBC@l */
/* 80826000  A8 1C 00 40 */	lha r0, 0x40(r28)
/* 80826004  7C 1B 00 00 */	cmpw r27, r0
/* 80826008  40 81 00 14 */	ble lbl_8082601C
/* 8082600C  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80826010  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80826014  EC 01 00 28 */	fsubs f0, f1, f0
/* 80826018  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8082601C:
/* 8082601C  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80826020  38 80 00 00 */	li r4, 0
/* 80826024  38 A0 00 05 */	li r5, 5
/* 80826028  38 C0 08 00 */	li r6, 0x800
/* 8082602C  4B A4 A5 DD */	bl cLib_addCalcAngleS2__FPssss
/* 80826030  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80826034  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80826038  38 A0 00 05 */	li r5, 5
/* 8082603C  38 C0 03 00 */	li r6, 0x300
/* 80826040  4B A4 A5 C9 */	bl cLib_addCalcAngleS2__FPssss
/* 80826044  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 80826048  38 80 00 00 */	li r4, 0
/* 8082604C  38 A0 00 05 */	li r5, 5
/* 80826050  38 C0 08 00 */	li r6, 0x800
/* 80826054  4B A4 A5 B5 */	bl cLib_addCalcAngleS2__FPssss
/* 80826058  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8082605C  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 80826060  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80826064  4C 40 13 82 */	cror 2, 0, 2
/* 80826068  40 82 00 44 */	bne lbl_808260AC
/* 8082606C  D0 3D 04 D4 */	stfs f1, 0x4d4(r29)
/* 80826070  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80826074  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80826078  A8 1C 00 40 */	lha r0, 0x40(r28)
/* 8082607C  7C 1B 00 00 */	cmpw r27, r0
/* 80826080  40 81 00 2C */	ble lbl_808260AC
/* 80826084  7F A3 EB 78 */	mr r3, r29
/* 80826088  38 80 00 10 */	li r4, 0x10
/* 8082608C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80826090  38 A0 00 00 */	li r5, 0
/* 80826094  3C C0 80 83 */	lis r6, l_e_yrHIO@ha /* 0x80828DBC@ha */
/* 80826098  38 C6 8D BC */	addi r6, r6, l_e_yrHIO@l /* 0x80828DBC@l */
/* 8082609C  C0 46 00 48 */	lfs f2, 0x48(r6)
/* 808260A0  4B FF C6 F1 */	bl anm_init__FP10e_yr_classifUcf
/* 808260A4  38 00 FF FF */	li r0, -1
/* 808260A8  98 1D 06 7D */	stb r0, 0x67d(r29)
lbl_808260AC:
/* 808260AC  7F C0 07 75 */	extsb. r0, r30
/* 808260B0  41 82 00 08 */	beq lbl_808260B8
/* 808260B4  48 00 00 0C */	b lbl_808260C0
lbl_808260B8:
/* 808260B8  7F A3 EB 78 */	mr r3, r29
/* 808260BC  4B FF CE 51 */	bl e_yr_pos_move__FP10e_yr_class
lbl_808260C0:
/* 808260C0  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 808260C4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 808260C8  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 808260CC  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 808260D0  39 61 00 50 */	addi r11, r1, 0x50
/* 808260D4  4B B3 C1 4D */	bl _restgpr_27
/* 808260D8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 808260DC  7C 08 03 A6 */	mtlr r0
/* 808260E0  38 21 00 70 */	addi r1, r1, 0x70
/* 808260E4  4E 80 00 20 */	blr 
