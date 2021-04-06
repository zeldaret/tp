lbl_80BB8350:
/* 80BB8350  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB8354  7C 08 02 A6 */	mflr r0
/* 80BB8358  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB835C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB8360  7C 7F 1B 78 */	mr r31, r3
/* 80BB8364  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB8368  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB836C  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BB8370  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BB8374  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BB8378  4B 78 E5 71 */	bl PSMTXTrans
/* 80BB837C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB8380  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB8384  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80BB8388  A8 BF 04 E6 */	lha r5, 0x4e6(r31)
/* 80BB838C  A8 DF 04 E8 */	lha r6, 0x4e8(r31)
/* 80BB8390  4B 45 3F 11 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80BB8394  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB8398  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB839C  A8 9F 0E 98 */	lha r4, 0xe98(r31)
/* 80BB83A0  A8 BF 0E 9A */	lha r5, 0xe9a(r31)
/* 80BB83A4  A8 DF 0E 9C */	lha r6, 0xe9c(r31)
/* 80BB83A8  4B 45 3E F9 */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80BB83AC  C0 3F 0E B8 */	lfs f1, 0xeb8(r31)
/* 80BB83B0  C0 5F 0E BC */	lfs f2, 0xebc(r31)
/* 80BB83B4  C0 7F 0E C0 */	lfs f3, 0xec0(r31)
/* 80BB83B8  4B 45 49 E5 */	bl transM__14mDoMtx_stack_cFfff
/* 80BB83BC  80 7F 05 A8 */	lwz r3, 0x5a8(r31)
/* 80BB83C0  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80BB83C4  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BB83C8  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80BB83CC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BB83D0  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80BB83D4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80BB83D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BB83DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BB83E0  80 9F 05 A8 */	lwz r4, 0x5a8(r31)
/* 80BB83E4  38 84 00 24 */	addi r4, r4, 0x24
/* 80BB83E8  4B 78 E0 C9 */	bl PSMTXCopy
/* 80BB83EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB83F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB83F4  7C 08 03 A6 */	mtlr r0
/* 80BB83F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB83FC  4E 80 00 20 */	blr 
