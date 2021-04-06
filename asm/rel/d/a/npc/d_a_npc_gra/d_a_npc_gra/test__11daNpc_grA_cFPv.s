lbl_809C9044:
/* 809C9044  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C9048  7C 08 02 A6 */	mflr r0
/* 809C904C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C9050  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C9054  7C 7F 1B 78 */	mr r31, r3
/* 809C9058  A0 03 14 72 */	lhz r0, 0x1472(r3)
/* 809C905C  2C 00 00 02 */	cmpwi r0, 2
/* 809C9060  41 82 00 38 */	beq lbl_809C9098
/* 809C9064  40 80 00 AC */	bge lbl_809C9110
/* 809C9068  2C 00 00 00 */	cmpwi r0, 0
/* 809C906C  41 82 00 0C */	beq lbl_809C9078
/* 809C9070  48 00 00 A0 */	b lbl_809C9110
/* 809C9074  48 00 00 9C */	b lbl_809C9110
lbl_809C9078:
/* 809C9078  3C 60 80 9D */	lis r3, lit_4611@ha /* 0x809C9E34@ha */
/* 809C907C  C0 03 9E 34 */	lfs f0, lit_4611@l(r3)  /* 0x809C9E34@l */
/* 809C9080  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809C9084  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 809C9088  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 809C908C  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 809C9090  38 00 00 02 */	li r0, 2
/* 809C9094  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C9098:
/* 809C9098  3C 60 80 9D */	lis r3, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C909C  38 A3 9D 98 */	addi r5, r3, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C90A0  A8 85 00 64 */	lha r4, 0x64(r5)
/* 809C90A4  A8 1F 09 DE */	lha r0, 0x9de(r31)
/* 809C90A8  7C 04 00 00 */	cmpw r4, r0
/* 809C90AC  41 82 00 1C */	beq lbl_809C90C8
/* 809C90B0  7F E3 FB 78 */	mr r3, r31
/* 809C90B4  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 809C90B8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C90BC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C90C0  7D 89 03 A6 */	mtctr r12
/* 809C90C4  4E 80 04 21 */	bctrl 
lbl_809C90C8:
/* 809C90C8  7F E3 FB 78 */	mr r3, r31
/* 809C90CC  3C 80 80 9D */	lis r4, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C90D0  38 A4 9D 98 */	addi r5, r4, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C90D4  A8 85 00 66 */	lha r4, 0x66(r5)
/* 809C90D8  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 809C90DC  38 A0 00 00 */	li r5, 0
/* 809C90E0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C90E4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C90E8  7D 89 03 A6 */	mtctr r12
/* 809C90EC  4E 80 04 21 */	bctrl 
/* 809C90F0  7F E3 FB 78 */	mr r3, r31
/* 809C90F4  3C 80 80 9D */	lis r4, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C90F8  38 84 9D 98 */	addi r4, r4, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C90FC  A8 84 00 68 */	lha r4, 0x68(r4)
/* 809C9100  4B FF 9F 71 */	bl setLookMode__11daNpc_grA_cFi
/* 809C9104  38 00 00 00 */	li r0, 0
/* 809C9108  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 809C910C  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_809C9110:
/* 809C9110  38 60 00 01 */	li r3, 1
/* 809C9114  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C9118  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C911C  7C 08 03 A6 */	mtlr r0
/* 809C9120  38 21 00 10 */	addi r1, r1, 0x10
/* 809C9124  4E 80 00 20 */	blr 
