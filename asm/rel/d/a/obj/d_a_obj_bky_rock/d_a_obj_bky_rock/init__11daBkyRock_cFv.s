lbl_80BB7144:
/* 80BB7144  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80BB7148  7C 08 02 A6 */	mflr r0
/* 80BB714C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80BB7150  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80BB7154  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80BB7158  39 61 00 60 */	addi r11, r1, 0x60
/* 80BB715C  4B 7A B0 5D */	bl _savegpr_20
/* 80BB7160  7C 7D 1B 78 */	mr r29, r3
/* 80BB7164  3C 60 80 BB */	lis r3, VIBMODE_POWER@ha /* 0x80BB7EB0@ha */
/* 80BB7168  3B E3 7E B0 */	addi r31, r3, VIBMODE_POWER@l /* 0x80BB7EB0@l */
/* 80BB716C  38 00 00 00 */	li r0, 0
/* 80BB7170  98 1D 05 78 */	stb r0, 0x578(r29)
/* 80BB7174  98 1D 05 7A */	stb r0, 0x57a(r29)
/* 80BB7178  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80BB717C  54 18 07 3E */	clrlwi r24, r0, 0x1c
/* 80BB7180  38 7D 05 B0 */	addi r3, r29, 0x5b0
/* 80BB7184  38 80 00 FF */	li r4, 0xff
/* 80BB7188  38 A0 00 00 */	li r5, 0
/* 80BB718C  7F A6 EB 78 */	mr r6, r29
/* 80BB7190  4B 4C C6 D1 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80BB7194  3B C0 00 00 */	li r30, 0
/* 80BB7198  3B 80 00 00 */	li r28, 0
/* 80BB719C  3B 60 00 00 */	li r27, 0
/* 80BB71A0  3B 40 00 00 */	li r26, 0
/* 80BB71A4  1C 18 00 18 */	mulli r0, r24, 0x18
/* 80BB71A8  3A FF 00 8C */	addi r23, r31, 0x8c
/* 80BB71AC  7E F7 02 14 */	add r23, r23, r0
/* 80BB71B0  57 00 18 38 */	slwi r0, r24, 3
/* 80BB71B4  3A DF 00 BC */	addi r22, r31, 0xbc
/* 80BB71B8  7E D6 02 14 */	add r22, r22, r0
/* 80BB71BC  3A BF 00 CC */	addi r21, r31, 0xcc
/* 80BB71C0  7E B5 02 14 */	add r21, r21, r0
/* 80BB71C4  3B 1D 05 B0 */	addi r24, r29, 0x5b0
/* 80BB71C8  CB FF 00 F0 */	lfd f31, 0xf0(r31)
/* 80BB71CC  3F 20 43 30 */	lis r25, 0x4330
lbl_80BB71D0:
/* 80BB71D0  7E 9D D2 14 */	add r20, r29, r26
/* 80BB71D4  38 74 05 EC */	addi r3, r20, 0x5ec
/* 80BB71D8  38 9F 00 30 */	addi r4, r31, 0x30
/* 80BB71DC  4B 4C D6 D9 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80BB71E0  93 14 06 30 */	stw r24, 0x630(r20)
/* 80BB71E4  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80BB71E8  7C 77 DA 14 */	add r3, r23, r27
/* 80BB71EC  C0 03 00 08 */	lfs f0, 8(r3)
/* 80BB71F0  EC 61 00 2A */	fadds f3, f1, f0
/* 80BB71F4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80BB71F8  C0 03 00 04 */	lfs f0, 4(r3)
/* 80BB71FC  EC 41 00 2A */	fadds f2, f1, f0
/* 80BB7200  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80BB7204  C0 03 00 00 */	lfs f0, 0(r3)
/* 80BB7208  EC 01 00 2A */	fadds f0, f1, f0
/* 80BB720C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BB7210  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 80BB7214  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 80BB7218  3A 94 07 10 */	addi r20, r20, 0x710
/* 80BB721C  7E 83 A3 78 */	mr r3, r20
/* 80BB7220  38 81 00 08 */	addi r4, r1, 8
/* 80BB7224  4B 6B 7F B9 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80BB7228  7E 83 A3 78 */	mr r3, r20
/* 80BB722C  7C 16 E0 2E */	lwzx r0, r22, r28
/* 80BB7230  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB7234  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BB7238  93 21 00 18 */	stw r25, 0x18(r1)
/* 80BB723C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BB7240  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80BB7244  4B 6B 7F B5 */	bl SetH__8cM3dGCylFf
/* 80BB7248  7E 83 A3 78 */	mr r3, r20
/* 80BB724C  7C 15 E0 2E */	lwzx r0, r21, r28
/* 80BB7250  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB7254  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB7258  93 21 00 20 */	stw r25, 0x20(r1)
/* 80BB725C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BB7260  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80BB7264  4B 6B 7F 9D */	bl SetR__8cM3dGCylFf
/* 80BB7268  3B DE 00 01 */	addi r30, r30, 1
/* 80BB726C  2C 1E 00 02 */	cmpwi r30, 2
/* 80BB7270  3B 9C 00 04 */	addi r28, r28, 4
/* 80BB7274  3B 7B 00 0C */	addi r27, r27, 0xc
/* 80BB7278  3B 5A 01 3C */	addi r26, r26, 0x13c
/* 80BB727C  41 80 FF 54 */	blt lbl_80BB71D0
/* 80BB7280  38 00 00 09 */	li r0, 9
/* 80BB7284  98 1D 07 E2 */	stb r0, 0x7e2(r29)
/* 80BB7288  38 00 00 00 */	li r0, 0
/* 80BB728C  98 1D 05 79 */	stb r0, 0x579(r29)
/* 80BB7290  90 1D 05 74 */	stw r0, 0x574(r29)
/* 80BB7294  7F A3 EB 78 */	mr r3, r29
/* 80BB7298  4B FF FC CD */	bl setModelMtx__11daBkyRock_cFv
/* 80BB729C  88 1D 05 78 */	lbz r0, 0x578(r29)
/* 80BB72A0  54 00 10 3A */	slwi r0, r0, 2
/* 80BB72A4  7C 7D 02 14 */	add r3, r29, r0
/* 80BB72A8  80 63 08 64 */	lwz r3, 0x864(r3)
/* 80BB72AC  38 03 00 24 */	addi r0, r3, 0x24
/* 80BB72B0  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80BB72B4  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80BB72B8  D0 1D 05 20 */	stfs f0, 0x520(r29)
/* 80BB72BC  7F A3 EB 78 */	mr r3, r29
/* 80BB72C0  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 80BB72C4  C0 5F 00 E4 */	lfs f2, 0xe4(r31)
/* 80BB72C8  FC 60 08 90 */	fmr f3, f1
/* 80BB72CC  C0 9F 00 E8 */	lfs f4, 0xe8(r31)
/* 80BB72D0  C0 BF 00 EC */	lfs f5, 0xec(r31)
/* 80BB72D4  FC C0 20 90 */	fmr f6, f4
/* 80BB72D8  4B 46 32 71 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80BB72DC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80BB72E0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80BB72E4  39 61 00 60 */	addi r11, r1, 0x60
/* 80BB72E8  4B 7A AF 1D */	bl _restgpr_20
/* 80BB72EC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80BB72F0  7C 08 03 A6 */	mtlr r0
/* 80BB72F4  38 21 00 70 */	addi r1, r1, 0x70
/* 80BB72F8  4E 80 00 20 */	blr 
