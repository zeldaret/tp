lbl_806B9670:
/* 806B9670  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806B9674  7C 08 02 A6 */	mflr r0
/* 806B9678  90 01 00 34 */	stw r0, 0x34(r1)
/* 806B967C  39 61 00 30 */	addi r11, r1, 0x30
/* 806B9680  4B CA 8B 5D */	bl _savegpr_29
/* 806B9684  7C 7F 1B 78 */	mr r31, r3
/* 806B9688  3C 60 80 6C */	lis r3, lit_3827@ha /* 0x806BB6D4@ha */
/* 806B968C  C0 03 B6 D4 */	lfs f0, lit_3827@l(r3)  /* 0x806BB6D4@l */
/* 806B9690  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B9694  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B9698  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B969C  80 7F 0C 30 */	lwz r3, 0xc30(r31)
/* 806B96A0  80 63 00 04 */	lwz r3, 4(r3)
/* 806B96A4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B96A8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B96AC  38 63 00 30 */	addi r3, r3, 0x30
/* 806B96B0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B96B4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B96B8  4B C8 CD F9 */	bl PSMTXCopy
/* 806B96BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B96C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B96C4  38 81 00 08 */	addi r4, r1, 8
/* 806B96C8  7C 85 23 78 */	mr r5, r4
/* 806B96CC  4B C8 D6 A1 */	bl PSMTXMultVec
/* 806B96D0  38 7F 07 3C */	addi r3, r31, 0x73c
/* 806B96D4  38 81 00 08 */	addi r4, r1, 8
/* 806B96D8  4B BB 5F 71 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806B96DC  38 7F 07 3C */	addi r3, r31, 0x73c
/* 806B96E0  3C 80 80 6C */	lis r4, lit_3951@ha /* 0x806BB784@ha */
/* 806B96E4  C0 24 B7 84 */	lfs f1, lit_3951@l(r4)  /* 0x806BB784@l */
/* 806B96E8  3C 80 80 6C */	lis r4, l_HIO@ha /* 0x806BB91C@ha */
/* 806B96EC  3B C4 B9 1C */	addi r30, r4, l_HIO@l /* 0x806BB91C@l */
/* 806B96F0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806B96F4  EC 21 00 32 */	fmuls f1, f1, f0
/* 806B96F8  4B BB 60 11 */	bl SetR__8cM3dGSphFf
/* 806B96FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B9700  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B9704  3B A3 23 3C */	addi r29, r3, 0x233c
/* 806B9708  7F A3 EB 78 */	mr r3, r29
/* 806B970C  38 9F 06 18 */	addi r4, r31, 0x618
/* 806B9710  4B BA B4 99 */	bl Set__4cCcSFP8cCcD_Obj
/* 806B9714  3C 60 80 6C */	lis r3, lit_3827@ha /* 0x806BB6D4@ha */
/* 806B9718  C0 03 B6 D4 */	lfs f0, lit_3827@l(r3)  /* 0x806BB6D4@l */
/* 806B971C  D0 01 00 08 */	stfs f0, 8(r1)
/* 806B9720  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806B9724  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806B9728  80 7F 0C 30 */	lwz r3, 0xc30(r31)
/* 806B972C  80 63 00 04 */	lwz r3, 4(r3)
/* 806B9730  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806B9734  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806B9738  38 63 00 90 */	addi r3, r3, 0x90
/* 806B973C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B9740  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B9744  4B C8 CD 6D */	bl PSMTXCopy
/* 806B9748  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806B974C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806B9750  38 81 00 08 */	addi r4, r1, 8
/* 806B9754  7C 85 23 78 */	mr r5, r4
/* 806B9758  4B C8 D6 15 */	bl PSMTXMultVec
/* 806B975C  38 7F 08 74 */	addi r3, r31, 0x874
/* 806B9760  38 81 00 08 */	addi r4, r1, 8
/* 806B9764  4B BB 5E E5 */	bl SetC__8cM3dGSphFRC4cXyz
/* 806B9768  38 7F 08 74 */	addi r3, r31, 0x874
/* 806B976C  3C 80 80 6C */	lis r4, lit_3951@ha /* 0x806BB784@ha */
/* 806B9770  C0 24 B7 84 */	lfs f1, lit_3951@l(r4)  /* 0x806BB784@l */
/* 806B9774  C0 1E 00 08 */	lfs f0, 8(r30)
/* 806B9778  EC 21 00 32 */	fmuls f1, f1, f0
/* 806B977C  4B BB 5F 8D */	bl SetR__8cM3dGSphFf
/* 806B9780  7F A3 EB 78 */	mr r3, r29
/* 806B9784  38 9F 07 50 */	addi r4, r31, 0x750
/* 806B9788  4B BA B4 21 */	bl Set__4cCcSFP8cCcD_Obj
/* 806B978C  39 61 00 30 */	addi r11, r1, 0x30
/* 806B9790  4B CA 8A 99 */	bl _restgpr_29
/* 806B9794  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806B9798  7C 08 03 A6 */	mtlr r0
/* 806B979C  38 21 00 30 */	addi r1, r1, 0x30
/* 806B97A0  4E 80 00 20 */	blr 
