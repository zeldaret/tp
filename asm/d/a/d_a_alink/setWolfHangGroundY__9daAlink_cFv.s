lbl_80135458:
/* 80135458  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8013545C  7C 08 02 A6 */	mflr r0
/* 80135460  90 01 00 24 */	stw r0, 0x24(r1)
/* 80135464  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80135468  7C 7F 1B 78 */	mr r31, r3
/* 8013546C  80 63 06 50 */	lwz r3, 0x650(r3)
/* 80135470  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80135474  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80135478  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8013547C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80135480  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80135484  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80135488  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8013548C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80135490  38 7F 1D 08 */	addi r3, r31, 0x1d08
/* 80135494  38 81 00 08 */	addi r4, r1, 8
/* 80135498  48 13 28 91 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8013549C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801354A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801354A4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 801354A8  38 9F 1D 08 */	addi r4, r31, 0x1d08
/* 801354AC  4B F3 EF F5 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 801354B0  D0 3F 33 D8 */	stfs f1, 0x33d8(r31)
/* 801354B4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801354B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801354BC  7C 08 03 A6 */	mtlr r0
/* 801354C0  38 21 00 20 */	addi r1, r1, 0x20
/* 801354C4  4E 80 00 20 */	blr 
