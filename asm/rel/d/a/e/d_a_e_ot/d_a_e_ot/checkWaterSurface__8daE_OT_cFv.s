lbl_8073A7B0:
/* 8073A7B0  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8073A7B4  7C 08 02 A6 */	mflr r0
/* 8073A7B8  90 01 00 74 */	stw r0, 0x74(r1)
/* 8073A7BC  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8073A7C0  7C 7F 1B 78 */	mr r31, r3
/* 8073A7C4  38 61 00 14 */	addi r3, r1, 0x14
/* 8073A7C8  4B 93 CF E8 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 8073A7CC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8073A7D0  D0 01 00 08 */	stfs f0, 8(r1)
/* 8073A7D4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8073A7D8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8073A7DC  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8073A7E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8073A7E4  3C 60 80 74 */	lis r3, lit_3910@ha
/* 8073A7E8  C0 03 CE A8 */	lfs f0, lit_3910@l(r3)
/* 8073A7EC  EC 01 00 2A */	fadds f0, f1, f0
/* 8073A7F0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073A7F4  38 61 00 14 */	addi r3, r1, 0x14
/* 8073A7F8  38 81 00 08 */	addi r4, r1, 8
/* 8073A7FC  4B B2 D5 10 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 8073A800  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8073A804  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8073A808  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8073A80C  38 81 00 14 */	addi r4, r1, 0x14
/* 8073A810  4B 93 9C 90 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8073A814  D0 3F 06 88 */	stfs f1, 0x688(r31)
/* 8073A818  38 61 00 14 */	addi r3, r1, 0x14
/* 8073A81C  38 80 FF FF */	li r4, -1
/* 8073A820  4B 93 D0 28 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 8073A824  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8073A828  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8073A82C  7C 08 03 A6 */	mtlr r0
/* 8073A830  38 21 00 70 */	addi r1, r1, 0x70
/* 8073A834  4E 80 00 20 */	blr 
