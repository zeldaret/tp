lbl_8083F9AC:
/* 8083F9AC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8083F9B0  7C 08 02 A6 */	mflr r0
/* 8083F9B4  90 01 00 94 */	stw r0, 0x94(r1)
/* 8083F9B8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 8083F9BC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 8083F9C0  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 8083F9C4  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 8083F9C8  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 8083F9CC  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 8083F9D0  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 8083F9D4  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 8083F9D8  DB 61 00 40 */	stfd f27, 0x40(r1)
/* 8083F9DC  F3 61 00 48 */	psq_st f27, 72(r1), 0, 0 /* qr0 */
/* 8083F9E0  39 61 00 40 */	addi r11, r1, 0x40
/* 8083F9E4  4B B2 27 F1 */	bl _savegpr_27
/* 8083F9E8  7C 7F 1B 78 */	mr r31, r3
/* 8083F9EC  7C 9C 23 78 */	mr r28, r4
/* 8083F9F0  3C 60 80 84 */	lis r3, lit_1109@ha /* 0x80845BB8@ha */
/* 8083F9F4  3B A3 5B B8 */	addi r29, r3, lit_1109@l /* 0x80845BB8@l */
/* 8083F9F8  3C 60 80 84 */	lis r3, lit_3894@ha /* 0x808454AC@ha */
/* 8083F9FC  3B C3 54 AC */	addi r30, r3, lit_3894@l /* 0x808454AC@l */
/* 8083FA00  88 1D 01 08 */	lbz r0, 0x108(r29)
/* 8083FA04  7C 00 07 75 */	extsb. r0, r0
/* 8083FA08  40 82 00 38 */	bne lbl_8083FA40
/* 8083FA0C  C0 1E 02 A4 */	lfs f0, 0x2a4(r30)
/* 8083FA10  D0 1D 01 0C */	stfs f0, 0x10c(r29)
/* 8083FA14  C0 1E 02 A8 */	lfs f0, 0x2a8(r30)
/* 8083FA18  38 7D 01 0C */	addi r3, r29, 0x10c
/* 8083FA1C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8083FA20  C0 1E 02 AC */	lfs f0, 0x2ac(r30)
/* 8083FA24  D0 03 00 08 */	stfs f0, 8(r3)
/* 8083FA28  3C 80 80 84 */	lis r4, __dt__4cXyzFv@ha /* 0x8083836C@ha */
/* 8083FA2C  38 84 83 6C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8083836C@l */
/* 8083FA30  38 BD 00 FC */	addi r5, r29, 0xfc
/* 8083FA34  4B FF 84 85 */	bl __register_global_object
/* 8083FA38  38 00 00 01 */	li r0, 1
/* 8083FA3C  98 1D 01 08 */	stb r0, 0x108(r29)
lbl_8083FA40:
/* 8083FA40  88 1D 01 24 */	lbz r0, 0x124(r29)
/* 8083FA44  7C 00 07 75 */	extsb. r0, r0
/* 8083FA48  40 82 00 38 */	bne lbl_8083FA80
/* 8083FA4C  C0 1E 02 A4 */	lfs f0, 0x2a4(r30)
/* 8083FA50  D0 1D 01 28 */	stfs f0, 0x128(r29)
/* 8083FA54  C0 1E 02 A8 */	lfs f0, 0x2a8(r30)
/* 8083FA58  38 7D 01 28 */	addi r3, r29, 0x128
/* 8083FA5C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8083FA60  C0 1E 02 B0 */	lfs f0, 0x2b0(r30)
/* 8083FA64  D0 03 00 08 */	stfs f0, 8(r3)
/* 8083FA68  3C 80 80 84 */	lis r4, __dt__4cXyzFv@ha /* 0x8083836C@ha */
/* 8083FA6C  38 84 83 6C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8083836C@l */
/* 8083FA70  38 BD 01 18 */	addi r5, r29, 0x118
/* 8083FA74  4B FF 84 45 */	bl __register_global_object
/* 8083FA78  38 00 00 01 */	li r0, 1
/* 8083FA7C  98 1D 01 24 */	stb r0, 0x124(r29)
lbl_8083FA80:
/* 8083FA80  88 1D 01 40 */	lbz r0, 0x140(r29)
/* 8083FA84  7C 00 07 75 */	extsb. r0, r0
/* 8083FA88  40 82 00 34 */	bne lbl_8083FABC
/* 8083FA8C  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 8083FA90  D0 1D 01 44 */	stfs f0, 0x144(r29)
/* 8083FA94  38 7D 01 44 */	addi r3, r29, 0x144
/* 8083FA98  D0 03 00 04 */	stfs f0, 4(r3)
/* 8083FA9C  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 8083FAA0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8083FAA4  3C 80 80 84 */	lis r4, __dt__4cXyzFv@ha /* 0x8083836C@ha */
/* 8083FAA8  38 84 83 6C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8083836C@l */
/* 8083FAAC  38 BD 01 34 */	addi r5, r29, 0x134
/* 8083FAB0  4B FF 84 09 */	bl __register_global_object
/* 8083FAB4  38 00 00 01 */	li r0, 1
/* 8083FAB8  98 1D 01 40 */	stb r0, 0x140(r29)
lbl_8083FABC:
/* 8083FABC  88 1D 01 5C */	lbz r0, 0x15c(r29)
/* 8083FAC0  7C 00 07 75 */	extsb. r0, r0
/* 8083FAC4  40 82 00 34 */	bne lbl_8083FAF8
/* 8083FAC8  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 8083FACC  D0 1D 01 60 */	stfs f0, 0x160(r29)
/* 8083FAD0  38 7D 01 60 */	addi r3, r29, 0x160
/* 8083FAD4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8083FAD8  C0 1E 02 B4 */	lfs f0, 0x2b4(r30)
/* 8083FADC  D0 03 00 08 */	stfs f0, 8(r3)
/* 8083FAE0  3C 80 80 84 */	lis r4, __dt__4cXyzFv@ha /* 0x8083836C@ha */
/* 8083FAE4  38 84 83 6C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8083836C@l */
/* 8083FAE8  38 BD 01 50 */	addi r5, r29, 0x150
/* 8083FAEC  4B FF 83 CD */	bl __register_global_object
/* 8083FAF0  38 00 00 01 */	li r0, 1
/* 8083FAF4  98 1D 01 5C */	stb r0, 0x15c(r29)
lbl_8083FAF8:
/* 8083FAF8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8083FAFC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083FB00  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083FB04  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8083FB08  38 9D 01 0C */	addi r4, r29, 0x10c
/* 8083FB0C  80 BF 11 50 */	lwz r5, 0x1150(r31)
/* 8083FB10  4B B0 72 5D */	bl PSMTXMultVec
/* 8083FB14  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8083FB18  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083FB1C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083FB20  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8083FB24  38 9D 01 28 */	addi r4, r29, 0x128
/* 8083FB28  80 BF 11 78 */	lwz r5, 0x1178(r31)
/* 8083FB2C  4B B0 72 41 */	bl PSMTXMultVec
/* 8083FB30  A8 7F 17 0E */	lha r3, 0x170e(r31)
/* 8083FB34  38 03 40 00 */	addi r0, r3, 0x4000
/* 8083FB38  C3 BE 01 EC */	lfs f29, 0x1ec(r30)
/* 8083FB3C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8083FB40  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8083FB44  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8083FB48  7F E3 04 2E */	lfsx f31, r3, r0
/* 8083FB4C  7C 63 02 14 */	add r3, r3, r0
/* 8083FB50  C3 C3 00 04 */	lfs f30, 4(r3)
/* 8083FB54  A8 1F 17 12 */	lha r0, 0x1712(r31)
/* 8083FB58  C8 5E 01 80 */	lfd f2, 0x180(r30)
/* 8083FB5C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083FB60  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8083FB64  3C 60 43 30 */	lis r3, 0x4330
/* 8083FB68  90 61 00 18 */	stw r3, 0x18(r1)
/* 8083FB6C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8083FB70  EC 20 10 28 */	fsubs f1, f0, f2
/* 8083FB74  C0 1E 02 B8 */	lfs f0, 0x2b8(r30)
/* 8083FB78  EC 01 00 24 */	fdivs f0, f1, f0
/* 8083FB7C  FC 00 02 10 */	fabs f0, f0
/* 8083FB80  FF 80 00 18 */	frsp f28, f0
/* 8083FB84  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 8083FB88  7C 80 07 35 */	extsh. r0, r4
/* 8083FB8C  40 80 00 28 */	bge lbl_8083FBB4
/* 8083FB90  C0 3E 02 BC */	lfs f1, 0x2bc(r30)
/* 8083FB94  7C 04 00 D0 */	neg r0, r4
/* 8083FB98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8083FB9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8083FBA0  90 61 00 20 */	stw r3, 0x20(r1)
/* 8083FBA4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 8083FBA8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8083FBAC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8083FBB0  EF BD 00 2A */	fadds f29, f29, f0
lbl_8083FBB4:
/* 8083FBB4  2C 1C 00 03 */	cmpwi r28, 3
/* 8083FBB8  41 82 00 0C */	beq lbl_8083FBC4
/* 8083FBBC  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 8083FBC0  EF BD 00 2A */	fadds f29, f29, f0
lbl_8083FBC4:
/* 8083FBC4  FF 60 E8 90 */	fmr f27, f29
/* 8083FBC8  C0 1E 01 50 */	lfs f0, 0x150(r30)
/* 8083FBCC  D0 1F 11 68 */	stfs f0, 0x1168(r31)
/* 8083FBD0  D0 1F 11 90 */	stfs f0, 0x1190(r31)
/* 8083FBD4  A8 7F 17 12 */	lha r3, 0x1712(r31)
/* 8083FBD8  7C 60 07 35 */	extsh. r0, r3
/* 8083FBDC  40 81 00 3C */	ble lbl_8083FC18
/* 8083FBE0  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8083FBE4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083FBE8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083FBEC  38 63 02 10 */	addi r3, r3, 0x210
/* 8083FBF0  38 9D 01 60 */	addi r4, r29, 0x160
/* 8083FBF4  38 BF 11 94 */	addi r5, r31, 0x1194
/* 8083FBF8  4B B0 71 75 */	bl PSMTXMultVec
/* 8083FBFC  C0 1E 02 C0 */	lfs f0, 0x2c0(r30)
/* 8083FC00  EC 00 07 32 */	fmuls f0, f0, f28
/* 8083FC04  D0 1F 11 90 */	stfs f0, 0x1190(r31)
/* 8083FC08  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 8083FC0C  EC 00 07 32 */	fmuls f0, f0, f28
/* 8083FC10  EF 7D 00 2A */	fadds f27, f29, f0
/* 8083FC14  48 00 00 40 */	b lbl_8083FC54
lbl_8083FC18:
/* 8083FC18  7C 60 07 35 */	extsh. r0, r3
/* 8083FC1C  40 80 00 38 */	bge lbl_8083FC54
/* 8083FC20  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 8083FC24  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8083FC28  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8083FC2C  38 63 02 10 */	addi r3, r3, 0x210
/* 8083FC30  38 9D 01 44 */	addi r4, r29, 0x144
/* 8083FC34  38 BF 11 6C */	addi r5, r31, 0x116c
/* 8083FC38  4B B0 71 35 */	bl PSMTXMultVec
/* 8083FC3C  C0 1E 02 C0 */	lfs f0, 0x2c0(r30)
/* 8083FC40  EC 00 07 32 */	fmuls f0, f0, f28
/* 8083FC44  D0 1F 11 68 */	stfs f0, 0x1168(r31)
/* 8083FC48  C0 1E 01 EC */	lfs f0, 0x1ec(r30)
/* 8083FC4C  EC 00 07 32 */	fmuls f0, f0, f28
/* 8083FC50  EF BD 00 2A */	fadds f29, f29, f0
lbl_8083FC54:
/* 8083FC54  EC 1D 07 F2 */	fmuls f0, f29, f31
/* 8083FC58  D0 1F 11 60 */	stfs f0, 0x1160(r31)
/* 8083FC5C  EC 1D 07 B2 */	fmuls f0, f29, f30
/* 8083FC60  D0 1F 11 64 */	stfs f0, 0x1164(r31)
/* 8083FC64  FC 20 D8 50 */	fneg f1, f27
/* 8083FC68  EC 01 07 F2 */	fmuls f0, f1, f31
/* 8083FC6C  D0 1F 11 88 */	stfs f0, 0x1188(r31)
/* 8083FC70  EC 01 07 B2 */	fmuls f0, f1, f30
/* 8083FC74  D0 1F 11 8C */	stfs f0, 0x118c(r31)
/* 8083FC78  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8083FC7C  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 8083FC80  4B B0 77 1D */	bl PSVECSquareDistance
/* 8083FC84  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 8083FC88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8083FC8C  40 80 00 14 */	bge lbl_8083FCA0
/* 8083FC90  A8 7F 17 10 */	lha r3, 0x1710(r31)
/* 8083FC94  A8 1F 17 0E */	lha r0, 0x170e(r31)
/* 8083FC98  7C 03 00 51 */	subf. r0, r3, r0
/* 8083FC9C  41 82 00 D0 */	beq lbl_8083FD6C
lbl_8083FCA0:
/* 8083FCA0  80 1F 17 48 */	lwz r0, 0x1748(r31)
/* 8083FCA4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8083FCA8  41 82 00 08 */	beq lbl_8083FCB0
/* 8083FCAC  48 00 00 C0 */	b lbl_8083FD6C
lbl_8083FCB0:
/* 8083FCB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8083FCB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8083FCB8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8083FCBC  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 8083FCC0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8083FCC4  4B B0 6C 25 */	bl PSMTXTrans
/* 8083FCC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8083FCCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8083FCD0  A8 9F 17 10 */	lha r4, 0x1710(r31)
/* 8083FCD4  A8 1F 17 0E */	lha r0, 0x170e(r31)
/* 8083FCD8  7C 04 00 50 */	subf r0, r4, r0
/* 8083FCDC  7C 04 07 34 */	extsh r4, r0
/* 8083FCE0  4B 7C C7 55 */	bl mDoMtx_YrotM__FPA4_fs
/* 8083FCE4  C0 1F 04 BC */	lfs f0, 0x4bc(r31)
/* 8083FCE8  FC 20 00 50 */	fneg f1, f0
/* 8083FCEC  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 8083FCF0  FC 40 00 50 */	fneg f2, f0
/* 8083FCF4  C0 1F 04 C4 */	lfs f0, 0x4c4(r31)
/* 8083FCF8  FC 60 00 50 */	fneg f3, f0
/* 8083FCFC  4B 7C D0 A1 */	bl transM__14mDoMtx_stack_cFfff
/* 8083FD00  3B 7F 11 50 */	addi r27, r31, 0x1150
/* 8083FD04  3B E0 00 00 */	li r31, 0
/* 8083FD08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8083FD0C  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_8083FD10:
/* 8083FD10  80 7B 00 00 */	lwz r3, 0(r27)
/* 8083FD14  3B A3 00 0C */	addi r29, r3, 0xc
/* 8083FD18  3B C0 00 01 */	li r30, 1
/* 8083FD1C  48 00 00 34 */	b lbl_8083FD50
lbl_8083FD20:
/* 8083FD20  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8083FD24  D0 01 00 08 */	stfs f0, 8(r1)
/* 8083FD28  C0 1D 00 04 */	lfs f0, 4(r29)
/* 8083FD2C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8083FD30  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8083FD34  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8083FD38  7F 83 E3 78 */	mr r3, r28
/* 8083FD3C  38 81 00 08 */	addi r4, r1, 8
/* 8083FD40  7F A5 EB 78 */	mr r5, r29
/* 8083FD44  4B B0 70 29 */	bl PSMTXMultVec
/* 8083FD48  3B DE 00 01 */	addi r30, r30, 1
/* 8083FD4C  3B BD 00 0C */	addi r29, r29, 0xc
lbl_8083FD50:
/* 8083FD50  80 1B 00 0C */	lwz r0, 0xc(r27)
/* 8083FD54  7C 1E 00 00 */	cmpw r30, r0
/* 8083FD58  41 80 FF C8 */	blt lbl_8083FD20
/* 8083FD5C  3B FF 00 01 */	addi r31, r31, 1
/* 8083FD60  2C 1F 00 03 */	cmpwi r31, 3
/* 8083FD64  3B 7B 00 28 */	addi r27, r27, 0x28
/* 8083FD68  41 80 FF A8 */	blt lbl_8083FD10
lbl_8083FD6C:
/* 8083FD6C  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 8083FD70  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 8083FD74  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 8083FD78  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 8083FD7C  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 8083FD80  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 8083FD84  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 8083FD88  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 8083FD8C  E3 61 00 48 */	psq_l f27, 72(r1), 0, 0 /* qr0 */
/* 8083FD90  CB 61 00 40 */	lfd f27, 0x40(r1)
/* 8083FD94  39 61 00 40 */	addi r11, r1, 0x40
/* 8083FD98  4B B2 24 89 */	bl _restgpr_27
/* 8083FD9C  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8083FDA0  7C 08 03 A6 */	mtlr r0
/* 8083FDA4  38 21 00 90 */	addi r1, r1, 0x90
/* 8083FDA8  4E 80 00 20 */	blr 
