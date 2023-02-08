lbl_80B0F1F8:
/* 80B0F1F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B0F1FC  7C 08 02 A6 */	mflr r0
/* 80B0F200  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B0F204  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80B0F208  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80B0F20C  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0F210  4B 85 2F C5 */	bl _savegpr_27
/* 80B0F214  7C 7D 1B 78 */	mr r29, r3
/* 80B0F218  7C 9B 23 78 */	mr r27, r4
/* 80B0F21C  3C 60 80 B1 */	lis r3, m__16daNpcTkc_Param_c@ha /* 0x80B108B4@ha */
/* 80B0F220  3B C3 08 B4 */	addi r30, r3, m__16daNpcTkc_Param_c@l /* 0x80B108B4@l */
/* 80B0F224  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0F228  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0F22C  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80B0F230  7F 83 E3 78 */	mr r3, r28
/* 80B0F234  3C A0 80 B1 */	lis r5, d_a_npc_tkc__stringBase0@ha /* 0x80B10A2C@ha */
/* 80B0F238  38 A5 0A 2C */	addi r5, r5, d_a_npc_tkc__stringBase0@l /* 0x80B10A2C@l */
/* 80B0F23C  38 A5 00 2E */	addi r5, r5, 0x2e
/* 80B0F240  38 C0 00 03 */	li r6, 3
/* 80B0F244  4B 53 8E A9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B0F248  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B0F24C  40 82 00 0C */	bne lbl_80B0F258
/* 80B0F250  38 60 00 00 */	li r3, 0
/* 80B0F254  48 00 03 60 */	b lbl_80B0F5B4
lbl_80B0F258:
/* 80B0F258  7F 83 E3 78 */	mr r3, r28
/* 80B0F25C  7F 64 DB 78 */	mr r4, r27
/* 80B0F260  4B 53 8A ED */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B0F264  2C 03 00 00 */	cmpwi r3, 0
/* 80B0F268  41 82 00 E8 */	beq lbl_80B0F350
/* 80B0F26C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80B0F270  2C 00 00 02 */	cmpwi r0, 2
/* 80B0F274  41 82 00 88 */	beq lbl_80B0F2FC
/* 80B0F278  40 80 00 D8 */	bge lbl_80B0F350
/* 80B0F27C  2C 00 00 00 */	cmpwi r0, 0
/* 80B0F280  41 82 00 10 */	beq lbl_80B0F290
/* 80B0F284  40 80 00 38 */	bge lbl_80B0F2BC
/* 80B0F288  48 00 00 C8 */	b lbl_80B0F350
/* 80B0F28C  48 00 00 C4 */	b lbl_80B0F350
lbl_80B0F290:
/* 80B0F290  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80B0F294  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80B0F298  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B0F29C  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80B0F2A0  38 00 00 00 */	li r0, 0
/* 80B0F2A4  B0 1D 0D 78 */	sth r0, 0xd78(r29)
/* 80B0F2A8  98 1D 0D 7B */	stb r0, 0xd7b(r29)
/* 80B0F2AC  80 1D 0C 14 */	lwz r0, 0xc14(r29)
/* 80B0F2B0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80B0F2B4  90 1D 0C 14 */	stw r0, 0xc14(r29)
/* 80B0F2B8  48 00 00 98 */	b lbl_80B0F350
lbl_80B0F2BC:
/* 80B0F2BC  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80B0F2C0  D0 1D 0D 6C */	stfs f0, 0xd6c(r29)
/* 80B0F2C4  38 00 00 00 */	li r0, 0
/* 80B0F2C8  B0 1D 0D 70 */	sth r0, 0xd70(r29)
/* 80B0F2CC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060014@ha */
/* 80B0F2D0  38 03 00 14 */	addi r0, r3, 0x0014 /* 0x00060014@l */
/* 80B0F2D4  90 01 00 08 */	stw r0, 8(r1)
/* 80B0F2D8  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80B0F2DC  38 81 00 08 */	addi r4, r1, 8
/* 80B0F2E0  38 A0 00 00 */	li r5, 0
/* 80B0F2E4  38 C0 FF FF */	li r6, -1
/* 80B0F2E8  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80B0F2EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B0F2F0  7D 89 03 A6 */	mtctr r12
/* 80B0F2F4  4E 80 04 21 */	bctrl 
/* 80B0F2F8  48 00 00 58 */	b lbl_80B0F350
lbl_80B0F2FC:
/* 80B0F2FC  38 7E 00 00 */	addi r3, r30, 0
/* 80B0F300  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 80B0F304  D0 1D 0D 68 */	stfs f0, 0xd68(r29)
/* 80B0F308  38 00 00 FF */	li r0, 0xff
/* 80B0F30C  98 1D 0D 7B */	stb r0, 0xd7b(r29)
/* 80B0F310  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F314  B0 1D 04 64 */	sth r0, 0x464(r29)
/* 80B0F318  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F31C  B0 1D 04 66 */	sth r0, 0x466(r29)
/* 80B0F320  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F324  B0 1D 04 68 */	sth r0, 0x468(r29)
/* 80B0F328  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F32C  B0 1D 04 6A */	sth r0, 0x46a(r29)
/* 80B0F330  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F334  98 1D 04 6C */	stb r0, 0x46c(r29)
/* 80B0F338  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F33C  98 1D 04 6D */	stb r0, 0x46d(r29)
/* 80B0F340  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F344  98 1D 04 6E */	stb r0, 0x46e(r29)
/* 80B0F348  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F34C  98 1D 04 6F */	stb r0, 0x46f(r29)
lbl_80B0F350:
/* 80B0F350  80 1F 00 00 */	lwz r0, 0(r31)
/* 80B0F354  2C 00 00 02 */	cmpwi r0, 2
/* 80B0F358  41 82 01 A8 */	beq lbl_80B0F500
/* 80B0F35C  40 80 00 14 */	bge lbl_80B0F370
/* 80B0F360  2C 00 00 00 */	cmpwi r0, 0
/* 80B0F364  41 82 00 18 */	beq lbl_80B0F37C
/* 80B0F368  40 80 00 78 */	bge lbl_80B0F3E0
/* 80B0F36C  48 00 02 44 */	b lbl_80B0F5B0
lbl_80B0F370:
/* 80B0F370  2C 00 00 04 */	cmpwi r0, 4
/* 80B0F374  40 80 02 3C */	bge lbl_80B0F5B0
/* 80B0F378  48 00 02 30 */	b lbl_80B0F5A8
lbl_80B0F37C:
/* 80B0F37C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0F380  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0F384  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B0F388  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B0F38C  D0 1D 0D 44 */	stfs f0, 0xd44(r29)
/* 80B0F390  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B0F394  D0 1D 0D 48 */	stfs f0, 0xd48(r29)
/* 80B0F398  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B0F39C  D0 1D 0D 4C */	stfs f0, 0xd4c(r29)
/* 80B0F3A0  C0 3D 0D 48 */	lfs f1, 0xd48(r29)
/* 80B0F3A4  38 BE 00 00 */	addi r5, r30, 0
/* 80B0F3A8  C0 05 00 6C */	lfs f0, 0x6c(r5)
/* 80B0F3AC  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0F3B0  D0 1D 0D 48 */	stfs f0, 0xd48(r29)
/* 80B0F3B4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B0F3B8  38 9D 0D 44 */	addi r4, r29, 0xd44
/* 80B0F3BC  C0 25 00 7C */	lfs f1, 0x7c(r5)
/* 80B0F3C0  C0 45 00 80 */	lfs f2, 0x80(r5)
/* 80B0F3C4  C0 65 00 84 */	lfs f3, 0x84(r5)
/* 80B0F3C8  4B 76 06 F1 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B0F3CC  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80B0F3D0  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B0F3D4  40 82 01 DC */	bne lbl_80B0F5B0
/* 80B0F3D8  38 60 00 01 */	li r3, 1
/* 80B0F3DC  48 00 01 D8 */	b lbl_80B0F5B4
lbl_80B0F3E0:
/* 80B0F3E0  38 7D 0D 7B */	addi r3, r29, 0xd7b
/* 80B0F3E4  38 80 00 FF */	li r4, 0xff
/* 80B0F3E8  38 A0 00 02 */	li r5, 2
/* 80B0F3EC  4B 76 12 71 */	bl cLib_chaseUC__FPUcUcUc
/* 80B0F3F0  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F3F4  98 1D 04 6C */	stb r0, 0x46c(r29)
/* 80B0F3F8  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F3FC  98 1D 04 6D */	stb r0, 0x46d(r29)
/* 80B0F400  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F404  98 1D 04 6E */	stb r0, 0x46e(r29)
/* 80B0F408  88 1D 0D 7B */	lbz r0, 0xd7b(r29)
/* 80B0F40C  98 1D 04 6F */	stb r0, 0x46f(r29)
/* 80B0F410  38 7D 0D 6C */	addi r3, r29, 0xd6c
/* 80B0F414  38 9E 00 00 */	addi r4, r30, 0
/* 80B0F418  C0 24 00 70 */	lfs f1, 0x70(r4)
/* 80B0F41C  C0 5E 01 50 */	lfs f2, 0x150(r30)
/* 80B0F420  4B 76 13 21 */	bl cLib_chaseF__FPfff
/* 80B0F424  38 7D 0D 70 */	addi r3, r29, 0xd70
/* 80B0F428  38 9E 00 00 */	addi r4, r30, 0
/* 80B0F42C  A8 84 00 9E */	lha r4, 0x9e(r4)
/* 80B0F430  38 A0 01 5E */	li r5, 0x15e
/* 80B0F434  4B 76 12 9D */	bl cLib_chaseS__FPsss
/* 80B0F438  A8 1D 0D 78 */	lha r0, 0xd78(r29)
/* 80B0F43C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0F440  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B0F444  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B0F448  7C 03 04 2E */	lfsx f0, r3, r0
/* 80B0F44C  C0 3D 0D 44 */	lfs f1, 0xd44(r29)
/* 80B0F450  38 9E 00 00 */	addi r4, r30, 0
/* 80B0F454  C0 44 00 78 */	lfs f2, 0x78(r4)
/* 80B0F458  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B0F45C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0F460  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80B0F464  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80B0F468  C0 1D 0D 6C */	lfs f0, 0xd6c(r29)
/* 80B0F46C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B0F470  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80B0F474  A8 1D 0D 78 */	lha r0, 0xd78(r29)
/* 80B0F478  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0F47C  7C 63 02 14 */	add r3, r3, r0
/* 80B0F480  C0 03 00 04 */	lfs f0, 4(r3)
/* 80B0F484  C0 3D 0D 4C */	lfs f1, 0xd4c(r29)
/* 80B0F488  EC 02 00 32 */	fmuls f0, f2, f0
/* 80B0F48C  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0F490  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80B0F494  A8 7D 0D 78 */	lha r3, 0xd78(r29)
/* 80B0F498  A8 1D 0D 70 */	lha r0, 0xd70(r29)
/* 80B0F49C  7C 03 02 14 */	add r0, r3, r0
/* 80B0F4A0  B0 1D 0D 78 */	sth r0, 0xd78(r29)
/* 80B0F4A4  C0 3D 0D 48 */	lfs f1, 0xd48(r29)
/* 80B0F4A8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B0F4AC  EF E1 00 28 */	fsubs f31, f1, f0
/* 80B0F4B0  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 80B0F4B4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B0F4B8  4C 40 13 82 */	cror 2, 0, 2
/* 80B0F4BC  40 82 00 20 */	bne lbl_80B0F4DC
/* 80B0F4C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B0F4C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B0F4C8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B0F4CC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B0F4D0  81 8C 01 78 */	lwz r12, 0x178(r12)
/* 80B0F4D4  7D 89 03 A6 */	mtctr r12
/* 80B0F4D8  4E 80 04 21 */	bctrl 
lbl_80B0F4DC:
/* 80B0F4DC  38 7E 00 00 */	addi r3, r30, 0
/* 80B0F4E0  C0 23 00 6C */	lfs f1, 0x6c(r3)
/* 80B0F4E4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80B0F4E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B0F4EC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B0F4F0  4C 41 13 82 */	cror 2, 1, 2
/* 80B0F4F4  40 82 00 BC */	bne lbl_80B0F5B0
/* 80B0F4F8  38 60 00 01 */	li r3, 1
/* 80B0F4FC  48 00 00 B8 */	b lbl_80B0F5B4
lbl_80B0F500:
/* 80B0F500  38 7D 0D 68 */	addi r3, r29, 0xd68
/* 80B0F504  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80B0F508  C0 5E 01 64 */	lfs f2, 0x164(r30)
/* 80B0F50C  4B 76 12 35 */	bl cLib_chaseF__FPfff
/* 80B0F510  A8 1D 0D 78 */	lha r0, 0xd78(r29)
/* 80B0F514  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0F518  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B0F51C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B0F520  7C 43 04 2E */	lfsx f2, r3, r0
/* 80B0F524  C0 3D 0D 44 */	lfs f1, 0xd44(r29)
/* 80B0F528  C0 1D 0D 68 */	lfs f0, 0xd68(r29)
/* 80B0F52C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B0F530  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0F534  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80B0F538  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80B0F53C  38 9E 00 00 */	addi r4, r30, 0
/* 80B0F540  C0 04 00 74 */	lfs f0, 0x74(r4)
/* 80B0F544  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0F548  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80B0F54C  A8 1D 0D 78 */	lha r0, 0xd78(r29)
/* 80B0F550  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B0F554  7C 63 02 14 */	add r3, r3, r0
/* 80B0F558  C0 43 00 04 */	lfs f2, 4(r3)
/* 80B0F55C  C0 3D 0D 4C */	lfs f1, 0xd4c(r29)
/* 80B0F560  C0 1D 0D 68 */	lfs f0, 0xd68(r29)
/* 80B0F564  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80B0F568  EC 01 00 2A */	fadds f0, f1, f0
/* 80B0F56C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80B0F570  A8 7D 0D 78 */	lha r3, 0xd78(r29)
/* 80B0F574  A8 04 00 9E */	lha r0, 0x9e(r4)
/* 80B0F578  7C 03 02 14 */	add r0, r3, r0
/* 80B0F57C  B0 1D 0D 78 */	sth r0, 0xd78(r29)
/* 80B0F580  C0 3D 0D 48 */	lfs f1, 0xd48(r29)
/* 80B0F584  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B0F588  EC 21 00 28 */	fsubs f1, f1, f0
/* 80B0F58C  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 80B0F590  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B0F594  4C 40 13 82 */	cror 2, 0, 2
/* 80B0F598  40 82 00 18 */	bne lbl_80B0F5B0
/* 80B0F59C  7F A3 EB 78 */	mr r3, r29
/* 80B0F5A0  4B 50 A6 DD */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80B0F5A4  48 00 00 0C */	b lbl_80B0F5B0
lbl_80B0F5A8:
/* 80B0F5A8  38 60 00 01 */	li r3, 1
/* 80B0F5AC  48 00 00 08 */	b lbl_80B0F5B4
lbl_80B0F5B0:
/* 80B0F5B0  38 60 00 00 */	li r3, 0
lbl_80B0F5B4:
/* 80B0F5B4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80B0F5B8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80B0F5BC  39 61 00 30 */	addi r11, r1, 0x30
/* 80B0F5C0  4B 85 2C 61 */	bl _restgpr_27
/* 80B0F5C4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B0F5C8  7C 08 03 A6 */	mtlr r0
/* 80B0F5CC  38 21 00 40 */	addi r1, r1, 0x40
/* 80B0F5D0  4E 80 00 20 */	blr 
