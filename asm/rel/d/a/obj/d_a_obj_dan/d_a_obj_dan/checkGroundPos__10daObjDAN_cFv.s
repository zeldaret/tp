lbl_80BDB074:
/* 80BDB074  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BDB078  7C 08 02 A6 */	mflr r0
/* 80BDB07C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BDB080  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BDB084  7C 7F 1B 78 */	mr r31, r3
/* 80BDB088  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80BDB08C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80BDB090  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80BDB094  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80BDB098  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80BDB09C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BDB0A0  38 7F 07 10 */	addi r3, r31, 0x710
/* 80BDB0A4  38 81 00 08 */	addi r4, r1, 8
/* 80BDB0A8  4B 68 CC 81 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80BDB0AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BDB0B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BDB0B4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80BDB0B8  38 9F 07 10 */	addi r4, r31, 0x710
/* 80BDB0BC  4B 49 93 E5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80BDB0C0  D0 3F 07 64 */	stfs f1, 0x764(r31)
/* 80BDB0C4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BDB0C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BDB0CC  7C 08 03 A6 */	mtlr r0
/* 80BDB0D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BDB0D4  4E 80 00 20 */	blr 
