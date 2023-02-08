lbl_80B91160:
/* 80B91160  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80B91164  7C 08 02 A6 */	mflr r0
/* 80B91168  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80B9116C  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80B91170  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80B91174  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80B91178  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80B9117C  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80B91180  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 80B91184  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 80B91188  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 80B9118C  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 80B91190  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 80B91194  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 80B91198  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 80B9119C  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 80B911A0  F3 21 00 78 */	psq_st f25, 120(r1), 0, 0 /* qr0 */
/* 80B911A4  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 80B911A8  F3 01 00 68 */	psq_st f24, 104(r1), 0, 0 /* qr0 */
/* 80B911AC  39 61 00 60 */	addi r11, r1, 0x60
/* 80B911B0  4B 7D 10 25 */	bl _savegpr_27
/* 80B911B4  7C 7B 1B 78 */	mr r27, r3
/* 80B911B8  3C 60 80 B9 */	lis r3, m__17daNpc_zrC_Param_c@ha /* 0x80B931FC@ha */
/* 80B911BC  3B E3 31 FC */	addi r31, r3, m__17daNpc_zrC_Param_c@l /* 0x80B931FC@l */
/* 80B911C0  38 60 00 00 */	li r3, 0
/* 80B911C4  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 80B911C8  83 C4 00 04 */	lwz r30, 4(r4)
/* 80B911CC  3B A0 00 00 */	li r29, 0
/* 80B911D0  38 9F 00 00 */	addi r4, r31, 0
/* 80B911D4  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 80B911D8  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 80B911DC  C3 A4 00 2C */	lfs f29, 0x2c(r4)
/* 80B911E0  C3 84 00 28 */	lfs f28, 0x28(r4)
/* 80B911E4  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 80B911E8  C3 44 00 30 */	lfs f26, 0x30(r4)
/* 80B911EC  C3 24 00 3C */	lfs f25, 0x3c(r4)
/* 80B911F0  C3 04 00 38 */	lfs f24, 0x38(r4)
/* 80B911F4  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 80B911F8  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80B911FC  7C 04 00 50 */	subf r0, r4, r0
/* 80B91200  7C 1C 07 34 */	extsh r28, r0
/* 80B91204  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 80B91208  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B9120C  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 80B91210  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B91214  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 80B91218  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B9121C  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 80B91220  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B91224  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 80B91228  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B9122C  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 80B91230  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B91234  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 80B91238  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B9123C  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 80B91240  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B91244  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 80B91248  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B9124C  80 9F 04 70 */	lwz r4, 0x470(r31)
/* 80B91250  80 1F 04 74 */	lwz r0, 0x474(r31)
/* 80B91254  90 81 00 18 */	stw r4, 0x18(r1)
/* 80B91258  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B9125C  80 1F 04 78 */	lwz r0, 0x478(r31)
/* 80B91260  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B91264  38 1B 09 1A */	addi r0, r27, 0x91a
/* 80B91268  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B9126C  38 1B 09 20 */	addi r0, r27, 0x920
/* 80B91270  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B91274  38 1B 09 26 */	addi r0, r27, 0x926
/* 80B91278  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B9127C  A8 1B 0E 24 */	lha r0, 0xe24(r27)
/* 80B91280  2C 00 00 04 */	cmpwi r0, 4
/* 80B91284  41 82 00 4C */	beq lbl_80B912D0
/* 80B91288  40 80 00 14 */	bge lbl_80B9129C
/* 80B9128C  2C 00 00 01 */	cmpwi r0, 1
/* 80B91290  41 82 00 18 */	beq lbl_80B912A8
/* 80B91294  40 80 00 1C */	bge lbl_80B912B0
/* 80B91298  48 00 00 4C */	b lbl_80B912E4
lbl_80B9129C:
/* 80B9129C  2C 00 00 06 */	cmpwi r0, 6
/* 80B912A0  40 80 00 44 */	bge lbl_80B912E4
/* 80B912A4  48 00 00 38 */	b lbl_80B912DC
lbl_80B912A8:
/* 80B912A8  3B A0 00 01 */	li r29, 1
/* 80B912AC  48 00 00 38 */	b lbl_80B912E4
lbl_80B912B0:
/* 80B912B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B912B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B912B8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B912BC  2C 00 00 03 */	cmpwi r0, 3
/* 80B912C0  40 82 00 24 */	bne lbl_80B912E4
/* 80B912C4  C3 3F 04 7C */	lfs f25, 0x47c(r31)
/* 80B912C8  C3 1F 04 80 */	lfs f24, 0x480(r31)
/* 80B912CC  48 00 00 18 */	b lbl_80B912E4
lbl_80B912D0:
/* 80B912D0  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80B912D4  4B 5B F4 19 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B912D8  48 00 00 0C */	b lbl_80B912E4
lbl_80B912DC:
/* 80B912DC  38 7B 0C 88 */	addi r3, r27, 0xc88
/* 80B912E0  4B 5B F4 0D */	bl getActorP__18daNpcF_ActorMngr_cFv
lbl_80B912E4:
/* 80B912E4  28 03 00 00 */	cmplwi r3, 0
/* 80B912E8  41 82 00 70 */	beq lbl_80B91358
/* 80B912EC  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 80B912F0  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 80B912F4  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 80B912F8  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 80B912FC  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 80B91300  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 80B91304  A8 1B 0E 24 */	lha r0, 0xe24(r27)
/* 80B91308  2C 00 00 05 */	cmpwi r0, 5
/* 80B9130C  40 82 00 18 */	bne lbl_80B91324
/* 80B91310  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 80B91314  C0 1F 04 84 */	lfs f0, 0x484(r31)
/* 80B91318  EC 01 00 2A */	fadds f0, f1, f0
/* 80B9131C  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 80B91320  48 00 00 2C */	b lbl_80B9134C
lbl_80B91324:
/* 80B91324  2C 00 00 02 */	cmpwi r0, 2
/* 80B91328  41 82 00 24 */	beq lbl_80B9134C
/* 80B9132C  2C 00 00 03 */	cmpwi r0, 3
/* 80B91330  41 82 00 1C */	beq lbl_80B9134C
/* 80B91334  2C 00 00 04 */	cmpwi r0, 4
/* 80B91338  41 82 00 14 */	beq lbl_80B9134C
/* 80B9133C  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 80B91340  C0 1F 04 88 */	lfs f0, 0x488(r31)
/* 80B91344  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B91348  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_80B9134C:
/* 80B9134C  38 1B 08 78 */	addi r0, r27, 0x878
/* 80B91350  90 1B 0C 0C */	stw r0, 0xc0c(r27)
/* 80B91354  48 00 00 0C */	b lbl_80B91360
lbl_80B91358:
/* 80B91358  38 00 00 00 */	li r0, 0
/* 80B9135C  90 1B 0C 0C */	stw r0, 0xc0c(r27)
lbl_80B91360:
/* 80B91360  D3 61 00 08 */	stfs f27, 8(r1)
/* 80B91364  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 80B91368  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 80B9136C  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 80B91370  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 80B91374  FC 20 F8 90 */	fmr f1, f31
/* 80B91378  FC 40 F0 90 */	fmr f2, f30
/* 80B9137C  FC 60 E8 90 */	fmr f3, f29
/* 80B91380  FC 80 E0 90 */	fmr f4, f28
/* 80B91384  C0 BF 00 9C */	lfs f5, 0x9c(r31)
/* 80B91388  FC C0 28 90 */	fmr f6, f5
/* 80B9138C  FC E0 28 90 */	fmr f7, f5
/* 80B91390  FD 00 28 90 */	fmr f8, f5
/* 80B91394  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80B91398  38 A1 00 24 */	addi r5, r1, 0x24
/* 80B9139C  4B 5B FD 1D */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80B913A0  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 80B913A4  7F 64 DB 78 */	mr r4, r27
/* 80B913A8  38 BE 00 24 */	addi r5, r30, 0x24
/* 80B913AC  38 C1 00 18 */	addi r6, r1, 0x18
/* 80B913B0  7F A7 EB 78 */	mr r7, r29
/* 80B913B4  7F 88 E3 78 */	mr r8, r28
/* 80B913B8  39 20 00 00 */	li r9, 0
/* 80B913BC  4B 5B FF 95 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80B913C0  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80B913C4  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80B913C8  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80B913CC  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80B913D0  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 80B913D4  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80B913D8  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 80B913DC  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 80B913E0  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 80B913E4  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 80B913E8  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 80B913EC  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 80B913F0  E3 21 00 78 */	psq_l f25, 120(r1), 0, 0 /* qr0 */
/* 80B913F4  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 80B913F8  E3 01 00 68 */	psq_l f24, 104(r1), 0, 0 /* qr0 */
/* 80B913FC  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 80B91400  39 61 00 60 */	addi r11, r1, 0x60
/* 80B91404  4B 7D 0E 1D */	bl _restgpr_27
/* 80B91408  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80B9140C  7C 08 03 A6 */	mtlr r0
/* 80B91410  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80B91414  4E 80 00 20 */	blr 
