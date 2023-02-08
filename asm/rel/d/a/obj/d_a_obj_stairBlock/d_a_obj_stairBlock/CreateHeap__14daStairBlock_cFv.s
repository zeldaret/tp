lbl_80CE82A0:
/* 80CE82A0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80CE82A4  7C 08 02 A6 */	mflr r0
/* 80CE82A8  90 01 00 74 */	stw r0, 0x74(r1)
/* 80CE82AC  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80CE82B0  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80CE82B4  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80CE82B8  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80CE82BC  39 61 00 50 */	addi r11, r1, 0x50
/* 80CE82C0  4B 67 9E F9 */	bl _savegpr_20
/* 80CE82C4  7C 7C 1B 78 */	mr r28, r3
/* 80CE82C8  3C 60 80 CF */	lis r3, lit_3651@ha /* 0x80CE8DBC@ha */
/* 80CE82CC  3B E3 8D BC */	addi r31, r3, lit_3651@l /* 0x80CE8DBC@l */
/* 80CE82D0  3B A0 00 00 */	li r29, 0
/* 80CE82D4  3B 60 00 00 */	li r27, 0
/* 80CE82D8  3B 40 00 00 */	li r26, 0
/* 80CE82DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CE82E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CE82E4  3F C3 00 02 */	addis r30, r3, 2
/* 80CE82E8  3C 60 80 CF */	lis r3, d_a_obj_stairBlock__stringBase0@ha /* 0x80CE8ECC@ha */
/* 80CE82EC  3A A3 8E CC */	addi r21, r3, d_a_obj_stairBlock__stringBase0@l /* 0x80CE8ECC@l */
/* 80CE82F0  3A DF 00 34 */	addi r22, r31, 0x34
/* 80CE82F4  3E E0 11 00 */	lis r23, 0x1100
/* 80CE82F8  3B 1F 00 5C */	addi r24, r31, 0x5c
/* 80CE82FC  CB DF 01 00 */	lfd f30, 0x100(r31)
/* 80CE8300  3F 20 43 30 */	lis r25, 0x4330
/* 80CE8304  C3 FF 00 FC */	lfs f31, 0xfc(r31)
/* 80CE8308  3B DE C2 F8 */	addi r30, r30, -15624
lbl_80CE830C:
/* 80CE830C  7E A3 AB 78 */	mr r3, r21
/* 80CE8310  7C 96 D0 2E */	lwzx r4, r22, r26
/* 80CE8314  7F C5 F3 78 */	mr r5, r30
/* 80CE8318  38 C0 00 80 */	li r6, 0x80
/* 80CE831C  4B 35 3F D1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CE8320  3C 80 00 08 */	lis r4, 8
/* 80CE8324  38 B7 00 84 */	addi r5, r23, 0x84
/* 80CE8328  4B 32 C9 2D */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CE832C  38 1A 05 74 */	addi r0, r26, 0x574
/* 80CE8330  7C 7C 01 2E */	stwx r3, r28, r0
/* 80CE8334  7C 1C 00 2E */	lwzx r0, r28, r0
/* 80CE8338  28 00 00 00 */	cmplwi r0, 0
/* 80CE833C  40 82 00 0C */	bne lbl_80CE8348
/* 80CE8340  38 60 00 00 */	li r3, 0
/* 80CE8344  48 00 00 84 */	b lbl_80CE83C8
lbl_80CE8348:
/* 80CE8348  7E A3 AB 78 */	mr r3, r21
/* 80CE834C  7C 98 D0 2E */	lwzx r4, r24, r26
/* 80CE8350  7F C5 F3 78 */	mr r5, r30
/* 80CE8354  38 C0 00 80 */	li r6, 0x80
/* 80CE8358  4B 35 3F 95 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80CE835C  7C 64 1B 78 */	mr r4, r3
/* 80CE8360  7E 9C DA 14 */	add r20, r28, r27
/* 80CE8364  38 74 05 9C */	addi r3, r20, 0x59c
/* 80CE8368  38 A0 00 01 */	li r5, 1
/* 80CE836C  38 C0 00 00 */	li r6, 0
/* 80CE8370  C0 3F 00 FC */	lfs f1, 0xfc(r31)
/* 80CE8374  38 E0 00 00 */	li r7, 0
/* 80CE8378  39 00 FF FF */	li r8, -1
/* 80CE837C  39 20 00 00 */	li r9, 0
/* 80CE8380  4B 32 54 5D */	bl init__13mDoExt_bckAnmFP15J3DAnmTransformiifssb
/* 80CE8384  A8 14 05 A4 */	lha r0, 0x5a4(r20)
/* 80CE8388  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CE838C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CE8390  93 21 00 08 */	stw r25, 8(r1)
/* 80CE8394  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CE8398  EC 00 F0 28 */	fsubs f0, f0, f30
/* 80CE839C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80CE83A0  FC 00 00 1E */	fctiwz f0, f0
/* 80CE83A4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80CE83A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE83AC  B0 14 05 A4 */	sth r0, 0x5a4(r20)
/* 80CE83B0  3B BD 00 01 */	addi r29, r29, 1
/* 80CE83B4  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80CE83B8  3B 7B 00 1C */	addi r27, r27, 0x1c
/* 80CE83BC  3B 5A 00 04 */	addi r26, r26, 4
/* 80CE83C0  41 80 FF 4C */	blt lbl_80CE830C
/* 80CE83C4  38 60 00 01 */	li r3, 1
lbl_80CE83C8:
/* 80CE83C8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80CE83CC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80CE83D0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80CE83D4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80CE83D8  39 61 00 50 */	addi r11, r1, 0x50
/* 80CE83DC  4B 67 9E 29 */	bl _restgpr_20
/* 80CE83E0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80CE83E4  7C 08 03 A6 */	mtlr r0
/* 80CE83E8  38 21 00 70 */	addi r1, r1, 0x70
/* 80CE83EC  4E 80 00 20 */	blr 
