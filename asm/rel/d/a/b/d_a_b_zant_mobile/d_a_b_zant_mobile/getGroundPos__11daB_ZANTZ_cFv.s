lbl_806510C0:
/* 806510C0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 806510C4  7C 08 02 A6 */	mflr r0
/* 806510C8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 806510CC  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 806510D0  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 806510D4  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 806510D8  F3 C1 00 88 */	psq_st f30, 136(r1), 0, 0 /* qr0 */
/* 806510DC  39 61 00 80 */	addi r11, r1, 0x80
/* 806510E0  4B D1 10 F0 */	b _savegpr_26
/* 806510E4  7C 7A 1B 78 */	mr r26, r3
/* 806510E8  3C 60 80 65 */	lis r3, lit_3649@ha
/* 806510EC  3B E3 27 3C */	addi r31, r3, lit_3649@l
/* 806510F0  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 806510F4  D0 01 00 08 */	stfs f0, 8(r1)
/* 806510F8  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 806510FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80651100  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80651104  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80651108  3B C1 00 14 */	addi r30, r1, 0x14
/* 8065110C  7F C3 F3 78 */	mr r3, r30
/* 80651110  4B A2 64 6C */	b __ct__11dBgS_GndChkFv
/* 80651114  3C 60 80 65 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80651118  38 63 28 E0 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 8065111C  90 61 00 24 */	stw r3, 0x24(r1)
/* 80651120  3B A3 00 0C */	addi r29, r3, 0xc
/* 80651124  93 A1 00 34 */	stw r29, 0x34(r1)
/* 80651128  3B 83 00 18 */	addi r28, r3, 0x18
/* 8065112C  93 81 00 50 */	stw r28, 0x50(r1)
/* 80651130  3B 63 00 24 */	addi r27, r3, 0x24
/* 80651134  93 61 00 60 */	stw r27, 0x60(r1)
/* 80651138  38 7E 00 3C */	addi r3, r30, 0x3c
/* 8065113C  4B A2 7D 2C */	b SetObj__16dBgS_PolyPassChkFv
/* 80651140  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80651144  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80651148  EC 01 00 2A */	fadds f0, f1, f0
/* 8065114C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80651150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80651154  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80651158  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8065115C  C3 DF 00 40 */	lfs f30, 0x40(r31)
/* 80651160  C3 FF 00 2C */	lfs f31, 0x2c(r31)
lbl_80651164:
/* 80651164  38 61 00 14 */	addi r3, r1, 0x14
/* 80651168  38 81 00 08 */	addi r4, r1, 8
/* 8065116C  4B C1 6B BC */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80651170  7F C3 F3 78 */	mr r3, r30
/* 80651174  38 81 00 14 */	addi r4, r1, 0x14
/* 80651178  4B A2 33 28 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8065117C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80651180  FC 00 08 18 */	frsp f0, f1
/* 80651184  FC 1E 00 00 */	fcmpu cr0, f30, f0
/* 80651188  41 82 00 28 */	beq lbl_806511B0
/* 8065118C  7F C3 F3 78 */	mr r3, r30
/* 80651190  A0 81 00 2A */	lhz r4, 0x2a(r1)
/* 80651194  4B A2 34 84 */	b GetActorPointer__4cBgSCFi
/* 80651198  7C 03 D0 40 */	cmplw r3, r26
/* 8065119C  40 82 00 14 */	bne lbl_806511B0
/* 806511A0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 806511A4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 806511A8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806511AC  4B FF FF B8 */	b lbl_80651164
lbl_806511B0:
/* 806511B0  C3 C1 00 0C */	lfs f30, 0xc(r1)
/* 806511B4  3C 60 80 65 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 806511B8  38 03 28 E0 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 806511BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806511C0  93 A1 00 34 */	stw r29, 0x34(r1)
/* 806511C4  93 81 00 50 */	stw r28, 0x50(r1)
/* 806511C8  93 61 00 60 */	stw r27, 0x60(r1)
/* 806511CC  38 61 00 14 */	addi r3, r1, 0x14
/* 806511D0  38 80 00 00 */	li r4, 0
/* 806511D4  4B A2 64 1C */	b __dt__11dBgS_GndChkFv
/* 806511D8  FC 20 F0 90 */	fmr f1, f30
/* 806511DC  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 806511E0  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 806511E4  E3 C1 00 88 */	psq_l f30, 136(r1), 0, 0 /* qr0 */
/* 806511E8  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 806511EC  39 61 00 80 */	addi r11, r1, 0x80
/* 806511F0  4B D1 10 2C */	b _restgpr_26
/* 806511F4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 806511F8  7C 08 03 A6 */	mtlr r0
/* 806511FC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80651200  4E 80 00 20 */	blr 
