lbl_80BFE2CC:
/* 80BFE2CC  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80BFE2D0  7C 08 02 A6 */	mflr r0
/* 80BFE2D4  90 01 00 94 */	stw r0, 0x94(r1)
/* 80BFE2D8  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80BFE2DC  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80BFE2E0  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80BFE2E4  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80BFE2E8  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80BFE2EC  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80BFE2F0  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 80BFE2F4  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 80BFE2F8  39 61 00 50 */	addi r11, r1, 0x50
/* 80BFE2FC  4B 76 3E CD */	bl _savegpr_24
/* 80BFE300  7C 78 1B 78 */	mr r24, r3
/* 80BFE304  3C 60 80 C0 */	lis r3, ccSphSrc@ha /* 0x80BFFC1C@ha */
/* 80BFE308  3B A3 FC 1C */	addi r29, r3, ccSphSrc@l /* 0x80BFFC1C@l */
/* 80BFE30C  C3 9D 00 40 */	lfs f28, 0x40(r29)
/* 80BFE310  D3 81 00 14 */	stfs f28, 0x14(r1)
/* 80BFE314  C3 BD 00 44 */	lfs f29, 0x44(r29)
/* 80BFE318  D3 A1 00 18 */	stfs f29, 0x18(r1)
/* 80BFE31C  D3 A1 00 1C */	stfs f29, 0x1c(r1)
/* 80BFE320  D3 A1 00 08 */	stfs f29, 8(r1)
/* 80BFE324  D3 A1 00 0C */	stfs f29, 0xc(r1)
/* 80BFE328  D3 A1 00 10 */	stfs f29, 0x10(r1)
/* 80BFE32C  3B 20 00 00 */	li r25, 0
/* 80BFE330  3B E0 00 00 */	li r31, 0
/* 80BFE334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFE338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFE33C  3B 83 23 3C */	addi r28, r3, 0x233c
/* 80BFE340  C3 DD 00 48 */	lfs f30, 0x48(r29)
/* 80BFE344  CB FD 00 50 */	lfd f31, 0x50(r29)
/* 80BFE348  3F C0 43 30 */	lis r30, 0x4330
lbl_80BFE34C:
/* 80BFE34C  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 80BFE350  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BFE354  93 C1 00 20 */	stw r30, 0x20(r1)
/* 80BFE358  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BFE35C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BFE360  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80BFE364  EC 1C 00 2A */	fadds f0, f28, f0
/* 80BFE368  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BFE36C  D3 A1 00 18 */	stfs f29, 0x18(r1)
/* 80BFE370  D3 A1 00 1C */	stfs f29, 0x1c(r1)
/* 80BFE374  38 61 00 08 */	addi r3, r1, 8
/* 80BFE378  38 98 04 D0 */	addi r4, r24, 0x4d0
/* 80BFE37C  A8 B8 04 E6 */	lha r5, 0x4e6(r24)
/* 80BFE380  38 C1 00 14 */	addi r6, r1, 0x14
/* 80BFE384  4B 67 2A 3D */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80BFE388  7F 58 FA 14 */	add r26, r24, r31
/* 80BFE38C  3B 7A 11 18 */	addi r27, r26, 0x1118
/* 80BFE390  7F 63 DB 78 */	mr r3, r27
/* 80BFE394  38 81 00 08 */	addi r4, r1, 8
/* 80BFE398  4B 67 12 B1 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BFE39C  7F 63 DB 78 */	mr r3, r27
/* 80BFE3A0  C0 3D 00 48 */	lfs f1, 0x48(r29)
/* 80BFE3A4  4B 67 13 65 */	bl SetR__8cM3dGSphFf
/* 80BFE3A8  7F 83 E3 78 */	mr r3, r28
/* 80BFE3AC  38 9A 0F F4 */	addi r4, r26, 0xff4
/* 80BFE3B0  4B 66 67 F9 */	bl Set__4cCcSFP8cCcD_Obj
/* 80BFE3B4  3B 39 00 01 */	addi r25, r25, 1
/* 80BFE3B8  2C 19 00 03 */	cmpwi r25, 3
/* 80BFE3BC  3B FF 01 38 */	addi r31, r31, 0x138
/* 80BFE3C0  41 80 FF 8C */	blt lbl_80BFE34C
/* 80BFE3C4  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80BFE3C8  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80BFE3CC  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80BFE3D0  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80BFE3D4  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80BFE3D8  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80BFE3DC  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 80BFE3E0  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 80BFE3E4  39 61 00 50 */	addi r11, r1, 0x50
/* 80BFE3E8  4B 76 3E 2D */	bl _restgpr_24
/* 80BFE3EC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80BFE3F0  7C 08 03 A6 */	mtlr r0
/* 80BFE3F4  38 21 00 90 */	addi r1, r1, 0x90
/* 80BFE3F8  4E 80 00 20 */	blr 
