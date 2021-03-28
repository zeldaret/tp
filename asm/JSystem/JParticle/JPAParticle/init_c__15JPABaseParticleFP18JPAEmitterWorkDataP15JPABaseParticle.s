lbl_8027F8C8:
/* 8027F8C8  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8027F8CC  7C 08 02 A6 */	mflr r0
/* 8027F8D0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8027F8D4  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8027F8D8  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8027F8DC  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8027F8E0  48 0E 28 FD */	bl _savegpr_29
/* 8027F8E4  7C 7D 1B 78 */	mr r29, r3
/* 8027F8E8  7C BE 2B 78 */	mr r30, r5
/* 8027F8EC  80 64 00 00 */	lwz r3, 0(r4)
/* 8027F8F0  80 84 00 04 */	lwz r4, 4(r4)
/* 8027F8F4  83 E4 00 24 */	lwz r31, 0x24(r4)
/* 8027F8F8  38 00 FF FF */	li r0, -1
/* 8027F8FC  B0 1D 00 80 */	sth r0, 0x80(r29)
/* 8027F900  80 9F 00 00 */	lwz r4, 0(r31)
/* 8027F904  A8 04 00 40 */	lha r0, 0x40(r4)
/* 8027F908  B0 1D 00 82 */	sth r0, 0x82(r29)
/* 8027F90C  C0 82 B9 8C */	lfs f4, lit_2566(r2)
/* 8027F910  D0 9D 00 84 */	stfs f4, 0x84(r29)
/* 8027F914  38 00 00 04 */	li r0, 4
/* 8027F918  90 1D 00 7C */	stw r0, 0x7c(r29)
/* 8027F91C  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 8027F920  D0 3D 00 0C */	stfs f1, 0xc(r29)
/* 8027F924  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 8027F928  D0 3D 00 10 */	stfs f1, 0x10(r29)
/* 8027F92C  C0 25 00 14 */	lfs f1, 0x14(r5)
/* 8027F930  D0 3D 00 14 */	stfs f1, 0x14(r29)
/* 8027F934  80 9F 00 00 */	lwz r4, 0(r31)
/* 8027F938  C0 A4 00 0C */	lfs f5, 0xc(r4)
/* 8027F93C  FC 04 28 00 */	fcmpu cr0, f4, f5
/* 8027F940  41 82 01 68 */	beq lbl_8027FAA8
/* 8027F944  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8027F948  3C 80 00 19 */	lis r4, 0x0019 /* 0x0019660D@ha */
/* 8027F94C  38 A4 66 0D */	addi r5, r4, 0x660D /* 0x0019660D@l */
/* 8027F950  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027F954  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027F958  38 04 F3 5F */	addi r0, r4, -3233
/* 8027F95C  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8027F960  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F964  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027F968  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8027F96C  C0 21 00 1C */	lfs f1, 0x1c(r1)
/* 8027F970  C0 42 B9 88 */	lfs f2, lit_2565(r2)
/* 8027F974  EC 21 10 28 */	fsubs f1, f1, f2
/* 8027F978  C0 62 B9 94 */	lfs f3, lit_2568(r2)
/* 8027F97C  EC E1 18 28 */	fsubs f7, f1, f3
/* 8027F980  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8027F984  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027F988  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027F98C  38 04 F3 5F */	addi r0, r4, -3233
/* 8027F990  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8027F994  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F998  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027F99C  90 01 00 18 */	stw r0, 0x18(r1)
/* 8027F9A0  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8027F9A4  EC 21 10 28 */	fsubs f1, f1, f2
/* 8027F9A8  ED 01 18 28 */	fsubs f8, f1, f3
/* 8027F9AC  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8027F9B0  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027F9B4  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027F9B8  38 04 F3 5F */	addi r0, r4, -3233
/* 8027F9BC  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8027F9C0  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F9C4  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027F9C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027F9CC  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 8027F9D0  EC 21 10 28 */	fsubs f1, f1, f2
/* 8027F9D4  EC 21 18 28 */	fsubs f1, f1, f3
/* 8027F9D8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8027F9DC  D1 01 00 38 */	stfs f8, 0x38(r1)
/* 8027F9E0  D0 E1 00 3C */	stfs f7, 0x3c(r1)
/* 8027F9E4  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8027F9E8  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027F9EC  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027F9F0  38 04 F3 5F */	addi r0, r4, -3233
/* 8027F9F4  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8027F9F8  54 00 BA 7E */	srwi r0, r0, 9
/* 8027F9FC  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027FA00  90 01 00 24 */	stw r0, 0x24(r1)
/* 8027FA04  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8027FA08  EC 21 10 28 */	fsubs f1, f1, f2
/* 8027FA0C  EC A5 00 72 */	fmuls f5, f5, f1
/* 8027FA10  E0 21 00 34 */	psq_l f1, 52(r1), 0, 0 /* qr0 */
/* 8027FA14  10 21 00 72 */	ps_mul f1, f1, f1
/* 8027FA18  10 E7 09 FA */	ps_madd f7, f7, f7, f1
/* 8027FA1C  10 E7 08 54 */	ps_sum0 f7, f7, f1, f1
/* 8027FA20  C0 42 B9 90 */	lfs f2, lit_2567(r2)
/* 8027FA24  3C 80 80 45 */	lis r4, __float_epsilon@ha
/* 8027FA28  C0 24 0A EC */	lfs f1, __float_epsilon@l(r4)
/* 8027FA2C  EC 22 00 72 */	fmuls f1, f2, f1
/* 8027FA30  FC 07 08 40 */	fcmpo cr0, f7, f1
/* 8027FA34  4C 40 13 82 */	cror 2, 0, 2
/* 8027FA38  41 82 00 50 */	beq lbl_8027FA88
/* 8027FA3C  FC 07 20 40 */	fcmpo cr0, f7, f4
/* 8027FA40  4C 40 13 82 */	cror 2, 0, 2
/* 8027FA44  40 82 00 08 */	bne lbl_8027FA4C
/* 8027FA48  48 00 00 24 */	b lbl_8027FA6C
lbl_8027FA4C:
/* 8027FA4C  FC 20 38 34 */	frsqrte f1, f7
/* 8027FA50  FC 20 08 18 */	frsp f1, f1
/* 8027FA54  EC 63 00 72 */	fmuls f3, f3, f1
/* 8027FA58  C0 42 B9 98 */	lfs f2, lit_2569(r2)
/* 8027FA5C  EC 21 00 72 */	fmuls f1, f1, f1
/* 8027FA60  EC 27 00 72 */	fmuls f1, f7, f1
/* 8027FA64  EC 22 08 28 */	fsubs f1, f2, f1
/* 8027FA68  EC E3 00 72 */	fmuls f7, f3, f1
lbl_8027FA6C:
/* 8027FA6C  EC C7 01 72 */	fmuls f6, f7, f5
/* 8027FA70  E0 21 00 34 */	psq_l f1, 52(r1), 0, 0 /* qr0 */
/* 8027FA74  E0 41 80 3C */	psq_l f2, 60(r1), 1, 0 /* qr0 */
/* 8027FA78  10 21 01 98 */	ps_muls0 f1, f1, f6
/* 8027FA7C  F0 21 00 34 */	psq_st f1, 52(r1), 0, 0 /* qr0 */
/* 8027FA80  10 22 01 98 */	ps_muls0 f1, f2, f6
/* 8027FA84  F0 21 80 3C */	psq_st f1, 60(r1), 1, 0 /* qr0 */
lbl_8027FA88:
/* 8027FA88  E0 5D 00 0C */	psq_l f2, 12(r29), 0, 0 /* qr0 */
/* 8027FA8C  E0 21 00 34 */	psq_l f1, 52(r1), 0, 0 /* qr0 */
/* 8027FA90  10 22 08 2A */	ps_add f1, f2, f1
/* 8027FA94  F0 3D 00 0C */	psq_st f1, 12(r29), 0, 0 /* qr0 */
/* 8027FA98  E0 5D 80 14 */	psq_l f2, 20(r29), 1, 0 /* qr0 */
/* 8027FA9C  E0 21 80 3C */	psq_l f1, 60(r1), 1, 0 /* qr0 */
/* 8027FAA0  10 22 08 2A */	ps_add f1, f2, f1
/* 8027FAA4  F0 3D 80 14 */	psq_st f1, 20(r29), 1, 0 /* qr0 */
lbl_8027FAA8:
/* 8027FAA8  80 83 00 E8 */	lwz r4, 0xe8(r3)
/* 8027FAAC  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 8027FAB0  80 84 00 00 */	lwz r4, 0(r4)
/* 8027FAB4  80 04 00 08 */	lwz r0, 8(r4)
/* 8027FAB8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8027FABC  41 82 00 10 */	beq lbl_8027FACC
/* 8027FAC0  80 1D 00 7C */	lwz r0, 0x7c(r29)
/* 8027FAC4  60 00 00 20 */	ori r0, r0, 0x20
/* 8027FAC8  90 1D 00 7C */	stw r0, 0x7c(r29)
lbl_8027FACC:
/* 8027FACC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8027FAD0  D0 3D 00 18 */	stfs f1, 0x18(r29)
/* 8027FAD4  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 8027FAD8  D0 3D 00 1C */	stfs f1, 0x1c(r29)
/* 8027FADC  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 8027FAE0  D0 3D 00 20 */	stfs f1, 0x20(r29)
/* 8027FAE4  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8027FAE8  3C 80 00 19 */	lis r4, 0x0019 /* 0x0019660D@ha */
/* 8027FAEC  38 A4 66 0D */	addi r5, r4, 0x660D /* 0x0019660D@l */
/* 8027FAF0  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027FAF4  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027FAF8  38 04 F3 5F */	addi r0, r4, -3233
/* 8027FAFC  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8027FB00  54 00 BA 7E */	srwi r0, r0, 9
/* 8027FB04  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027FB08  90 01 00 20 */	stw r0, 0x20(r1)
/* 8027FB0C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8027FB10  C0 62 B9 88 */	lfs f3, lit_2565(r2)
/* 8027FB14  EC 21 18 28 */	fsubs f1, f1, f3
/* 8027FB18  EC 21 08 2A */	fadds f1, f1, f1
/* 8027FB1C  EC 81 18 28 */	fsubs f4, f1, f3
/* 8027FB20  80 9F 00 00 */	lwz r4, 0(r31)
/* 8027FB24  C0 44 00 10 */	lfs f2, 0x10(r4)
/* 8027FB28  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 8027FB2C  EC 21 01 32 */	fmuls f1, f1, f4
/* 8027FB30  EC 23 08 2A */	fadds f1, f3, f1
/* 8027FB34  EC C2 00 72 */	fmuls f6, f2, f1
/* 8027FB38  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8027FB3C  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027FB40  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027FB44  38 04 F3 5F */	addi r0, r4, -3233
/* 8027FB48  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8027FB4C  54 00 BA 7E */	srwi r0, r0, 9
/* 8027FB50  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027FB54  90 01 00 10 */	stw r0, 0x10(r1)
/* 8027FB58  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 8027FB5C  EC 21 18 28 */	fsubs f1, f1, f3
/* 8027FB60  EC 21 08 2A */	fadds f1, f1, f1
/* 8027FB64  EC 41 18 28 */	fsubs f2, f1, f3
/* 8027FB68  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8027FB6C  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027FB70  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027FB74  38 04 F3 5F */	addi r0, r4, -3233
/* 8027FB78  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8027FB7C  54 00 BA 7E */	srwi r0, r0, 9
/* 8027FB80  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027FB84  90 01 00 0C */	stw r0, 0xc(r1)
/* 8027FB88  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8027FB8C  EC 21 18 28 */	fsubs f1, f1, f3
/* 8027FB90  EC 21 08 2A */	fadds f1, f1, f1
/* 8027FB94  EC 81 18 28 */	fsubs f4, f1, f3
/* 8027FB98  80 03 00 C4 */	lwz r0, 0xc4(r3)
/* 8027FB9C  7C 80 29 D6 */	mullw r4, r0, r5
/* 8027FBA0  3C 84 3C 6F */	addis r4, r4, 0x3c6f
/* 8027FBA4  38 04 F3 5F */	addi r0, r4, -3233
/* 8027FBA8  90 03 00 C4 */	stw r0, 0xc4(r3)
/* 8027FBAC  54 00 BA 7E */	srwi r0, r0, 9
/* 8027FBB0  64 00 3F 80 */	oris r0, r0, 0x3f80
/* 8027FBB4  90 01 00 08 */	stw r0, 8(r1)
/* 8027FBB8  C0 21 00 08 */	lfs f1, 8(r1)
/* 8027FBBC  EC 21 18 28 */	fsubs f1, f1, f3
/* 8027FBC0  EC 21 08 2A */	fadds f1, f1, f1
/* 8027FBC4  EC 21 18 28 */	fsubs f1, f1, f3
/* 8027FBC8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8027FBCC  D0 81 00 2C */	stfs f4, 0x2c(r1)
/* 8027FBD0  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8027FBD4  E0 21 00 28 */	psq_l f1, 40(r1), 0, 0 /* qr0 */
/* 8027FBD8  10 21 00 72 */	ps_mul f1, f1, f1
/* 8027FBDC  10 A2 08 BA */	ps_madd f5, f2, f2, f1
/* 8027FBE0  10 A5 08 54 */	ps_sum0 f5, f5, f1, f1
/* 8027FBE4  C0 42 B9 90 */	lfs f2, lit_2567(r2)
/* 8027FBE8  3C 60 80 45 */	lis r3, __float_epsilon@ha
/* 8027FBEC  C0 23 0A EC */	lfs f1, __float_epsilon@l(r3)
/* 8027FBF0  EC 22 00 72 */	fmuls f1, f2, f1
/* 8027FBF4  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 8027FBF8  4C 40 13 82 */	cror 2, 0, 2
/* 8027FBFC  41 82 00 58 */	beq lbl_8027FC54
/* 8027FC00  C0 22 B9 8C */	lfs f1, lit_2566(r2)
/* 8027FC04  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 8027FC08  4C 40 13 82 */	cror 2, 0, 2
/* 8027FC0C  40 82 00 08 */	bne lbl_8027FC14
/* 8027FC10  48 00 00 28 */	b lbl_8027FC38
lbl_8027FC14:
/* 8027FC14  FC 80 28 34 */	frsqrte f4, f5
/* 8027FC18  FC 80 20 18 */	frsp f4, f4
/* 8027FC1C  C0 22 B9 94 */	lfs f1, lit_2568(r2)
/* 8027FC20  EC 61 01 32 */	fmuls f3, f1, f4
/* 8027FC24  C0 42 B9 98 */	lfs f2, lit_2569(r2)
/* 8027FC28  EC 24 01 32 */	fmuls f1, f4, f4
/* 8027FC2C  EC 25 00 72 */	fmuls f1, f5, f1
/* 8027FC30  EC 22 08 28 */	fsubs f1, f2, f1
/* 8027FC34  EC A3 00 72 */	fmuls f5, f3, f1
lbl_8027FC38:
/* 8027FC38  EC 05 01 B2 */	fmuls f0, f5, f6
/* 8027FC3C  E0 21 00 28 */	psq_l f1, 40(r1), 0, 0 /* qr0 */
/* 8027FC40  E0 41 80 30 */	psq_l f2, 48(r1), 1, 0 /* qr0 */
/* 8027FC44  10 21 00 18 */	ps_muls0 f1, f1, f0
/* 8027FC48  F0 21 00 28 */	psq_st f1, 40(r1), 0, 0 /* qr0 */
/* 8027FC4C  10 02 00 18 */	ps_muls0 f0, f2, f0
/* 8027FC50  F0 01 80 30 */	psq_st f0, 48(r1), 1, 0 /* qr0 */
lbl_8027FC54:
/* 8027FC54  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027FC58  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 8027FC5C  38 7E 00 30 */	addi r3, r30, 0x30
/* 8027FC60  38 81 00 28 */	addi r4, r1, 0x28
/* 8027FC64  38 BD 00 30 */	addi r5, r29, 0x30
/* 8027FC68  48 0B 9D F5 */	bl JMAVECScaleAdd__FPC3VecPC3VecP3Vecf
/* 8027FC6C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027FC70  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 8027FC74  E0 1E 00 48 */	psq_l f0, 72(r30), 0, 0 /* qr0 */
/* 8027FC78  E0 3E 80 50 */	psq_l f1, 80(r30), 1, 0 /* qr0 */
/* 8027FC7C  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 8027FC80  F0 1D 00 3C */	psq_st f0, 60(r29), 0, 0 /* qr0 */
/* 8027FC84  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 8027FC88  F0 1D 80 44 */	psq_st f0, 68(r29), 1, 0 /* qr0 */
/* 8027FC8C  C0 1E 00 70 */	lfs f0, 0x70(r30)
/* 8027FC90  D0 1D 00 70 */	stfs f0, 0x70(r29)
/* 8027FC94  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027FC98  80 03 00 08 */	lwz r0, 8(r3)
/* 8027FC9C  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 8027FCA0  41 82 00 10 */	beq lbl_8027FCB0
/* 8027FCA4  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 8027FCA8  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 8027FCAC  48 00 00 18 */	b lbl_8027FCC4
lbl_8027FCB0:
/* 8027FCB0  80 1D 00 7C */	lwz r0, 0x7c(r29)
/* 8027FCB4  60 00 00 40 */	ori r0, r0, 0x40
/* 8027FCB8  90 1D 00 7C */	stw r0, 0x7c(r29)
/* 8027FCBC  C0 02 B9 88 */	lfs f0, lit_2565(r2)
/* 8027FCC0  D0 1D 00 74 */	stfs f0, 0x74(r29)
lbl_8027FCC4:
/* 8027FCC4  80 1E 00 78 */	lwz r0, 0x78(r30)
/* 8027FCC8  90 1D 00 78 */	stw r0, 0x78(r29)
/* 8027FCCC  C0 1D 00 3C */	lfs f0, 0x3c(r29)
/* 8027FCD0  D0 1D 00 48 */	stfs f0, 0x48(r29)
/* 8027FCD4  C0 1D 00 40 */	lfs f0, 0x40(r29)
/* 8027FCD8  D0 1D 00 4C */	stfs f0, 0x4c(r29)
/* 8027FCDC  C0 1D 00 44 */	lfs f0, 0x44(r29)
/* 8027FCE0  D0 1D 00 50 */	stfs f0, 0x50(r29)
/* 8027FCE4  C0 3D 00 70 */	lfs f1, 0x70(r29)
/* 8027FCE8  C0 1D 00 74 */	lfs f0, 0x74(r29)
/* 8027FCEC  EC 81 00 32 */	fmuls f4, f1, f0
/* 8027FCF0  C0 3D 00 38 */	lfs f1, 0x38(r29)
/* 8027FCF4  C0 1D 00 50 */	lfs f0, 0x50(r29)
/* 8027FCF8  EC 01 00 2A */	fadds f0, f1, f0
/* 8027FCFC  EC 64 00 32 */	fmuls f3, f4, f0
/* 8027FD00  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 8027FD04  C0 1D 00 4C */	lfs f0, 0x4c(r29)
/* 8027FD08  EC 01 00 2A */	fadds f0, f1, f0
/* 8027FD0C  EC 44 00 32 */	fmuls f2, f4, f0
/* 8027FD10  C0 3D 00 30 */	lfs f1, 0x30(r29)
/* 8027FD14  C0 1D 00 48 */	lfs f0, 0x48(r29)
/* 8027FD18  EC 01 00 2A */	fadds f0, f1, f0
/* 8027FD1C  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027FD20  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 8027FD24  D0 5D 00 28 */	stfs f2, 0x28(r29)
/* 8027FD28  D0 7D 00 2C */	stfs f3, 0x2c(r29)
/* 8027FD2C  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 8027FD30  D0 1D 00 54 */	stfs f0, 0x54(r29)
/* 8027FD34  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 8027FD38  D0 1D 00 58 */	stfs f0, 0x58(r29)
/* 8027FD3C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8027FD40  D0 1D 00 5C */	stfs f0, 0x5c(r29)
/* 8027FD44  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027FD48  80 03 00 08 */	lwz r0, 8(r3)
/* 8027FD4C  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 8027FD50  41 82 00 34 */	beq lbl_8027FD84
/* 8027FD54  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 8027FD58  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8027FD5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027FD60  D0 1D 00 68 */	stfs f0, 0x68(r29)
/* 8027FD64  D0 1D 00 60 */	stfs f0, 0x60(r29)
/* 8027FD68  C0 3E 00 64 */	lfs f1, 0x64(r30)
/* 8027FD6C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027FD70  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 8027FD74  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027FD78  D0 1D 00 6C */	stfs f0, 0x6c(r29)
/* 8027FD7C  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 8027FD80  48 00 00 18 */	b lbl_8027FD98
lbl_8027FD84:
/* 8027FD84  C0 02 B9 88 */	lfs f0, lit_2565(r2)
/* 8027FD88  D0 1D 00 6C */	stfs f0, 0x6c(r29)
/* 8027FD8C  D0 1D 00 64 */	stfs f0, 0x64(r29)
/* 8027FD90  D0 1D 00 68 */	stfs f0, 0x68(r29)
/* 8027FD94  D0 1D 00 60 */	stfs f0, 0x60(r29)
lbl_8027FD98:
/* 8027FD98  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027FD9C  80 03 00 08 */	lwz r0, 8(r3)
/* 8027FDA0  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 8027FDA4  41 82 01 2C */	beq lbl_8027FED0
/* 8027FDA8  88 1E 00 8C */	lbz r0, 0x8c(r30)
/* 8027FDAC  C8 42 B9 A8 */	lfd f2, lit_2574(r2)
/* 8027FDB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8027FDB4  3C 80 43 30 */	lis r4, 0x4330
/* 8027FDB8  90 81 00 40 */	stw r4, 0x40(r1)
/* 8027FDBC  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8027FDC0  EC 20 10 28 */	fsubs f1, f0, f2
/* 8027FDC4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8027FDC8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027FDCC  FC 00 00 1E */	fctiwz f0, f0
/* 8027FDD0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8027FDD4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8027FDD8  98 1D 00 8C */	stb r0, 0x8c(r29)
/* 8027FDDC  88 1E 00 8D */	lbz r0, 0x8d(r30)
/* 8027FDE0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8027FDE4  90 81 00 50 */	stw r4, 0x50(r1)
/* 8027FDE8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8027FDEC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8027FDF0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027FDF4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8027FDF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027FDFC  FC 00 00 1E */	fctiwz f0, f0
/* 8027FE00  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8027FE04  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 8027FE08  98 1D 00 8D */	stb r0, 0x8d(r29)
/* 8027FE0C  88 1E 00 8E */	lbz r0, 0x8e(r30)
/* 8027FE10  90 01 00 64 */	stw r0, 0x64(r1)
/* 8027FE14  90 81 00 60 */	stw r4, 0x60(r1)
/* 8027FE18  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 8027FE1C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8027FE20  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027FE24  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8027FE28  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027FE2C  FC 00 00 1E */	fctiwz f0, f0
/* 8027FE30  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 8027FE34  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 8027FE38  98 1D 00 8E */	stb r0, 0x8e(r29)
/* 8027FE3C  88 1E 00 90 */	lbz r0, 0x90(r30)
/* 8027FE40  90 01 00 74 */	stw r0, 0x74(r1)
/* 8027FE44  90 81 00 70 */	stw r4, 0x70(r1)
/* 8027FE48  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 8027FE4C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8027FE50  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027FE54  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8027FE58  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027FE5C  FC 00 00 1E */	fctiwz f0, f0
/* 8027FE60  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 8027FE64  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 8027FE68  98 1D 00 90 */	stb r0, 0x90(r29)
/* 8027FE6C  88 1E 00 91 */	lbz r0, 0x91(r30)
/* 8027FE70  90 01 00 84 */	stw r0, 0x84(r1)
/* 8027FE74  90 81 00 80 */	stw r4, 0x80(r1)
/* 8027FE78  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 8027FE7C  EC 20 10 28 */	fsubs f1, f0, f2
/* 8027FE80  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027FE84  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8027FE88  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027FE8C  FC 00 00 1E */	fctiwz f0, f0
/* 8027FE90  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 8027FE94  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 8027FE98  98 1D 00 91 */	stb r0, 0x91(r29)
/* 8027FE9C  88 1E 00 92 */	lbz r0, 0x92(r30)
/* 8027FEA0  90 01 00 94 */	stw r0, 0x94(r1)
/* 8027FEA4  90 81 00 90 */	stw r4, 0x90(r1)
/* 8027FEA8  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 8027FEAC  EC 20 10 28 */	fsubs f1, f0, f2
/* 8027FEB0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027FEB4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8027FEB8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027FEBC  FC 00 00 1E */	fctiwz f0, f0
/* 8027FEC0  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 8027FEC4  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8027FEC8  98 1D 00 92 */	stb r0, 0x92(r29)
/* 8027FECC  48 00 00 48 */	b lbl_8027FF14
lbl_8027FED0:
/* 8027FED0  88 03 00 34 */	lbz r0, 0x34(r3)
/* 8027FED4  98 1D 00 8C */	stb r0, 0x8c(r29)
/* 8027FED8  88 03 00 35 */	lbz r0, 0x35(r3)
/* 8027FEDC  98 1D 00 8D */	stb r0, 0x8d(r29)
/* 8027FEE0  88 03 00 36 */	lbz r0, 0x36(r3)
/* 8027FEE4  98 1D 00 8E */	stb r0, 0x8e(r29)
/* 8027FEE8  88 03 00 37 */	lbz r0, 0x37(r3)
/* 8027FEEC  98 1D 00 8F */	stb r0, 0x8f(r29)
/* 8027FEF0  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027FEF4  88 03 00 38 */	lbz r0, 0x38(r3)
/* 8027FEF8  98 1D 00 90 */	stb r0, 0x90(r29)
/* 8027FEFC  88 03 00 39 */	lbz r0, 0x39(r3)
/* 8027FF00  98 1D 00 91 */	stb r0, 0x91(r29)
/* 8027FF04  88 03 00 3A */	lbz r0, 0x3a(r3)
/* 8027FF08  98 1D 00 92 */	stb r0, 0x92(r29)
/* 8027FF0C  88 03 00 3B */	lbz r0, 0x3b(r3)
/* 8027FF10  98 1D 00 93 */	stb r0, 0x93(r29)
lbl_8027FF14:
/* 8027FF14  38 00 00 FF */	li r0, 0xff
/* 8027FF18  98 1D 00 96 */	stb r0, 0x96(r29)
/* 8027FF1C  80 BF 00 00 */	lwz r5, 0(r31)
/* 8027FF20  80 05 00 08 */	lwz r0, 8(r5)
/* 8027FF24  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 8027FF28  41 82 00 4C */	beq lbl_8027FF74
/* 8027FF2C  88 9E 00 8F */	lbz r4, 0x8f(r30)
/* 8027FF30  88 7E 00 96 */	lbz r3, 0x96(r30)
/* 8027FF34  38 03 00 01 */	addi r0, r3, 1
/* 8027FF38  7C 04 01 D6 */	mullw r0, r4, r0
/* 8027FF3C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 8027FF40  C8 22 B9 A8 */	lfd f1, lit_2574(r2)
/* 8027FF44  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8027FF48  3C 00 43 30 */	lis r0, 0x4330
/* 8027FF4C  90 01 00 98 */	stw r0, 0x98(r1)
/* 8027FF50  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 8027FF54  EC 20 08 28 */	fsubs f1, f0, f1
/* 8027FF58  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 8027FF5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8027FF60  FC 00 00 1E */	fctiwz f0, f0
/* 8027FF64  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 8027FF68  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8027FF6C  98 1D 00 8F */	stb r0, 0x8f(r29)
/* 8027FF70  48 00 00 0C */	b lbl_8027FF7C
lbl_8027FF74:
/* 8027FF74  88 05 00 37 */	lbz r0, 0x37(r5)
/* 8027FF78  98 1D 00 8F */	stb r0, 0x8f(r29)
lbl_8027FF7C:
/* 8027FF7C  A0 1E 00 88 */	lhz r0, 0x88(r30)
/* 8027FF80  B0 1D 00 88 */	sth r0, 0x88(r29)
/* 8027FF84  80 7F 00 00 */	lwz r3, 0(r31)
/* 8027FF88  80 03 00 08 */	lwz r0, 8(r3)
/* 8027FF8C  54 00 01 CF */	rlwinm. r0, r0, 0, 7, 7
/* 8027FF90  41 82 00 10 */	beq lbl_8027FFA0
/* 8027FF94  A8 03 00 46 */	lha r0, 0x46(r3)
/* 8027FF98  B0 1D 00 8A */	sth r0, 0x8a(r29)
/* 8027FF9C  48 00 00 0C */	b lbl_8027FFA8
lbl_8027FFA0:
/* 8027FFA0  38 00 00 00 */	li r0, 0
/* 8027FFA4  B0 1D 00 8A */	sth r0, 0x8a(r29)
lbl_8027FFA8:
/* 8027FFA8  38 00 00 00 */	li r0, 0
/* 8027FFAC  98 1D 00 94 */	stb r0, 0x94(r29)
/* 8027FFB0  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8027FFB4  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8027FFB8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8027FFBC  48 0E 22 6D */	bl _restgpr_29
/* 8027FFC0  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8027FFC4  7C 08 03 A6 */	mtlr r0
/* 8027FFC8  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8027FFCC  4E 80 00 20 */	blr 
