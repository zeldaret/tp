lbl_8009D194:
/* 8009D194  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8009D198  7C 08 02 A6 */	mflr r0
/* 8009D19C  90 01 01 04 */	stw r0, 0x104(r1)
/* 8009D1A0  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 8009D1A4  7C 7F 1B 78 */	mr r31, r3
/* 8009D1A8  80 0D 80 80 */	lwz r0, g_clearColor(r13)
/* 8009D1AC  90 01 00 08 */	stw r0, 8(r1)
/* 8009D1B0  88 01 00 08 */	lbz r0, 8(r1)
/* 8009D1B4  98 01 00 10 */	stb r0, 0x10(r1)
/* 8009D1B8  88 01 00 09 */	lbz r0, 9(r1)
/* 8009D1BC  98 01 00 11 */	stb r0, 0x11(r1)
/* 8009D1C0  88 01 00 0A */	lbz r0, 0xa(r1)
/* 8009D1C4  98 01 00 12 */	stb r0, 0x12(r1)
/* 8009D1C8  88 01 00 0B */	lbz r0, 0xb(r1)
/* 8009D1CC  98 01 00 13 */	stb r0, 0x13(r1)
/* 8009D1D0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8009D1D4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8009D1D8  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 8009D1DC  88 01 00 0C */	lbz r0, 0xc(r1)
/* 8009D1E0  98 03 00 08 */	stb r0, 8(r3)
/* 8009D1E4  88 01 00 0D */	lbz r0, 0xd(r1)
/* 8009D1E8  98 03 00 09 */	stb r0, 9(r3)
/* 8009D1EC  88 01 00 0E */	lbz r0, 0xe(r1)
/* 8009D1F0  98 03 00 0A */	stb r0, 0xa(r3)
/* 8009D1F4  88 01 00 0F */	lbz r0, 0xf(r1)
/* 8009D1F8  98 03 00 0B */	stb r0, 0xb(r3)
/* 8009D1FC  4B F6 AD 95 */	bl beginRender__13mDoGph_gInf_cFv
/* 8009D200  38 60 00 00 */	li r3, 0
/* 8009D204  48 2C 2A 6D */	bl GXSetAlphaUpdate
/* 8009D208  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8009D20C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8009D210  48 27 2E AD */	bl drawInit__6J3DSysFv
/* 8009D214  38 61 00 24 */	addi r3, r1, 0x24
/* 8009D218  C0 22 92 18 */	lfs f1, lit_3758(r2)
/* 8009D21C  FC 40 08 90 */	fmr f2, f1
/* 8009D220  C0 62 92 1C */	lfs f3, lit_3759(r2)
/* 8009D224  C0 82 92 24 */	lfs f4, lit_3761(r2)
/* 8009D228  C0 A2 92 48 */	lfs f5, lit_3835(r2)
/* 8009D22C  C0 C2 92 30 */	lfs f6, lit_3764(r2)
/* 8009D230  48 24 C4 A1 */	bl __ct__13J2DOrthoGraphFffffff
/* 8009D234  C0 02 92 18 */	lfs f0, lit_3758(r2)
/* 8009D238  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8009D23C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8009D240  C0 02 92 1C */	lfs f0, lit_3759(r2)
/* 8009D244  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8009D248  C0 02 92 24 */	lfs f0, lit_3761(r2)
/* 8009D24C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8009D250  38 61 00 24 */	addi r3, r1, 0x24
/* 8009D254  38 81 00 14 */	addi r4, r1, 0x14
/* 8009D258  C0 22 92 48 */	lfs f1, lit_3835(r2)
/* 8009D25C  C0 42 92 30 */	lfs f2, lit_3764(r2)
/* 8009D260  48 24 C5 AD */	bl func_802E980C
/* 8009D264  38 61 00 24 */	addi r3, r1, 0x24
/* 8009D268  48 24 C5 4D */	bl setPort__13J2DOrthoGraphFv
/* 8009D26C  38 01 00 24 */	addi r0, r1, 0x24
/* 8009D270  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8009D274  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8009D278  90 03 5F 50 */	stw r0, 0x5f50(r3)
/* 8009D27C  2C 1F 00 04 */	cmpwi r31, 4
/* 8009D280  40 82 00 14 */	bne lbl_8009D294
/* 8009D284  38 60 00 02 */	li r3, 2
/* 8009D288  38 80 00 01 */	li r4, 1
/* 8009D28C  4B FF F8 FD */	bl messageSet__FUlb
/* 8009D290  48 00 00 78 */	b lbl_8009D308
lbl_8009D294:
/* 8009D294  2C 1F 00 05 */	cmpwi r31, 5
/* 8009D298  40 82 00 14 */	bne lbl_8009D2AC
/* 8009D29C  38 60 00 01 */	li r3, 1
/* 8009D2A0  38 80 00 01 */	li r4, 1
/* 8009D2A4  4B FF F8 E5 */	bl messageSet__FUlb
/* 8009D2A8  48 00 00 60 */	b lbl_8009D308
lbl_8009D2AC:
/* 8009D2AC  2C 1F FF FF */	cmpwi r31, -1
/* 8009D2B0  40 82 00 14 */	bne lbl_8009D2C4
/* 8009D2B4  38 60 00 05 */	li r3, 5
/* 8009D2B8  38 80 00 01 */	li r4, 1
/* 8009D2BC  4B FF F8 CD */	bl messageSet__FUlb
/* 8009D2C0  48 00 00 48 */	b lbl_8009D308
lbl_8009D2C4:
/* 8009D2C4  2C 1F 00 06 */	cmpwi r31, 6
/* 8009D2C8  40 82 00 14 */	bne lbl_8009D2DC
/* 8009D2CC  38 60 00 03 */	li r3, 3
/* 8009D2D0  38 80 00 01 */	li r4, 1
/* 8009D2D4  4B FF F8 B5 */	bl messageSet__FUlb
/* 8009D2D8  48 00 00 30 */	b lbl_8009D308
lbl_8009D2DC:
/* 8009D2DC  2C 1F 00 0B */	cmpwi r31, 0xb
/* 8009D2E0  40 82 00 14 */	bne lbl_8009D2F4
/* 8009D2E4  38 60 00 04 */	li r3, 4
/* 8009D2E8  38 80 00 01 */	li r4, 1
/* 8009D2EC  4B FF F8 9D */	bl messageSet__FUlb
/* 8009D2F0  48 00 00 18 */	b lbl_8009D308
lbl_8009D2F4:
/* 8009D2F4  2C 1F 00 01 */	cmpwi r31, 1
/* 8009D2F8  40 82 00 10 */	bne lbl_8009D308
/* 8009D2FC  38 60 00 00 */	li r3, 0
/* 8009D300  38 80 00 01 */	li r4, 1
/* 8009D304  4B FF F8 85 */	bl messageSet__FUlb
lbl_8009D308:
/* 8009D308  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 8009D30C  81 83 00 00 */	lwz r12, 0(r3)
/* 8009D310  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8009D314  7D 89 03 A6 */	mtctr r12
/* 8009D318  4E 80 04 21 */	bctrl 
/* 8009D31C  38 00 00 00 */	li r0, 0
/* 8009D320  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 8009D324  90 03 00 04 */	stw r0, 4(r3)
/* 8009D328  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha
/* 8009D32C  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 8009D330  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009D334  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha
/* 8009D338  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 8009D33C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8009D340  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 8009D344  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8009D348  7C 08 03 A6 */	mtlr r0
/* 8009D34C  38 21 01 00 */	addi r1, r1, 0x100
/* 8009D350  4E 80 00 20 */	blr 
