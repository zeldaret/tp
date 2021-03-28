lbl_8097D078:
/* 8097D078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8097D07C  7C 08 02 A6 */	mflr r0
/* 8097D080  90 01 00 14 */	stw r0, 0x14(r1)
/* 8097D084  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8097D088  7C 7F 1B 78 */	mr r31, r3
/* 8097D08C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8097D090  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8097D094  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8097D098  C0 5F 0B 64 */	lfs f2, 0xb64(r31)
/* 8097D09C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8097D0A0  4B 9C 98 48 */	b PSMTXTrans
/* 8097D0A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8097D0A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8097D0AC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8097D0B0  4B 68 F3 84 */	b mDoMtx_YrotM__FPA4_fs
/* 8097D0B4  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 8097D0B8  80 83 00 04 */	lwz r4, 4(r3)
/* 8097D0BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8097D0C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8097D0C4  38 84 00 24 */	addi r4, r4, 0x24
/* 8097D0C8  4B 9C 93 E8 */	b PSMTXCopy
/* 8097D0CC  38 00 00 00 */	li r0, 0
/* 8097D0D0  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 8097D0D4  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 8097D0D8  4B 69 41 14 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 8097D0DC  7F E3 FB 78 */	mr r3, r31
/* 8097D0E0  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 8097D0E4  4B 7D B3 3C */	b setAttention__10daNpcCd2_cFi
/* 8097D0E8  7F E3 FB 78 */	mr r3, r31
/* 8097D0EC  48 00 00 35 */	bl lookat__11daNpcCdn3_cFv
/* 8097D0F0  38 00 00 01 */	li r0, 1
/* 8097D0F4  90 1F 0A 9C */	stw r0, 0xa9c(r31)
/* 8097D0F8  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 8097D0FC  4B 69 40 F0 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 8097D100  7F E3 FB 78 */	mr r3, r31
/* 8097D104  80 9F 0A 98 */	lwz r4, 0xa98(r31)
/* 8097D108  4B 7D B3 18 */	b setAttention__10daNpcCd2_cFi
/* 8097D10C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097D110  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097D114  7C 08 03 A6 */	mtlr r0
/* 8097D118  38 21 00 10 */	addi r1, r1, 0x10
/* 8097D11C  4E 80 00 20 */	blr 
