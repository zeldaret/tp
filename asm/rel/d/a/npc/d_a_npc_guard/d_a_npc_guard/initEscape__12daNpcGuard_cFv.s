lbl_809F0A50:
/* 809F0A50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809F0A54  7C 08 02 A6 */	mflr r0
/* 809F0A58  90 01 00 24 */	stw r0, 0x24(r1)
/* 809F0A5C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809F0A60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809F0A64  7C 7E 1B 78 */	mr r30, r3
/* 809F0A68  3C 80 80 9F */	lis r4, lit_3900@ha
/* 809F0A6C  3B E4 2C 50 */	addi r31, r4, lit_3900@l
/* 809F0A70  38 80 00 04 */	li r4, 4
/* 809F0A74  38 A0 00 03 */	li r5, 3
/* 809F0A78  4B 76 76 78 */	b getAnmP__10daNpcCd2_cFii
/* 809F0A7C  7C 64 1B 78 */	mr r4, r3
/* 809F0A80  7F C3 F3 78 */	mr r3, r30
/* 809F0A84  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 809F0A88  C0 5F 00 4C */	lfs f2, 0x4c(r31)
/* 809F0A8C  38 A0 00 02 */	li r5, 2
/* 809F0A90  38 C0 00 00 */	li r6, 0
/* 809F0A94  38 E0 FF FF */	li r7, -1
/* 809F0A98  4B 76 84 68 */	b setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 809F0A9C  38 7E 05 94 */	addi r3, r30, 0x594
/* 809F0AA0  38 80 00 00 */	li r4, 0
/* 809F0AA4  4B 8D 03 74 */	b playVoice__17Z2CreatureCitizenFi
/* 809F0AA8  7F C3 F3 78 */	mr r3, r30
/* 809F0AAC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 809F0AB0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 809F0AB4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809F0AB8  4B 62 9C 58 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809F0ABC  3C 63 00 01 */	addis r3, r3, 1
/* 809F0AC0  38 03 80 00 */	addi r0, r3, -32768
/* 809F0AC4  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 809F0AC8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 809F0ACC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 809F0AD0  38 00 00 00 */	li r0, 0
/* 809F0AD4  90 01 00 08 */	stw r0, 8(r1)
/* 809F0AD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 809F0ADC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 809F0AE0  38 80 00 07 */	li r4, 7
/* 809F0AE4  38 A0 FF FF */	li r5, -1
/* 809F0AE8  38 C0 FF FF */	li r6, -1
/* 809F0AEC  38 E0 00 00 */	li r7, 0
/* 809F0AF0  39 00 00 00 */	li r8, 0
/* 809F0AF4  39 20 00 00 */	li r9, 0
/* 809F0AF8  39 40 00 00 */	li r10, 0
/* 809F0AFC  4B 62 B4 68 */	b fopAcM_createItemFromTable__FPC4cXyziiiPC5csXyziPC4cXyzPfPfb
/* 809F0B00  38 00 00 01 */	li r0, 1
/* 809F0B04  90 1E 0D 9C */	stw r0, 0xd9c(r30)
/* 809F0B08  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809F0B0C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809F0B10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809F0B14  7C 08 03 A6 */	mtlr r0
/* 809F0B18  38 21 00 20 */	addi r1, r1, 0x20
/* 809F0B1C  4E 80 00 20 */	blr 
