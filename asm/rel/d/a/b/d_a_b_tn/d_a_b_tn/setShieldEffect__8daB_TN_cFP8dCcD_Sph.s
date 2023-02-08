lbl_8062138C:
/* 8062138C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80621390  7C 08 02 A6 */	mflr r0
/* 80621394  90 01 00 14 */	stw r0, 0x14(r1)
/* 80621398  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8062139C  93 C1 00 08 */	stw r30, 8(r1)
/* 806213A0  7C 7E 1B 78 */	mr r30, r3
/* 806213A4  7C 9F 23 78 */	mr r31, r4
/* 806213A8  38 7E 06 4C */	addi r3, r30, 0x64c
/* 806213AC  80 9E 3E B8 */	lwz r4, 0x3eb8(r30)
/* 806213B0  38 A0 00 2A */	li r5, 0x2a
/* 806213B4  7F C6 F3 78 */	mr r6, r30
/* 806213B8  4B A6 61 5D */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
/* 806213BC  38 DF 00 D4 */	addi r6, r31, 0xd4
/* 806213C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806213C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806213C8  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806213CC  38 80 00 02 */	li r4, 2
/* 806213D0  7F C5 F3 78 */	mr r5, r30
/* 806213D4  38 E0 00 00 */	li r7, 0
/* 806213D8  39 00 00 00 */	li r8, 0
/* 806213DC  39 20 00 00 */	li r9, 0
/* 806213E0  4B A2 AE 39 */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
/* 806213E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806213E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 806213EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806213F0  7C 08 03 A6 */	mtlr r0
/* 806213F4  38 21 00 10 */	addi r1, r1, 0x10
/* 806213F8  4E 80 00 20 */	blr 
