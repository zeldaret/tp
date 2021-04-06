lbl_80AFB1C4:
/* 80AFB1C4  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80AFB1C8  7C 08 02 A6 */	mflr r0
/* 80AFB1CC  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80AFB1D0  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80AFB1D4  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80AFB1D8  DB C1 00 D0 */	stfd f30, 0xd0(r1)
/* 80AFB1DC  F3 C1 00 D8 */	psq_st f30, 216(r1), 0, 0 /* qr0 */
/* 80AFB1E0  DB A1 00 C0 */	stfd f29, 0xc0(r1)
/* 80AFB1E4  F3 A1 00 C8 */	psq_st f29, 200(r1), 0, 0 /* qr0 */
/* 80AFB1E8  DB 81 00 B0 */	stfd f28, 0xb0(r1)
/* 80AFB1EC  F3 81 00 B8 */	psq_st f28, 184(r1), 0, 0 /* qr0 */
/* 80AFB1F0  DB 61 00 A0 */	stfd f27, 0xa0(r1)
/* 80AFB1F4  F3 61 00 A8 */	psq_st f27, 168(r1), 0, 0 /* qr0 */
/* 80AFB1F8  DB 41 00 90 */	stfd f26, 0x90(r1)
/* 80AFB1FC  F3 41 00 98 */	psq_st f26, 152(r1), 0, 0 /* qr0 */
/* 80AFB200  DB 21 00 80 */	stfd f25, 0x80(r1)
/* 80AFB204  F3 21 00 88 */	psq_st f25, 136(r1), 0, 0 /* qr0 */
/* 80AFB208  DB 01 00 70 */	stfd f24, 0x70(r1)
/* 80AFB20C  F3 01 00 78 */	psq_st f24, 120(r1), 0, 0 /* qr0 */
/* 80AFB210  39 61 00 70 */	addi r11, r1, 0x70
/* 80AFB214  4B 86 6F C1 */	bl _savegpr_27
/* 80AFB218  7C 7B 1B 78 */	mr r27, r3
/* 80AFB21C  3C 60 80 B0 */	lis r3, m__16daNpcThe_Param_c@ha /* 0x80AFBE0C@ha */
/* 80AFB220  3B E3 BE 0C */	addi r31, r3, m__16daNpcThe_Param_c@l /* 0x80AFBE0C@l */
/* 80AFB224  38 60 00 00 */	li r3, 0
/* 80AFB228  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 80AFB22C  83 C4 00 04 */	lwz r30, 4(r4)
/* 80AFB230  3B A0 00 00 */	li r29, 0
/* 80AFB234  38 9F 00 00 */	addi r4, r31, 0
/* 80AFB238  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 80AFB23C  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 80AFB240  C3 A4 00 2C */	lfs f29, 0x2c(r4)
/* 80AFB244  C3 84 00 28 */	lfs f28, 0x28(r4)
/* 80AFB248  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 80AFB24C  C3 44 00 30 */	lfs f26, 0x30(r4)
/* 80AFB250  C3 24 00 3C */	lfs f25, 0x3c(r4)
/* 80AFB254  C3 04 00 38 */	lfs f24, 0x38(r4)
/* 80AFB258  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 80AFB25C  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80AFB260  7C 04 00 50 */	subf r0, r4, r0
/* 80AFB264  7C 1C 07 34 */	extsh r28, r0
/* 80AFB268  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 80AFB26C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AFB270  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 80AFB274  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AFB278  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 80AFB27C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AFB280  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 80AFB284  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AFB288  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 80AFB28C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AFB290  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 80AFB294  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AFB298  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 80AFB29C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AFB2A0  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 80AFB2A4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AFB2A8  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 80AFB2AC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80AFB2B0  80 9F 03 08 */	lwz r4, 0x308(r31)
/* 80AFB2B4  80 1F 03 0C */	lwz r0, 0x30c(r31)
/* 80AFB2B8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80AFB2BC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AFB2C0  80 1F 03 10 */	lwz r0, 0x310(r31)
/* 80AFB2C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AFB2C8  38 1B 09 1A */	addi r0, r27, 0x91a
/* 80AFB2CC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AFB2D0  38 1B 09 20 */	addi r0, r27, 0x920
/* 80AFB2D4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AFB2D8  38 1B 09 26 */	addi r0, r27, 0x926
/* 80AFB2DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AFB2E0  A8 1B 0E 18 */	lha r0, 0xe18(r27)
/* 80AFB2E4  2C 00 00 03 */	cmpwi r0, 3
/* 80AFB2E8  41 82 00 30 */	beq lbl_80AFB318
/* 80AFB2EC  40 80 00 14 */	bge lbl_80AFB300
/* 80AFB2F0  2C 00 00 01 */	cmpwi r0, 1
/* 80AFB2F4  41 82 00 1C */	beq lbl_80AFB310
/* 80AFB2F8  40 80 00 28 */	bge lbl_80AFB320
/* 80AFB2FC  48 00 00 4C */	b lbl_80AFB348
lbl_80AFB300:
/* 80AFB300  2C 00 00 05 */	cmpwi r0, 5
/* 80AFB304  41 82 00 44 */	beq lbl_80AFB348
/* 80AFB308  40 80 00 40 */	bge lbl_80AFB348
/* 80AFB30C  48 00 00 24 */	b lbl_80AFB330
lbl_80AFB310:
/* 80AFB310  3B A0 00 01 */	li r29, 1
/* 80AFB314  48 00 00 34 */	b lbl_80AFB348
lbl_80AFB318:
/* 80AFB318  C3 3F 03 40 */	lfs f25, 0x340(r31)
/* 80AFB31C  C3 1F 03 44 */	lfs f24, 0x344(r31)
lbl_80AFB320:
/* 80AFB320  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFB324  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFB328  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80AFB32C  48 00 00 1C */	b lbl_80AFB348
lbl_80AFB330:
/* 80AFB330  38 00 02 83 */	li r0, 0x283
/* 80AFB334  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80AFB338  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80AFB33C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80AFB340  38 81 00 18 */	addi r4, r1, 0x18
/* 80AFB344  4B 51 E4 B5 */	bl fopAcIt_Judge__FPFPvPv_PvPv
lbl_80AFB348:
/* 80AFB348  28 03 00 00 */	cmplwi r3, 0
/* 80AFB34C  41 82 00 7C */	beq lbl_80AFB3C8
/* 80AFB350  A8 1B 0E 18 */	lha r0, 0xe18(r27)
/* 80AFB354  2C 00 00 04 */	cmpwi r0, 4
/* 80AFB358  40 82 00 20 */	bne lbl_80AFB378
/* 80AFB35C  C0 03 05 38 */	lfs f0, 0x538(r3)
/* 80AFB360  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 80AFB364  C0 03 05 3C */	lfs f0, 0x53c(r3)
/* 80AFB368  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 80AFB36C  C0 03 05 40 */	lfs f0, 0x540(r3)
/* 80AFB370  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 80AFB374  48 00 00 48 */	b lbl_80AFB3BC
lbl_80AFB378:
/* 80AFB378  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 80AFB37C  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 80AFB380  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 80AFB384  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 80AFB388  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 80AFB38C  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 80AFB390  A8 1B 0E 18 */	lha r0, 0xe18(r27)
/* 80AFB394  2C 00 00 02 */	cmpwi r0, 2
/* 80AFB398  41 82 00 24 */	beq lbl_80AFB3BC
/* 80AFB39C  2C 00 00 03 */	cmpwi r0, 3
/* 80AFB3A0  41 82 00 1C */	beq lbl_80AFB3BC
/* 80AFB3A4  2C 00 00 05 */	cmpwi r0, 5
/* 80AFB3A8  41 82 00 14 */	beq lbl_80AFB3BC
/* 80AFB3AC  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 80AFB3B0  C0 1F 03 48 */	lfs f0, 0x348(r31)
/* 80AFB3B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80AFB3B8  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_80AFB3BC:
/* 80AFB3BC  38 1B 08 78 */	addi r0, r27, 0x878
/* 80AFB3C0  90 1B 0C 0C */	stw r0, 0xc0c(r27)
/* 80AFB3C4  48 00 00 0C */	b lbl_80AFB3D0
lbl_80AFB3C8:
/* 80AFB3C8  38 00 00 00 */	li r0, 0
/* 80AFB3CC  90 1B 0C 0C */	stw r0, 0xc0c(r27)
lbl_80AFB3D0:
/* 80AFB3D0  D3 61 00 08 */	stfs f27, 8(r1)
/* 80AFB3D4  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 80AFB3D8  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 80AFB3DC  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 80AFB3E0  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 80AFB3E4  FC 20 F8 90 */	fmr f1, f31
/* 80AFB3E8  FC 40 F0 90 */	fmr f2, f30
/* 80AFB3EC  FC 60 E8 90 */	fmr f3, f29
/* 80AFB3F0  FC 80 E0 90 */	fmr f4, f28
/* 80AFB3F4  C0 BF 00 7C */	lfs f5, 0x7c(r31)
/* 80AFB3F8  FC C0 28 90 */	fmr f6, f5
/* 80AFB3FC  FC E0 28 90 */	fmr f7, f5
/* 80AFB400  FD 00 28 90 */	fmr f8, f5
/* 80AFB404  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80AFB408  38 A1 00 28 */	addi r5, r1, 0x28
/* 80AFB40C  4B 65 5C AD */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80AFB410  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 80AFB414  7F 64 DB 78 */	mr r4, r27
/* 80AFB418  38 BE 00 24 */	addi r5, r30, 0x24
/* 80AFB41C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80AFB420  7F A7 EB 78 */	mr r7, r29
/* 80AFB424  7F 88 E3 78 */	mr r8, r28
/* 80AFB428  39 20 00 00 */	li r9, 0
/* 80AFB42C  4B 65 5F 25 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80AFB430  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80AFB434  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80AFB438  E3 C1 00 D8 */	psq_l f30, 216(r1), 0, 0 /* qr0 */
/* 80AFB43C  CB C1 00 D0 */	lfd f30, 0xd0(r1)
/* 80AFB440  E3 A1 00 C8 */	psq_l f29, 200(r1), 0, 0 /* qr0 */
/* 80AFB444  CB A1 00 C0 */	lfd f29, 0xc0(r1)
/* 80AFB448  E3 81 00 B8 */	psq_l f28, 184(r1), 0, 0 /* qr0 */
/* 80AFB44C  CB 81 00 B0 */	lfd f28, 0xb0(r1)
/* 80AFB450  E3 61 00 A8 */	psq_l f27, 168(r1), 0, 0 /* qr0 */
/* 80AFB454  CB 61 00 A0 */	lfd f27, 0xa0(r1)
/* 80AFB458  E3 41 00 98 */	psq_l f26, 152(r1), 0, 0 /* qr0 */
/* 80AFB45C  CB 41 00 90 */	lfd f26, 0x90(r1)
/* 80AFB460  E3 21 00 88 */	psq_l f25, 136(r1), 0, 0 /* qr0 */
/* 80AFB464  CB 21 00 80 */	lfd f25, 0x80(r1)
/* 80AFB468  E3 01 00 78 */	psq_l f24, 120(r1), 0, 0 /* qr0 */
/* 80AFB46C  CB 01 00 70 */	lfd f24, 0x70(r1)
/* 80AFB470  39 61 00 70 */	addi r11, r1, 0x70
/* 80AFB474  4B 86 6D AD */	bl _restgpr_27
/* 80AFB478  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80AFB47C  7C 08 03 A6 */	mtlr r0
/* 80AFB480  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80AFB484  4E 80 00 20 */	blr 
