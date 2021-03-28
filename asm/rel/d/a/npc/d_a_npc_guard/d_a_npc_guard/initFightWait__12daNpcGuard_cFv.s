lbl_809F03FC:
/* 809F03FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F0400  7C 08 02 A6 */	mflr r0
/* 809F0404  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F0408  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F040C  93 C1 00 08 */	stw r30, 8(r1)
/* 809F0410  7C 7E 1B 78 */	mr r30, r3
/* 809F0414  3C 80 80 9F */	lis r4, lit_3900@ha
/* 809F0418  3B E4 2C 50 */	addi r31, r4, lit_3900@l
/* 809F041C  38 80 00 2A */	li r4, 0x2a
/* 809F0420  80 A3 0D 84 */	lwz r5, 0xd84(r3)
/* 809F0424  4B 76 7C CC */	b getAnmP__10daNpcCd2_cFii
/* 809F0428  7C 64 1B 78 */	mr r4, r3
/* 809F042C  7F C3 F3 78 */	mr r3, r30
/* 809F0430  C0 3F 00 00 */	lfs f1, 0(r31)
/* 809F0434  C0 5F 00 04 */	lfs f2, 4(r31)
/* 809F0438  38 A0 00 02 */	li r5, 2
/* 809F043C  38 C0 00 00 */	li r6, 0
/* 809F0440  38 E0 FF FF */	li r7, -1
/* 809F0444  4B 76 8A BC */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 809F0448  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 809F044C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809F0450  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 809F0454  C0 5F 00 34 */	lfs f2, 0x34(r31)
/* 809F0458  48 00 20 79 */	bl func_809F24D0
/* 809F045C  D0 3E 0D 98 */	stfs f1, 0xd98(r30)
/* 809F0460  7F C3 F3 78 */	mr r3, r30
/* 809F0464  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809F0468  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809F046C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809F0470  4B 62 A4 F4 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F0474  C0 1E 0D 98 */	lfs f0, 0xd98(r30)
/* 809F0478  EC 21 00 28 */	fsubs f1, f1, f0
/* 809F047C  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 809F0480  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809F0484  40 80 00 10 */	bge lbl_809F0494
/* 809F0488  38 7E 05 94 */	addi r3, r30, 0x594
/* 809F048C  38 80 00 01 */	li r4, 1
/* 809F0490  4B 8D 09 88 */	b playVoice__17Z2CreatureCitizenFi
lbl_809F0494:
/* 809F0494  38 00 00 00 */	li r0, 0
/* 809F0498  90 1E 0D 9C */	stw r0, 0xd9c(r30)
/* 809F049C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F04A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F04A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F04A8  7C 08 03 A6 */	mtlr r0
/* 809F04AC  38 21 00 10 */	addi r1, r1, 0x10
/* 809F04B0  4E 80 00 20 */	blr 
