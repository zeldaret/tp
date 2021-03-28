lbl_80817164:
/* 80817164  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80817168  7C 08 02 A6 */	mflr r0
/* 8081716C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80817170  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80817174  7C 7F 1B 78 */	mr r31, r3
/* 80817178  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8081717C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80817180  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80817184  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80817188  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8081718C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80817190  3C 60 80 82 */	lis r3, lit_4304@ha
/* 80817194  C0 03 19 14 */	lfs f0, lit_4304@l(r3)
/* 80817198  EC 01 00 2A */	fadds f0, f1, f0
/* 8081719C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 808171A0  C0 1F 06 CC */	lfs f0, 0x6cc(r31)
/* 808171A4  D0 1F 06 D0 */	stfs f0, 0x6d0(r31)
/* 808171A8  38 7F 07 9C */	addi r3, r31, 0x79c
/* 808171AC  38 81 00 08 */	addi r4, r1, 8
/* 808171B0  4B A5 0B 78 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 808171B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808171B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808171BC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 808171C0  38 9F 07 9C */	addi r4, r31, 0x79c
/* 808171C4  4B 85 D2 DC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 808171C8  D0 3F 06 D4 */	stfs f1, 0x6d4(r31)
/* 808171CC  3C 60 80 82 */	lis r3, lit_4290@ha
/* 808171D0  C0 03 19 0C */	lfs f0, lit_4290@l(r3)
/* 808171D4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 808171D8  41 82 00 14 */	beq lbl_808171EC
/* 808171DC  C0 1F 06 D0 */	lfs f0, 0x6d0(r31)
/* 808171E0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 808171E4  40 80 00 08 */	bge lbl_808171EC
/* 808171E8  D0 3F 06 D0 */	stfs f1, 0x6d0(r31)
lbl_808171EC:
/* 808171EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 808171F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 808171F4  7C 08 03 A6 */	mtlr r0
/* 808171F8  38 21 00 20 */	addi r1, r1, 0x20
/* 808171FC  4E 80 00 20 */	blr 
