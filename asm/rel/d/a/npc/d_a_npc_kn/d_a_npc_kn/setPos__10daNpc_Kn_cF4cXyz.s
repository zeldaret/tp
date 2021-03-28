lbl_80A3AA58:
/* 80A3AA58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3AA5C  7C 08 02 A6 */	mflr r0
/* 80A3AA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3AA64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3AA68  93 C1 00 08 */	stw r30, 8(r1)
/* 80A3AA6C  7C 7E 1B 78 */	mr r30, r3
/* 80A3AA70  7C 9F 23 78 */	mr r31, r4
/* 80A3AA74  C0 24 00 04 */	lfs f1, 4(r4)
/* 80A3AA78  3C 60 80 A4 */	lis r3, lit_5160@ha
/* 80A3AA7C  C0 03 09 18 */	lfs f0, lit_5160@l(r3)
/* 80A3AA80  EC 01 00 2A */	fadds f0, f1, f0
/* 80A3AA84  D0 04 00 04 */	stfs f0, 4(r4)
/* 80A3AA88  38 7E 09 64 */	addi r3, r30, 0x964
/* 80A3AA8C  4B 82 D2 9C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80A3AA90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A3AA94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A3AA98  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80A3AA9C  38 9E 09 64 */	addi r4, r30, 0x964
/* 80A3AAA0  4B 63 9A 00 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80A3AAA4  D0 3F 00 04 */	stfs f1, 4(r31)
/* 80A3AAA8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80A3AAAC  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 80A3AAB0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80A3AAB4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80A3AAB8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80A3AABC  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 80A3AAC0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A3AAC4  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 80A3AAC8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80A3AACC  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 80A3AAD0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A3AAD4  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 80A3AAD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3AADC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A3AAE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3AAE4  7C 08 03 A6 */	mtlr r0
/* 80A3AAE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3AAEC  4E 80 00 20 */	blr 
