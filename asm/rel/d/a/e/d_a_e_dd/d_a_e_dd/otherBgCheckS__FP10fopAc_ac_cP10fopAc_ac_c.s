lbl_806A264C:
/* 806A264C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806A2650  7C 08 02 A6 */	mflr r0
/* 806A2654  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806A2658  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 806A265C  93 C1 00 98 */	stw r30, 0x98(r1)
/* 806A2660  7C 7E 1B 78 */	mr r30, r3
/* 806A2664  7C 9F 23 78 */	mr r31, r4
/* 806A2668  38 61 00 20 */	addi r3, r1, 0x20
/* 806A266C  4B 9D 55 FD */	bl __ct__11dBgS_LinChkFv
/* 806A2670  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 806A2674  D0 01 00 08 */	stfs f0, 8(r1)
/* 806A2678  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806A267C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806A2680  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 806A2684  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806A2688  3C 60 80 6A */	lis r3, lit_3903@ha /* 0x806A71C4@ha */
/* 806A268C  C0 03 71 C4 */	lfs f0, lit_3903@l(r3)  /* 0x806A71C4@l */
/* 806A2690  EC 01 00 2A */	fadds f0, f1, f0
/* 806A2694  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806A2698  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806A269C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806A26A0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806A26A4  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806A26A8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806A26AC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 806A26B0  3C 60 80 6A */	lis r3, lit_4029@ha /* 0x806A720C@ha */
/* 806A26B4  C0 03 72 0C */	lfs f0, lit_4029@l(r3)  /* 0x806A720C@l */
/* 806A26B8  EC 01 00 2A */	fadds f0, f1, f0
/* 806A26BC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 806A26C0  38 61 00 20 */	addi r3, r1, 0x20
/* 806A26C4  38 81 00 14 */	addi r4, r1, 0x14
/* 806A26C8  38 A1 00 08 */	addi r5, r1, 8
/* 806A26CC  7F C6 F3 78 */	mr r6, r30
/* 806A26D0  4B 9D 56 95 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806A26D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806A26D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806A26DC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806A26E0  38 81 00 20 */	addi r4, r1, 0x20
/* 806A26E4  4B 9D 1C D1 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 806A26E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806A26EC  41 82 00 18 */	beq lbl_806A2704
/* 806A26F0  38 61 00 20 */	addi r3, r1, 0x20
/* 806A26F4  38 80 FF FF */	li r4, -1
/* 806A26F8  4B 9D 55 E5 */	bl __dt__11dBgS_LinChkFv
/* 806A26FC  38 60 00 01 */	li r3, 1
/* 806A2700  48 00 00 14 */	b lbl_806A2714
lbl_806A2704:
/* 806A2704  38 61 00 20 */	addi r3, r1, 0x20
/* 806A2708  38 80 FF FF */	li r4, -1
/* 806A270C  4B 9D 55 D1 */	bl __dt__11dBgS_LinChkFv
/* 806A2710  38 60 00 00 */	li r3, 0
lbl_806A2714:
/* 806A2714  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 806A2718  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 806A271C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806A2720  7C 08 03 A6 */	mtlr r0
/* 806A2724  38 21 00 A0 */	addi r1, r1, 0xa0
/* 806A2728  4E 80 00 20 */	blr 
