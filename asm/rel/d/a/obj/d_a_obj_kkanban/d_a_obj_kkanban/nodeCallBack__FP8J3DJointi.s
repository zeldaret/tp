lbl_80C46698:
/* 80C46698  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C4669C  7C 08 02 A6 */	mflr r0
/* 80C466A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C466A4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C466A8  4B 71 BB 35 */	bl _savegpr_29
/* 80C466AC  2C 04 00 00 */	cmpwi r4, 0
/* 80C466B0  40 82 00 9C */	bne lbl_80C4674C
/* 80C466B4  A0 83 00 14 */	lhz r4, 0x14(r3)
/* 80C466B8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80C466BC  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80C466C0  83 C3 00 38 */	lwz r30, 0x38(r3)
/* 80C466C4  83 FE 00 14 */	lwz r31, 0x14(r30)
/* 80C466C8  A0 1F 07 44 */	lhz r0, 0x744(r31)
/* 80C466CC  7C 04 00 00 */	cmpw r4, r0
/* 80C466D0  40 82 00 7C */	bne lbl_80C4674C
/* 80C466D4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80C466D8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C466DC  1F A4 00 30 */	mulli r29, r4, 0x30
/* 80C466E0  7C 60 EA 14 */	add r3, r0, r29
/* 80C466E4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C466E8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C466EC  4B 6F FD C5 */	bl PSMTXCopy
/* 80C466F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C466F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C466F8  A8 9F 07 46 */	lha r4, 0x746(r31)
/* 80C466FC  4B 3C 5C A1 */	bl mDoMtx_XrotM__FPA4_fs
/* 80C46700  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C46704  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C46708  A8 9F 07 48 */	lha r4, 0x748(r31)
/* 80C4670C  4B 3C 5D C1 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80C46710  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C46714  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C46718  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80C4671C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80C46720  7C 80 EA 14 */	add r4, r0, r29
/* 80C46724  4B 6F FD 8D */	bl PSMTXCopy
/* 80C46728  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C4672C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C46730  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80C46734  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80C46738  4B 6F FD 79 */	bl PSMTXCopy
/* 80C4673C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C46740  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C46744  38 9F 05 6C */	addi r4, r31, 0x56c
/* 80C46748  4B 6F FD 69 */	bl PSMTXCopy
lbl_80C4674C:
/* 80C4674C  38 60 00 01 */	li r3, 1
/* 80C46750  39 61 00 20 */	addi r11, r1, 0x20
/* 80C46754  4B 71 BA D5 */	bl _restgpr_29
/* 80C46758  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C4675C  7C 08 03 A6 */	mtlr r0
/* 80C46760  38 21 00 20 */	addi r1, r1, 0x20
/* 80C46764  4E 80 00 20 */	blr 
