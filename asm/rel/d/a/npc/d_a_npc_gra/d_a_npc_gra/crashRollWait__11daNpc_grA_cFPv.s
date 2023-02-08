lbl_809C8694:
/* 809C8694  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809C8698  7C 08 02 A6 */	mflr r0
/* 809C869C  90 01 00 24 */	stw r0, 0x24(r1)
/* 809C86A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809C86A4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 809C86A8  7C 7F 1B 78 */	mr r31, r3
/* 809C86AC  3C 80 80 9D */	lis r4, m__17daNpc_grA_Param_c@ha /* 0x809C9D98@ha */
/* 809C86B0  3B C4 9D 98 */	addi r30, r4, m__17daNpc_grA_Param_c@l /* 0x809C9D98@l */
/* 809C86B4  A0 03 14 72 */	lhz r0, 0x1472(r3)
/* 809C86B8  2C 00 00 02 */	cmpwi r0, 2
/* 809C86BC  41 82 00 74 */	beq lbl_809C8730
/* 809C86C0  40 80 01 70 */	bge lbl_809C8830
/* 809C86C4  2C 00 00 00 */	cmpwi r0, 0
/* 809C86C8  41 82 00 0C */	beq lbl_809C86D4
/* 809C86CC  48 00 01 64 */	b lbl_809C8830
/* 809C86D0  48 00 01 60 */	b lbl_809C8830
lbl_809C86D4:
/* 809C86D4  38 80 00 17 */	li r4, 0x17
/* 809C86D8  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C86DC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809C86E0  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 809C86E4  7D 89 03 A6 */	mtctr r12
/* 809C86E8  4E 80 04 21 */	bctrl 
/* 809C86EC  7F E3 FB 78 */	mr r3, r31
/* 809C86F0  38 80 00 13 */	li r4, 0x13
/* 809C86F4  C0 3E 06 70 */	lfs f1, 0x670(r30)
/* 809C86F8  38 A0 00 00 */	li r5, 0
/* 809C86FC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809C8700  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809C8704  7D 89 03 A6 */	mtctr r12
/* 809C8708  4E 80 04 21 */	bctrl 
/* 809C870C  7F E3 FB 78 */	mr r3, r31
/* 809C8710  38 80 00 00 */	li r4, 0
/* 809C8714  4B FF A9 5D */	bl setLookMode__11daNpc_grA_cFi
/* 809C8718  38 00 00 00 */	li r0, 0
/* 809C871C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809C8720  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 809C8724  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 809C8728  38 00 00 02 */	li r0, 2
/* 809C872C  B0 1F 14 72 */	sth r0, 0x1472(r31)
lbl_809C8730:
/* 809C8730  C0 1E 06 C0 */	lfs f0, 0x6c0(r30)
/* 809C8734  D0 1F 14 D4 */	stfs f0, 0x14d4(r31)
/* 809C8738  C0 1F 14 D4 */	lfs f0, 0x14d4(r31)
/* 809C873C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C8740  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 809C8744  38 00 00 1D */	li r0, 0x1d
/* 809C8748  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809C874C  B0 03 00 14 */	sth r0, 0x14(r3)
/* 809C8750  80 1F 14 D8 */	lwz r0, 0x14d8(r31)
/* 809C8754  2C 00 00 1A */	cmpwi r0, 0x1a
/* 809C8758  40 82 00 D8 */	bne lbl_809C8830
/* 809C875C  C0 3F 14 D4 */	lfs f1, 0x14d4(r31)
/* 809C8760  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 809C8764  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 809C8768  4C 41 13 82 */	cror 2, 1, 2
/* 809C876C  40 82 00 5C */	bne lbl_809C87C8
/* 809C8770  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 809C8774  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 809C8778  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809C877C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809C8780  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C8784  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C8788  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 809C878C  4B 64 3C 51 */	bl mDoMtx_YrotS__FPA4_fs
/* 809C8790  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809C8794  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809C8798  38 81 00 0C */	addi r4, r1, 0xc
/* 809C879C  7C 85 23 78 */	mr r5, r4
/* 809C87A0  4B 97 E5 CD */	bl PSMTXMultVec
/* 809C87A4  38 61 00 0C */	addi r3, r1, 0xc
/* 809C87A8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809C87AC  7C 65 1B 78 */	mr r5, r3
/* 809C87B0  4B 97 E8 E1 */	bl PSVECAdd
/* 809C87B4  7F E3 FB 78 */	mr r3, r31
/* 809C87B8  38 81 00 0C */	addi r4, r1, 0xc
/* 809C87BC  38 BE 00 00 */	addi r5, r30, 0
/* 809C87C0  C0 25 00 80 */	lfs f1, 0x80(r5)
/* 809C87C4  4B FF B0 D9 */	bl setRollPrtcl__11daNpc_grA_cFRC4cXyzf
lbl_809C87C8:
/* 809C87C8  C0 1F 14 D4 */	lfs f0, 0x14d4(r31)
/* 809C87CC  FC 00 02 10 */	fabs f0, f0
/* 809C87D0  FC 20 00 18 */	frsp f1, f0
/* 809C87D4  C0 1E 06 B4 */	lfs f0, 0x6b4(r30)
/* 809C87D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 809C87DC  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 809C87E0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809C87E4  40 80 00 08 */	bge lbl_809C87EC
/* 809C87E8  48 00 00 18 */	b lbl_809C8800
lbl_809C87EC:
/* 809C87EC  C0 3E 06 D0 */	lfs f1, 0x6d0(r30)
/* 809C87F0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 809C87F4  40 81 00 08 */	ble lbl_809C87FC
/* 809C87F8  48 00 00 08 */	b lbl_809C8800
lbl_809C87FC:
/* 809C87FC  FC 20 00 90 */	fmr f1, f0
lbl_809C8800:
/* 809C8800  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006004A@ha */
/* 809C8804  38 03 00 4A */	addi r0, r3, 0x004A /* 0x0006004A@l */
/* 809C8808  90 01 00 08 */	stw r0, 8(r1)
/* 809C880C  4B 99 98 A1 */	bl __cvt_fp2unsigned
/* 809C8810  7C 65 1B 78 */	mr r5, r3
/* 809C8814  38 7F 0B 48 */	addi r3, r31, 0xb48
/* 809C8818  38 81 00 08 */	addi r4, r1, 8
/* 809C881C  38 C0 FF FF */	li r6, -1
/* 809C8820  81 9F 0B 48 */	lwz r12, 0xb48(r31)
/* 809C8824  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 809C8828  7D 89 03 A6 */	mtctr r12
/* 809C882C  4E 80 04 21 */	bctrl 
lbl_809C8830:
/* 809C8830  38 60 00 01 */	li r3, 1
/* 809C8834  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809C8838  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 809C883C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809C8840  7C 08 03 A6 */	mtlr r0
/* 809C8844  38 21 00 20 */	addi r1, r1, 0x20
/* 809C8848  4E 80 00 20 */	blr 
