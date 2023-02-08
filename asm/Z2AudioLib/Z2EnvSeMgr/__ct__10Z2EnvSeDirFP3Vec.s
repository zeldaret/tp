lbl_802C5C9C:
/* 802C5C9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802C5CA0  7C 08 02 A6 */	mflr r0
/* 802C5CA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802C5CA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802C5CAC  93 C1 00 08 */	stw r30, 8(r1)
/* 802C5CB0  7C 7E 1B 78 */	mr r30, r3
/* 802C5CB4  7C 9F 23 78 */	mr r31, r4
/* 802C5CB8  38 80 00 00 */	li r4, 0
/* 802C5CBC  4B FF FB E1 */	bl __ct__11Z2EnvSeBaseFP3Vec
/* 802C5CC0  C0 02 C3 60 */	lfs f0, lit_3574(r2)
/* 802C5CC4  D0 1E 00 08 */	stfs f0, 8(r30)
/* 802C5CC8  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 802C5CCC  28 1F 00 00 */	cmplwi r31, 0
/* 802C5CD0  41 82 00 14 */	beq lbl_802C5CE4
/* 802C5CD4  7F C3 F3 78 */	mr r3, r30
/* 802C5CD8  7F E4 FB 78 */	mr r4, r31
/* 802C5CDC  48 00 00 95 */	bl setPanDir__10Z2EnvSeDirFP3Vec
/* 802C5CE0  48 00 00 20 */	b lbl_802C5D00
lbl_802C5CE4:
/* 802C5CE4  3C 60 80 3A */	lis r3, cNullVec__6Z2Calc@ha /* 0x8039C250@ha */
/* 802C5CE8  C4 03 C2 50 */	lfsu f0, cNullVec__6Z2Calc@l(r3)  /* 0x8039C250@l */
/* 802C5CEC  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 802C5CF0  C0 03 00 04 */	lfs f0, 4(r3)
/* 802C5CF4  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 802C5CF8  C0 03 00 08 */	lfs f0, 8(r3)
/* 802C5CFC  D0 1E 00 18 */	stfs f0, 0x18(r30)
lbl_802C5D00:
/* 802C5D00  7F C3 F3 78 */	mr r3, r30
/* 802C5D04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802C5D08  83 C1 00 08 */	lwz r30, 8(r1)
/* 802C5D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802C5D10  7C 08 03 A6 */	mtlr r0
/* 802C5D14  38 21 00 10 */	addi r1, r1, 0x10
/* 802C5D18  4E 80 00 20 */	blr 
