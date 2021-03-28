lbl_80D66E9C:
/* 80D66E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D66EA0  7C 08 02 A6 */	mflr r0
/* 80D66EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D66EAC  7C 7F 1B 78 */	mr r31, r3
/* 80D66EB0  4B 2B 76 A8 */	b fopOvlpM_IsPeek__Fv
/* 80D66EB4  2C 03 00 00 */	cmpwi r3, 0
/* 80D66EB8  41 82 00 0C */	beq lbl_80D66EC4
/* 80D66EBC  38 60 00 01 */	li r3, 1
/* 80D66EC0  48 00 00 60 */	b lbl_80D66F20
lbl_80D66EC4:
/* 80D66EC4  3C 60 80 D6 */	lis r3, lit_4139@ha
/* 80D66EC8  C0 03 7B F8 */	lfs f0, lit_4139@l(r3)
/* 80D66ECC  3C 60 80 45 */	lis r3, mViewOffsetY__17dMenu_Collect3D_c@ha
/* 80D66ED0  D0 03 07 20 */	stfs f0, mViewOffsetY__17dMenu_Collect3D_c@l(r3)
/* 80D66ED4  3C 60 80 45 */	lis r3, mResetData__6mDoRst@ha
/* 80D66ED8  38 63 0C 78 */	addi r3, r3, mResetData__6mDoRst@l
/* 80D66EDC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D66EE0  80 03 00 00 */	lwz r0, 0(r3)
/* 80D66EE4  2C 00 00 00 */	cmpwi r0, 0
/* 80D66EE8  41 82 00 0C */	beq lbl_80D66EF4
/* 80D66EEC  38 60 00 01 */	li r3, 1
/* 80D66EF0  48 00 00 30 */	b lbl_80D66F20
lbl_80D66EF4:
/* 80D66EF4  7F E3 FB 78 */	mr r3, r31
/* 80D66EF8  88 1F 05 FB */	lbz r0, 0x5fb(r31)
/* 80D66EFC  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80D66F00  3C 80 80 D6 */	lis r4, daTitleProc@ha
/* 80D66F04  38 04 7C A8 */	addi r0, r4, daTitleProc@l
/* 80D66F08  7D 80 2A 14 */	add r12, r0, r5
/* 80D66F0C  4B 5F B1 78 */	b __ptmf_scall
/* 80D66F10  60 00 00 00 */	nop 
/* 80D66F14  7F E3 FB 78 */	mr r3, r31
/* 80D66F18  48 00 00 1D */	bl KeyWaitAnm__9daTitle_cFv
/* 80D66F1C  38 60 00 01 */	li r3, 1
lbl_80D66F20:
/* 80D66F20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D66F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D66F28  7C 08 03 A6 */	mtlr r0
/* 80D66F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66F30  4E 80 00 20 */	blr 
