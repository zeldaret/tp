lbl_807E7748:
/* 807E7748  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 807E774C  7C 08 02 A6 */	mflr r0
/* 807E7750  90 01 00 24 */	stw r0, 0x24(r1)
/* 807E7754  39 61 00 20 */	addi r11, r1, 0x20
/* 807E7758  4B B7 AA 81 */	bl _savegpr_28
/* 807E775C  7C 7C 1B 78 */	mr r28, r3
/* 807E7760  7C BD 2B 78 */	mr r29, r5
/* 807E7764  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 807E7768  80 65 00 84 */	lwz r3, 0x84(r5)
/* 807E776C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 807E7770  1F DF 00 30 */	mulli r30, r31, 0x30
/* 807E7774  7C 60 F2 14 */	add r3, r0, r30
/* 807E7778  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E777C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E7780  4B B5 ED 31 */	bl PSMTXCopy
/* 807E7784  2C 1F 00 05 */	cmpwi r31, 5
/* 807E7788  40 80 00 30 */	bge lbl_807E77B8
/* 807E778C  2C 1F 00 03 */	cmpwi r31, 3
/* 807E7790  40 80 00 08 */	bge lbl_807E7798
/* 807E7794  48 00 00 24 */	b lbl_807E77B8
lbl_807E7798:
/* 807E7798  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E779C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E77A0  A8 9C 06 7C */	lha r4, 0x67c(r28)
/* 807E77A4  4B 82 4C 91 */	bl mDoMtx_YrotM__FPA4_fs
/* 807E77A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E77AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E77B0  A8 9C 06 7E */	lha r4, 0x67e(r28)
/* 807E77B4  4B 82 4D 19 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_807E77B8:
/* 807E77B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E77BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E77C0  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 807E77C4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 807E77C8  7C 80 F2 14 */	add r4, r0, r30
/* 807E77CC  4B B5 EC E5 */	bl PSMTXCopy
/* 807E77D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 807E77D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 807E77D8  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 807E77DC  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 807E77E0  4B B5 EC D1 */	bl PSMTXCopy
/* 807E77E4  38 60 00 01 */	li r3, 1
/* 807E77E8  39 61 00 20 */	addi r11, r1, 0x20
/* 807E77EC  4B B7 AA 39 */	bl _restgpr_28
/* 807E77F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 807E77F4  7C 08 03 A6 */	mtlr r0
/* 807E77F8  38 21 00 20 */	addi r1, r1, 0x20
/* 807E77FC  4E 80 00 20 */	blr 
