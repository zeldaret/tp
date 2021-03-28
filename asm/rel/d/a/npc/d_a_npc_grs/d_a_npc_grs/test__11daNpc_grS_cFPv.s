lbl_809E721C:
/* 809E721C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E7220  7C 08 02 A6 */	mflr r0
/* 809E7224  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E7228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E722C  7C 7F 1B 78 */	mr r31, r3
/* 809E7230  A0 03 0E 12 */	lhz r0, 0xe12(r3)
/* 809E7234  2C 00 00 02 */	cmpwi r0, 2
/* 809E7238  41 82 00 38 */	beq lbl_809E7270
/* 809E723C  40 80 00 AC */	bge lbl_809E72E8
/* 809E7240  2C 00 00 00 */	cmpwi r0, 0
/* 809E7244  41 82 00 0C */	beq lbl_809E7250
/* 809E7248  48 00 00 A0 */	b lbl_809E72E8
/* 809E724C  48 00 00 9C */	b lbl_809E72E8
lbl_809E7250:
/* 809E7250  3C 60 80 9E */	lis r3, lit_4491@ha
/* 809E7254  C0 03 7E 4C */	lfs f0, lit_4491@l(r3)
/* 809E7258  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809E725C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 809E7260  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 809E7264  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 809E7268  38 00 00 02 */	li r0, 2
/* 809E726C  B0 1F 0E 12 */	sth r0, 0xe12(r31)
lbl_809E7270:
/* 809E7270  3C 60 80 9E */	lis r3, m__17daNpc_grS_Param_c@ha
/* 809E7274  38 A3 7D CC */	addi r5, r3, m__17daNpc_grS_Param_c@l
/* 809E7278  A8 85 00 64 */	lha r4, 0x64(r5)
/* 809E727C  A8 1F 09 DE */	lha r0, 0x9de(r31)
/* 809E7280  7C 04 00 00 */	cmpw r4, r0
/* 809E7284  41 82 00 1C */	beq lbl_809E72A0
/* 809E7288  7F E3 FB 78 */	mr r3, r31
/* 809E728C  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 809E7290  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E7294  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809E7298  7D 89 03 A6 */	mtctr r12
/* 809E729C  4E 80 04 21 */	bctrl 
lbl_809E72A0:
/* 809E72A0  7F E3 FB 78 */	mr r3, r31
/* 809E72A4  3C 80 80 9E */	lis r4, m__17daNpc_grS_Param_c@ha
/* 809E72A8  38 A4 7D CC */	addi r5, r4, m__17daNpc_grS_Param_c@l
/* 809E72AC  A8 85 00 66 */	lha r4, 0x66(r5)
/* 809E72B0  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 809E72B4  38 A0 00 00 */	li r5, 0
/* 809E72B8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809E72BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809E72C0  7D 89 03 A6 */	mtctr r12
/* 809E72C4  4E 80 04 21 */	bctrl 
/* 809E72C8  7F E3 FB 78 */	mr r3, r31
/* 809E72CC  3C 80 80 9E */	lis r4, m__17daNpc_grS_Param_c@ha
/* 809E72D0  38 84 7D CC */	addi r4, r4, m__17daNpc_grS_Param_c@l
/* 809E72D4  A8 84 00 68 */	lha r4, 0x68(r4)
/* 809E72D8  4B FF F5 7D */	bl setLookMode__11daNpc_grS_cFi
/* 809E72DC  38 00 00 00 */	li r0, 0
/* 809E72E0  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 809E72E4  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_809E72E8:
/* 809E72E8  38 60 00 01 */	li r3, 1
/* 809E72EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E72F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E72F4  7C 08 03 A6 */	mtlr r0
/* 809E72F8  38 21 00 10 */	addi r1, r1, 0x10
/* 809E72FC  4E 80 00 20 */	blr 
