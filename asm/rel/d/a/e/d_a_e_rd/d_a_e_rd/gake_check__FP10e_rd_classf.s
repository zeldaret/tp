lbl_8050C12C:
/* 8050C12C  94 21 FE C0 */	stwu r1, -0x140(r1)
/* 8050C130  7C 08 02 A6 */	mflr r0
/* 8050C134  90 01 01 44 */	stw r0, 0x144(r1)
/* 8050C138  DB E1 01 30 */	stfd f31, 0x130(r1)
/* 8050C13C  F3 E1 01 38 */	psq_st f31, 312(r1), 0, 0 /* qr0 */
/* 8050C140  DB C1 01 20 */	stfd f30, 0x120(r1)
/* 8050C144  F3 C1 01 28 */	psq_st f30, 296(r1), 0, 0 /* qr0 */
/* 8050C148  DB A1 01 10 */	stfd f29, 0x110(r1)
/* 8050C14C  F3 A1 01 18 */	psq_st f29, 280(r1), 0, 0 /* qr0 */
/* 8050C150  DB 81 01 00 */	stfd f28, 0x100(r1)
/* 8050C154  F3 81 01 08 */	psq_st f28, 264(r1), 0, 0 /* qr0 */
/* 8050C158  39 61 01 00 */	addi r11, r1, 0x100
/* 8050C15C  4B E5 60 75 */	bl _savegpr_26
/* 8050C160  FF 80 08 90 */	fmr f28, f1
/* 8050C164  3C 80 80 52 */	lis r4, lit_4208@ha /* 0x80518584@ha */
/* 8050C168  3B C4 85 84 */	addi r30, r4, lit_4208@l /* 0x80518584@l */
/* 8050C16C  7C 7C 1B 78 */	mr r28, r3
/* 8050C170  38 61 00 90 */	addi r3, r1, 0x90
/* 8050C174  4B B6 B4 09 */	bl __ct__11dBgS_GndChkFv
/* 8050C178  38 61 00 20 */	addi r3, r1, 0x20
/* 8050C17C  4B B6 BA ED */	bl __ct__11dBgS_LinChkFv
/* 8050C180  AB 7C 04 E6 */	lha r27, 0x4e6(r28)
/* 8050C184  3B 40 00 00 */	li r26, 0
/* 8050C188  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8050C18C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8050C190  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 8050C194  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8050C198  3B E3 07 68 */	addi r31, r3, calc_mtx@l /* 0x80450768@l */
/* 8050C19C  C3 BE 00 04 */	lfs f29, 4(r30)
/* 8050C1A0  C3 DE 00 00 */	lfs f30, 0(r30)
/* 8050C1A4  C3 FE 00 3C */	lfs f31, 0x3c(r30)
lbl_8050C1A8:
/* 8050C1A8  80 7F 00 00 */	lwz r3, 0(r31)
/* 8050C1AC  7F 64 DB 78 */	mr r4, r27
/* 8050C1B0  4B B0 02 2D */	bl mDoMtx_YrotS__FPA4_fs
/* 8050C1B4  D3 A1 00 14 */	stfs f29, 0x14(r1)
/* 8050C1B8  D3 C1 00 18 */	stfs f30, 0x18(r1)
/* 8050C1BC  D3 81 00 1C */	stfs f28, 0x1c(r1)
/* 8050C1C0  38 61 00 14 */	addi r3, r1, 0x14
/* 8050C1C4  38 81 00 08 */	addi r4, r1, 8
/* 8050C1C8  4B D6 4D 25 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8050C1CC  38 61 00 08 */	addi r3, r1, 8
/* 8050C1D0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 8050C1D4  7C 65 1B 78 */	mr r5, r3
/* 8050C1D8  4B E3 AE B9 */	bl PSVECAdd
/* 8050C1DC  38 61 00 90 */	addi r3, r1, 0x90
/* 8050C1E0  38 81 00 08 */	addi r4, r1, 8
/* 8050C1E4  4B D5 BB 45 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8050C1E8  7F A3 EB 78 */	mr r3, r29
/* 8050C1EC  38 81 00 90 */	addi r4, r1, 0x90
/* 8050C1F0  4B B6 82 B1 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8050C1F4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8050C1F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8050C1FC  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8050C200  40 81 00 70 */	ble lbl_8050C270
/* 8050C204  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 8050C208  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8050C20C  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 8050C210  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8050C214  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 8050C218  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8050C21C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8050C220  EC 01 00 2A */	fadds f0, f1, f0
/* 8050C224  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8050C228  38 61 00 20 */	addi r3, r1, 0x20
/* 8050C22C  38 81 00 14 */	addi r4, r1, 0x14
/* 8050C230  38 A1 00 08 */	addi r5, r1, 8
/* 8050C234  7F 86 E3 78 */	mr r6, r28
/* 8050C238  4B B6 BB 2D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8050C23C  7F A3 EB 78 */	mr r3, r29
/* 8050C240  38 81 00 20 */	addi r4, r1, 0x20
/* 8050C244  4B B6 81 71 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8050C248  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8050C24C  40 82 00 24 */	bne lbl_8050C270
/* 8050C250  38 61 00 20 */	addi r3, r1, 0x20
/* 8050C254  38 80 FF FF */	li r4, -1
/* 8050C258  4B B6 BA 85 */	bl __dt__11dBgS_LinChkFv
/* 8050C25C  38 61 00 90 */	addi r3, r1, 0x90
/* 8050C260  38 80 FF FF */	li r4, -1
/* 8050C264  4B B6 B3 8D */	bl __dt__11dBgS_GndChkFv
/* 8050C268  7F 63 DB 78 */	mr r3, r27
/* 8050C26C  48 00 00 34 */	b lbl_8050C2A0
lbl_8050C270:
/* 8050C270  3B 5A 00 01 */	addi r26, r26, 1
/* 8050C274  2C 1A 00 10 */	cmpwi r26, 0x10
/* 8050C278  3B 7B 10 00 */	addi r27, r27, 0x1000
/* 8050C27C  41 80 FF 2C */	blt lbl_8050C1A8
/* 8050C280  AB DC 04 E6 */	lha r30, 0x4e6(r28)
/* 8050C284  38 61 00 20 */	addi r3, r1, 0x20
/* 8050C288  38 80 FF FF */	li r4, -1
/* 8050C28C  4B B6 BA 51 */	bl __dt__11dBgS_LinChkFv
/* 8050C290  38 61 00 90 */	addi r3, r1, 0x90
/* 8050C294  38 80 FF FF */	li r4, -1
/* 8050C298  4B B6 B3 59 */	bl __dt__11dBgS_GndChkFv
/* 8050C29C  7F C3 F3 78 */	mr r3, r30
lbl_8050C2A0:
/* 8050C2A0  E3 E1 01 38 */	psq_l f31, 312(r1), 0, 0 /* qr0 */
/* 8050C2A4  CB E1 01 30 */	lfd f31, 0x130(r1)
/* 8050C2A8  E3 C1 01 28 */	psq_l f30, 296(r1), 0, 0 /* qr0 */
/* 8050C2AC  CB C1 01 20 */	lfd f30, 0x120(r1)
/* 8050C2B0  E3 A1 01 18 */	psq_l f29, 280(r1), 0, 0 /* qr0 */
/* 8050C2B4  CB A1 01 10 */	lfd f29, 0x110(r1)
/* 8050C2B8  E3 81 01 08 */	psq_l f28, 264(r1), 0, 0 /* qr0 */
/* 8050C2BC  CB 81 01 00 */	lfd f28, 0x100(r1)
/* 8050C2C0  39 61 01 00 */	addi r11, r1, 0x100
/* 8050C2C4  4B E5 5F 59 */	bl _restgpr_26
/* 8050C2C8  80 01 01 44 */	lwz r0, 0x144(r1)
/* 8050C2CC  7C 08 03 A6 */	mtlr r0
/* 8050C2D0  38 21 01 40 */	addi r1, r1, 0x140
/* 8050C2D4  4E 80 00 20 */	blr 
