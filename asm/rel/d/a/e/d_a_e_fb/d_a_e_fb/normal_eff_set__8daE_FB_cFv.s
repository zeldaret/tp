lbl_806B82B4:
/* 806B82B4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 806B82B8  7C 08 02 A6 */	mflr r0
/* 806B82BC  90 01 00 64 */	stw r0, 0x64(r1)
/* 806B82C0  39 61 00 60 */	addi r11, r1, 0x60
/* 806B82C4  4B CA 9E FD */	bl _savegpr_22
/* 806B82C8  7C 7B 1B 78 */	mr r27, r3
/* 806B82CC  C0 03 06 84 */	lfs f0, 0x684(r3)
/* 806B82D0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806B82D4  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806B82D8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806B82DC  3B 80 00 00 */	li r28, 0
/* 806B82E0  3B 40 00 00 */	li r26, 0
/* 806B82E4  3B 20 00 00 */	li r25, 0
/* 806B82E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B82EC  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B82F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B82F4  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B82F8  3C 60 80 6C */	lis r3, n_joint_id@ha /* 0x806B90CC@ha */
/* 806B82FC  3B E3 90 CC */	addi r31, r3, n_joint_id@l /* 0x806B90CC@l */
/* 806B8300  3C 60 80 6C */	lis r3, n_eff_id@ha /* 0x806B90C0@ha */
/* 806B8304  3A E3 90 C0 */	addi r23, r3, n_eff_id@l /* 0x806B90C0@l */
/* 806B8308  3C 60 80 6C */	lis r3, lit_3751@ha /* 0x806B8FA0@ha */
/* 806B830C  3B 03 8F A0 */	addi r24, r3, lit_3751@l /* 0x806B8FA0@l */
lbl_806B8310:
/* 806B8310  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 806B8314  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806B8318  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 806B831C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806B8320  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 806B8324  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806B8328  7C 1F C8 2E */	lwzx r0, r31, r25
/* 806B832C  2C 00 00 00 */	cmpwi r0, 0
/* 806B8330  41 82 00 40 */	beq lbl_806B8370
/* 806B8334  80 7B 05 B4 */	lwz r3, 0x5b4(r27)
/* 806B8338  80 63 00 04 */	lwz r3, 4(r3)
/* 806B833C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B8340  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B8344  1C 00 00 30 */	mulli r0, r0, 0x30
/* 806B8348  7C 63 02 14 */	add r3, r3, r0
/* 806B834C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B8350  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B8354  4B C8 E1 5D */	bl PSMTXCopy
/* 806B8358  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 806B835C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806B8360  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 806B8364  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806B8368  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 806B836C  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_806B8370:
/* 806B8370  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 806B8374  38 00 00 FF */	li r0, 0xff
/* 806B8378  90 01 00 08 */	stw r0, 8(r1)
/* 806B837C  38 80 00 00 */	li r4, 0
/* 806B8380  90 81 00 0C */	stw r4, 0xc(r1)
/* 806B8384  38 00 FF FF */	li r0, -1
/* 806B8388  90 01 00 10 */	stw r0, 0x10(r1)
/* 806B838C  90 81 00 14 */	stw r4, 0x14(r1)
/* 806B8390  90 81 00 18 */	stw r4, 0x18(r1)
/* 806B8394  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806B8398  3A D9 0C C4 */	addi r22, r25, 0xcc4
/* 806B839C  7C 9B B0 2E */	lwzx r4, r27, r22
/* 806B83A0  38 A0 00 00 */	li r5, 0
/* 806B83A4  7C D7 D2 2E */	lhzx r6, r23, r26
/* 806B83A8  38 E1 00 20 */	addi r7, r1, 0x20
/* 806B83AC  39 00 00 00 */	li r8, 0
/* 806B83B0  39 3B 04 E4 */	addi r9, r27, 0x4e4
/* 806B83B4  39 41 00 2C */	addi r10, r1, 0x2c
/* 806B83B8  C0 38 00 00 */	lfs f1, 0(r24)
/* 806B83BC  4B 99 51 11 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806B83C0  7C 7B B1 2E */	stwx r3, r27, r22
/* 806B83C4  3B 9C 00 01 */	addi r28, r28, 1
/* 806B83C8  2C 1C 00 05 */	cmpwi r28, 5
/* 806B83CC  3B 5A 00 02 */	addi r26, r26, 2
/* 806B83D0  3B 39 00 04 */	addi r25, r25, 4
/* 806B83D4  41 80 FF 3C */	blt lbl_806B8310
/* 806B83D8  39 61 00 60 */	addi r11, r1, 0x60
/* 806B83DC  4B CA 9E 31 */	bl _restgpr_22
/* 806B83E0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 806B83E4  7C 08 03 A6 */	mtlr r0
/* 806B83E8  38 21 00 60 */	addi r1, r1, 0x60
/* 806B83EC  4E 80 00 20 */	blr 
