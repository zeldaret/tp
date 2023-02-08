lbl_809EC188:
/* 809EC188  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 809EC18C  7C 08 02 A6 */	mflr r0
/* 809EC190  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 809EC194  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 809EC198  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 809EC19C  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 809EC1A0  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 809EC1A4  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 809EC1A8  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 809EC1AC  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 809EC1B0  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 809EC1B4  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 809EC1B8  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 809EC1BC  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 809EC1C0  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 809EC1C4  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 809EC1C8  F3 21 00 78 */	psq_st f25, 120(r1), 0, 0 /* qr0 */
/* 809EC1CC  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 809EC1D0  F3 01 00 68 */	psq_st f24, 104(r1), 0, 0 /* qr0 */
/* 809EC1D4  39 61 00 60 */	addi r11, r1, 0x60
/* 809EC1D8  4B 97 5F FD */	bl _savegpr_27
/* 809EC1DC  7C 7B 1B 78 */	mr r27, r3
/* 809EC1E0  3C 60 80 9F */	lis r3, m__17daNpc_Grz_Param_c@ha /* 0x809EF1F4@ha */
/* 809EC1E4  3B E3 F1 F4 */	addi r31, r3, m__17daNpc_Grz_Param_c@l /* 0x809EF1F4@l */
/* 809EC1E8  38 60 00 00 */	li r3, 0
/* 809EC1EC  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 809EC1F0  83 C4 00 04 */	lwz r30, 4(r4)
/* 809EC1F4  3B A0 00 00 */	li r29, 0
/* 809EC1F8  38 9F 00 00 */	addi r4, r31, 0
/* 809EC1FC  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 809EC200  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 809EC204  C3 A4 00 2C */	lfs f29, 0x2c(r4)
/* 809EC208  C3 84 00 28 */	lfs f28, 0x28(r4)
/* 809EC20C  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 809EC210  C3 44 00 30 */	lfs f26, 0x30(r4)
/* 809EC214  C3 24 00 3C */	lfs f25, 0x3c(r4)
/* 809EC218  C3 04 00 38 */	lfs f24, 0x38(r4)
/* 809EC21C  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 809EC220  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 809EC224  7C 04 00 50 */	subf r0, r4, r0
/* 809EC228  7C 1C 07 34 */	extsh r28, r0
/* 809EC22C  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 809EC230  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809EC234  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 809EC238  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809EC23C  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 809EC240  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809EC244  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 809EC248  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809EC24C  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 809EC250  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809EC254  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 809EC258  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809EC25C  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 809EC260  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809EC264  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 809EC268  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809EC26C  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 809EC270  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809EC274  80 9F 03 F4 */	lwz r4, 0x3f4(r31)
/* 809EC278  80 1F 03 F8 */	lwz r0, 0x3f8(r31)
/* 809EC27C  90 81 00 18 */	stw r4, 0x18(r1)
/* 809EC280  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809EC284  80 1F 03 FC */	lwz r0, 0x3fc(r31)
/* 809EC288  90 01 00 20 */	stw r0, 0x20(r1)
/* 809EC28C  38 1B 09 1A */	addi r0, r27, 0x91a
/* 809EC290  90 01 00 18 */	stw r0, 0x18(r1)
/* 809EC294  38 1B 09 20 */	addi r0, r27, 0x920
/* 809EC298  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809EC29C  38 1B 09 26 */	addi r0, r27, 0x926
/* 809EC2A0  90 01 00 20 */	stw r0, 0x20(r1)
/* 809EC2A4  A8 1B 1A 78 */	lha r0, 0x1a78(r27)
/* 809EC2A8  2C 00 00 04 */	cmpwi r0, 4
/* 809EC2AC  41 82 00 4C */	beq lbl_809EC2F8
/* 809EC2B0  40 80 00 14 */	bge lbl_809EC2C4
/* 809EC2B4  2C 00 00 01 */	cmpwi r0, 1
/* 809EC2B8  41 82 00 18 */	beq lbl_809EC2D0
/* 809EC2BC  40 80 00 1C */	bge lbl_809EC2D8
/* 809EC2C0  48 00 00 4C */	b lbl_809EC30C
lbl_809EC2C4:
/* 809EC2C4  2C 00 00 06 */	cmpwi r0, 6
/* 809EC2C8  40 80 00 44 */	bge lbl_809EC30C
/* 809EC2CC  48 00 00 38 */	b lbl_809EC304
lbl_809EC2D0:
/* 809EC2D0  3B A0 00 01 */	li r29, 1
/* 809EC2D4  48 00 00 38 */	b lbl_809EC30C
lbl_809EC2D8:
/* 809EC2D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809EC2DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809EC2E0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 809EC2E4  2C 00 00 03 */	cmpwi r0, 3
/* 809EC2E8  40 82 00 24 */	bne lbl_809EC30C
/* 809EC2EC  C3 3F 04 00 */	lfs f25, 0x400(r31)
/* 809EC2F0  C3 1F 04 04 */	lfs f24, 0x404(r31)
/* 809EC2F4  48 00 00 18 */	b lbl_809EC30C
lbl_809EC2F8:
/* 809EC2F8  38 7B 12 B0 */	addi r3, r27, 0x12b0
/* 809EC2FC  4B 76 43 F1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 809EC300  48 00 00 0C */	b lbl_809EC30C
lbl_809EC304:
/* 809EC304  38 7B 12 B8 */	addi r3, r27, 0x12b8
/* 809EC308  4B 76 43 E5 */	bl getActorP__18daNpcF_ActorMngr_cFv
lbl_809EC30C:
/* 809EC30C  28 03 00 00 */	cmplwi r3, 0
/* 809EC310  41 82 00 54 */	beq lbl_809EC364
/* 809EC314  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 809EC318  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 809EC31C  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 809EC320  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 809EC324  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 809EC328  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 809EC32C  A8 1B 1A 78 */	lha r0, 0x1a78(r27)
/* 809EC330  2C 00 00 02 */	cmpwi r0, 2
/* 809EC334  41 82 00 24 */	beq lbl_809EC358
/* 809EC338  2C 00 00 03 */	cmpwi r0, 3
/* 809EC33C  41 82 00 1C */	beq lbl_809EC358
/* 809EC340  2C 00 00 04 */	cmpwi r0, 4
/* 809EC344  41 82 00 14 */	beq lbl_809EC358
/* 809EC348  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 809EC34C  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 809EC350  EC 01 00 28 */	fsubs f0, f1, f0
/* 809EC354  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_809EC358:
/* 809EC358  38 1B 08 78 */	addi r0, r27, 0x878
/* 809EC35C  90 1B 0C 0C */	stw r0, 0xc0c(r27)
/* 809EC360  48 00 00 0C */	b lbl_809EC36C
lbl_809EC364:
/* 809EC364  38 00 00 00 */	li r0, 0
/* 809EC368  90 1B 0C 0C */	stw r0, 0xc0c(r27)
lbl_809EC36C:
/* 809EC36C  D3 61 00 08 */	stfs f27, 8(r1)
/* 809EC370  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 809EC374  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 809EC378  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 809EC37C  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 809EC380  FC 20 F8 90 */	fmr f1, f31
/* 809EC384  FC 40 F0 90 */	fmr f2, f30
/* 809EC388  FC 60 E8 90 */	fmr f3, f29
/* 809EC38C  FC 80 E0 90 */	fmr f4, f28
/* 809EC390  C0 BF 00 A8 */	lfs f5, 0xa8(r31)
/* 809EC394  FC C0 28 90 */	fmr f6, f5
/* 809EC398  FC E0 28 90 */	fmr f7, f5
/* 809EC39C  FD 00 28 90 */	fmr f8, f5
/* 809EC3A0  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 809EC3A4  38 A1 00 24 */	addi r5, r1, 0x24
/* 809EC3A8  4B 76 4D 11 */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 809EC3AC  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 809EC3B0  7F 64 DB 78 */	mr r4, r27
/* 809EC3B4  38 BE 00 24 */	addi r5, r30, 0x24
/* 809EC3B8  38 C1 00 18 */	addi r6, r1, 0x18
/* 809EC3BC  7F A7 EB 78 */	mr r7, r29
/* 809EC3C0  7F 88 E3 78 */	mr r8, r28
/* 809EC3C4  39 20 00 00 */	li r9, 0
/* 809EC3C8  4B 76 4F 89 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 809EC3CC  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 809EC3D0  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 809EC3D4  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 809EC3D8  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 809EC3DC  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 809EC3E0  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 809EC3E4  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 809EC3E8  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 809EC3EC  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 809EC3F0  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 809EC3F4  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 809EC3F8  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 809EC3FC  E3 21 00 78 */	psq_l f25, 120(r1), 0, 0 /* qr0 */
/* 809EC400  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 809EC404  E3 01 00 68 */	psq_l f24, 104(r1), 0, 0 /* qr0 */
/* 809EC408  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 809EC40C  39 61 00 60 */	addi r11, r1, 0x60
/* 809EC410  4B 97 5E 11 */	bl _restgpr_27
/* 809EC414  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 809EC418  7C 08 03 A6 */	mtlr r0
/* 809EC41C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 809EC420  4E 80 00 20 */	blr 
