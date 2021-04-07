lbl_8076F0E0:
/* 8076F0E0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8076F0E4  7C 08 02 A6 */	mflr r0
/* 8076F0E8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8076F0EC  39 61 00 30 */	addi r11, r1, 0x30
/* 8076F0F0  4B BF 30 ED */	bl _savegpr_29
/* 8076F0F4  7C 7D 1B 78 */	mr r29, r3
/* 8076F0F8  3C 80 80 78 */	lis r4, lit_4018@ha /* 0x80779DFC@ha */
/* 8076F0FC  3B E4 9D FC */	addi r31, r4, lit_4018@l /* 0x80779DFC@l */
/* 8076F100  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076F104  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076F108  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 8076F10C  80 83 05 CC */	lwz r4, 0x5cc(r3)
/* 8076F110  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 8076F114  FC 00 00 1E */	fctiwz f0, f0
/* 8076F118  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8076F11C  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 8076F120  A8 03 05 B4 */	lha r0, 0x5b4(r3)
/* 8076F124  28 00 00 07 */	cmplwi r0, 7
/* 8076F128  41 81 02 9C */	bgt lbl_8076F3C4
/* 8076F12C  3C 80 80 78 */	lis r4, lit_5517@ha /* 0x8077A1D8@ha */
/* 8076F130  38 84 A1 D8 */	addi r4, r4, lit_5517@l /* 0x8077A1D8@l */
/* 8076F134  54 00 10 3A */	slwi r0, r0, 2
/* 8076F138  7C 04 00 2E */	lwzx r0, r4, r0
/* 8076F13C  7C 09 03 A6 */	mtctr r0
/* 8076F140  4E 80 04 20 */	bctr 
lbl_8076F144:
/* 8076F144  38 80 00 4C */	li r4, 0x4c
/* 8076F148  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076F14C  38 A0 00 02 */	li r5, 2
/* 8076F150  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076F154  4B FF CD 2D */	bl anm_init__FP11e_rdy_classifUcf
/* 8076F158  38 00 00 01 */	li r0, 1
/* 8076F15C  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076F160  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8076F164  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8076F168  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8076F16C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8076F170  48 00 02 54 */	b lbl_8076F3C4
lbl_8076F174:
/* 8076F174  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8076F178  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 8076F17C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076F180  40 81 02 44 */	ble lbl_8076F3C4
/* 8076F184  38 00 00 14 */	li r0, 0x14
/* 8076F188  B0 1D 13 70 */	sth r0, 0x1370(r29)
/* 8076F18C  38 00 00 00 */	li r0, 0
/* 8076F190  B0 1D 13 72 */	sth r0, 0x1372(r29)
/* 8076F194  38 00 00 02 */	li r0, 2
/* 8076F198  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076F19C  48 00 02 28 */	b lbl_8076F3C4
lbl_8076F1A0:
/* 8076F1A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8076F1A4  D0 1D 13 C0 */	stfs f0, 0x13c0(r29)
/* 8076F1A8  48 00 02 1C */	b lbl_8076F3C4
lbl_8076F1AC:
/* 8076F1AC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8076F1B0  C0 3F 00 EC */	lfs f1, 0xec(r31)
/* 8076F1B4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076F1B8  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 8076F1BC  4B B0 08 81 */	bl cLib_addCalc2__FPffff
/* 8076F1C0  38 7D 04 D8 */	addi r3, r29, 0x4d8
/* 8076F1C4  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8076F1C8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076F1CC  C0 7F 00 7C */	lfs f3, 0x7c(r31)
/* 8076F1D0  4B B0 08 6D */	bl cLib_addCalc2__FPffff
/* 8076F1D4  48 00 01 F0 */	b lbl_8076F3C4
lbl_8076F1D8:
/* 8076F1D8  38 80 00 45 */	li r4, 0x45
/* 8076F1DC  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8076F1E0  38 A0 00 00 */	li r5, 0
/* 8076F1E4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076F1E8  4B FF CC 99 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076F1EC  80 7D 06 74 */	lwz r3, 0x674(r29)
/* 8076F1F0  38 80 00 08 */	li r4, 8
/* 8076F1F4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076F1F8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076F1FC  3C A5 00 02 */	addis r5, r5, 2
/* 8076F200  38 C0 00 80 */	li r6, 0x80
/* 8076F204  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8076F208  4B 8C D0 E5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8076F20C  7C 64 1B 78 */	mr r4, r3
/* 8076F210  80 7D 06 94 */	lwz r3, 0x694(r29)
/* 8076F214  38 A0 00 00 */	li r5, 0
/* 8076F218  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8076F21C  C0 5F 00 C8 */	lfs f2, 0xc8(r31)
/* 8076F220  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8076F224  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8076F228  4B 8A 1C 49 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8076F22C  38 00 00 05 */	li r0, 5
/* 8076F230  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076F234  48 00 01 90 */	b lbl_8076F3C4
lbl_8076F238:
/* 8076F238  2C 05 00 0A */	cmpwi r5, 0xa
/* 8076F23C  41 80 00 0C */	blt lbl_8076F248
/* 8076F240  38 00 00 01 */	li r0, 1
/* 8076F244  98 1D 0A 72 */	stb r0, 0xa72(r29)
lbl_8076F248:
/* 8076F248  2C 05 00 14 */	cmpwi r5, 0x14
/* 8076F24C  40 82 00 2C */	bne lbl_8076F278
/* 8076F250  3C 00 00 08 */	lis r0, 8
/* 8076F254  90 01 00 08 */	stw r0, 8(r1)
/* 8076F258  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 8076F25C  38 81 00 08 */	addi r4, r1, 8
/* 8076F260  38 A0 00 00 */	li r5, 0
/* 8076F264  38 C0 FF FF */	li r6, -1
/* 8076F268  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 8076F26C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8076F270  7D 89 03 A6 */	mtctr r12
/* 8076F274  4E 80 04 21 */	bctrl 
lbl_8076F278:
/* 8076F278  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 8076F27C  38 80 00 01 */	li r4, 1
/* 8076F280  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8076F284  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8076F288  40 82 00 18 */	bne lbl_8076F2A0
/* 8076F28C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8076F290  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8076F294  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8076F298  41 82 00 08 */	beq lbl_8076F2A0
/* 8076F29C  38 80 00 00 */	li r4, 0
lbl_8076F2A0:
/* 8076F2A0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8076F2A4  41 82 01 20 */	beq lbl_8076F3C4
/* 8076F2A8  7F A3 EB 78 */	mr r3, r29
/* 8076F2AC  38 80 00 46 */	li r4, 0x46
/* 8076F2B0  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 8076F2B4  38 A0 00 02 */	li r5, 2
/* 8076F2B8  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076F2BC  4B FF CB C5 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076F2C0  38 00 00 06 */	li r0, 6
/* 8076F2C4  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076F2C8  38 00 00 28 */	li r0, 0x28
/* 8076F2CC  B0 1D 0A 60 */	sth r0, 0xa60(r29)
/* 8076F2D0  48 00 00 F4 */	b lbl_8076F3C4
lbl_8076F2D4:
/* 8076F2D4  A8 1D 0A 60 */	lha r0, 0xa60(r29)
/* 8076F2D8  2C 00 00 00 */	cmpwi r0, 0
/* 8076F2DC  40 82 00 6C */	bne lbl_8076F348
/* 8076F2E0  88 1D 0A 74 */	lbz r0, 0xa74(r29)
/* 8076F2E4  7C 00 07 75 */	extsb. r0, r0
/* 8076F2E8  40 82 00 60 */	bne lbl_8076F348
/* 8076F2EC  38 80 00 44 */	li r4, 0x44
/* 8076F2F0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8076F2F4  38 A0 00 00 */	li r5, 0
/* 8076F2F8  FC 40 08 90 */	fmr f2, f1
/* 8076F2FC  4B FF CB 85 */	bl anm_init__FP11e_rdy_classifUcf
/* 8076F300  80 7D 06 74 */	lwz r3, 0x674(r29)
/* 8076F304  38 80 00 0B */	li r4, 0xb
/* 8076F308  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076F30C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076F310  3C A5 00 02 */	addis r5, r5, 2
/* 8076F314  38 C0 00 80 */	li r6, 0x80
/* 8076F318  38 A5 C2 F8 */	addi r5, r5, -15624
/* 8076F31C  4B 8C CF D1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 8076F320  7C 64 1B 78 */	mr r4, r3
/* 8076F324  80 7D 06 94 */	lwz r3, 0x694(r29)
/* 8076F328  38 A0 00 00 */	li r5, 0
/* 8076F32C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8076F330  FC 40 08 90 */	fmr f2, f1
/* 8076F334  C0 7F 00 04 */	lfs f3, 4(r31)
/* 8076F338  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 8076F33C  4B 8A 1B 35 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 8076F340  38 00 00 07 */	li r0, 7
/* 8076F344  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
lbl_8076F348:
/* 8076F348  38 00 00 01 */	li r0, 1
/* 8076F34C  98 1D 0A 72 */	stb r0, 0xa72(r29)
/* 8076F350  48 00 00 74 */	b lbl_8076F3C4
lbl_8076F354:
/* 8076F354  2C 05 00 03 */	cmpwi r5, 3
/* 8076F358  41 81 00 0C */	bgt lbl_8076F364
/* 8076F35C  38 00 00 01 */	li r0, 1
/* 8076F360  98 1D 0A 72 */	stb r0, 0xa72(r29)
lbl_8076F364:
/* 8076F364  2C 05 00 02 */	cmpwi r5, 2
/* 8076F368  40 82 00 0C */	bne lbl_8076F374
/* 8076F36C  38 00 00 01 */	li r0, 1
/* 8076F370  98 1D 0A 73 */	stb r0, 0xa73(r29)
lbl_8076F374:
/* 8076F374  80 7D 05 CC */	lwz r3, 0x5cc(r29)
/* 8076F378  38 80 00 01 */	li r4, 1
/* 8076F37C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8076F380  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8076F384  40 82 00 18 */	bne lbl_8076F39C
/* 8076F388  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8076F38C  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8076F390  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8076F394  41 82 00 08 */	beq lbl_8076F39C
/* 8076F398  38 80 00 00 */	li r4, 0
lbl_8076F39C:
/* 8076F39C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8076F3A0  41 82 00 24 */	beq lbl_8076F3C4
/* 8076F3A4  38 00 00 02 */	li r0, 2
/* 8076F3A8  B0 1D 05 B4 */	sth r0, 0x5b4(r29)
/* 8076F3AC  7F A3 EB 78 */	mr r3, r29
/* 8076F3B0  38 80 00 4C */	li r4, 0x4c
/* 8076F3B4  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8076F3B8  38 A0 00 02 */	li r5, 2
/* 8076F3BC  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8076F3C0  4B FF CA C1 */	bl anm_init__FP11e_rdy_classifUcf
lbl_8076F3C4:
/* 8076F3C4  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 8076F3C8  2C 00 00 06 */	cmpwi r0, 6
/* 8076F3CC  41 80 00 54 */	blt lbl_8076F420
/* 8076F3D0  38 00 00 0E */	li r0, 0xe
/* 8076F3D4  98 1D 0A 98 */	stb r0, 0xa98(r29)
/* 8076F3D8  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8076F3DC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8076F3E0  C0 1D 13 C0 */	lfs f0, 0x13c0(r29)
/* 8076F3E4  EC 21 00 2A */	fadds f1, f1, f0
/* 8076F3E8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 8076F3EC  D0 1D 0A A4 */	stfs f0, 0xaa4(r29)
/* 8076F3F0  D0 3D 0A A8 */	stfs f1, 0xaa8(r29)
/* 8076F3F4  D0 5D 0A AC */	stfs f2, 0xaac(r29)
/* 8076F3F8  38 7D 13 C0 */	addi r3, r29, 0x13c0
/* 8076F3FC  A8 1D 13 70 */	lha r0, 0x1370(r29)
/* 8076F400  2C 00 00 19 */	cmpwi r0, 0x19
/* 8076F404  40 81 00 0C */	ble lbl_8076F410
/* 8076F408  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 8076F40C  48 00 00 08 */	b lbl_8076F414
lbl_8076F410:
/* 8076F410  C0 3F 00 FC */	lfs f1, 0xfc(r31)
lbl_8076F414:
/* 8076F414  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 8076F418  C0 7F 00 A4 */	lfs f3, 0xa4(r31)
/* 8076F41C  4B B0 06 21 */	bl cLib_addCalc2__FPffff
lbl_8076F420:
/* 8076F420  39 61 00 30 */	addi r11, r1, 0x30
/* 8076F424  4B BF 2E 05 */	bl _restgpr_29
/* 8076F428  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8076F42C  7C 08 03 A6 */	mtlr r0
/* 8076F430  38 21 00 30 */	addi r1, r1, 0x30
/* 8076F434  4E 80 00 20 */	blr 
