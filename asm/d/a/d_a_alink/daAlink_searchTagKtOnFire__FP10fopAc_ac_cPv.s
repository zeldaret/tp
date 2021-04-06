lbl_80110668:
/* 80110668  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8011066C  7C 08 02 A6 */	mflr r0
/* 80110670  90 01 00 14 */	stw r0, 0x14(r1)
/* 80110674  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80110678  93 C1 00 08 */	stw r30, 8(r1)
/* 8011067C  7C 7E 1B 78 */	mr r30, r3
/* 80110680  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80110684  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80110688  83 E3 5D B4 */	lwz r31, 0x5db4(r3)
/* 8011068C  A8 1E 00 08 */	lha r0, 8(r30)
/* 80110690  2C 00 01 68 */	cmpwi r0, 0x168
/* 80110694  40 82 00 38 */	bne lbl_801106CC
/* 80110698  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 8011069C  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 801106A0  48 23 6C FD */	bl PSVECSquareDistance
/* 801106A4  C0 02 95 C0 */	lfs f0, lit_26816(r2)
/* 801106A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801106AC  40 80 00 20 */	bge lbl_801106CC
/* 801106B0  7F E3 FB 78 */	mr r3, r31
/* 801106B4  7F C4 F3 78 */	mr r4, r30
/* 801106B8  4B F0 A0 E5 */	bl fopAcM_seenActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 801106BC  2C 03 30 00 */	cmpwi r3, 0x3000
/* 801106C0  40 80 00 0C */	bge lbl_801106CC
/* 801106C4  7F C3 F3 78 */	mr r3, r30
/* 801106C8  48 00 00 08 */	b lbl_801106D0
lbl_801106CC:
/* 801106CC  38 60 00 00 */	li r3, 0
lbl_801106D0:
/* 801106D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801106D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 801106D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801106DC  7C 08 03 A6 */	mtlr r0
/* 801106E0  38 21 00 10 */	addi r1, r1, 0x10
/* 801106E4  4E 80 00 20 */	blr 
