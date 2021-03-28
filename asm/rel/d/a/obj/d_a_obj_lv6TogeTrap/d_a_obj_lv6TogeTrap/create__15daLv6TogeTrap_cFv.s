lbl_80C7A068:
/* 80C7A068  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80C7A06C  7C 08 02 A6 */	mflr r0
/* 80C7A070  90 01 00 44 */	stw r0, 0x44(r1)
/* 80C7A074  39 61 00 40 */	addi r11, r1, 0x40
/* 80C7A078  4B 6E 81 58 */	b _savegpr_26
/* 80C7A07C  7C 7B 1B 78 */	mr r27, r3
/* 80C7A080  3C 80 80 C8 */	lis r4, cNullVec__6Z2Calc@ha
/* 80C7A084  3B C4 C7 78 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80C7A088  3C 80 80 C8 */	lis r4, lit_3631@ha
/* 80C7A08C  3B E4 C6 18 */	addi r31, r4, lit_3631@l
/* 80C7A090  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C7A094  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C7A098  40 82 01 28 */	bne lbl_80C7A1C0
/* 80C7A09C  7F 60 DB 79 */	or. r0, r27, r27
/* 80C7A0A0  41 82 01 14 */	beq lbl_80C7A1B4
/* 80C7A0A4  7C 1D 03 78 */	mr r29, r0
/* 80C7A0A8  4B 3F E5 7C */	b __ct__16dBgS_MoveBgActorFv
/* 80C7A0AC  3C 60 80 C8 */	lis r3, __vt__15daLv6TogeTrap_c@ha
/* 80C7A0B0  38 03 CA 10 */	addi r0, r3, __vt__15daLv6TogeTrap_c@l
/* 80C7A0B4  90 1D 05 9C */	stw r0, 0x59c(r29)
/* 80C7A0B8  3C 60 80 C8 */	lis r3, __vt__8cM3dGLin@ha
/* 80C7A0BC  38 03 CA 04 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80C7A0C0  90 1D 05 F4 */	stw r0, 0x5f4(r29)
/* 80C7A0C4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80C7A0C8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80C7A0CC  90 1D 06 2C */	stw r0, 0x62c(r29)
/* 80C7A0D0  38 7D 06 30 */	addi r3, r29, 0x630
/* 80C7A0D4  4B 40 96 8C */	b __ct__10dCcD_GSttsFv
/* 80C7A0D8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80C7A0DC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80C7A0E0  90 7D 06 2C */	stw r3, 0x62c(r29)
/* 80C7A0E4  38 03 00 20 */	addi r0, r3, 0x20
/* 80C7A0E8  90 1D 06 30 */	stw r0, 0x630(r29)
/* 80C7A0EC  3B 5D 06 50 */	addi r26, r29, 0x650
/* 80C7A0F0  7F 43 D3 78 */	mr r3, r26
/* 80C7A0F4  4B 40 99 34 */	b __ct__12dCcD_GObjInfFv
/* 80C7A0F8  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C7A0FC  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C7A100  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80C7A104  3C 60 80 C8 */	lis r3, __vt__8cM3dGAab@ha
/* 80C7A108  38 03 C9 F8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C7A10C  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80C7A110  3C 60 80 C8 */	lis r3, __vt__8cM3dGSph@ha
/* 80C7A114  38 03 C9 EC */	addi r0, r3, __vt__8cM3dGSph@l
/* 80C7A118  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80C7A11C  3C 60 80 3C */	lis r3, __vt__12cCcD_SphAttr@ha
/* 80C7A120  38 63 35 40 */	addi r3, r3, __vt__12cCcD_SphAttr@l
/* 80C7A124  90 7A 01 20 */	stw r3, 0x120(r26)
/* 80C7A128  38 03 00 58 */	addi r0, r3, 0x58
/* 80C7A12C  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80C7A130  3C 60 80 3B */	lis r3, __vt__8dCcD_Sph@ha
/* 80C7A134  38 63 BF C0 */	addi r3, r3, __vt__8dCcD_Sph@l
/* 80C7A138  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 80C7A13C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C7A140  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80C7A144  38 03 00 84 */	addi r0, r3, 0x84
/* 80C7A148  90 1A 01 34 */	stw r0, 0x134(r26)
/* 80C7A14C  3B 5D 07 88 */	addi r26, r29, 0x788
/* 80C7A150  7F 43 D3 78 */	mr r3, r26
/* 80C7A154  4B 40 98 D4 */	b __ct__12dCcD_GObjInfFv
/* 80C7A158  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80C7A15C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80C7A160  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80C7A164  3C 60 80 C8 */	lis r3, __vt__8cM3dGAab@ha
/* 80C7A168  38 03 C9 F8 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80C7A16C  90 1A 01 1C */	stw r0, 0x11c(r26)
/* 80C7A170  3C 60 80 C8 */	lis r3, __vt__8cM3dGCyl@ha
/* 80C7A174  38 03 C9 E0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80C7A178  90 1A 01 38 */	stw r0, 0x138(r26)
/* 80C7A17C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80C7A180  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80C7A184  90 7A 01 20 */	stw r3, 0x120(r26)
/* 80C7A188  38 03 00 58 */	addi r0, r3, 0x58
/* 80C7A18C  90 1A 01 38 */	stw r0, 0x138(r26)
/* 80C7A190  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80C7A194  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80C7A198  90 7A 00 3C */	stw r3, 0x3c(r26)
/* 80C7A19C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80C7A1A0  90 1A 01 20 */	stw r0, 0x120(r26)
/* 80C7A1A4  38 03 00 84 */	addi r0, r3, 0x84
/* 80C7A1A8  90 1A 01 38 */	stw r0, 0x138(r26)
/* 80C7A1AC  38 7D 08 D4 */	addi r3, r29, 0x8d4
/* 80C7A1B0  4B 64 46 94 */	b __ct__16Z2SoundObjSimpleFv
lbl_80C7A1B4:
/* 80C7A1B4  80 1B 04 A0 */	lwz r0, 0x4a0(r27)
/* 80C7A1B8  60 00 00 08 */	ori r0, r0, 8
/* 80C7A1BC  90 1B 04 A0 */	stw r0, 0x4a0(r27)
lbl_80C7A1C0:
/* 80C7A1C0  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80C7A1C4  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80C7A1C8  98 1B 06 0C */	stb r0, 0x60c(r27)
/* 80C7A1CC  88 1B 06 0C */	lbz r0, 0x60c(r27)
/* 80C7A1D0  28 00 00 0F */	cmplwi r0, 0xf
/* 80C7A1D4  40 82 00 0C */	bne lbl_80C7A1E0
/* 80C7A1D8  38 00 00 00 */	li r0, 0
/* 80C7A1DC  98 1B 06 0C */	stb r0, 0x60c(r27)
lbl_80C7A1E0:
/* 80C7A1E0  38 7B 05 A0 */	addi r3, r27, 0x5a0
/* 80C7A1E4  88 1B 06 0C */	lbz r0, 0x60c(r27)
/* 80C7A1E8  54 00 10 3A */	slwi r0, r0, 2
/* 80C7A1EC  38 9E 00 A4 */	addi r4, r30, 0xa4
/* 80C7A1F0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C7A1F4  4B 3B 2C C8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C7A1F8  7C 7D 1B 78 */	mr r29, r3
/* 80C7A1FC  2C 1D 00 04 */	cmpwi r29, 4
/* 80C7A200  40 82 03 18 */	bne lbl_80C7A518
/* 80C7A204  7F 63 DB 78 */	mr r3, r27
/* 80C7A208  88 1B 06 0C */	lbz r0, 0x60c(r27)
/* 80C7A20C  54 00 10 3A */	slwi r0, r0, 2
/* 80C7A210  38 9E 00 A4 */	addi r4, r30, 0xa4
/* 80C7A214  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C7A218  38 A0 FF FF */	li r5, -1
/* 80C7A21C  38 C0 00 00 */	li r6, 0
/* 80C7A220  38 E0 2A 00 */	li r7, 0x2a00
/* 80C7A224  39 00 00 00 */	li r8, 0
/* 80C7A228  4B 3F E5 94 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C7A22C  2C 03 00 05 */	cmpwi r3, 5
/* 80C7A230  40 82 00 0C */	bne lbl_80C7A23C
/* 80C7A234  38 60 00 05 */	li r3, 5
/* 80C7A238  48 00 02 E4 */	b lbl_80C7A51C
lbl_80C7A23C:
/* 80C7A23C  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80C7A240  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80C7A244  98 1B 05 DA */	stb r0, 0x5da(r27)
/* 80C7A248  88 1B 05 DA */	lbz r0, 0x5da(r27)
/* 80C7A24C  28 00 00 00 */	cmplwi r0, 0
/* 80C7A250  40 82 00 0C */	bne lbl_80C7A25C
/* 80C7A254  38 00 00 01 */	li r0, 1
/* 80C7A258  98 1B 05 DA */	stb r0, 0x5da(r27)
lbl_80C7A25C:
/* 80C7A25C  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80C7A260  54 00 D6 BA */	rlwinm r0, r0, 0x1a, 0x1a, 0x1d
/* 80C7A264  38 7F 00 78 */	addi r3, r31, 0x78
/* 80C7A268  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C7A26C  D0 1B 05 D4 */	stfs f0, 0x5d4(r27)
/* 80C7A270  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80C7A274  D0 1B 05 2C */	stfs f0, 0x52c(r27)
/* 80C7A278  38 00 00 03 */	li r0, 3
/* 80C7A27C  98 1B 05 F9 */	stb r0, 0x5f9(r27)
/* 80C7A280  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80C7A284  D0 1B 06 10 */	stfs f0, 0x610(r27)
/* 80C7A288  88 1B 05 DA */	lbz r0, 0x5da(r27)
/* 80C7A28C  28 00 00 03 */	cmplwi r0, 3
/* 80C7A290  41 82 00 0C */	beq lbl_80C7A29C
/* 80C7A294  28 00 00 04 */	cmplwi r0, 4
/* 80C7A298  40 82 00 88 */	bne lbl_80C7A320
lbl_80C7A29C:
/* 80C7A29C  C0 7F 00 DC */	lfs f3, 0xdc(r31)
/* 80C7A2A0  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80C7A2A4  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 80C7A2A8  C8 3F 00 E8 */	lfd f1, 0xe8(r31)
/* 80C7A2AC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C7A2B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7A2B4  3C 60 43 30 */	lis r3, 0x4330
/* 80C7A2B8  90 61 00 20 */	stw r3, 0x20(r1)
/* 80C7A2BC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C7A2C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C7A2C4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C7A2C8  D0 1B 05 FC */	stfs f0, 0x5fc(r27)
/* 80C7A2CC  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80C7A2D0  54 00 46 3E */	srwi r0, r0, 0x18
/* 80C7A2D4  28 00 00 FF */	cmplwi r0, 0xff
/* 80C7A2D8  41 82 00 28 */	beq lbl_80C7A300
/* 80C7A2DC  C0 5B 05 FC */	lfs f2, 0x5fc(r27)
/* 80C7A2E0  C8 3F 00 F0 */	lfd f1, 0xf0(r31)
/* 80C7A2E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C7A2E8  90 61 00 20 */	stw r3, 0x20(r1)
/* 80C7A2EC  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80C7A2F0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C7A2F4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80C7A2F8  EC 02 00 2A */	fadds f0, f2, f0
/* 80C7A2FC  D0 1B 05 FC */	stfs f0, 0x5fc(r27)
lbl_80C7A300:
/* 80C7A300  38 00 00 01 */	li r0, 1
/* 80C7A304  98 1B 05 AD */	stb r0, 0x5ad(r27)
/* 80C7A308  88 1B 05 DA */	lbz r0, 0x5da(r27)
/* 80C7A30C  28 00 00 04 */	cmplwi r0, 4
/* 80C7A310  40 82 00 C8 */	bne lbl_80C7A3D8
/* 80C7A314  38 00 FF FF */	li r0, -1
/* 80C7A318  98 1B 05 AD */	stb r0, 0x5ad(r27)
/* 80C7A31C  48 00 00 BC */	b lbl_80C7A3D8
lbl_80C7A320:
/* 80C7A320  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80C7A324  98 1B 05 AC */	stb r0, 0x5ac(r27)
/* 80C7A328  88 7B 05 AC */	lbz r3, 0x5ac(r27)
/* 80C7A32C  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80C7A330  7C 04 07 74 */	extsb r4, r0
/* 80C7A334  4B 3D 74 B8 */	b dPath_GetRoomPath__Fii
/* 80C7A338  7C 7C 1B 79 */	or. r28, r3, r3
/* 80C7A33C  40 82 00 0C */	bne lbl_80C7A348
/* 80C7A340  38 60 00 00 */	li r3, 0
/* 80C7A344  48 00 01 D8 */	b lbl_80C7A51C
lbl_80C7A348:
/* 80C7A348  80 7C 00 08 */	lwz r3, 8(r28)
/* 80C7A34C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C7A350  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80C7A354  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C7A358  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80C7A35C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C7A360  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80C7A364  88 1C 00 05 */	lbz r0, 5(r28)
/* 80C7A368  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80C7A36C  98 1B 05 F8 */	stb r0, 0x5f8(r27)
/* 80C7A370  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 80C7A374  D0 1B 05 FC */	stfs f0, 0x5fc(r27)
/* 80C7A378  38 00 FF FF */	li r0, -1
/* 80C7A37C  98 1B 05 AD */	stb r0, 0x5ad(r27)
/* 80C7A380  38 00 00 00 */	li r0, 0
/* 80C7A384  B0 1B 05 AE */	sth r0, 0x5ae(r27)
/* 80C7A388  88 1B 05 DA */	lbz r0, 0x5da(r27)
/* 80C7A38C  28 00 00 05 */	cmplwi r0, 5
/* 80C7A390  40 82 00 48 */	bne lbl_80C7A3D8
/* 80C7A394  38 00 00 01 */	li r0, 1
/* 80C7A398  98 1B 05 AD */	stb r0, 0x5ad(r27)
/* 80C7A39C  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 80C7A3A0  D0 1B 06 10 */	stfs f0, 0x610(r27)
/* 80C7A3A4  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80C7A3A8  54 00 46 3E */	srwi r0, r0, 0x18
/* 80C7A3AC  B0 1B 05 AE */	sth r0, 0x5ae(r27)
/* 80C7A3B0  80 7C 00 08 */	lwz r3, 8(r28)
/* 80C7A3B4  A8 1B 05 AE */	lha r0, 0x5ae(r27)
/* 80C7A3B8  54 00 20 36 */	slwi r0, r0, 4
/* 80C7A3BC  7C 63 02 14 */	add r3, r3, r0
/* 80C7A3C0  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C7A3C4  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80C7A3C8  C0 03 00 08 */	lfs f0, 8(r3)
/* 80C7A3CC  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80C7A3D0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C7A3D4  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
lbl_80C7A3D8:
/* 80C7A3D8  88 1B 05 DA */	lbz r0, 0x5da(r27)
/* 80C7A3DC  28 00 00 01 */	cmplwi r0, 1
/* 80C7A3E0  41 82 00 0C */	beq lbl_80C7A3EC
/* 80C7A3E4  28 00 00 05 */	cmplwi r0, 5
/* 80C7A3E8  40 82 00 10 */	bne lbl_80C7A3F8
lbl_80C7A3EC:
/* 80C7A3EC  7F 63 DB 78 */	mr r3, r27
/* 80C7A3F0  48 00 11 29 */	bl init_modeWaitInit__15daLv6TogeTrap_cFv
/* 80C7A3F4  48 00 00 8C */	b lbl_80C7A480
lbl_80C7A3F8:
/* 80C7A3F8  28 00 00 02 */	cmplwi r0, 2
/* 80C7A3FC  40 82 00 6C */	bne lbl_80C7A468
/* 80C7A400  83 5C 00 08 */	lwz r26, 8(r28)
/* 80C7A404  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80C7A408  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C7A40C  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80C7A410  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C7A414  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80C7A418  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C7A41C  C0 1A 00 14 */	lfs f0, 0x14(r26)
/* 80C7A420  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C7A424  C0 1A 00 18 */	lfs f0, 0x18(r26)
/* 80C7A428  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C7A42C  C0 1A 00 1C */	lfs f0, 0x1c(r26)
/* 80C7A430  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C7A434  38 7B 05 DC */	addi r3, r27, 0x5dc
/* 80C7A438  38 81 00 14 */	addi r4, r1, 0x14
/* 80C7A43C  38 A1 00 08 */	addi r5, r1, 8
/* 80C7A440  4B 5F 4E A8 */	b SetStartEnd__8cM3dGLinFRC4cXyzRC4cXyz
/* 80C7A444  C0 1A 00 04 */	lfs f0, 4(r26)
/* 80C7A448  D0 1B 05 B0 */	stfs f0, 0x5b0(r27)
/* 80C7A44C  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80C7A450  D0 1B 05 B4 */	stfs f0, 0x5b4(r27)
/* 80C7A454  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80C7A458  D0 1B 05 B8 */	stfs f0, 0x5b8(r27)
/* 80C7A45C  7F 63 DB 78 */	mr r3, r27
/* 80C7A460  48 00 15 29 */	bl init_modeWaitType2__15daLv6TogeTrap_cFv
/* 80C7A464  48 00 00 1C */	b lbl_80C7A480
lbl_80C7A468:
/* 80C7A468  28 00 00 03 */	cmplwi r0, 3
/* 80C7A46C  41 82 00 0C */	beq lbl_80C7A478
/* 80C7A470  28 00 00 04 */	cmplwi r0, 4
/* 80C7A474  40 82 00 0C */	bne lbl_80C7A480
lbl_80C7A478:
/* 80C7A478  7F 63 DB 78 */	mr r3, r27
/* 80C7A47C  48 00 18 E9 */	bl init_modeRotate__15daLv6TogeTrap_cFv
lbl_80C7A480:
/* 80C7A480  80 7B 05 A8 */	lwz r3, 0x5a8(r27)
/* 80C7A484  38 03 00 24 */	addi r0, r3, 0x24
/* 80C7A488  90 1B 05 04 */	stw r0, 0x504(r27)
/* 80C7A48C  80 7B 05 A8 */	lwz r3, 0x5a8(r27)
/* 80C7A490  80 83 00 04 */	lwz r4, 4(r3)
/* 80C7A494  7F 63 DB 78 */	mr r3, r27
/* 80C7A498  4B 3A 00 E0 */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80C7A49C  38 00 00 00 */	li r0, 0
/* 80C7A4A0  B0 1B 06 00 */	sth r0, 0x600(r27)
/* 80C7A4A4  98 1B 06 0B */	stb r0, 0x60b(r27)
/* 80C7A4A8  7F 63 DB 78 */	mr r3, r27
/* 80C7A4AC  4B FF FA 65 */	bl setBaseMtx__15daLv6TogeTrap_cFv
/* 80C7A4B0  38 7B 06 14 */	addi r3, r27, 0x614
/* 80C7A4B4  38 80 00 64 */	li r4, 0x64
/* 80C7A4B8  38 A0 00 01 */	li r5, 1
/* 80C7A4BC  7F 66 DB 78 */	mr r6, r27
/* 80C7A4C0  4B 40 93 A0 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80C7A4C4  38 7B 06 50 */	addi r3, r27, 0x650
/* 80C7A4C8  38 9E 00 20 */	addi r4, r30, 0x20
/* 80C7A4CC  4B 40 A5 68 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80C7A4D0  38 1B 06 14 */	addi r0, r27, 0x614
/* 80C7A4D4  90 1B 06 94 */	stw r0, 0x694(r27)
/* 80C7A4D8  38 7B 07 88 */	addi r3, r27, 0x788
/* 80C7A4DC  38 9E 00 60 */	addi r4, r30, 0x60
/* 80C7A4E0  4B 40 A3 D4 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80C7A4E4  38 1B 06 14 */	addi r0, r27, 0x614
/* 80C7A4E8  90 1B 07 CC */	stw r0, 0x7cc(r27)
/* 80C7A4EC  38 00 00 01 */	li r0, 1
/* 80C7A4F0  B0 1B 05 62 */	sth r0, 0x562(r27)
/* 80C7A4F4  38 7B 08 D4 */	addi r3, r27, 0x8d4
/* 80C7A4F8  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80C7A4FC  38 A0 00 01 */	li r5, 1
/* 80C7A500  81 9B 08 E4 */	lwz r12, 0x8e4(r27)
/* 80C7A504  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80C7A508  7D 89 03 A6 */	mtctr r12
/* 80C7A50C  4E 80 04 21 */	bctrl 
/* 80C7A510  38 00 00 00 */	li r0, 0
/* 80C7A514  98 1B 08 D0 */	stb r0, 0x8d0(r27)
lbl_80C7A518:
/* 80C7A518  7F A3 EB 78 */	mr r3, r29
lbl_80C7A51C:
/* 80C7A51C  39 61 00 40 */	addi r11, r1, 0x40
/* 80C7A520  4B 6E 7C FC */	b _restgpr_26
/* 80C7A524  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80C7A528  7C 08 03 A6 */	mtlr r0
/* 80C7A52C  38 21 00 40 */	addi r1, r1, 0x40
/* 80C7A530  4E 80 00 20 */	blr 
