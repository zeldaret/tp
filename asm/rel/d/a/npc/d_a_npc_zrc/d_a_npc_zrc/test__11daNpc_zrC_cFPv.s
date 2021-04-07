lbl_80B922D8:
/* 80B922D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B922DC  7C 08 02 A6 */	mflr r0
/* 80B922E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B922E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B922E8  7C 7F 1B 78 */	mr r31, r3
/* 80B922EC  A0 03 0E 26 */	lhz r0, 0xe26(r3)
/* 80B922F0  2C 00 00 02 */	cmpwi r0, 2
/* 80B922F4  41 82 00 38 */	beq lbl_80B9232C
/* 80B922F8  40 80 00 AC */	bge lbl_80B923A4
/* 80B922FC  2C 00 00 00 */	cmpwi r0, 0
/* 80B92300  41 82 00 0C */	beq lbl_80B9230C
/* 80B92304  48 00 00 A0 */	b lbl_80B923A4
/* 80B92308  48 00 00 9C */	b lbl_80B923A4
lbl_80B9230C:
/* 80B9230C  3C 60 80 B9 */	lis r3, lit_4484@ha /* 0x80B93298@ha */
/* 80B92310  C0 03 32 98 */	lfs f0, lit_4484@l(r3)  /* 0x80B93298@l */
/* 80B92314  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B92318  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80B9231C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B92320  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80B92324  38 00 00 02 */	li r0, 2
/* 80B92328  B0 1F 0E 26 */	sth r0, 0xe26(r31)
lbl_80B9232C:
/* 80B9232C  3C 60 80 B9 */	lis r3, m__17daNpc_zrC_Param_c@ha /* 0x80B931FC@ha */
/* 80B92330  38 A3 31 FC */	addi r5, r3, m__17daNpc_zrC_Param_c@l /* 0x80B931FC@l */
/* 80B92334  A8 85 00 64 */	lha r4, 0x64(r5)
/* 80B92338  A8 1F 09 DE */	lha r0, 0x9de(r31)
/* 80B9233C  7C 04 00 00 */	cmpw r4, r0
/* 80B92340  41 82 00 1C */	beq lbl_80B9235C
/* 80B92344  7F E3 FB 78 */	mr r3, r31
/* 80B92348  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B9234C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B92350  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B92354  7D 89 03 A6 */	mtctr r12
/* 80B92358  4E 80 04 21 */	bctrl 
lbl_80B9235C:
/* 80B9235C  7F E3 FB 78 */	mr r3, r31
/* 80B92360  3C 80 80 B9 */	lis r4, m__17daNpc_zrC_Param_c@ha /* 0x80B931FC@ha */
/* 80B92364  38 A4 31 FC */	addi r5, r4, m__17daNpc_zrC_Param_c@l /* 0x80B931FC@l */
/* 80B92368  A8 85 00 66 */	lha r4, 0x66(r5)
/* 80B9236C  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B92370  38 A0 00 00 */	li r5, 0
/* 80B92374  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B92378  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B9237C  7D 89 03 A6 */	mtctr r12
/* 80B92380  4E 80 04 21 */	bctrl 
/* 80B92384  7F E3 FB 78 */	mr r3, r31
/* 80B92388  3C 80 80 B9 */	lis r4, m__17daNpc_zrC_Param_c@ha /* 0x80B931FC@ha */
/* 80B9238C  38 84 31 FC */	addi r4, r4, m__17daNpc_zrC_Param_c@l /* 0x80B931FC@l */
/* 80B92390  A8 84 00 68 */	lha r4, 0x68(r4)
/* 80B92394  4B FF ED A9 */	bl setLookMode__11daNpc_zrC_cFi
/* 80B92398  38 00 00 00 */	li r0, 0
/* 80B9239C  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80B923A0  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80B923A4:
/* 80B923A4  38 60 00 01 */	li r3, 1
/* 80B923A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B923AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B923B0  7C 08 03 A6 */	mtlr r0
/* 80B923B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B923B8  4E 80 00 20 */	blr 
