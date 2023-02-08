lbl_80CB54F4:
/* 80CB54F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB54F8  7C 08 02 A6 */	mflr r0
/* 80CB54FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB5500  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB5504  7C 7F 1B 78 */	mr r31, r3
/* 80CB5508  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB550C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB5510  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80CB5514  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80CB5518  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80CB551C  4B 69 13 CD */	bl PSMTXTrans
/* 80CB5520  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB5524  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB5528  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80CB552C  4B 35 6F 09 */	bl mDoMtx_YrotM__FPA4_fs
/* 80CB5530  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CB5534  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CB5538  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80CB553C  38 84 00 24 */	addi r4, r4, 0x24
/* 80CB5540  4B 69 0F 71 */	bl PSMTXCopy
/* 80CB5544  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB5548  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB554C  7C 08 03 A6 */	mtlr r0
/* 80CB5550  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB5554  4E 80 00 20 */	blr 
