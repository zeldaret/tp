lbl_8068BA28:
/* 8068BA28  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8068BA2C  7C 08 02 A6 */	mflr r0
/* 8068BA30  90 01 00 74 */	stw r0, 0x74(r1)
/* 8068BA34  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 8068BA38  7C 7F 1B 78 */	mr r31, r3
/* 8068BA3C  38 61 00 14 */	addi r3, r1, 0x14
/* 8068BA40  4B 9E BD 71 */	bl __ct__18dBgS_ObjGndChk_SplFv
/* 8068BA44  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8068BA48  D0 01 00 08 */	stfs f0, 8(r1)
/* 8068BA4C  3C 60 80 69 */	lis r3, lit_4485@ha /* 0x8068D87C@ha */
/* 8068BA50  C0 23 D8 7C */	lfs f1, lit_4485@l(r3)  /* 0x8068D87C@l */
/* 8068BA54  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8068BA58  EC 01 00 2A */	fadds f0, f1, f0
/* 8068BA5C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8068BA60  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8068BA64  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8068BA68  38 61 00 14 */	addi r3, r1, 0x14
/* 8068BA6C  38 81 00 08 */	addi r4, r1, 8
/* 8068BA70  4B BD C2 9D */	bl SetPos__11cBgS_GndChkFPC3Vec
/* 8068BA74  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068BA78  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068BA7C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8068BA80  38 81 00 14 */	addi r4, r1, 0x14
/* 8068BA84  4B 9E 8A 1D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8068BA88  D0 3F 06 AC */	stfs f1, 0x6ac(r31)
/* 8068BA8C  C0 5F 06 AC */	lfs f2, 0x6ac(r31)
/* 8068BA90  3C 60 80 69 */	lis r3, lit_4210@ha /* 0x8068D838@ha */
/* 8068BA94  C0 23 D8 38 */	lfs f1, lit_4210@l(r3)  /* 0x8068D838@l */
/* 8068BA98  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8068BA9C  EC 01 00 2A */	fadds f0, f1, f0
/* 8068BAA0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8068BAA4  40 81 00 18 */	ble lbl_8068BABC
/* 8068BAA8  38 61 00 14 */	addi r3, r1, 0x14
/* 8068BAAC  38 80 FF FF */	li r4, -1
/* 8068BAB0  4B 9E BD 99 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 8068BAB4  38 60 00 01 */	li r3, 1
/* 8068BAB8  48 00 00 14 */	b lbl_8068BACC
lbl_8068BABC:
/* 8068BABC  38 61 00 14 */	addi r3, r1, 0x14
/* 8068BAC0  38 80 FF FF */	li r4, -1
/* 8068BAC4  4B 9E BD 85 */	bl __dt__18dBgS_ObjGndChk_SplFv
/* 8068BAC8  38 60 00 00 */	li r3, 0
lbl_8068BACC:
/* 8068BACC  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8068BAD0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8068BAD4  7C 08 03 A6 */	mtlr r0
/* 8068BAD8  38 21 00 70 */	addi r1, r1, 0x70
/* 8068BADC  4E 80 00 20 */	blr 
