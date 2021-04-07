lbl_80C30070:
/* 80C30070  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80C30074  7C 08 02 A6 */	mflr r0
/* 80C30078  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C3007C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C30080  4B 73 21 5D */	bl _savegpr_29
/* 80C30084  7C 7E 1B 78 */	mr r30, r3
/* 80C30088  3C 80 80 C3 */	lis r4, lit_3774@ha /* 0x80C3114C@ha */
/* 80C3008C  3B E4 11 4C */	addi r31, r4, lit_3774@l /* 0x80C3114C@l */
/* 80C30090  80 03 08 3C */	lwz r0, 0x83c(r3)
/* 80C30094  2C 00 00 00 */	cmpwi r0, 0
/* 80C30098  40 82 00 64 */	bne lbl_80C300FC
/* 80C3009C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C300A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C300A4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C300A8  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80C300AC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80C300B0  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80C300B4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C300B8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80C300BC  38 00 00 00 */	li r0, 0
/* 80C300C0  90 1E 06 EC */	stw r0, 0x6ec(r30)
/* 80C300C4  28 1E 00 00 */	cmplwi r30, 0
/* 80C300C8  41 82 00 0C */	beq lbl_80C300D4
/* 80C300CC  80 9E 00 04 */	lwz r4, 4(r30)
/* 80C300D0  48 00 00 08 */	b lbl_80C300D8
lbl_80C300D4:
/* 80C300D4  38 80 FF FF */	li r4, -1
lbl_80C300D8:
/* 80C300D8  38 A1 00 20 */	addi r5, r1, 0x20
/* 80C300DC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80C300E0  81 8C 01 38 */	lwz r12, 0x138(r12)
/* 80C300E4  7D 89 03 A6 */	mtctr r12
/* 80C300E8  4E 80 04 21 */	bctrl 
/* 80C300EC  80 7E 08 3C */	lwz r3, 0x83c(r30)
/* 80C300F0  38 03 00 01 */	addi r0, r3, 1
/* 80C300F4  90 1E 08 3C */	stw r0, 0x83c(r30)
/* 80C300F8  48 00 01 64 */	b lbl_80C3025C
lbl_80C300FC:
/* 80C300FC  2C 00 FF FF */	cmpwi r0, -1
/* 80C30100  40 82 00 2C */	bne lbl_80C3012C
/* 80C30104  3C 60 00 01 */	lis r3, 0x0001 /* 0x00014040@ha */
/* 80C30108  38 03 40 40 */	addi r0, r3, 0x4040 /* 0x00014040@l */
/* 80C3010C  90 1E 06 EC */	stw r0, 0x6ec(r30)
/* 80C30110  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C30114  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 80C30118  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C3011C  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 80C30120  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C30124  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 80C30128  48 00 01 34 */	b lbl_80C3025C
lbl_80C3012C:
/* 80C3012C  88 1E 05 6D */	lbz r0, 0x56d(r30)
/* 80C30130  28 00 00 00 */	cmplwi r0, 0
/* 80C30134  41 82 00 08 */	beq lbl_80C3013C
/* 80C30138  48 00 0D 1D */	bl kag_setParticle__10daObjKAG_cFv
lbl_80C3013C:
/* 80C3013C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80C30140  54 00 02 D7 */	rlwinm. r0, r0, 0, 0xb, 0xb
/* 80C30144  40 82 00 30 */	bne lbl_80C30174
/* 80C30148  3C 60 80 C3 */	lis r3, lit_4541@ha /* 0x80C31324@ha */
/* 80C3014C  38 83 13 24 */	addi r4, r3, lit_4541@l /* 0x80C31324@l */
/* 80C30150  80 64 00 00 */	lwz r3, 0(r4)
/* 80C30154  80 04 00 04 */	lwz r0, 4(r4)
/* 80C30158  90 61 00 08 */	stw r3, 8(r1)
/* 80C3015C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C30160  80 04 00 08 */	lwz r0, 8(r4)
/* 80C30164  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C30168  7F C3 F3 78 */	mr r3, r30
/* 80C3016C  38 81 00 08 */	addi r4, r1, 8
/* 80C30170  4B FF E2 C5 */	bl setAction__10daObjKAG_cFM10daObjKAG_cFPCvPv_v
lbl_80C30174:
/* 80C30174  38 61 00 40 */	addi r3, r1, 0x40
/* 80C30178  4B 44 7A F1 */	bl __ct__11dBgS_LinChkFv
/* 80C3017C  38 61 00 98 */	addi r3, r1, 0x98
/* 80C30180  4B 44 8C E9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80C30184  38 61 00 40 */	addi r3, r1, 0x40
/* 80C30188  38 9E 04 BC */	addi r4, r30, 0x4bc
/* 80C3018C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80C30190  38 C0 00 00 */	li r6, 0
/* 80C30194  4B 44 7B D1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C30198  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C3019C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C301A0  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80C301A4  7F A3 EB 78 */	mr r3, r29
/* 80C301A8  38 81 00 40 */	addi r4, r1, 0x40
/* 80C301AC  4B 44 42 09 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80C301B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C301B4  41 82 00 9C */	beq lbl_80C30250
/* 80C301B8  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C31404@ha */
/* 80C301BC  38 03 14 04 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C31404@l */
/* 80C301C0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80C301C4  7F A3 EB 78 */	mr r3, r29
/* 80C301C8  38 81 00 54 */	addi r4, r1, 0x54
/* 80C301CC  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80C301D0  4B 44 45 75 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 80C301D4  C0 41 00 70 */	lfs f2, 0x70(r1)
/* 80C301D8  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C301DC  C0 21 00 74 */	lfs f1, 0x74(r1)
/* 80C301E0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C301E4  C0 81 00 78 */	lfs f4, 0x78(r1)
/* 80C301E8  D0 81 00 1C */	stfs f4, 0x1c(r1)
/* 80C301EC  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 80C301F0  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C301F4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C301F8  EC 42 00 2A */	fadds f2, f2, f0
/* 80C301FC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 80C30200  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C30204  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C30208  EC 21 00 2A */	fadds f1, f1, f0
/* 80C3020C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C30210  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C30214  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C30218  EC 04 00 2A */	fadds f0, f4, f0
/* 80C3021C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C30220  D0 5E 04 BC */	stfs f2, 0x4bc(r30)
/* 80C30224  D0 3E 04 C0 */	stfs f1, 0x4c0(r30)
/* 80C30228  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80C3022C  C0 1E 04 BC */	lfs f0, 0x4bc(r30)
/* 80C30230  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80C30234  C0 1E 04 C0 */	lfs f0, 0x4c0(r30)
/* 80C30238  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C3023C  C0 1E 04 C4 */	lfs f0, 0x4c4(r30)
/* 80C30240  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80C30244  3C 60 80 C3 */	lis r3, __vt__8cM3dGPla@ha /* 0x80C31404@ha */
/* 80C30248  38 03 14 04 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x80C31404@l */
/* 80C3024C  90 01 00 3C */	stw r0, 0x3c(r1)
lbl_80C30250:
/* 80C30250  38 61 00 40 */	addi r3, r1, 0x40
/* 80C30254  38 80 FF FF */	li r4, -1
/* 80C30258  4B 44 7A 85 */	bl __dt__11dBgS_LinChkFv
lbl_80C3025C:
/* 80C3025C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C30260  4B 73 1F C9 */	bl _restgpr_29
/* 80C30264  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C30268  7C 08 03 A6 */	mtlr r0
/* 80C3026C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80C30270  4E 80 00 20 */	blr 
