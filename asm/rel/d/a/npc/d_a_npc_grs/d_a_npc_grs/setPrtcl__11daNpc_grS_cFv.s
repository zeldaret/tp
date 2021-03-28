lbl_809E7300:
/* 809E7300  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809E7304  7C 08 02 A6 */	mflr r0
/* 809E7308  90 01 00 64 */	stw r0, 0x64(r1)
/* 809E730C  39 61 00 60 */	addi r11, r1, 0x60
/* 809E7310  4B 97 AE B0 */	b _savegpr_22
/* 809E7314  7C 7A 1B 78 */	mr r26, r3
/* 809E7318  3C 60 80 9E */	lis r3, m__17daNpc_grS_Param_c@ha
/* 809E731C  3B 83 7D CC */	addi r28, r3, m__17daNpc_grS_Param_c@l
/* 809E7320  C0 1C 01 CC */	lfs f0, 0x1cc(r28)
/* 809E7324  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809E7328  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809E732C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809E7330  3B 60 00 00 */	li r27, 0
/* 809E7334  3B 20 00 00 */	li r25, 0
/* 809E7338  3B 00 00 00 */	li r24, 0
/* 809E733C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E7340  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
/* 809E7344  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809E7348  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 809E734C  3B FC 01 B4 */	addi r31, r28, 0x1b4
/* 809E7350  3A FC 01 A8 */	addi r23, r28, 0x1a8
lbl_809E7354:
/* 809E7354  80 7A 05 68 */	lwz r3, 0x568(r26)
/* 809E7358  80 63 00 04 */	lwz r3, 4(r3)
/* 809E735C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809E7360  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809E7364  7C 1F C0 2E */	lwzx r0, r31, r24
/* 809E7368  1C 00 00 30 */	mulli r0, r0, 0x30
/* 809E736C  7C 63 02 14 */	add r3, r3, r0
/* 809E7370  7F A4 EB 78 */	mr r4, r29
/* 809E7374  4B 95 F1 3C */	b PSMTXCopy
/* 809E7378  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 809E737C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809E7380  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 809E7384  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809E7388  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 809E738C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809E7390  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 809E7394  38 00 00 FF */	li r0, 0xff
/* 809E7398  90 01 00 08 */	stw r0, 8(r1)
/* 809E739C  38 80 00 00 */	li r4, 0
/* 809E73A0  90 81 00 0C */	stw r4, 0xc(r1)
/* 809E73A4  38 00 FF FF */	li r0, -1
/* 809E73A8  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E73AC  90 81 00 14 */	stw r4, 0x14(r1)
/* 809E73B0  90 81 00 18 */	stw r4, 0x18(r1)
/* 809E73B4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 809E73B8  3A D8 0E 1C */	addi r22, r24, 0xe1c
/* 809E73BC  7C 9A B0 2E */	lwzx r4, r26, r22
/* 809E73C0  38 A0 00 00 */	li r5, 0
/* 809E73C4  7C D7 CA 2E */	lhzx r6, r23, r25
/* 809E73C8  38 E1 00 2C */	addi r7, r1, 0x2c
/* 809E73CC  39 00 00 00 */	li r8, 0
/* 809E73D0  39 20 00 00 */	li r9, 0
/* 809E73D4  39 41 00 20 */	addi r10, r1, 0x20
/* 809E73D8  C0 3C 00 7C */	lfs f1, 0x7c(r28)
/* 809E73DC  4B 66 60 F0 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 809E73E0  7C 7A B1 2E */	stwx r3, r26, r22
/* 809E73E4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 809E73E8  38 63 02 10 */	addi r3, r3, 0x210
/* 809E73EC  7C 9A B0 2E */	lwzx r4, r26, r22
/* 809E73F0  4B 66 45 28 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 809E73F4  7C 65 1B 79 */	or. r5, r3, r3
/* 809E73F8  41 82 00 18 */	beq lbl_809E7410
/* 809E73FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 809E7400  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 809E7404  38 85 00 68 */	addi r4, r5, 0x68
/* 809E7408  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 809E740C  4B 89 93 D4 */	b func_802807E0
lbl_809E7410:
/* 809E7410  3B 7B 00 01 */	addi r27, r27, 1
/* 809E7414  2C 1B 00 06 */	cmpwi r27, 6
/* 809E7418  3B 39 00 02 */	addi r25, r25, 2
/* 809E741C  3B 18 00 04 */	addi r24, r24, 4
/* 809E7420  41 80 FF 34 */	blt lbl_809E7354
/* 809E7424  39 61 00 60 */	addi r11, r1, 0x60
/* 809E7428  4B 97 AD E4 */	b _restgpr_22
/* 809E742C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809E7430  7C 08 03 A6 */	mtlr r0
/* 809E7434  38 21 00 60 */	addi r1, r1, 0x60
/* 809E7438  4E 80 00 20 */	blr 
