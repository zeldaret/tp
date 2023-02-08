lbl_80BF943C:
/* 80BF943C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF9440  7C 08 02 A6 */	mflr r0
/* 80BF9444  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF9448  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF944C  7C 7F 1B 78 */	mr r31, r3
/* 80BF9450  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF9454  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF9458  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80BF945C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80BF9460  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80BF9464  4B 74 D4 85 */	bl PSMTXTrans
/* 80BF9468  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80BF946C  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 80BF9470  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80BF9474  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 80BF9478  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80BF947C  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 80BF9480  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80BF9484  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BF9488  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BF948C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BF9490  38 84 00 24 */	addi r4, r4, 0x24
/* 80BF9494  4B 74 D0 1D */	bl PSMTXCopy
/* 80BF9498  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF949C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF94A0  7C 08 03 A6 */	mtlr r0
/* 80BF94A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF94A8  4E 80 00 20 */	blr 
