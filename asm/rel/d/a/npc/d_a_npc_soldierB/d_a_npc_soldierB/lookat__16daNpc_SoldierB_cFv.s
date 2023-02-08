lbl_80AF4A08:
/* 80AF4A08  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80AF4A0C  7C 08 02 A6 */	mflr r0
/* 80AF4A10  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80AF4A14  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 80AF4A18  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 80AF4A1C  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 80AF4A20  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 80AF4A24  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 80AF4A28  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 80AF4A2C  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 80AF4A30  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 80AF4A34  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 80AF4A38  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 80AF4A3C  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 80AF4A40  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 80AF4A44  DB 21 00 70 */	stfd f25, 0x70(r1)
/* 80AF4A48  F3 21 00 78 */	psq_st f25, 120(r1), 0, 0 /* qr0 */
/* 80AF4A4C  DB 01 00 60 */	stfd f24, 0x60(r1)
/* 80AF4A50  F3 01 00 68 */	psq_st f24, 104(r1), 0, 0 /* qr0 */
/* 80AF4A54  39 61 00 60 */	addi r11, r1, 0x60
/* 80AF4A58  4B 86 D7 7D */	bl _savegpr_27
/* 80AF4A5C  7C 7B 1B 78 */	mr r27, r3
/* 80AF4A60  3C 60 80 AF */	lis r3, m__22daNpc_SoldierB_Param_c@ha /* 0x80AF5AD4@ha */
/* 80AF4A64  3B E3 5A D4 */	addi r31, r3, m__22daNpc_SoldierB_Param_c@l /* 0x80AF5AD4@l */
/* 80AF4A68  38 60 00 00 */	li r3, 0
/* 80AF4A6C  80 9B 05 68 */	lwz r4, 0x568(r27)
/* 80AF4A70  83 C4 00 04 */	lwz r30, 4(r4)
/* 80AF4A74  3B A0 00 00 */	li r29, 0
/* 80AF4A78  38 9F 00 00 */	addi r4, r31, 0
/* 80AF4A7C  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 80AF4A80  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 80AF4A84  C3 A4 00 2C */	lfs f29, 0x2c(r4)
/* 80AF4A88  C3 84 00 28 */	lfs f28, 0x28(r4)
/* 80AF4A8C  C3 64 00 34 */	lfs f27, 0x34(r4)
/* 80AF4A90  C3 44 00 30 */	lfs f26, 0x30(r4)
/* 80AF4A94  C3 24 00 3C */	lfs f25, 0x3c(r4)
/* 80AF4A98  C3 04 00 38 */	lfs f24, 0x38(r4)
/* 80AF4A9C  A8 9B 08 F8 */	lha r4, 0x8f8(r27)
/* 80AF4AA0  A8 1B 08 F2 */	lha r0, 0x8f2(r27)
/* 80AF4AA4  7C 04 00 50 */	subf r0, r4, r0
/* 80AF4AA8  7C 1C 07 34 */	extsh r28, r0
/* 80AF4AAC  C0 1B 08 54 */	lfs f0, 0x854(r27)
/* 80AF4AB0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AF4AB4  C0 1B 08 58 */	lfs f0, 0x858(r27)
/* 80AF4AB8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AF4ABC  C0 1B 08 5C */	lfs f0, 0x85c(r27)
/* 80AF4AC0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AF4AC4  C0 1B 08 60 */	lfs f0, 0x860(r27)
/* 80AF4AC8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AF4ACC  C0 1B 08 64 */	lfs f0, 0x864(r27)
/* 80AF4AD0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AF4AD4  C0 1B 08 68 */	lfs f0, 0x868(r27)
/* 80AF4AD8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AF4ADC  C0 1B 08 6C */	lfs f0, 0x86c(r27)
/* 80AF4AE0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AF4AE4  C0 1B 08 70 */	lfs f0, 0x870(r27)
/* 80AF4AE8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AF4AEC  C0 1B 08 74 */	lfs f0, 0x874(r27)
/* 80AF4AF0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AF4AF4  80 9F 01 08 */	lwz r4, 0x108(r31)
/* 80AF4AF8  80 1F 01 0C */	lwz r0, 0x10c(r31)
/* 80AF4AFC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80AF4B00  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AF4B04  80 1F 01 10 */	lwz r0, 0x110(r31)
/* 80AF4B08  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AF4B0C  38 1B 09 1A */	addi r0, r27, 0x91a
/* 80AF4B10  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AF4B14  38 1B 09 20 */	addi r0, r27, 0x920
/* 80AF4B18  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AF4B1C  38 1B 09 26 */	addi r0, r27, 0x926
/* 80AF4B20  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AF4B24  A8 1B 0E 14 */	lha r0, 0xe14(r27)
/* 80AF4B28  2C 00 00 04 */	cmpwi r0, 4
/* 80AF4B2C  41 82 00 4C */	beq lbl_80AF4B78
/* 80AF4B30  40 80 00 14 */	bge lbl_80AF4B44
/* 80AF4B34  2C 00 00 01 */	cmpwi r0, 1
/* 80AF4B38  41 82 00 18 */	beq lbl_80AF4B50
/* 80AF4B3C  40 80 00 1C */	bge lbl_80AF4B58
/* 80AF4B40  48 00 00 4C */	b lbl_80AF4B8C
lbl_80AF4B44:
/* 80AF4B44  2C 00 00 06 */	cmpwi r0, 6
/* 80AF4B48  40 80 00 44 */	bge lbl_80AF4B8C
/* 80AF4B4C  48 00 00 38 */	b lbl_80AF4B84
lbl_80AF4B50:
/* 80AF4B50  3B A0 00 01 */	li r29, 1
/* 80AF4B54  48 00 00 38 */	b lbl_80AF4B8C
lbl_80AF4B58:
/* 80AF4B58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AF4B5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AF4B60  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80AF4B64  2C 00 00 03 */	cmpwi r0, 3
/* 80AF4B68  40 82 00 24 */	bne lbl_80AF4B8C
/* 80AF4B6C  C3 3F 01 14 */	lfs f25, 0x114(r31)
/* 80AF4B70  C3 1F 01 18 */	lfs f24, 0x118(r31)
/* 80AF4B74  48 00 00 18 */	b lbl_80AF4B8C
lbl_80AF4B78:
/* 80AF4B78  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80AF4B7C  4B 65 BB 71 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AF4B80  48 00 00 0C */	b lbl_80AF4B8C
lbl_80AF4B84:
/* 80AF4B84  38 7B 0C 88 */	addi r3, r27, 0xc88
/* 80AF4B88  4B 65 BB 65 */	bl getActorP__18daNpcF_ActorMngr_cFv
lbl_80AF4B8C:
/* 80AF4B8C  28 03 00 00 */	cmplwi r3, 0
/* 80AF4B90  41 82 00 54 */	beq lbl_80AF4BE4
/* 80AF4B94  C0 03 05 50 */	lfs f0, 0x550(r3)
/* 80AF4B98  D0 1B 08 78 */	stfs f0, 0x878(r27)
/* 80AF4B9C  C0 03 05 54 */	lfs f0, 0x554(r3)
/* 80AF4BA0  D0 1B 08 7C */	stfs f0, 0x87c(r27)
/* 80AF4BA4  C0 03 05 58 */	lfs f0, 0x558(r3)
/* 80AF4BA8  D0 1B 08 80 */	stfs f0, 0x880(r27)
/* 80AF4BAC  A8 1B 0E 14 */	lha r0, 0xe14(r27)
/* 80AF4BB0  2C 00 00 02 */	cmpwi r0, 2
/* 80AF4BB4  41 82 00 24 */	beq lbl_80AF4BD8
/* 80AF4BB8  2C 00 00 03 */	cmpwi r0, 3
/* 80AF4BBC  41 82 00 1C */	beq lbl_80AF4BD8
/* 80AF4BC0  2C 00 00 04 */	cmpwi r0, 4
/* 80AF4BC4  41 82 00 14 */	beq lbl_80AF4BD8
/* 80AF4BC8  C0 3B 08 7C */	lfs f1, 0x87c(r27)
/* 80AF4BCC  C0 1F 01 1C */	lfs f0, 0x11c(r31)
/* 80AF4BD0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80AF4BD4  D0 1B 08 7C */	stfs f0, 0x87c(r27)
lbl_80AF4BD8:
/* 80AF4BD8  38 1B 08 78 */	addi r0, r27, 0x878
/* 80AF4BDC  90 1B 0C 0C */	stw r0, 0xc0c(r27)
/* 80AF4BE0  48 00 00 0C */	b lbl_80AF4BEC
lbl_80AF4BE4:
/* 80AF4BE4  38 00 00 00 */	li r0, 0
/* 80AF4BE8  90 1B 0C 0C */	stw r0, 0xc0c(r27)
lbl_80AF4BEC:
/* 80AF4BEC  D3 61 00 08 */	stfs f27, 8(r1)
/* 80AF4BF0  D3 41 00 0C */	stfs f26, 0xc(r1)
/* 80AF4BF4  D3 21 00 10 */	stfs f25, 0x10(r1)
/* 80AF4BF8  D3 01 00 14 */	stfs f24, 0x14(r1)
/* 80AF4BFC  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 80AF4C00  FC 20 F8 90 */	fmr f1, f31
/* 80AF4C04  FC 40 F0 90 */	fmr f2, f30
/* 80AF4C08  FC 60 E8 90 */	fmr f3, f29
/* 80AF4C0C  FC 80 E0 90 */	fmr f4, f28
/* 80AF4C10  C0 BF 00 80 */	lfs f5, 0x80(r31)
/* 80AF4C14  FC C0 28 90 */	fmr f6, f5
/* 80AF4C18  FC E0 28 90 */	fmr f7, f5
/* 80AF4C1C  FD 00 28 90 */	fmr f8, f5
/* 80AF4C20  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80AF4C24  38 A1 00 24 */	addi r5, r1, 0x24
/* 80AF4C28  4B 65 C4 91 */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80AF4C2C  38 7B 0B DC */	addi r3, r27, 0xbdc
/* 80AF4C30  7F 64 DB 78 */	mr r4, r27
/* 80AF4C34  38 BE 00 24 */	addi r5, r30, 0x24
/* 80AF4C38  38 C1 00 18 */	addi r6, r1, 0x18
/* 80AF4C3C  7F A7 EB 78 */	mr r7, r29
/* 80AF4C40  7F 88 E3 78 */	mr r8, r28
/* 80AF4C44  39 20 00 00 */	li r9, 0
/* 80AF4C48  4B 65 C7 09 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80AF4C4C  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 80AF4C50  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 80AF4C54  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 80AF4C58  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 80AF4C5C  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 80AF4C60  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 80AF4C64  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 80AF4C68  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 80AF4C6C  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 80AF4C70  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 80AF4C74  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 80AF4C78  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 80AF4C7C  E3 21 00 78 */	psq_l f25, 120(r1), 0, 0 /* qr0 */
/* 80AF4C80  CB 21 00 70 */	lfd f25, 0x70(r1)
/* 80AF4C84  E3 01 00 68 */	psq_l f24, 104(r1), 0, 0 /* qr0 */
/* 80AF4C88  CB 01 00 60 */	lfd f24, 0x60(r1)
/* 80AF4C8C  39 61 00 60 */	addi r11, r1, 0x60
/* 80AF4C90  4B 86 D5 91 */	bl _restgpr_27
/* 80AF4C94  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 80AF4C98  7C 08 03 A6 */	mtlr r0
/* 80AF4C9C  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80AF4CA0  4E 80 00 20 */	blr 
