lbl_80C1A490:
/* 80C1A490  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80C1A494  7C 08 02 A6 */	mflr r0
/* 80C1A498  90 01 00 54 */	stw r0, 0x54(r1)
/* 80C1A49C  39 61 00 50 */	addi r11, r1, 0x50
/* 80C1A4A0  4B 74 7D 3D */	bl _savegpr_29
/* 80C1A4A4  7C 7E 1B 78 */	mr r30, r3
/* 80C1A4A8  3C 60 80 C2 */	lis r3, lit_3665@ha /* 0x80C1B600@ha */
/* 80C1A4AC  3B E3 B6 00 */	addi r31, r3, lit_3665@l /* 0x80C1B600@l */
/* 80C1A4B0  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80C1A4B4  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C1A4B8  C0 5F 00 18 */	lfs f2, 0x18(r31)
/* 80C1A4BC  4B 65 55 C5 */	bl cLib_addCalc0__FPfff
/* 80C1A4C0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80C1A4C4  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 80C1A4C8  7C 65 1B 78 */	mr r5, r3
/* 80C1A4CC  4B 72 CB C5 */	bl PSVECAdd
/* 80C1A4D0  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 80C1A4D4  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 80C1A4D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C1A4DC  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80C1A4E0  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80C1A4E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C1A4E8  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80C1A4EC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C1A4F0  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C1A4F4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C1A4F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C1A4FC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C1A500  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C1A504  C0 1E 06 80 */	lfs f0, 0x680(r30)
/* 80C1A508  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C1A50C  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80C1A510  C0 3E 06 98 */	lfs f1, 0x698(r30)
/* 80C1A514  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80C1A518  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C1A51C  41 82 00 08 */	beq lbl_80C1A524
/* 80C1A520  C0 5F 00 BC */	lfs f2, 0xbc(r31)
lbl_80C1A524:
/* 80C1A524  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80C1A528  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C1A52C  EC 21 00 2A */	fadds f1, f1, f0
/* 80C1A530  C0 1E 06 80 */	lfs f0, 0x680(r30)
/* 80C1A534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1A538  40 81 00 14 */	ble lbl_80C1A54C
/* 80C1A53C  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80C1A540  38 81 00 08 */	addi r4, r1, 8
/* 80C1A544  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C1A548  4B 40 2B C5 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
lbl_80C1A54C:
/* 80C1A54C  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 80C1A550  1C 00 03 84 */	mulli r0, r0, 0x384
/* 80C1A554  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C1A558  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C1A55C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C1A560  7C 63 04 2E */	lfsx f3, r3, r0
/* 80C1A564  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 80C1A568  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 80C1A56C  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80C1A570  EC 41 00 28 */	fsubs f2, f1, f0
/* 80C1A574  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80C1A578  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 80C1A57C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C1A580  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80C1A584  EC 22 00 2A */	fadds f1, f2, f0
/* 80C1A588  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80C1A58C  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80C1A590  4B 65 54 AD */	bl cLib_addCalc2__FPffff
/* 80C1A594  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 80C1A598  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80C1A59C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C1A5A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C1A5A4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C1A5A8  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C1A5AC  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 80C1A5B0  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C1A5B4  FC 00 00 1E */	fctiwz f0, f0
/* 80C1A5B8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80C1A5BC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80C1A5C0  B0 1E 06 76 */	sth r0, 0x676(r30)
/* 80C1A5C4  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 80C1A5C8  1C 00 04 4C */	mulli r0, r0, 0x44c
/* 80C1A5CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C1A5D0  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C1A5D4  C0 1E 06 94 */	lfs f0, 0x694(r30)
/* 80C1A5D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C1A5DC  FC 00 00 1E */	fctiwz f0, f0
/* 80C1A5E0  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80C1A5E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C1A5E8  B0 1E 06 7A */	sth r0, 0x67a(r30)
/* 80C1A5EC  38 7E 06 94 */	addi r3, r30, 0x694
/* 80C1A5F0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80C1A5F4  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80C1A5F8  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C1A5FC  4B 65 54 41 */	bl cLib_addCalc2__FPffff
/* 80C1A600  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 80C1A604  1C 00 0F A0 */	mulli r0, r0, 0xfa0
/* 80C1A608  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C1A60C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C1A610  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C1A614  7C 24 04 2E */	lfsx f1, r4, r0
/* 80C1A618  A8 7E 06 76 */	lha r3, 0x676(r30)
/* 80C1A61C  C0 1E 06 98 */	lfs f0, 0x698(r30)
/* 80C1A620  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C1A624  FC 00 00 1E */	fctiwz f0, f0
/* 80C1A628  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80C1A62C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80C1A630  7C 03 02 14 */	add r0, r3, r0
/* 80C1A634  B0 1E 06 76 */	sth r0, 0x676(r30)
/* 80C1A638  A8 1E 06 50 */	lha r0, 0x650(r30)
/* 80C1A63C  1C 00 10 68 */	mulli r0, r0, 0x1068
/* 80C1A640  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C1A644  7C 24 04 2E */	lfsx f1, r4, r0
/* 80C1A648  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 80C1A64C  C0 1E 06 98 */	lfs f0, 0x698(r30)
/* 80C1A650  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C1A654  FC 00 00 1E */	fctiwz f0, f0
/* 80C1A658  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80C1A65C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80C1A660  7C 03 02 14 */	add r0, r3, r0
/* 80C1A664  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80C1A668  38 7E 06 98 */	addi r3, r30, 0x698
/* 80C1A66C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80C1A670  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80C1A674  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 80C1A678  4B 65 53 C5 */	bl cLib_addCalc2__FPffff
/* 80C1A67C  A8 7E 06 78 */	lha r3, 0x678(r30)
/* 80C1A680  A8 1E 06 90 */	lha r0, 0x690(r30)
/* 80C1A684  7C 03 02 14 */	add r0, r3, r0
/* 80C1A688  B0 1E 06 78 */	sth r0, 0x678(r30)
/* 80C1A68C  7F C3 F3 78 */	mr r3, r30
/* 80C1A690  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C1A694  3B A4 61 C0 */	addi r29, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C1A698  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80C1A69C  4B 40 01 45 */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C1A6A0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80C1A6A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1A6A8  40 80 00 24 */	bge lbl_80C1A6CC
/* 80C1A6AC  7F C3 F3 78 */	mr r3, r30
/* 80C1A6B0  80 9D 5D AC */	lwz r4, 0x5dac(r29)
/* 80C1A6B4  4B 40 00 5D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C1A6B8  7C 64 1B 78 */	mr r4, r3
/* 80C1A6BC  38 7E 06 78 */	addi r3, r30, 0x678
/* 80C1A6C0  38 A0 00 20 */	li r5, 0x20
/* 80C1A6C4  38 C0 00 80 */	li r6, 0x80
/* 80C1A6C8  4B 65 5F 41 */	bl cLib_addCalcAngleS2__FPssss
lbl_80C1A6CC:
/* 80C1A6CC  38 7E 09 0C */	addi r3, r30, 0x90c
/* 80C1A6D0  4B 46 9F 89 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 80C1A6D4  28 03 00 00 */	cmplwi r3, 0
/* 80C1A6D8  41 82 00 58 */	beq lbl_80C1A730
/* 80C1A6DC  37 BE 08 D0 */	addic. r29, r30, 0x8d0
/* 80C1A6E0  41 82 00 50 */	beq lbl_80C1A730
/* 80C1A6E4  38 7E 04 F8 */	addi r3, r30, 0x4f8
/* 80C1A6E8  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C1A6EC  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80C1A6F0  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C1A6F4  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80C1A6F8  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80C1A6FC  4B 65 53 41 */	bl cLib_addCalc2__FPffff
/* 80C1A700  38 7E 05 00 */	addi r3, r30, 0x500
/* 80C1A704  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80C1A708  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80C1A70C  EC 21 00 32 */	fmuls f1, f1, f0
/* 80C1A710  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80C1A714  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80C1A718  4B 65 53 25 */	bl cLib_addCalc2__FPffff
/* 80C1A71C  38 7E 06 94 */	addi r3, r30, 0x694
/* 80C1A720  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80C1A724  C0 5F 00 BC */	lfs f2, 0xbc(r31)
/* 80C1A728  C0 7F 00 CC */	lfs f3, 0xcc(r31)
/* 80C1A72C  4B 65 53 11 */	bl cLib_addCalc2__FPffff
lbl_80C1A730:
/* 80C1A730  39 61 00 50 */	addi r11, r1, 0x50
/* 80C1A734  4B 74 7A F5 */	bl _restgpr_29
/* 80C1A738  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C1A73C  7C 08 03 A6 */	mtlr r0
/* 80C1A740  38 21 00 50 */	addi r1, r1, 0x50
/* 80C1A744  4E 80 00 20 */	blr 
