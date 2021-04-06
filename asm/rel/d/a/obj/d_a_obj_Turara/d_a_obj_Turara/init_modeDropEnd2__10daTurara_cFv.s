lbl_80B9E078:
/* 80B9E078  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B9E07C  7C 08 02 A6 */	mflr r0
/* 80B9E080  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B9E084  39 61 00 60 */	addi r11, r1, 0x60
/* 80B9E088  4B 7C 41 55 */	bl _savegpr_29
/* 80B9E08C  7C 7E 1B 78 */	mr r30, r3
/* 80B9E090  3C 60 80 BA */	lis r3, lit_3661@ha /* 0x80B9E8F4@ha */
/* 80B9E094  3B E3 E8 F4 */	addi r31, r3, lit_3661@l /* 0x80B9E8F4@l */
/* 80B9E098  80 1E 07 D4 */	lwz r0, 0x7d4(r30)
/* 80B9E09C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80B9E0A0  40 82 00 3C */	bne lbl_80B9E0DC
/* 80B9E0A4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80B9E0A8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80B9E0AC  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80B9E0B0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B9E0B4  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B9E0B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9E0BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9E0C0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80B9E0C4  3C 80 80 BA */	lis r4, l_HIO@ha /* 0x80B9EBA4@ha */
/* 80B9E0C8  38 84 EB A4 */	addi r4, r4, l_HIO@l /* 0x80B9EBA4@l */
/* 80B9E0CC  88 84 00 11 */	lbz r4, 0x11(r4)
/* 80B9E0D0  38 A0 00 0F */	li r5, 0xf
/* 80B9E0D4  38 C1 00 24 */	addi r6, r1, 0x24
/* 80B9E0D8  4B 4D 19 4D */	bl StartShock__12dVibration_cFii4cXyz
lbl_80B9E0DC:
/* 80B9E0DC  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80B9E0E0  28 04 00 00 */	cmplwi r4, 0
/* 80B9E0E4  41 82 00 14 */	beq lbl_80B9E0F8
/* 80B9E0E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9E0EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9E0F0  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80B9E0F4  4B 4D 61 5D */	bl Release__4cBgSFP9dBgW_Base
lbl_80B9E0F8:
/* 80B9E0F8  80 1E 06 34 */	lwz r0, 0x634(r30)
/* 80B9E0FC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B9E100  90 1E 06 34 */	stw r0, 0x634(r30)
/* 80B9E104  80 1E 06 08 */	lwz r0, 0x608(r30)
/* 80B9E108  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B9E10C  90 1E 06 08 */	stw r0, 0x608(r30)
/* 80B9E110  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B9E114  7C 03 07 74 */	extsb r3, r0
/* 80B9E118  4B 48 EF 55 */	bl dComIfGp_getReverb__Fi
/* 80B9E11C  7C 67 1B 78 */	mr r7, r3
/* 80B9E120  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802AD@ha */
/* 80B9E124  38 03 02 AD */	addi r0, r3, 0x02AD /* 0x000802AD@l */
/* 80B9E128  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B9E12C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B9E130  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B9E134  80 63 00 00 */	lwz r3, 0(r3)
/* 80B9E138  38 81 00 20 */	addi r4, r1, 0x20
/* 80B9E13C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80B9E140  38 C0 00 00 */	li r6, 0
/* 80B9E144  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B9E148  FC 40 08 90 */	fmr f2, f1
/* 80B9E14C  C0 7F 00 70 */	lfs f3, 0x70(r31)
/* 80B9E150  FC 80 18 90 */	fmr f4, f3
/* 80B9E154  39 00 00 00 */	li r8, 0
/* 80B9E158  4B 70 D8 2D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80B9E15C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B9E160  C0 5F 00 74 */	lfs f2, 0x74(r31)
/* 80B9E164  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B9E168  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80B9E16C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B9E170  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B9E174  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80B9E178  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80B9E17C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B9E180  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B9E184  EC 01 10 2A */	fadds f0, f1, f2
/* 80B9E188  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B9E18C  38 60 01 E0 */	li r3, 0x1e0
/* 80B9E190  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B9E194  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 80B9E198  60 04 00 03 */	ori r4, r0, 3
/* 80B9E19C  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80B9E1A0  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B9E1A4  7C 06 07 74 */	extsb r6, r0
/* 80B9E1A8  38 E0 00 00 */	li r7, 0
/* 80B9E1AC  39 00 00 00 */	li r8, 0
/* 80B9E1B0  39 20 FF FF */	li r9, -1
/* 80B9E1B4  4B 47 BB E5 */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 80B9E1B8  90 7E 09 88 */	stw r3, 0x988(r30)
/* 80B9E1BC  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80B9E1C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B9E1C4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B9E1C8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B9E1CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9E1D0  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9E1D4  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B9E1D8  38 80 00 00 */	li r4, 0
/* 80B9E1DC  90 81 00 08 */	stw r4, 8(r1)
/* 80B9E1E0  38 00 FF FF */	li r0, -1
/* 80B9E1E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9E1E8  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B9E1EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B9E1F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B9E1F4  38 80 00 00 */	li r4, 0
/* 80B9E1F8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A8F@ha */
/* 80B9E1FC  38 A5 8A 8F */	addi r5, r5, 0x8A8F /* 0x00008A8F@l */
/* 80B9E200  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80B9E204  38 E0 00 00 */	li r7, 0
/* 80B9E208  39 00 00 00 */	li r8, 0
/* 80B9E20C  39 21 00 30 */	addi r9, r1, 0x30
/* 80B9E210  39 40 00 FF */	li r10, 0xff
/* 80B9E214  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B9E218  4B 4A E8 79 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B9E21C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B9E220  38 80 00 00 */	li r4, 0
/* 80B9E224  90 81 00 08 */	stw r4, 8(r1)
/* 80B9E228  38 00 FF FF */	li r0, -1
/* 80B9E22C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9E230  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B9E234  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B9E238  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B9E23C  38 80 00 00 */	li r4, 0
/* 80B9E240  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A90@ha */
/* 80B9E244  38 A5 8A 90 */	addi r5, r5, 0x8A90 /* 0x00008A90@l */
/* 80B9E248  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80B9E24C  38 E0 00 00 */	li r7, 0
/* 80B9E250  39 00 00 00 */	li r8, 0
/* 80B9E254  39 21 00 30 */	addi r9, r1, 0x30
/* 80B9E258  39 40 00 FF */	li r10, 0xff
/* 80B9E25C  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B9E260  4B 4A E8 31 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B9E264  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B9E268  38 80 00 00 */	li r4, 0
/* 80B9E26C  90 81 00 08 */	stw r4, 8(r1)
/* 80B9E270  38 00 FF FF */	li r0, -1
/* 80B9E274  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9E278  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B9E27C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B9E280  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B9E284  38 80 00 00 */	li r4, 0
/* 80B9E288  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A91@ha */
/* 80B9E28C  38 A5 8A 91 */	addi r5, r5, 0x8A91 /* 0x00008A91@l */
/* 80B9E290  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80B9E294  38 E0 00 00 */	li r7, 0
/* 80B9E298  39 00 00 00 */	li r8, 0
/* 80B9E29C  39 21 00 30 */	addi r9, r1, 0x30
/* 80B9E2A0  39 40 00 FF */	li r10, 0xff
/* 80B9E2A4  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B9E2A8  4B 4A E7 E9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B9E2AC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 80B9E2B0  38 80 00 00 */	li r4, 0
/* 80B9E2B4  90 81 00 08 */	stw r4, 8(r1)
/* 80B9E2B8  38 00 FF FF */	li r0, -1
/* 80B9E2BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B9E2C0  90 81 00 10 */	stw r4, 0x10(r1)
/* 80B9E2C4  90 81 00 14 */	stw r4, 0x14(r1)
/* 80B9E2C8  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B9E2CC  38 80 00 00 */	li r4, 0
/* 80B9E2D0  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008A92@ha */
/* 80B9E2D4  38 A5 8A 92 */	addi r5, r5, 0x8A92 /* 0x00008A92@l */
/* 80B9E2D8  38 C1 00 3C */	addi r6, r1, 0x3c
/* 80B9E2DC  38 E0 00 00 */	li r7, 0
/* 80B9E2E0  39 00 00 00 */	li r8, 0
/* 80B9E2E4  39 21 00 30 */	addi r9, r1, 0x30
/* 80B9E2E8  39 40 00 FF */	li r10, 0xff
/* 80B9E2EC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80B9E2F0  4B 4A E7 A1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80B9E2F4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B9E2F8  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 80B9E2FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B9E300  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B9E304  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80B9E308  7C 05 07 74 */	extsb r5, r0
/* 80B9E30C  4B 49 6E F5 */	bl onSwitch__10dSv_info_cFii
/* 80B9E310  38 00 00 00 */	li r0, 0
/* 80B9E314  98 1E 09 94 */	stb r0, 0x994(r30)
/* 80B9E318  38 00 00 04 */	li r0, 4
/* 80B9E31C  98 1E 05 C8 */	stb r0, 0x5c8(r30)
/* 80B9E320  39 61 00 60 */	addi r11, r1, 0x60
/* 80B9E324  4B 7C 3F 05 */	bl _restgpr_29
/* 80B9E328  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B9E32C  7C 08 03 A6 */	mtlr r0
/* 80B9E330  38 21 00 60 */	addi r1, r1, 0x60
/* 80B9E334  4E 80 00 20 */	blr 
