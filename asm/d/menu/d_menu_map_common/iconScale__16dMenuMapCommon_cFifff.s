lbl_801C3EC4:
/* 801C3EC4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 801C3EC8  7C 08 02 A6 */	mflr r0
/* 801C3ECC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 801C3ED0  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 801C3ED4  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 801C3ED8  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 801C3EDC  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 801C3EE0  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 801C3EE4  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 801C3EE8  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 801C3EEC  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 801C3EF0  39 61 00 80 */	addi r11, r1, 0x80
/* 801C3EF4  48 19 E2 E9 */	bl _savegpr_29
/* 801C3EF8  7C 7D 1B 78 */	mr r29, r3
/* 801C3EFC  FF C0 10 90 */	fmr f30, f2
/* 801C3F00  FF E0 18 90 */	fmr f31, f3
/* 801C3F04  C0 02 A6 DC */	lfs f0, lit_3882(r2)
/* 801C3F08  EC 40 F8 2A */	fadds f2, f0, f31
/* 801C3F0C  D0 43 0C 88 */	stfs f2, 0xc88(r3)
/* 801C3F10  54 84 10 3A */	slwi r4, r4, 2
/* 801C3F14  3C 60 80 43 */	lis r3, g_fmapHIO@ha /* 0x8042FC60@ha */
/* 801C3F18  38 03 FC 60 */	addi r0, r3, g_fmapHIO@l /* 0x8042FC60@l */
/* 801C3F1C  7C 60 22 14 */	add r3, r0, r4
/* 801C3F20  C0 63 04 0C */	lfs f3, 0x40c(r3)
/* 801C3F24  C0 43 04 04 */	lfs f2, 0x404(r3)
/* 801C3F28  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3F2C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C3F30  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3F34  D0 41 00 4C */	stfs f2, 0x4c(r1)
/* 801C3F38  C0 63 03 5C */	lfs f3, 0x35c(r3)
/* 801C3F3C  C0 43 03 54 */	lfs f2, 0x354(r3)
/* 801C3F40  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3F44  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C3F48  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3F4C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 801C3F50  C0 63 04 1C */	lfs f3, 0x41c(r3)
/* 801C3F54  C0 43 04 14 */	lfs f2, 0x414(r3)
/* 801C3F58  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3F5C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C3F60  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3F64  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 801C3F68  C0 63 04 2C */	lfs f3, 0x42c(r3)
/* 801C3F6C  C0 43 04 24 */	lfs f2, 0x424(r3)
/* 801C3F70  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3F74  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C3F78  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3F7C  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 801C3F80  C0 63 03 3C */	lfs f3, 0x33c(r3)
/* 801C3F84  C0 43 03 34 */	lfs f2, 0x334(r3)
/* 801C3F88  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3F8C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C3F90  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3F94  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 801C3F98  C0 63 03 4C */	lfs f3, 0x34c(r3)
/* 801C3F9C  C0 43 03 44 */	lfs f2, 0x344(r3)
/* 801C3FA0  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3FA4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C3FA8  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3FAC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801C3FB0  C0 63 03 6C */	lfs f3, 0x36c(r3)
/* 801C3FB4  C0 43 03 64 */	lfs f2, 0x364(r3)
/* 801C3FB8  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3FBC  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C3FC0  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3FC4  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 801C3FC8  C0 63 03 7C */	lfs f3, 0x37c(r3)
/* 801C3FCC  C0 43 03 74 */	lfs f2, 0x374(r3)
/* 801C3FD0  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3FD4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C3FD8  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3FDC  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 801C3FE0  C0 63 03 8C */	lfs f3, 0x38c(r3)
/* 801C3FE4  C0 43 03 84 */	lfs f2, 0x384(r3)
/* 801C3FE8  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3FEC  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C3FF0  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C3FF4  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 801C3FF8  C0 63 03 9C */	lfs f3, 0x39c(r3)
/* 801C3FFC  C0 43 03 94 */	lfs f2, 0x394(r3)
/* 801C4000  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C4004  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C4008  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C400C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 801C4010  C0 63 03 AC */	lfs f3, 0x3ac(r3)
/* 801C4014  C0 43 03 A4 */	lfs f2, 0x3a4(r3)
/* 801C4018  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C401C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C4020  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C4024  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 801C4028  C0 63 03 BC */	lfs f3, 0x3bc(r3)
/* 801C402C  C0 43 03 B4 */	lfs f2, 0x3b4(r3)
/* 801C4030  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C4034  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C4038  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C403C  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 801C4040  C0 63 03 CC */	lfs f3, 0x3cc(r3)
/* 801C4044  C0 43 03 C4 */	lfs f2, 0x3c4(r3)
/* 801C4048  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C404C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C4050  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C4054  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 801C4058  C0 63 03 DC */	lfs f3, 0x3dc(r3)
/* 801C405C  C0 43 03 D4 */	lfs f2, 0x3d4(r3)
/* 801C4060  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C4064  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C4068  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C406C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 801C4070  C0 63 03 EC */	lfs f3, 0x3ec(r3)
/* 801C4074  C0 43 03 E4 */	lfs f2, 0x3e4(r3)
/* 801C4078  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C407C  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C4080  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C4084  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801C4088  C0 63 04 3C */	lfs f3, 0x43c(r3)
/* 801C408C  C0 43 04 34 */	lfs f2, 0x434(r3)
/* 801C4090  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C4094  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C4098  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C409C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 801C40A0  C0 63 04 4C */	lfs f3, 0x44c(r3)
/* 801C40A4  C0 43 04 44 */	lfs f2, 0x444(r3)
/* 801C40A8  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C40AC  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C40B0  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C40B4  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 801C40B8  C0 63 04 5C */	lfs f3, 0x45c(r3)
/* 801C40BC  C0 43 04 54 */	lfs f2, 0x454(r3)
/* 801C40C0  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C40C4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C40C8  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C40CC  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 801C40D0  C0 63 04 6C */	lfs f3, 0x46c(r3)
/* 801C40D4  C0 43 04 64 */	lfs f2, 0x464(r3)
/* 801C40D8  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C40DC  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C40E0  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C40E4  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 801C40E8  C0 63 03 FC */	lfs f3, 0x3fc(r3)
/* 801C40EC  C0 43 03 F4 */	lfs f2, 0x3f4(r3)
/* 801C40F0  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C40F4  EC 41 00 B2 */	fmuls f2, f1, f2
/* 801C40F8  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C40FC  D0 41 00 3C */	stfs f2, 0x3c(r1)
/* 801C4100  C0 63 03 2C */	lfs f3, 0x32c(r3)
/* 801C4104  C0 43 03 24 */	lfs f2, 0x324(r3)
/* 801C4108  EC 43 10 28 */	fsubs f2, f3, f2
/* 801C410C  EC 21 00 B2 */	fmuls f1, f1, f2
/* 801C4110  EC 23 08 28 */	fsubs f1, f3, f1
/* 801C4114  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 801C4118  D0 01 00 08 */	stfs f0, 8(r1)
/* 801C411C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 801C4120  3B C0 00 00 */	li r30, 0
/* 801C4124  3B E0 00 00 */	li r31, 0
/* 801C4128  C0 22 A6 F0 */	lfs f1, lit_4072(r2)
/* 801C412C  C0 02 A6 F4 */	lfs f0, lit_4073(r2)
/* 801C4130  EC 00 07 F2 */	fmuls f0, f0, f31
/* 801C4134  EF A1 00 2A */	fadds f29, f1, f0
lbl_801C4138:
/* 801C4138  38 1F 00 04 */	addi r0, r31, 4
/* 801C413C  7C 7D 00 2E */	lwzx r3, r29, r0
/* 801C4140  28 03 00 00 */	cmplwi r3, 0
/* 801C4144  41 82 00 78 */	beq lbl_801C41BC
/* 801C4148  2C 1E 00 0D */	cmpwi r30, 0xd
/* 801C414C  40 82 00 2C */	bne lbl_801C4178
/* 801C4150  38 81 00 08 */	addi r4, r1, 8
/* 801C4154  7C 24 FC 2E */	lfsx f1, r4, r31
/* 801C4158  EC 1D 00 72 */	fmuls f0, f29, f1
/* 801C415C  D0 03 00 CC */	stfs f0, 0xcc(r3)
/* 801C4160  D0 23 00 D0 */	stfs f1, 0xd0(r3)
/* 801C4164  81 83 00 00 */	lwz r12, 0(r3)
/* 801C4168  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C416C  7D 89 03 A6 */	mtctr r12
/* 801C4170  4E 80 04 21 */	bctrl 
/* 801C4174  48 00 00 48 */	b lbl_801C41BC
lbl_801C4178:
/* 801C4178  38 81 00 08 */	addi r4, r1, 8
/* 801C417C  7F 84 FC 2E */	lfsx f28, r4, r31
/* 801C4180  D3 83 00 CC */	stfs f28, 0xcc(r3)
/* 801C4184  D3 83 00 D0 */	stfs f28, 0xd0(r3)
/* 801C4188  81 83 00 00 */	lwz r12, 0(r3)
/* 801C418C  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C4190  7D 89 03 A6 */	mtctr r12
/* 801C4194  4E 80 04 21 */	bctrl 
/* 801C4198  2C 1E 00 05 */	cmpwi r30, 5
/* 801C419C  40 82 00 20 */	bne lbl_801C41BC
/* 801C41A0  80 7D 00 60 */	lwz r3, 0x60(r29)
/* 801C41A4  D3 83 00 CC */	stfs f28, 0xcc(r3)
/* 801C41A8  D3 83 00 D0 */	stfs f28, 0xd0(r3)
/* 801C41AC  81 83 00 00 */	lwz r12, 0(r3)
/* 801C41B0  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801C41B4  7D 89 03 A6 */	mtctr r12
/* 801C41B8  4E 80 04 21 */	bctrl 
lbl_801C41BC:
/* 801C41BC  3B DE 00 01 */	addi r30, r30, 1
/* 801C41C0  2C 1E 00 17 */	cmpwi r30, 0x17
/* 801C41C4  3B FF 00 04 */	addi r31, r31, 4
/* 801C41C8  41 80 FF 70 */	blt lbl_801C4138
/* 801C41CC  7F A3 EB 78 */	mr r3, r29
/* 801C41D0  38 80 00 11 */	li r4, 0x11
/* 801C41D4  FC 20 F0 90 */	fmr f1, f30
/* 801C41D8  FC 40 F8 90 */	fmr f2, f31
/* 801C41DC  48 00 02 B9 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C41E0  7F A3 EB 78 */	mr r3, r29
/* 801C41E4  38 80 00 14 */	li r4, 0x14
/* 801C41E8  FC 20 F0 90 */	fmr f1, f30
/* 801C41EC  FC 40 F8 90 */	fmr f2, f31
/* 801C41F0  48 00 02 A5 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C41F4  7F A3 EB 78 */	mr r3, r29
/* 801C41F8  38 80 00 15 */	li r4, 0x15
/* 801C41FC  FC 20 F0 90 */	fmr f1, f30
/* 801C4200  FC 40 F8 90 */	fmr f2, f31
/* 801C4204  48 00 02 91 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C4208  7F A3 EB 78 */	mr r3, r29
/* 801C420C  38 80 00 16 */	li r4, 0x16
/* 801C4210  FC 20 F0 90 */	fmr f1, f30
/* 801C4214  FC 40 F8 90 */	fmr f2, f31
/* 801C4218  48 00 02 7D */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C421C  7F A3 EB 78 */	mr r3, r29
/* 801C4220  38 80 00 04 */	li r4, 4
/* 801C4224  FC 20 F0 90 */	fmr f1, f30
/* 801C4228  FC 40 F8 90 */	fmr f2, f31
/* 801C422C  48 00 02 69 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C4230  7F A3 EB 78 */	mr r3, r29
/* 801C4234  38 80 00 03 */	li r4, 3
/* 801C4238  FC 20 F0 90 */	fmr f1, f30
/* 801C423C  FC 40 F8 90 */	fmr f2, f31
/* 801C4240  48 00 02 55 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C4244  7F A3 EB 78 */	mr r3, r29
/* 801C4248  38 80 00 0E */	li r4, 0xe
/* 801C424C  FC 20 F0 90 */	fmr f1, f30
/* 801C4250  FC 40 F8 90 */	fmr f2, f31
/* 801C4254  48 00 02 41 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C4258  7F A3 EB 78 */	mr r3, r29
/* 801C425C  38 80 00 13 */	li r4, 0x13
/* 801C4260  FC 20 F0 90 */	fmr f1, f30
/* 801C4264  FC 40 F8 90 */	fmr f2, f31
/* 801C4268  48 00 02 2D */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C426C  7F A3 EB 78 */	mr r3, r29
/* 801C4270  38 80 00 09 */	li r4, 9
/* 801C4274  FC 20 F0 90 */	fmr f1, f30
/* 801C4278  FC 40 F8 90 */	fmr f2, f31
/* 801C427C  48 00 02 19 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C4280  7F A3 EB 78 */	mr r3, r29
/* 801C4284  38 80 00 0A */	li r4, 0xa
/* 801C4288  FC 20 F0 90 */	fmr f1, f30
/* 801C428C  FC 40 F8 90 */	fmr f2, f31
/* 801C4290  48 00 02 05 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C4294  7F A3 EB 78 */	mr r3, r29
/* 801C4298  38 80 00 0B */	li r4, 0xb
/* 801C429C  FC 20 F0 90 */	fmr f1, f30
/* 801C42A0  FC 40 F8 90 */	fmr f2, f31
/* 801C42A4  48 00 01 F1 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C42A8  7F A3 EB 78 */	mr r3, r29
/* 801C42AC  38 80 00 0C */	li r4, 0xc
/* 801C42B0  FC 20 F0 90 */	fmr f1, f30
/* 801C42B4  FC 40 F8 90 */	fmr f2, f31
/* 801C42B8  48 00 01 DD */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C42BC  7F A3 EB 78 */	mr r3, r29
/* 801C42C0  38 80 00 0F */	li r4, 0xf
/* 801C42C4  FC 20 F0 90 */	fmr f1, f30
/* 801C42C8  FC 40 F8 90 */	fmr f2, f31
/* 801C42CC  48 00 01 C9 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C42D0  7F A3 EB 78 */	mr r3, r29
/* 801C42D4  38 80 00 10 */	li r4, 0x10
/* 801C42D8  FC 20 F0 90 */	fmr f1, f30
/* 801C42DC  FC 40 F8 90 */	fmr f2, f31
/* 801C42E0  48 00 01 B5 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C42E4  7F A3 EB 78 */	mr r3, r29
/* 801C42E8  38 80 00 08 */	li r4, 8
/* 801C42EC  FC 20 F0 90 */	fmr f1, f30
/* 801C42F0  FC 40 F8 90 */	fmr f2, f31
/* 801C42F4  48 00 01 A1 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C42F8  7F A3 EB 78 */	mr r3, r29
/* 801C42FC  38 80 00 02 */	li r4, 2
/* 801C4300  FC 20 F0 90 */	fmr f1, f30
/* 801C4304  FC 40 F8 90 */	fmr f2, f31
/* 801C4308  48 00 01 8D */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C430C  7F A3 EB 78 */	mr r3, r29
/* 801C4310  38 80 00 05 */	li r4, 5
/* 801C4314  FC 20 F0 90 */	fmr f1, f30
/* 801C4318  FC 40 F8 90 */	fmr f2, f31
/* 801C431C  48 00 01 79 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C4320  7F A3 EB 78 */	mr r3, r29
/* 801C4324  38 80 00 06 */	li r4, 6
/* 801C4328  FC 20 F0 90 */	fmr f1, f30
/* 801C432C  FC 40 F8 90 */	fmr f2, f31
/* 801C4330  48 00 01 65 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C4334  7F A3 EB 78 */	mr r3, r29
/* 801C4338  38 80 00 07 */	li r4, 7
/* 801C433C  FC 20 F0 90 */	fmr f1, f30
/* 801C4340  FC 40 F8 90 */	fmr f2, f31
/* 801C4344  48 00 01 51 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C4348  7F A3 EB 78 */	mr r3, r29
/* 801C434C  38 80 00 0D */	li r4, 0xd
/* 801C4350  FC 20 F0 90 */	fmr f1, f30
/* 801C4354  FC 40 F8 90 */	fmr f2, f31
/* 801C4358  48 00 01 3D */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C435C  7F A3 EB 78 */	mr r3, r29
/* 801C4360  38 80 00 12 */	li r4, 0x12
/* 801C4364  FC 20 F0 90 */	fmr f1, f30
/* 801C4368  FC 40 F8 90 */	fmr f2, f31
/* 801C436C  48 00 01 29 */	bl setBlendRatio__16dMenuMapCommon_cFUcff
/* 801C4370  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 801C4374  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 801C4378  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 801C437C  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 801C4380  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 801C4384  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 801C4388  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 801C438C  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 801C4390  39 61 00 80 */	addi r11, r1, 0x80
/* 801C4394  48 19 DE 95 */	bl _restgpr_29
/* 801C4398  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 801C439C  7C 08 03 A6 */	mtlr r0
/* 801C43A0  38 21 00 C0 */	addi r1, r1, 0xc0
/* 801C43A4  4E 80 00 20 */	blr 
