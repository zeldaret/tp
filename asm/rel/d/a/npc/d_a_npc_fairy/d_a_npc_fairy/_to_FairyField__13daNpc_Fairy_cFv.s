lbl_809B39FC:
/* 809B39FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809B3A00  7C 08 02 A6 */	mflr r0
/* 809B3A04  90 01 00 24 */	stw r0, 0x24(r1)
/* 809B3A08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809B3A0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809B3A10  7C 7E 1B 78 */	mr r30, r3
/* 809B3A14  3C 60 80 9C */	lis r3, m__19daNpc_Fairy_Param_c@ha /* 0x809B92E4@ha */
/* 809B3A18  3B E3 92 E4 */	addi r31, r3, m__19daNpc_Fairy_Param_c@l /* 0x809B92E4@l */
/* 809B3A1C  80 1E 0F E4 */	lwz r0, 0xfe4(r30)
/* 809B3A20  2C 00 00 00 */	cmpwi r0, 0
/* 809B3A24  41 80 00 74 */	blt lbl_809B3A98
/* 809B3A28  2C 00 00 04 */	cmpwi r0, 4
/* 809B3A2C  41 80 00 08 */	blt lbl_809B3A34
/* 809B3A30  48 00 00 68 */	b lbl_809B3A98
lbl_809B3A34:
/* 809B3A34  38 00 00 9B */	li r0, 0x9b
/* 809B3A38  90 01 00 08 */	stw r0, 8(r1)
/* 809B3A3C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 809B3A40  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 809B3A44  80 63 00 00 */	lwz r3, 0(r3)
/* 809B3A48  38 81 00 08 */	addi r4, r1, 8
/* 809B3A4C  38 A0 00 00 */	li r5, 0
/* 809B3A50  38 C0 00 00 */	li r6, 0
/* 809B3A54  38 E0 00 00 */	li r7, 0
/* 809B3A58  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 809B3A5C  FC 40 08 90 */	fmr f2, f1
/* 809B3A60  C0 7F 00 E8 */	lfs f3, 0xe8(r31)
/* 809B3A64  FC 80 18 90 */	fmr f4, f3
/* 809B3A68  39 00 00 00 */	li r8, 0
/* 809B3A6C  4B 8F 7F 19 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 809B3A70  80 1E 0F E4 */	lwz r0, 0xfe4(r30)
/* 809B3A74  38 7F 01 34 */	addi r3, r31, 0x134
/* 809B3A78  7C 63 00 AE */	lbzx r3, r3, r0
/* 809B3A7C  C0 3F 00 E0 */	lfs f1, 0xe0(r31)
/* 809B3A80  38 80 00 00 */	li r4, 0
/* 809B3A84  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 809B3A88  7C 05 07 74 */	extsb r5, r0
/* 809B3A8C  38 C0 00 00 */	li r6, 0
/* 809B3A90  38 E0 FF FF */	li r7, -1
/* 809B3A94  4B 67 36 DD */	bl dStage_changeScene__FifUlScsi
lbl_809B3A98:
/* 809B3A98  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809B3A9C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809B3AA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809B3AA4  7C 08 03 A6 */	mtlr r0
/* 809B3AA8  38 21 00 20 */	addi r1, r1, 0x20
/* 809B3AAC  4E 80 00 20 */	blr 
