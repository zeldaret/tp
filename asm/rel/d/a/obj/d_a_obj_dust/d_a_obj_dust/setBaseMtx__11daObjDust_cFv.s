lbl_80BE2734:
/* 80BE2734  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE2738  7C 08 02 A6 */	mflr r0
/* 80BE273C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE2740  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE2744  7C 7F 1B 78 */	mr r31, r3
/* 80BE2748  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80BE274C  4B 42 A6 19 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80BE2750  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80BE2754  4B 42 A7 F1 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80BE2758  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE275C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE2760  80 9F 06 20 */	lwz r4, 0x620(r31)
/* 80BE2764  38 84 00 24 */	addi r4, r4, 0x24
/* 80BE2768  4B 76 3D 49 */	bl PSMTXCopy
/* 80BE276C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80BE2770  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80BE2774  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80BE2778  4B 76 3D 39 */	bl PSMTXCopy
/* 80BE277C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE2780  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE2784  7C 08 03 A6 */	mtlr r0
/* 80BE2788  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE278C  4E 80 00 20 */	blr 
