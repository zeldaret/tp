lbl_80C30424:
/* 80C30424  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C30428  7C 08 02 A6 */	mflr r0
/* 80C3042C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C30430  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C30434  7C 7F 1B 78 */	mr r31, r3
/* 80C30438  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80C3043C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C30440  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80C30444  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C30448  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80C3044C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C30450  38 7F 06 34 */	addi r3, r31, 0x634
/* 80C30454  38 81 00 08 */	addi r4, r1, 8
/* 80C30458  4B 63 78 D1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80C3045C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C30460  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C30464  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C30468  38 9F 06 34 */	addi r4, r31, 0x634
/* 80C3046C  4B 44 40 35 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80C30470  3C 60 80 C3 */	lis r3, lit_4654@ha /* 0x80C31238@ha */
/* 80C30474  C0 03 12 38 */	lfs f0, lit_4654@l(r3)  /* 0x80C31238@l */
/* 80C30478  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C3047C  41 82 00 08 */	beq lbl_80C30484
/* 80C30480  D0 3F 08 1C */	stfs f1, 0x81c(r31)
lbl_80C30484:
/* 80C30484  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C30488  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C3048C  7C 08 03 A6 */	mtlr r0
/* 80C30490  38 21 00 20 */	addi r1, r1, 0x20
/* 80C30494  4E 80 00 20 */	blr 
