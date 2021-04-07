lbl_806329CC:
/* 806329CC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806329D0  7C 08 02 A6 */	mflr r0
/* 806329D4  90 01 00 54 */	stw r0, 0x54(r1)
/* 806329D8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 806329DC  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 806329E0  39 61 00 40 */	addi r11, r1, 0x40
/* 806329E4  4B D2 F7 F5 */	bl _savegpr_28
/* 806329E8  7C 7D 1B 78 */	mr r29, r3
/* 806329EC  3C 60 80 64 */	lis r3, cNullVec__6Z2Calc@ha /* 0x80639A60@ha */
/* 806329F0  3B C3 9A 60 */	addi r30, r3, cNullVec__6Z2Calc@l /* 0x80639A60@l */
/* 806329F4  3C 60 80 64 */	lis r3, lit_3788@ha /* 0x806397F4@ha */
/* 806329F8  3B E3 97 F4 */	addi r31, r3, lit_3788@l /* 0x806397F4@l */
/* 806329FC  38 00 00 05 */	li r0, 5
/* 80632A00  90 1D 0F A0 */	stw r0, 0xfa0(r29)
/* 80632A04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80632A08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80632A0C  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80632A10  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80632A14  41 82 00 2C */	beq lbl_80632A40
/* 80632A18  80 1D 18 2C */	lwz r0, 0x182c(r29)
/* 80632A1C  60 00 00 01 */	ori r0, r0, 1
/* 80632A20  90 1D 18 2C */	stw r0, 0x182c(r29)
/* 80632A24  80 1D 19 64 */	lwz r0, 0x1964(r29)
/* 80632A28  60 00 00 01 */	ori r0, r0, 1
/* 80632A2C  90 1D 19 64 */	stw r0, 0x1964(r29)
/* 80632A30  80 1D 1A 9C */	lwz r0, 0x1a9c(r29)
/* 80632A34  60 00 00 01 */	ori r0, r0, 1
/* 80632A38  90 1D 1A 9C */	stw r0, 0x1a9c(r29)
/* 80632A3C  48 00 00 28 */	b lbl_80632A64
lbl_80632A40:
/* 80632A40  80 1D 18 2C */	lwz r0, 0x182c(r29)
/* 80632A44  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80632A48  90 1D 18 2C */	stw r0, 0x182c(r29)
/* 80632A4C  80 1D 19 64 */	lwz r0, 0x1964(r29)
/* 80632A50  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80632A54  90 1D 19 64 */	stw r0, 0x1964(r29)
/* 80632A58  80 1D 1A 9C */	lwz r0, 0x1a9c(r29)
/* 80632A5C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80632A60  90 1D 1A 9C */	stw r0, 0x1a9c(r29)
lbl_80632A64:
/* 80632A64  80 1D 0F 74 */	lwz r0, 0xf74(r29)
/* 80632A68  2C 00 00 01 */	cmpwi r0, 1
/* 80632A6C  41 82 00 20 */	beq lbl_80632A8C
/* 80632A70  40 80 00 10 */	bge lbl_80632A80
/* 80632A74  2C 00 00 00 */	cmpwi r0, 0
/* 80632A78  40 80 02 00 */	bge lbl_80632C78
/* 80632A7C  48 00 07 30 */	b lbl_806331AC
lbl_80632A80:
/* 80632A80  2C 00 00 03 */	cmpwi r0, 3
/* 80632A84  40 80 07 28 */	bge lbl_806331AC
/* 80632A88  48 00 02 08 */	b lbl_80632C90
lbl_80632A8C:
/* 80632A8C  7F A3 EB 78 */	mr r3, r29
/* 80632A90  4B FF DC 61 */	bl setBreakIceEffect__8daB_YO_cFv
/* 80632A94  88 7D 0F A8 */	lbz r3, 0xfa8(r29)
/* 80632A98  38 03 00 01 */	addi r0, r3, 1
/* 80632A9C  98 1D 0F A8 */	stb r0, 0xfa8(r29)
/* 80632AA0  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80632AA4  28 00 00 04 */	cmplwi r0, 4
/* 80632AA8  40 82 00 7C */	bne lbl_80632B24
/* 80632AAC  80 7D 05 EC */	lwz r3, 0x5ec(r29)
/* 80632AB0  38 03 00 24 */	addi r0, r3, 0x24
/* 80632AB4  90 1D 05 04 */	stw r0, 0x504(r29)
/* 80632AB8  80 7D 05 E8 */	lwz r3, 0x5e8(r29)
/* 80632ABC  80 63 00 04 */	lwz r3, 4(r3)
/* 80632AC0  38 63 00 58 */	addi r3, r3, 0x58
/* 80632AC4  80 9D 05 D4 */	lwz r4, 0x5d4(r29)
/* 80632AC8  80 84 00 14 */	lwz r4, 0x14(r4)
/* 80632ACC  4B CF CC E9 */	bl removeTexMtxAnimator__16J3DMaterialTableFP19J3DAnmTextureSRTKey
/* 80632AD0  3C 60 80 64 */	lis r3, d_a_b_yo__stringBase0@ha /* 0x80639A34@ha */
/* 80632AD4  38 63 9A 34 */	addi r3, r3, d_a_b_yo__stringBase0@l /* 0x80639A34@l */
/* 80632AD8  38 80 00 35 */	li r4, 0x35
/* 80632ADC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80632AE0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80632AE4  3C A5 00 02 */	addis r5, r5, 2
/* 80632AE8  38 C0 00 80 */	li r6, 0x80
/* 80632AEC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80632AF0  4B A0 97 FD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80632AF4  7C 65 1B 78 */	mr r5, r3
/* 80632AF8  80 7D 05 EC */	lwz r3, 0x5ec(r29)
/* 80632AFC  80 83 00 04 */	lwz r4, 4(r3)
/* 80632B00  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80632B04  38 84 00 58 */	addi r4, r4, 0x58
/* 80632B08  38 C0 00 00 */	li r6, 0
/* 80632B0C  38 E0 00 02 */	li r7, 2
/* 80632B10  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80632B14  39 00 00 00 */	li r8, 0
/* 80632B18  39 20 FF FF */	li r9, -1
/* 80632B1C  4B 9D AB 21 */	bl init__13mDoExt_btkAnmFP16J3DMaterialTableP19J3DAnmTextureSRTKeyiifss
/* 80632B20  48 00 00 18 */	b lbl_80632B38
lbl_80632B24:
/* 80632B24  28 00 00 06 */	cmplwi r0, 6
/* 80632B28  40 82 00 10 */	bne lbl_80632B38
/* 80632B2C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80632B30  80 7D 05 D4 */	lwz r3, 0x5d4(r29)
/* 80632B34  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_80632B38:
/* 80632B38  38 7D 10 1C */	addi r3, r29, 0x101c
/* 80632B3C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80632B40  C0 5F 01 64 */	lfs f2, 0x164(r31)
/* 80632B44  3C 80 80 64 */	lis r4, l_HIO@ha /* 0x80639F84@ha */
/* 80632B48  38 84 9F 84 */	addi r4, r4, l_HIO@l /* 0x80639F84@l */
/* 80632B4C  3B 84 00 08 */	addi r28, r4, 8
/* 80632B50  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80632B54  54 00 10 3A */	slwi r0, r0, 2
/* 80632B58  7C 1C 04 2E */	lfsx f0, r28, r0
/* 80632B5C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80632B60  4B A4 33 F9 */	bl SetWall__12dBgS_AcchCirFff
/* 80632B64  C0 3F 01 68 */	lfs f1, 0x168(r31)
/* 80632B68  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80632B6C  54 00 10 3A */	slwi r0, r0, 2
/* 80632B70  7C 1C 04 2E */	lfsx f0, r28, r0
/* 80632B74  EC 21 00 32 */	fmuls f1, f1, f0
/* 80632B78  3C 60 80 64 */	lis r3, l_HIO@ha /* 0x80639F84@ha */
/* 80632B7C  38 63 9F 84 */	addi r3, r3, l_HIO@l /* 0x80639F84@l */
/* 80632B80  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 80632B84  EC 01 00 2A */	fadds f0, f1, f0
/* 80632B88  D0 1D 0F 54 */	stfs f0, 0xf54(r29)
/* 80632B8C  4B C3 4C E1 */	bl cM_rnd__Fv
/* 80632B90  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80632B94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80632B98  40 80 00 10 */	bge lbl_80632BA8
/* 80632B9C  38 00 06 00 */	li r0, 0x600
/* 80632BA0  B0 1D 0F 82 */	sth r0, 0xf82(r29)
/* 80632BA4  48 00 00 0C */	b lbl_80632BB0
lbl_80632BA8:
/* 80632BA8  38 00 FA 00 */	li r0, -1536
/* 80632BAC  B0 1D 0F 82 */	sth r0, 0xf82(r29)
lbl_80632BB0:
/* 80632BB0  38 00 00 01 */	li r0, 1
/* 80632BB4  98 1D 0F AF */	stb r0, 0xfaf(r29)
/* 80632BB8  7F A3 EB 78 */	mr r3, r29
/* 80632BBC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80632BC0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80632BC4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80632BC8  4B 9E 7B 49 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80632BCC  7C 7C 1B 78 */	mr r28, r3
/* 80632BD0  C0 3F 01 5C */	lfs f1, 0x15c(r31)
/* 80632BD4  4B C3 4D B9 */	bl cM_rndFX__Ff
/* 80632BD8  7F 80 07 34 */	extsh r0, r28
/* 80632BDC  C8 5F 00 50 */	lfd f2, 0x50(r31)
/* 80632BE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80632BE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80632BE8  3C 00 43 30 */	lis r0, 0x4330
/* 80632BEC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80632BF0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80632BF4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80632BF8  EC 20 08 2A */	fadds f1, f0, f1
/* 80632BFC  C0 1F 01 58 */	lfs f0, 0x158(r31)
/* 80632C00  EC 00 08 2A */	fadds f0, f0, f1
/* 80632C04  FC 00 00 1E */	fctiwz f0, f0
/* 80632C08  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 80632C0C  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 80632C10  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80632C14  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80632C18  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80632C1C  54 00 10 3A */	slwi r0, r0, 2
/* 80632C20  38 7E 02 CC */	addi r3, r30, 0x2cc
/* 80632C24  7C 03 04 2E */	lfsx f0, r3, r0
/* 80632C28  EC 01 00 32 */	fmuls f0, f1, f0
/* 80632C2C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80632C30  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80632C34  54 00 10 3A */	slwi r0, r0, 2
/* 80632C38  38 7E 03 08 */	addi r3, r30, 0x308
/* 80632C3C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80632C40  90 1D 0F 94 */	stw r0, 0xf94(r29)
/* 80632C44  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80632C48  54 00 10 3A */	slwi r0, r0, 2
/* 80632C4C  7C 63 00 2E */	lwzx r3, r3, r0
/* 80632C50  38 03 00 1E */	addi r0, r3, 0x1e
/* 80632C54  90 1D 0F 8C */	stw r0, 0xf8c(r29)
/* 80632C58  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80632C5C  28 00 00 04 */	cmplwi r0, 4
/* 80632C60  40 81 00 18 */	ble lbl_80632C78
/* 80632C64  38 60 00 03 */	li r3, 3
/* 80632C68  98 7D 0F AD */	stb r3, 0xfad(r29)
/* 80632C6C  38 00 00 0A */	li r0, 0xa
/* 80632C70  90 1D 0F 98 */	stw r0, 0xf98(r29)
/* 80632C74  98 7D 0F AF */	stb r3, 0xfaf(r29)
lbl_80632C78:
/* 80632C78  38 00 00 00 */	li r0, 0
/* 80632C7C  98 1D 13 21 */	stb r0, 0x1321(r29)
/* 80632C80  38 00 00 0D */	li r0, 0xd
/* 80632C84  98 1D 13 23 */	stb r0, 0x1323(r29)
/* 80632C88  38 00 00 02 */	li r0, 2
/* 80632C8C  90 1D 0F 74 */	stw r0, 0xf74(r29)
lbl_80632C90:
/* 80632C90  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80632C94  28 00 00 04 */	cmplwi r0, 4
/* 80632C98  40 80 00 34 */	bge lbl_80632CCC
/* 80632C9C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702FD@ha */
/* 80632CA0  38 03 02 FD */	addi r0, r3, 0x02FD /* 0x000702FD@l */
/* 80632CA4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80632CA8  38 7D 06 34 */	addi r3, r29, 0x634
/* 80632CAC  38 81 00 10 */	addi r4, r1, 0x10
/* 80632CB0  38 A0 00 00 */	li r5, 0
/* 80632CB4  38 C0 FF FF */	li r6, -1
/* 80632CB8  81 9D 06 34 */	lwz r12, 0x634(r29)
/* 80632CBC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80632CC0  7D 89 03 A6 */	mtctr r12
/* 80632CC4  4E 80 04 21 */	bctrl 
/* 80632CC8  48 00 00 30 */	b lbl_80632CF8
lbl_80632CCC:
/* 80632CCC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702FE@ha */
/* 80632CD0  38 03 02 FE */	addi r0, r3, 0x02FE /* 0x000702FE@l */
/* 80632CD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80632CD8  38 7D 06 34 */	addi r3, r29, 0x634
/* 80632CDC  38 81 00 0C */	addi r4, r1, 0xc
/* 80632CE0  38 A0 00 00 */	li r5, 0
/* 80632CE4  38 C0 FF FF */	li r6, -1
/* 80632CE8  81 9D 06 34 */	lwz r12, 0x634(r29)
/* 80632CEC  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80632CF0  7D 89 03 A6 */	mtctr r12
/* 80632CF4  4E 80 04 21 */	bctrl 
lbl_80632CF8:
/* 80632CF8  80 1D 10 88 */	lwz r0, 0x1088(r29)
/* 80632CFC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80632D00  41 82 00 0C */	beq lbl_80632D0C
/* 80632D04  7F A3 EB 78 */	mr r3, r29
/* 80632D08  4B FF DB 95 */	bl setWallHitEffect__8daB_YO_cFv
lbl_80632D0C:
/* 80632D0C  88 1D 0F AD */	lbz r0, 0xfad(r29)
/* 80632D10  28 00 00 01 */	cmplwi r0, 1
/* 80632D14  41 82 00 0C */	beq lbl_80632D20
/* 80632D18  28 00 00 02 */	cmplwi r0, 2
/* 80632D1C  40 82 02 20 */	bne lbl_80632F3C
lbl_80632D20:
/* 80632D20  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80632D24  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80632D28  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80632D2C  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80632D30  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80632D34  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80632D38  38 61 00 14 */	addi r3, r1, 0x14
/* 80632D3C  4B D1 43 FD */	bl PSVECSquareMag
/* 80632D40  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80632D44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80632D48  40 81 00 58 */	ble lbl_80632DA0
/* 80632D4C  FC 00 08 34 */	frsqrte f0, f1
/* 80632D50  C8 9F 01 40 */	lfd f4, 0x140(r31)
/* 80632D54  FC 44 00 32 */	fmul f2, f4, f0
/* 80632D58  C8 7F 01 48 */	lfd f3, 0x148(r31)
/* 80632D5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80632D60  FC 01 00 32 */	fmul f0, f1, f0
/* 80632D64  FC 03 00 28 */	fsub f0, f3, f0
/* 80632D68  FC 02 00 32 */	fmul f0, f2, f0
/* 80632D6C  FC 44 00 32 */	fmul f2, f4, f0
/* 80632D70  FC 00 00 32 */	fmul f0, f0, f0
/* 80632D74  FC 01 00 32 */	fmul f0, f1, f0
/* 80632D78  FC 03 00 28 */	fsub f0, f3, f0
/* 80632D7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80632D80  FC 44 00 32 */	fmul f2, f4, f0
/* 80632D84  FC 00 00 32 */	fmul f0, f0, f0
/* 80632D88  FC 01 00 32 */	fmul f0, f1, f0
/* 80632D8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80632D90  FC 02 00 32 */	fmul f0, f2, f0
/* 80632D94  FC 21 00 32 */	fmul f1, f1, f0
/* 80632D98  FC 20 08 18 */	frsp f1, f1
/* 80632D9C  48 00 00 88 */	b lbl_80632E24
lbl_80632DA0:
/* 80632DA0  C8 1F 01 50 */	lfd f0, 0x150(r31)
/* 80632DA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80632DA8  40 80 00 10 */	bge lbl_80632DB8
/* 80632DAC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80632DB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80632DB4  48 00 00 70 */	b lbl_80632E24
lbl_80632DB8:
/* 80632DB8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80632DBC  80 81 00 08 */	lwz r4, 8(r1)
/* 80632DC0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80632DC4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80632DC8  7C 03 00 00 */	cmpw r3, r0
/* 80632DCC  41 82 00 14 */	beq lbl_80632DE0
/* 80632DD0  40 80 00 40 */	bge lbl_80632E10
/* 80632DD4  2C 03 00 00 */	cmpwi r3, 0
/* 80632DD8  41 82 00 20 */	beq lbl_80632DF8
/* 80632DDC  48 00 00 34 */	b lbl_80632E10
lbl_80632DE0:
/* 80632DE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80632DE4  41 82 00 0C */	beq lbl_80632DF0
/* 80632DE8  38 00 00 01 */	li r0, 1
/* 80632DEC  48 00 00 28 */	b lbl_80632E14
lbl_80632DF0:
/* 80632DF0  38 00 00 02 */	li r0, 2
/* 80632DF4  48 00 00 20 */	b lbl_80632E14
lbl_80632DF8:
/* 80632DF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80632DFC  41 82 00 0C */	beq lbl_80632E08
/* 80632E00  38 00 00 05 */	li r0, 5
/* 80632E04  48 00 00 10 */	b lbl_80632E14
lbl_80632E08:
/* 80632E08  38 00 00 03 */	li r0, 3
/* 80632E0C  48 00 00 08 */	b lbl_80632E14
lbl_80632E10:
/* 80632E10  38 00 00 04 */	li r0, 4
lbl_80632E14:
/* 80632E14  2C 00 00 01 */	cmpwi r0, 1
/* 80632E18  40 82 00 0C */	bne lbl_80632E24
/* 80632E1C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80632E20  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80632E24:
/* 80632E24  C0 1F 01 6C */	lfs f0, 0x16c(r31)
/* 80632E28  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80632E2C  40 80 00 74 */	bge lbl_80632EA0
/* 80632E30  7F A3 EB 78 */	mr r3, r29
/* 80632E34  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80632E38  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80632E3C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80632E40  4B 9E 78 D1 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80632E44  7C 64 1B 78 */	mr r4, r3
/* 80632E48  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80632E4C  38 A0 00 10 */	li r5, 0x10
/* 80632E50  38 C0 00 80 */	li r6, 0x80
/* 80632E54  38 E0 00 10 */	li r7, 0x10
/* 80632E58  4B C3 D6 E9 */	bl cLib_addCalcAngleS__FPsssss
/* 80632E5C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80632E60  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80632E64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80632E68  40 80 00 18 */	bge lbl_80632E80
/* 80632E6C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80632E70  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80632E74  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80632E78  4B C3 D8 C9 */	bl cLib_chaseF__FPfff
/* 80632E7C  48 00 00 14 */	b lbl_80632E90
lbl_80632E80:
/* 80632E80  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80632E84  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 80632E88  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80632E8C  4B C3 D8 B5 */	bl cLib_chaseF__FPfff
lbl_80632E90:
/* 80632E90  7F A3 EB 78 */	mr r3, r29
/* 80632E94  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80632E98  4B FF F7 C9 */	bl calcFreeMove__8daB_YO_cFf
/* 80632E9C  48 00 01 70 */	b lbl_8063300C
lbl_80632EA0:
/* 80632EA0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80632EA4  FC 20 00 50 */	fneg f1, f0
/* 80632EA8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80632EAC  FC 40 00 50 */	fneg f2, f0
/* 80632EB0  4B C3 47 C5 */	bl cM_atan2s__Fff
/* 80632EB4  7C 64 1B 78 */	mr r4, r3
/* 80632EB8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80632EBC  38 A0 00 10 */	li r5, 0x10
/* 80632EC0  38 C0 00 40 */	li r6, 0x40
/* 80632EC4  38 E0 00 08 */	li r7, 8
/* 80632EC8  4B C3 D6 79 */	bl cLib_addCalcAngleS__FPsssss
/* 80632ECC  7F A3 EB 78 */	mr r3, r29
/* 80632ED0  C0 3F 01 04 */	lfs f1, 0x104(r31)
/* 80632ED4  4B FF F7 8D */	bl calcFreeMove__8daB_YO_cFf
/* 80632ED8  80 1D 10 88 */	lwz r0, 0x1088(r29)
/* 80632EDC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80632EE0  41 82 01 2C */	beq lbl_8063300C
/* 80632EE4  C0 3F 01 70 */	lfs f1, 0x170(r31)
/* 80632EE8  4B C3 4A 6D */	bl cM_rndF__Ff
/* 80632EEC  FF E0 08 90 */	fmr f31, f1
/* 80632EF0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80632EF4  FC 20 00 50 */	fneg f1, f0
/* 80632EF8  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80632EFC  FC 40 00 50 */	fneg f2, f0
/* 80632F00  4B C3 47 75 */	bl cM_atan2s__Fff
/* 80632F04  7C 60 07 34 */	extsh r0, r3
/* 80632F08  C8 3F 00 50 */	lfd f1, 0x50(r31)
/* 80632F0C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80632F10  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80632F14  3C 00 43 30 */	lis r0, 0x4330
/* 80632F18  90 01 00 28 */	stw r0, 0x28(r1)
/* 80632F1C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80632F20  EC 00 08 28 */	fsubs f0, f0, f1
/* 80632F24  EC 00 F8 2A */	fadds f0, f0, f31
/* 80632F28  FC 00 00 1E */	fctiwz f0, f0
/* 80632F2C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80632F30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80632F34  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80632F38  48 00 00 D4 */	b lbl_8063300C
lbl_80632F3C:
/* 80632F3C  80 1D 0F 8C */	lwz r0, 0xf8c(r29)
/* 80632F40  2C 00 00 00 */	cmpwi r0, 0
/* 80632F44  40 82 00 78 */	bne lbl_80632FBC
/* 80632F48  80 1D 0F 90 */	lwz r0, 0xf90(r29)
/* 80632F4C  2C 00 00 00 */	cmpwi r0, 0
/* 80632F50  40 82 00 34 */	bne lbl_80632F84
/* 80632F54  7F A3 EB 78 */	mr r3, r29
/* 80632F58  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80632F5C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80632F60  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80632F64  4B 9E 77 AD */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80632F68  7C 64 1B 78 */	mr r4, r3
/* 80632F6C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80632F70  38 A0 00 20 */	li r5, 0x20
/* 80632F74  38 C0 00 40 */	li r6, 0x40
/* 80632F78  38 E0 00 04 */	li r7, 4
/* 80632F7C  4B C3 D5 C5 */	bl cLib_addCalcAngleS__FPsssss
/* 80632F80  48 00 00 3C */	b lbl_80632FBC
lbl_80632F84:
/* 80632F84  7F A3 EB 78 */	mr r3, r29
/* 80632F88  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80632F8C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80632F90  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80632F94  4B 9E 77 7D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80632F98  7C 64 1B 78 */	mr r4, r3
/* 80632F9C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80632FA0  3C 84 00 01 */	addis r4, r4, 1
/* 80632FA4  38 04 80 00 */	addi r0, r4, -32768
/* 80632FA8  7C 04 07 34 */	extsh r4, r0
/* 80632FAC  38 A0 00 20 */	li r5, 0x20
/* 80632FB0  38 C0 00 40 */	li r6, 0x40
/* 80632FB4  38 E0 00 04 */	li r7, 4
/* 80632FB8  4B C3 D5 89 */	bl cLib_addCalcAngleS__FPsssss
lbl_80632FBC:
/* 80632FBC  80 1D 0F 8C */	lwz r0, 0xf8c(r29)
/* 80632FC0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80632FC4  40 80 00 30 */	bge lbl_80632FF4
/* 80632FC8  7F A3 EB 78 */	mr r3, r29
/* 80632FCC  3C 80 80 64 */	lis r4, l_HIO@ha /* 0x80639F84@ha */
/* 80632FD0  38 84 9F 84 */	addi r4, r4, l_HIO@l /* 0x80639F84@l */
/* 80632FD4  C0 24 00 34 */	lfs f1, 0x34(r4)
/* 80632FD8  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80632FDC  54 00 10 3A */	slwi r0, r0, 2
/* 80632FE0  38 9E 02 E8 */	addi r4, r30, 0x2e8
/* 80632FE4  7C 04 04 2E */	lfsx f0, r4, r0
/* 80632FE8  EC 21 00 2A */	fadds f1, f1, f0
/* 80632FEC  4B FF F6 75 */	bl calcFreeMove__8daB_YO_cFf
/* 80632FF0  48 00 00 1C */	b lbl_8063300C
lbl_80632FF4:
/* 80632FF4  7F A3 EB 78 */	mr r3, r29
/* 80632FF8  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80632FFC  54 00 10 3A */	slwi r0, r0, 2
/* 80633000  38 9E 02 CC */	addi r4, r30, 0x2cc
/* 80633004  7C 24 04 2E */	lfsx f1, r4, r0
/* 80633008  4B FF F6 59 */	bl calcFreeMove__8daB_YO_cFf
lbl_8063300C:
/* 8063300C  88 1D 0F A8 */	lbz r0, 0xfa8(r29)
/* 80633010  28 00 00 04 */	cmplwi r0, 4
/* 80633014  41 80 01 98 */	blt lbl_806331AC
/* 80633018  88 1D 0F AD */	lbz r0, 0xfad(r29)
/* 8063301C  2C 00 00 02 */	cmpwi r0, 2
/* 80633020  41 82 01 0C */	beq lbl_8063312C
/* 80633024  40 80 00 14 */	bge lbl_80633038
/* 80633028  2C 00 00 00 */	cmpwi r0, 0
/* 8063302C  41 82 00 18 */	beq lbl_80633044
/* 80633030  40 80 00 40 */	bge lbl_80633070
/* 80633034  48 00 01 78 */	b lbl_806331AC
lbl_80633038:
/* 80633038  2C 00 00 04 */	cmpwi r0, 4
/* 8063303C  40 80 01 70 */	bge lbl_806331AC
/* 80633040  48 00 01 48 */	b lbl_80633188
lbl_80633044:
/* 80633044  80 1D 0F 98 */	lwz r0, 0xf98(r29)
/* 80633048  2C 00 00 00 */	cmpwi r0, 0
/* 8063304C  40 82 01 60 */	bne lbl_806331AC
/* 80633050  38 00 00 00 */	li r0, 0
/* 80633054  98 1D 0F AE */	stb r0, 0xfae(r29)
/* 80633058  98 1D 0F B6 */	stb r0, 0xfb6(r29)
/* 8063305C  B0 1D 0F 5E */	sth r0, 0xf5e(r29)
/* 80633060  B0 1D 0F 5C */	sth r0, 0xf5c(r29)
/* 80633064  38 00 00 01 */	li r0, 1
/* 80633068  98 1D 0F AD */	stb r0, 0xfad(r29)
/* 8063306C  48 00 01 40 */	b lbl_806331AC
lbl_80633070:
/* 80633070  38 7D 0F 5E */	addi r3, r29, 0xf5e
/* 80633074  38 80 01 00 */	li r4, 0x100
/* 80633078  38 A0 00 01 */	li r5, 1
/* 8063307C  4B C3 DB 15 */	bl cLib_chaseAngleS__FPsss
/* 80633080  A8 7D 0F 5C */	lha r3, 0xf5c(r29)
/* 80633084  A8 1D 0F 5E */	lha r0, 0xf5e(r29)
/* 80633088  7C 03 02 14 */	add r0, r3, r0
/* 8063308C  B0 1D 0F 5C */	sth r0, 0xf5c(r29)
/* 80633090  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80633094  C0 1F 01 04 */	lfs f0, 0x104(r31)
/* 80633098  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063309C  4C 40 13 82 */	cror 2, 0, 2
/* 806330A0  40 82 01 0C */	bne lbl_806331AC
/* 806330A4  88 7D 0F AE */	lbz r3, 0xfae(r29)
/* 806330A8  28 03 00 00 */	cmplwi r3, 0
/* 806330AC  41 82 00 10 */	beq lbl_806330BC
/* 806330B0  38 03 FF FF */	addi r0, r3, -1
/* 806330B4  98 1D 0F AE */	stb r0, 0xfae(r29)
/* 806330B8  48 00 00 F4 */	b lbl_806331AC
lbl_806330BC:
/* 806330BC  38 00 00 01 */	li r0, 1
/* 806330C0  98 1D 0F AE */	stb r0, 0xfae(r29)
/* 806330C4  7F A3 EB 78 */	mr r3, r29
/* 806330C8  4B FF D0 2D */	bl setBreakFrizad__8daB_YO_cFv
/* 806330CC  88 7D 0F B6 */	lbz r3, 0xfb6(r29)
/* 806330D0  38 03 00 01 */	addi r0, r3, 1
/* 806330D4  98 1D 0F B6 */	stb r0, 0xfb6(r29)
/* 806330D8  88 1D 0F B6 */	lbz r0, 0xfb6(r29)
/* 806330DC  C8 3F 01 78 */	lfd f1, 0x178(r31)
/* 806330E0  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806330E4  3C 00 43 30 */	lis r0, 0x4330
/* 806330E8  90 01 00 28 */	stw r0, 0x28(r1)
/* 806330EC  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 806330F0  EC 20 08 28 */	fsubs f1, f0, f1
/* 806330F4  3C 60 80 64 */	lis r3, l_HIO@ha /* 0x80639F84@ha */
/* 806330F8  38 63 9F 84 */	addi r3, r3, l_HIO@l /* 0x80639F84@l */
/* 806330FC  C0 03 00 28 */	lfs f0, 0x28(r3)
/* 80633100  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80633104  4C 41 13 82 */	cror 2, 1, 2
/* 80633108  40 82 00 A4 */	bne lbl_806331AC
/* 8063310C  38 60 00 02 */	li r3, 2
/* 80633110  98 7D 0F AD */	stb r3, 0xfad(r29)
/* 80633114  38 00 00 2D */	li r0, 0x2d
/* 80633118  90 1D 0F 98 */	stw r0, 0xf98(r29)
/* 8063311C  98 7D 0F AF */	stb r3, 0xfaf(r29)
/* 80633120  38 00 00 00 */	li r0, 0
/* 80633124  98 1D 0F B6 */	stb r0, 0xfb6(r29)
/* 80633128  48 00 00 84 */	b lbl_806331AC
lbl_8063312C:
/* 8063312C  38 7D 0F 5E */	addi r3, r29, 0xf5e
/* 80633130  38 80 04 00 */	li r4, 0x400
/* 80633134  38 A0 00 20 */	li r5, 0x20
/* 80633138  4B C3 DA 59 */	bl cLib_chaseAngleS__FPsss
/* 8063313C  A8 7D 0F 5C */	lha r3, 0xf5c(r29)
/* 80633140  A8 1D 0F 5E */	lha r0, 0xf5e(r29)
/* 80633144  7C 03 02 14 */	add r0, r3, r0
/* 80633148  B0 1D 0F 5C */	sth r0, 0xf5c(r29)
/* 8063314C  80 1D 0F 98 */	lwz r0, 0xf98(r29)
/* 80633150  2C 00 00 00 */	cmpwi r0, 0
/* 80633154  40 82 00 58 */	bne lbl_806331AC
/* 80633158  38 60 00 03 */	li r3, 3
/* 8063315C  98 7D 0F AD */	stb r3, 0xfad(r29)
/* 80633160  38 00 00 0A */	li r0, 0xa
/* 80633164  90 1D 0F 98 */	stw r0, 0xf98(r29)
/* 80633168  98 7D 0F AF */	stb r3, 0xfaf(r29)
/* 8063316C  7F A3 EB 78 */	mr r3, r29
/* 80633170  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80633174  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80633178  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8063317C  4B 9E 75 95 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80633180  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80633184  48 00 00 28 */	b lbl_806331AC
lbl_80633188:
/* 80633188  80 1D 0F 98 */	lwz r0, 0xf98(r29)
/* 8063318C  2C 00 00 00 */	cmpwi r0, 0
/* 80633190  40 82 00 1C */	bne lbl_806331AC
/* 80633194  38 00 00 00 */	li r0, 0
/* 80633198  98 1D 0F AD */	stb r0, 0xfad(r29)
/* 8063319C  38 00 00 96 */	li r0, 0x96
/* 806331A0  90 1D 0F 98 */	stw r0, 0xf98(r29)
/* 806331A4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 806331A8  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_806331AC:
/* 806331AC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 806331B0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 806331B4  39 61 00 40 */	addi r11, r1, 0x40
/* 806331B8  4B D2 F0 6D */	bl _restgpr_28
/* 806331BC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806331C0  7C 08 03 A6 */	mtlr r0
/* 806331C4  38 21 00 50 */	addi r1, r1, 0x50
/* 806331C8  4E 80 00 20 */	blr 
