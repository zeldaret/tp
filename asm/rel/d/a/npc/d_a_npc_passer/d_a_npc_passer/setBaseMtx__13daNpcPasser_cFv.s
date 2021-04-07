lbl_80AA4780:
/* 80AA4780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA4784  7C 08 02 A6 */	mflr r0
/* 80AA4788  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA478C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA4790  7C 7F 1B 78 */	mr r31, r3
/* 80AA4794  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AA4798  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AA479C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80AA47A0  C0 5F 0B 18 */	lfs f2, 0xb18(r31)
/* 80AA47A4  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80AA47A8  4B 8A 21 41 */	bl PSMTXTrans
/* 80AA47AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AA47B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AA47B4  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80AA47B8  4B 56 7C 7D */	bl mDoMtx_YrotM__FPA4_fs
/* 80AA47BC  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80AA47C0  80 83 00 04 */	lwz r4, 4(r3)
/* 80AA47C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AA47C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AA47CC  38 84 00 24 */	addi r4, r4, 0x24
/* 80AA47D0  4B 8A 1C E1 */	bl PSMTXCopy
/* 80AA47D4  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80AA47D8  4B 56 CA 15 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80AA47DC  7F E3 FB 78 */	mr r3, r31
/* 80AA47E0  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 80AA47E4  4B 6B 3C 3D */	bl setAttention__10daNpcCd2_cFi
/* 80AA47E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA47EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA47F0  7C 08 03 A6 */	mtlr r0
/* 80AA47F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA47F8  4E 80 00 20 */	blr 
