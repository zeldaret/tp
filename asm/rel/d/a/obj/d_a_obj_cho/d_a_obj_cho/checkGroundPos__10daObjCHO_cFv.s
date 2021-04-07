lbl_80BCB2AC:
/* 80BCB2AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BCB2B0  7C 08 02 A6 */	mflr r0
/* 80BCB2B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BCB2B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BCB2BC  7C 7F 1B 78 */	mr r31, r3
/* 80BCB2C0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80BCB2C4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BCB2C8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80BCB2CC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BCB2D0  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80BCB2D4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BCB2D8  38 7F 09 28 */	addi r3, r31, 0x928
/* 80BCB2DC  38 81 00 08 */	addi r4, r1, 8
/* 80BCB2E0  4B 69 CA 49 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80BCB2E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BCB2E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BCB2EC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BCB2F0  38 9F 09 28 */	addi r4, r31, 0x928
/* 80BCB2F4  4B 4A 91 AD */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80BCB2F8  D0 3F 09 7C */	stfs f1, 0x97c(r31)
/* 80BCB2FC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BCB300  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BCB304  7C 08 03 A6 */	mtlr r0
/* 80BCB308  38 21 00 20 */	addi r1, r1, 0x20
/* 80BCB30C  4E 80 00 20 */	blr 
