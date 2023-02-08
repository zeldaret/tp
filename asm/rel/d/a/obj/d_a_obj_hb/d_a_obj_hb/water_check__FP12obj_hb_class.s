lbl_80C19A2C:
/* 80C19A2C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C19A30  7C 08 02 A6 */	mflr r0
/* 80C19A34  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C19A38  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80C19A3C  7C 7F 1B 78 */	mr r31, r3
/* 80C19A40  38 61 00 14 */	addi r3, r1, 0x14
/* 80C19A44  4B 45 DD 6D */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 80C19A48  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80C19A4C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C19A50  3C 60 80 C2 */	lis r3, lit_3804@ha /* 0x80C1B630@ha */
/* 80C19A54  C0 23 B6 30 */	lfs f1, lit_3804@l(r3)  /* 0x80C1B630@l */
/* 80C19A58  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C19A5C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C19A60  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C19A64  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80C19A68  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C19A6C  38 61 00 14 */	addi r3, r1, 0x14
/* 80C19A70  38 81 00 08 */	addi r4, r1, 8
/* 80C19A74  4B 64 E2 99 */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 80C19A78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C19A7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C19A80  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C19A84  38 81 00 14 */	addi r4, r1, 0x14
/* 80C19A88  4B 45 AA 19 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80C19A8C  D0 3F 06 80 */	stfs f1, 0x680(r31)
/* 80C19A90  C0 3F 06 80 */	lfs f1, 0x680(r31)
/* 80C19A94  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80C19A98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C19A9C  40 81 00 18 */	ble lbl_80C19AB4
/* 80C19AA0  38 61 00 14 */	addi r3, r1, 0x14
/* 80C19AA4  38 80 FF FF */	li r4, -1
/* 80C19AA8  4B 45 DD A1 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 80C19AAC  38 60 00 01 */	li r3, 1
/* 80C19AB0  48 00 00 14 */	b lbl_80C19AC4
lbl_80C19AB4:
/* 80C19AB4  38 61 00 14 */	addi r3, r1, 0x14
/* 80C19AB8  38 80 FF FF */	li r4, -1
/* 80C19ABC  4B 45 DD 8D */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 80C19AC0  38 60 00 00 */	li r3, 0
lbl_80C19AC4:
/* 80C19AC4  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80C19AC8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C19ACC  7C 08 03 A6 */	mtlr r0
/* 80C19AD0  38 21 00 70 */	addi r1, r1, 0x70
/* 80C19AD4  4E 80 00 20 */	blr 
