lbl_80181664:
/* 80181664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80181668  7C 08 02 A6 */	mflr r0
/* 8018166C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80181670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80181674  93 C1 00 08 */	stw r30, 8(r1)
/* 80181678  7C 7E 1B 78 */	mr r30, r3
/* 8018167C  4B E9 CC 8D */	bl fopCamM_GetParam__FP12camera_class
/* 80181680  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80181684  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80181688  1F E3 00 38 */	mulli r31, r3, 0x38
/* 8018168C  7C 64 FA 14 */	add r3, r4, r31
/* 80181690  88 03 5D 78 */	lbz r0, 0x5d78(r3)
/* 80181694  7C 00 07 74 */	extsb r0, r0
/* 80181698  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 8018169C  7C 64 02 14 */	add r3, r4, r0
/* 801816A0  38 63 5D 48 */	addi r3, r3, 0x5d48
/* 801816A4  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 801816A8  C0 03 00 08 */	lfs f0, 8(r3)
/* 801816AC  D0 1E 0B 5C */	stfs f0, 0xb5c(r30)
/* 801816B0  D0 3E 0B 60 */	stfs f1, 0xb60(r30)
/* 801816B4  EC 00 08 24 */	fdivs f0, f0, f1
/* 801816B8  D0 1E 0B 74 */	stfs f0, 0xb74(r30)
/* 801816BC  C0 02 9F 1C */	lfs f0, lit_17525(r2)
/* 801816C0  D0 1E 00 D4 */	stfs f0, 0xd4(r30)
/* 801816C4  4B F1 C1 B9 */	bl getE3Zhint__9daAlink_cFv
/* 801816C8  2C 03 00 00 */	cmpwi r3, 0
/* 801816CC  40 82 00 24 */	bne lbl_801816F0
/* 801816D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801816D4  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 801816D8  7C A0 FA 14 */	add r5, r0, r31
/* 801816DC  80 85 5D 7C */	lwz r4, 0x5d7c(r5)
/* 801816E0  3C 60 FF FF */	lis r3, 0xFFFF /* 0xFFFEFFD4@ha */
/* 801816E4  38 03 FF D4 */	addi r0, r3, 0xFFD4 /* 0xFFFEFFD4@l */
/* 801816E8  7C 80 00 38 */	and r0, r4, r0
/* 801816EC  90 05 5D 7C */	stw r0, 0x5d7c(r5)
lbl_801816F0:
/* 801816F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801816F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801816F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801816FC  7C 08 03 A6 */	mtlr r0
/* 80181700  38 21 00 10 */	addi r1, r1, 0x10
/* 80181704  4E 80 00 20 */	blr 
