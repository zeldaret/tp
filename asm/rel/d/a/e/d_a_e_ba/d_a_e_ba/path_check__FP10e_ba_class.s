lbl_8067F2DC:
/* 8067F2DC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 8067F2E0  7C 08 02 A6 */	mflr r0
/* 8067F2E4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 8067F2E8  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 8067F2EC  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 8067F2F0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8067F2F4  4B CE 2E E1 */	bl _savegpr_27
/* 8067F2F8  7C 7E 1B 78 */	mr r30, r3
/* 8067F2FC  3C 60 80 68 */	lis r3, lit_3947@ha /* 0x806823BC@ha */
/* 8067F300  3B E3 23 BC */	addi r31, r3, lit_3947@l /* 0x806823BC@l */
/* 8067F304  80 1E 05 C0 */	lwz r0, 0x5c0(r30)
/* 8067F308  28 00 00 00 */	cmplwi r0, 0
/* 8067F30C  41 82 02 14 */	beq lbl_8067F520
/* 8067F310  38 61 00 20 */	addi r3, r1, 0x20
/* 8067F314  4B 9F 89 55 */	bl __ct__11dBgS_LinChkFv
/* 8067F318  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8067F31C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8067F320  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8067F324  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8067F328  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8067F32C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8067F330  C3 FF 00 00 */	lfs f31, 0(r31)
/* 8067F334  EC 01 F8 2A */	fadds f0, f1, f31
/* 8067F338  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8067F33C  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8067F340  83 83 00 08 */	lwz r28, 8(r3)
/* 8067F344  3B 60 00 00 */	li r27, 0
/* 8067F348  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8067F34C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8067F350  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8067F354  48 00 00 74 */	b lbl_8067F3C8
lbl_8067F358:
/* 8067F358  C0 1C 00 04 */	lfs f0, 4(r28)
/* 8067F35C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8067F360  C0 1C 00 08 */	lfs f0, 8(r28)
/* 8067F364  EC 1F 00 2A */	fadds f0, f31, f0
/* 8067F368  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8067F36C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8067F370  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8067F374  38 61 00 20 */	addi r3, r1, 0x20
/* 8067F378  38 81 00 14 */	addi r4, r1, 0x14
/* 8067F37C  38 A1 00 08 */	addi r5, r1, 8
/* 8067F380  7F C6 F3 78 */	mr r6, r30
/* 8067F384  4B 9F 89 E1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8067F388  7F A3 EB 78 */	mr r3, r29
/* 8067F38C  38 81 00 20 */	addi r4, r1, 0x20
/* 8067F390  4B 9F 50 25 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8067F394  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8067F398  40 82 00 18 */	bne lbl_8067F3B0
/* 8067F39C  38 00 00 01 */	li r0, 1
/* 8067F3A0  3C 60 80 68 */	lis r3, check_index@ha /* 0x80682664@ha */
/* 8067F3A4  38 63 26 64 */	addi r3, r3, check_index@l /* 0x80682664@l */
/* 8067F3A8  7C 03 D9 AE */	stbx r0, r3, r27
/* 8067F3AC  48 00 00 14 */	b lbl_8067F3C0
lbl_8067F3B0:
/* 8067F3B0  38 00 00 00 */	li r0, 0
/* 8067F3B4  3C 60 80 68 */	lis r3, check_index@ha /* 0x80682664@ha */
/* 8067F3B8  38 63 26 64 */	addi r3, r3, check_index@l /* 0x80682664@l */
/* 8067F3BC  7C 03 D9 AE */	stbx r0, r3, r27
lbl_8067F3C0:
/* 8067F3C0  3B 7B 00 01 */	addi r27, r27, 1
/* 8067F3C4  3B 9C 00 10 */	addi r28, r28, 0x10
lbl_8067F3C8:
/* 8067F3C8  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8067F3CC  A0 03 00 00 */	lhz r0, 0(r3)
/* 8067F3D0  7C 1B 00 00 */	cmpw r27, r0
/* 8067F3D4  41 80 FF 84 */	blt lbl_8067F358
/* 8067F3D8  C0 DF 00 04 */	lfs f6, 4(r31)
/* 8067F3DC  38 C0 00 00 */	li r6, 0
/* 8067F3E0  38 E0 00 00 */	li r7, 0
/* 8067F3E4  3C 60 80 68 */	lis r3, check_index@ha /* 0x80682664@ha */
/* 8067F3E8  38 A3 26 64 */	addi r5, r3, check_index@l /* 0x80682664@l */
/* 8067F3EC  C0 1F 00 48 */	lfs f0, 0x48(r31)
lbl_8067F3F0:
/* 8067F3F0  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8067F3F4  80 83 00 08 */	lwz r4, 8(r3)
/* 8067F3F8  39 00 00 00 */	li r8, 0
/* 8067F3FC  A0 03 00 00 */	lhz r0, 0(r3)
/* 8067F400  7C A3 2B 78 */	mr r3, r5
/* 8067F404  7C 09 03 A6 */	mtctr r0
/* 8067F408  2C 00 00 00 */	cmpwi r0, 0
/* 8067F40C  40 81 00 BC */	ble lbl_8067F4C8
lbl_8067F410:
/* 8067F410  88 03 00 00 */	lbz r0, 0(r3)
/* 8067F414  28 00 00 00 */	cmplwi r0, 0
/* 8067F418  41 82 00 A0 */	beq lbl_8067F4B8
/* 8067F41C  C0 5E 04 D0 */	lfs f2, 0x4d0(r30)
/* 8067F420  C0 24 00 04 */	lfs f1, 4(r4)
/* 8067F424  EC 82 08 28 */	fsubs f4, f2, f1
/* 8067F428  C0 5E 04 D4 */	lfs f2, 0x4d4(r30)
/* 8067F42C  C0 24 00 08 */	lfs f1, 8(r4)
/* 8067F430  EC A2 08 28 */	fsubs f5, f2, f1
/* 8067F434  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8067F438  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8067F43C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8067F440  EC 61 00 72 */	fmuls f3, f1, f1
/* 8067F444  EC 44 01 32 */	fmuls f2, f4, f4
/* 8067F448  EC 25 01 72 */	fmuls f1, f5, f5
/* 8067F44C  EC 22 08 2A */	fadds f1, f2, f1
/* 8067F450  EC 43 08 2A */	fadds f2, f3, f1
/* 8067F454  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8067F458  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8067F45C  40 81 00 0C */	ble lbl_8067F468
/* 8067F460  FC 20 10 34 */	frsqrte f1, f2
/* 8067F464  EC 41 00 B2 */	fmuls f2, f1, f2
lbl_8067F468:
/* 8067F468  FC 02 30 40 */	fcmpo cr0, f2, f6
/* 8067F46C  40 80 00 4C */	bge lbl_8067F4B8
/* 8067F470  88 1E 05 BE */	lbz r0, 0x5be(r30)
/* 8067F474  7C 00 40 50 */	subf r0, r0, r8
/* 8067F478  98 1E 05 BD */	stb r0, 0x5bd(r30)
/* 8067F47C  88 DE 05 BD */	lbz r6, 0x5bd(r30)
/* 8067F480  7C C4 07 74 */	extsb r4, r6
/* 8067F484  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 8067F488  A0 63 00 00 */	lhz r3, 0(r3)
/* 8067F48C  7C 60 07 74 */	extsb r0, r3
/* 8067F490  7C 04 00 00 */	cmpw r4, r0
/* 8067F494  41 80 00 0C */	blt lbl_8067F4A0
/* 8067F498  98 7E 05 BD */	stb r3, 0x5bd(r30)
/* 8067F49C  48 00 00 14 */	b lbl_8067F4B0
lbl_8067F4A0:
/* 8067F4A0  7C C0 07 75 */	extsb. r0, r6
/* 8067F4A4  40 80 00 0C */	bge lbl_8067F4B0
/* 8067F4A8  38 00 00 00 */	li r0, 0
/* 8067F4AC  98 1E 05 BD */	stb r0, 0x5bd(r30)
lbl_8067F4B0:
/* 8067F4B0  38 C0 00 01 */	li r6, 1
/* 8067F4B4  48 00 00 14 */	b lbl_8067F4C8
lbl_8067F4B8:
/* 8067F4B8  39 08 00 01 */	addi r8, r8, 1
/* 8067F4BC  38 63 00 01 */	addi r3, r3, 1
/* 8067F4C0  38 84 00 10 */	addi r4, r4, 0x10
/* 8067F4C4  42 00 FF 4C */	bdnz lbl_8067F410
lbl_8067F4C8:
/* 8067F4C8  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 8067F4CC  40 82 00 14 */	bne lbl_8067F4E0
/* 8067F4D0  EC C6 00 2A */	fadds f6, f6, f0
/* 8067F4D4  38 E7 00 01 */	addi r7, r7, 1
/* 8067F4D8  2C 07 00 64 */	cmpwi r7, 0x64
/* 8067F4DC  41 80 FF 14 */	blt lbl_8067F3F0
lbl_8067F4E0:
/* 8067F4E0  54 C0 06 3F */	clrlwi. r0, r6, 0x18
/* 8067F4E4  40 82 00 10 */	bne lbl_8067F4F4
/* 8067F4E8  38 00 00 00 */	li r0, 0
/* 8067F4EC  98 1E 05 BC */	stb r0, 0x5bc(r30)
/* 8067F4F0  48 00 00 24 */	b lbl_8067F514
lbl_8067F4F4:
/* 8067F4F4  88 7E 05 B7 */	lbz r3, 0x5b7(r30)
/* 8067F4F8  38 03 00 01 */	addi r0, r3, 1
/* 8067F4FC  98 1E 05 BC */	stb r0, 0x5bc(r30)
/* 8067F500  38 61 00 20 */	addi r3, r1, 0x20
/* 8067F504  38 80 FF FF */	li r4, -1
/* 8067F508  4B 9F 87 D5 */	bl __dt__11dBgS_LinChkFv
/* 8067F50C  38 60 00 01 */	li r3, 1
/* 8067F510  48 00 00 14 */	b lbl_8067F524
lbl_8067F514:
/* 8067F514  38 61 00 20 */	addi r3, r1, 0x20
/* 8067F518  38 80 FF FF */	li r4, -1
/* 8067F51C  4B 9F 87 C1 */	bl __dt__11dBgS_LinChkFv
lbl_8067F520:
/* 8067F520  38 60 00 00 */	li r3, 0
lbl_8067F524:
/* 8067F524  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 8067F528  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 8067F52C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8067F530  4B CE 2C F1 */	bl _restgpr_27
/* 8067F534  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8067F538  7C 08 03 A6 */	mtlr r0
/* 8067F53C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 8067F540  4E 80 00 20 */	blr 
