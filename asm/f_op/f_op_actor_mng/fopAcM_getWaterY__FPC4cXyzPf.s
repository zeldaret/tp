lbl_8001D890:
/* 8001D890  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001D894  7C 08 02 A6 */	mflr r0
/* 8001D898  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001D89C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001D8A0  7C 9F 23 78 */	mr r31, r4
/* 8001D8A4  48 00 04 E1 */	bl waterCheck__11fopAcM_wt_cFPC4cXyz
/* 8001D8A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001D8AC  41 82 00 34 */	beq lbl_8001D8E0
/* 8001D8B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8001D8B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8001D8B8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8001D8BC  3C 80 80 3F */	lis r4, mWaterCheck__11fopAcM_wt_c@ha /* 0x803F1D80@ha */
/* 8001D8C0  38 84 1D 80 */	addi r4, r4, mWaterCheck__11fopAcM_wt_c@l /* 0x803F1D80@l */
/* 8001D8C4  48 05 75 8D */	bl GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 8001D8C8  2C 03 00 06 */	cmpwi r3, 6
/* 8001D8CC  41 82 00 14 */	beq lbl_8001D8E0
/* 8001D8D0  C0 0D 87 58 */	lfs f0, mWaterY__11fopAcM_wt_c(r13)
/* 8001D8D4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8001D8D8  38 60 00 01 */	li r3, 1
/* 8001D8DC  48 00 00 10 */	b lbl_8001D8EC
lbl_8001D8E0:
/* 8001D8E0  C0 02 82 58 */	lfs f0, lit_6353(r2)
/* 8001D8E4  D0 1F 00 00 */	stfs f0, 0(r31)
/* 8001D8E8  38 60 00 00 */	li r3, 0
lbl_8001D8EC:
/* 8001D8EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001D8F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001D8F4  7C 08 03 A6 */	mtlr r0
/* 8001D8F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8001D8FC  4E 80 00 20 */	blr 
