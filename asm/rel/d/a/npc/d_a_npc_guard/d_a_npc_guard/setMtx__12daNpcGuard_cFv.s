lbl_809F17D0:
/* 809F17D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F17D4  7C 08 02 A6 */	mflr r0
/* 809F17D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F17DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F17E0  7C 7F 1B 78 */	mr r31, r3
/* 809F17E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809F17E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809F17EC  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 809F17F0  C0 5F 0D 94 */	lfs f2, 0xd94(r31)
/* 809F17F4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 809F17F8  4B 95 50 F1 */	bl PSMTXTrans
/* 809F17FC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809F1800  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809F1804  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 809F1808  4B 61 AC 2D */	bl mDoMtx_YrotM__FPA4_fs
/* 809F180C  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 809F1810  80 83 00 04 */	lwz r4, 4(r3)
/* 809F1814  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809F1818  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809F181C  38 84 00 24 */	addi r4, r4, 0x24
/* 809F1820  4B 95 4C 91 */	bl PSMTXCopy
/* 809F1824  38 00 00 00 */	li r0, 0
/* 809F1828  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 809F182C  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 809F1830  4B 61 F9 BD */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 809F1834  7F E3 FB 78 */	mr r3, r31
/* 809F1838  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 809F183C  4B 76 6B E5 */	bl setAttention__10daNpcCd2_cFi
/* 809F1840  7F E3 FB 78 */	mr r3, r31
/* 809F1844  48 00 00 35 */	bl lookat__12daNpcGuard_cFv
/* 809F1848  38 00 00 01 */	li r0, 1
/* 809F184C  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 809F1850  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 809F1854  4B 61 F9 99 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 809F1858  7F E3 FB 78 */	mr r3, r31
/* 809F185C  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 809F1860  4B 76 6B C1 */	bl setAttention__10daNpcCd2_cFi
/* 809F1864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F1868  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F186C  7C 08 03 A6 */	mtlr r0
/* 809F1870  38 21 00 10 */	addi r1, r1, 0x10
/* 809F1874  4E 80 00 20 */	blr 
