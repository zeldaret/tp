lbl_806062C0:
/* 806062C0  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 806062C4  7C 08 02 A6 */	mflr r0
/* 806062C8  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 806062CC  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 806062D0  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 806062D4  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 806062D8  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 806062DC  39 61 00 90 */	addi r11, r1, 0x90
/* 806062E0  4B D5 BE EC */	b _savegpr_25
/* 806062E4  7C 7D 1B 78 */	mr r29, r3
/* 806062E8  3C 60 80 61 */	lis r3, lit_3928@ha
/* 806062EC  3B E3 FD E0 */	addi r31, r3, lit_3928@l
/* 806062F0  38 61 00 18 */	addi r3, r1, 0x18
/* 806062F4  4B A7 12 88 */	b __ct__11dBgS_GndChkFv
/* 806062F8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704F8@ha */
/* 806062FC  38 03 04 F8 */	addi r0, r3, 0x04F8 /* 0x000704F8@l */
/* 80606300  90 01 00 08 */	stw r0, 8(r1)
/* 80606304  38 7D 09 E0 */	addi r3, r29, 0x9e0
/* 80606308  38 81 00 08 */	addi r4, r1, 8
/* 8060630C  38 A0 00 00 */	li r5, 0
/* 80606310  38 C0 FF FF */	li r6, -1
/* 80606314  81 9D 09 E0 */	lwz r12, 0x9e0(r29)
/* 80606318  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8060631C  7D 89 03 A6 */	mtctr r12
/* 80606320  4E 80 04 21 */	bctrl 
/* 80606324  3B C0 00 00 */	li r30, 0
/* 80606328  3B 80 00 00 */	li r28, 0
/* 8060632C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80606330  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
/* 80606334  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80606338  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8060633C  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 80606340  3C 60 80 61 */	lis r3, foot_jnt_4276@ha
/* 80606344  3B 63 01 BC */	addi r27, r3, foot_jnt_4276@l
/* 80606348  C3 DF 00 00 */	lfs f30, 0(r31)
/* 8060634C  C3 FF 00 3C */	lfs f31, 0x3c(r31)
lbl_80606350:
/* 80606350  80 7D 05 BC */	lwz r3, 0x5bc(r29)
/* 80606354  80 63 00 04 */	lwz r3, 4(r3)
/* 80606358  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8060635C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80606360  7C 1B E0 2E */	lwzx r0, r27, r28
/* 80606364  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80606368  7C 63 02 14 */	add r3, r3, r0
/* 8060636C  7F 44 D3 78 */	mr r4, r26
/* 80606370  4B D4 01 40 */	b PSMTXCopy
/* 80606374  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80606378  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8060637C  C0 3A 00 1C */	lfs f1, 0x1c(r26)
/* 80606380  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80606384  C0 1A 00 2C */	lfs f0, 0x2c(r26)
/* 80606388  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8060638C  EC 01 F0 2A */	fadds f0, f1, f30
/* 80606390  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80606394  38 61 00 18 */	addi r3, r1, 0x18
/* 80606398  38 81 00 0C */	addi r4, r1, 0xc
/* 8060639C  4B C6 19 8C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 806063A0  7F 23 CB 78 */	mr r3, r25
/* 806063A4  38 81 00 18 */	addi r4, r1, 0x18
/* 806063A8  4B A6 E0 F8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806063AC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806063B0  FC 00 08 18 */	frsp f0, f1
/* 806063B4  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 806063B8  41 82 00 28 */	beq lbl_806063E0
/* 806063BC  7C 9D E2 14 */	add r4, r29, r28
/* 806063C0  38 64 25 F8 */	addi r3, r4, 0x25f8
/* 806063C4  38 84 26 08 */	addi r4, r4, 0x2608
/* 806063C8  38 A1 00 0C */	addi r5, r1, 0xc
/* 806063CC  38 C0 00 00 */	li r6, 0
/* 806063D0  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806063D4  38 FD 01 0C */	addi r7, r29, 0x10c
/* 806063D8  39 00 00 00 */	li r8, 0
/* 806063DC  4B A1 6C 44 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_806063E0:
/* 806063E0  3B DE 00 01 */	addi r30, r30, 1
/* 806063E4  2C 1E 00 04 */	cmpwi r30, 4
/* 806063E8  3B 9C 00 04 */	addi r28, r28, 4
/* 806063EC  41 80 FF 64 */	blt lbl_80606350
/* 806063F0  38 61 00 18 */	addi r3, r1, 0x18
/* 806063F4  38 80 FF FF */	li r4, -1
/* 806063F8  4B A7 11 F8 */	b __dt__11dBgS_GndChkFv
/* 806063FC  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80606400  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80606404  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80606408  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8060640C  39 61 00 90 */	addi r11, r1, 0x90
/* 80606410  4B D5 BE 08 */	b _restgpr_25
/* 80606414  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80606418  7C 08 03 A6 */	mtlr r0
/* 8060641C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80606420  4E 80 00 20 */	blr 
