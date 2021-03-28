lbl_80606754:
/* 80606754  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80606758  7C 08 02 A6 */	mflr r0
/* 8060675C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80606760  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80606764  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80606768  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8060676C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80606770  39 61 00 90 */	addi r11, r1, 0x90
/* 80606774  4B D5 BA 58 */	b _savegpr_25
/* 80606778  7C 7E 1B 78 */	mr r30, r3
/* 8060677C  3C 60 80 61 */	lis r3, lit_3928@ha
/* 80606780  3B 43 FD E0 */	addi r26, r3, lit_3928@l
/* 80606784  38 61 00 14 */	addi r3, r1, 0x14
/* 80606788  4B A7 0D F4 */	b __ct__11dBgS_GndChkFv
/* 8060678C  3B E0 00 00 */	li r31, 0
/* 80606790  3B A0 00 00 */	li r29, 0
/* 80606794  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80606798  3B 63 D4 70 */	addi r27, r3, now__14mDoMtx_stack_c@l
/* 8060679C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806067A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806067A4  3B 23 0F 38 */	addi r25, r3, 0xf38
/* 806067A8  3C 60 80 61 */	lis r3, foot_jnt_4418@ha
/* 806067AC  3B 83 01 CC */	addi r28, r3, foot_jnt_4418@l
/* 806067B0  C3 DA 00 00 */	lfs f30, 0(r26)
/* 806067B4  C3 FA 00 3C */	lfs f31, 0x3c(r26)
lbl_806067B8:
/* 806067B8  80 7E 05 BC */	lwz r3, 0x5bc(r30)
/* 806067BC  80 63 00 04 */	lwz r3, 4(r3)
/* 806067C0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806067C4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806067C8  7C 1C E8 2E */	lwzx r0, r28, r29
/* 806067CC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 806067D0  7C 63 02 14 */	add r3, r3, r0
/* 806067D4  7F 64 DB 78 */	mr r4, r27
/* 806067D8  4B D3 FC D8 */	b PSMTXCopy
/* 806067DC  C0 1B 00 0C */	lfs f0, 0xc(r27)
/* 806067E0  D0 01 00 08 */	stfs f0, 8(r1)
/* 806067E4  C0 3B 00 1C */	lfs f1, 0x1c(r27)
/* 806067E8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806067EC  C0 1B 00 2C */	lfs f0, 0x2c(r27)
/* 806067F0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806067F4  EC 01 F0 2A */	fadds f0, f1, f30
/* 806067F8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806067FC  38 61 00 14 */	addi r3, r1, 0x14
/* 80606800  38 81 00 08 */	addi r4, r1, 8
/* 80606804  4B C6 15 24 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80606808  7F 23 CB 78 */	mr r3, r25
/* 8060680C  38 81 00 14 */	addi r4, r1, 0x14
/* 80606810  4B A6 DC 90 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80606814  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80606818  FC 00 08 18 */	frsp f0, f1
/* 8060681C  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 80606820  41 82 00 28 */	beq lbl_80606848
/* 80606824  7C 9E EA 14 */	add r4, r30, r29
/* 80606828  38 64 25 F8 */	addi r3, r4, 0x25f8
/* 8060682C  38 84 26 08 */	addi r4, r4, 0x2608
/* 80606830  38 A1 00 08 */	addi r5, r1, 8
/* 80606834  38 C0 00 00 */	li r6, 0
/* 80606838  C0 3A 00 48 */	lfs f1, 0x48(r26)
/* 8060683C  38 FE 01 0C */	addi r7, r30, 0x10c
/* 80606840  39 00 00 01 */	li r8, 1
/* 80606844  4B A1 67 DC */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
lbl_80606848:
/* 80606848  3B FF 00 01 */	addi r31, r31, 1
/* 8060684C  2C 1F 00 02 */	cmpwi r31, 2
/* 80606850  3B BD 00 04 */	addi r29, r29, 4
/* 80606854  41 80 FF 64 */	blt lbl_806067B8
/* 80606858  38 61 00 14 */	addi r3, r1, 0x14
/* 8060685C  38 80 FF FF */	li r4, -1
/* 80606860  4B A7 0D 90 */	b __dt__11dBgS_GndChkFv
/* 80606864  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80606868  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8060686C  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80606870  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80606874  39 61 00 90 */	addi r11, r1, 0x90
/* 80606878  4B D5 B9 A0 */	b _restgpr_25
/* 8060687C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80606880  7C 08 03 A6 */	mtlr r0
/* 80606884  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80606888  4E 80 00 20 */	blr 
