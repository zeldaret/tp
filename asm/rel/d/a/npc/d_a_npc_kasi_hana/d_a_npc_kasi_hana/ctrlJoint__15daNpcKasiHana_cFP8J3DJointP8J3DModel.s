lbl_80A1C7D8:
/* 80A1C7D8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A1C7DC  7C 08 02 A6 */	mflr r0
/* 80A1C7E0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A1C7E4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A1C7E8  4B 94 59 F1 */	bl _savegpr_28
/* 80A1C7EC  7C 7D 1B 78 */	mr r29, r3
/* 80A1C7F0  7C BE 2B 78 */	mr r30, r5
/* 80A1C7F4  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80A1C7F8  7C BF 2B 78 */	mr r31, r5
/* 80A1C7FC  3C 60 80 A2 */	lis r3, lit_4839@ha /* 0x80A21158@ha */
/* 80A1C800  38 83 11 58 */	addi r4, r3, lit_4839@l /* 0x80A21158@l */
/* 80A1C804  80 64 00 00 */	lwz r3, 0(r4)
/* 80A1C808  80 04 00 04 */	lwz r0, 4(r4)
/* 80A1C80C  90 61 00 08 */	stw r3, 8(r1)
/* 80A1C810  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1C814  80 04 00 08 */	lwz r0, 8(r4)
/* 80A1C818  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A1C81C  2C 05 00 00 */	cmpwi r5, 0
/* 80A1C820  40 82 00 B0 */	bne lbl_80A1C8D0
/* 80A1C824  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A1C828  80 63 00 04 */	lwz r3, 4(r3)
/* 80A1C82C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A1C830  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A1C834  38 63 00 30 */	addi r3, r3, 0x30
/* 80A1C838  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A1C83C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A1C840  4B 92 9C 71 */	bl PSMTXCopy
/* 80A1C844  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A1C848  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A1C84C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A1C850  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80A1C854  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A1C858  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80A1C85C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A1C860  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80A1C864  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A1C868  80 63 00 04 */	lwz r3, 4(r3)
/* 80A1C86C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A1C870  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A1C874  38 63 00 60 */	addi r3, r3, 0x60
/* 80A1C878  7F 84 E3 78 */	mr r4, r28
/* 80A1C87C  4B 92 9C 35 */	bl PSMTXCopy
/* 80A1C880  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A1C884  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80A1C888  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A1C88C  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80A1C890  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A1C894  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80A1C898  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A1C89C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A1C8A0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A1C8A4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A1C8A8  38 63 00 90 */	addi r3, r3, 0x90
/* 80A1C8AC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A1C8B0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A1C8B4  4B 92 9B FD */	bl PSMTXCopy
/* 80A1C8B8  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A1C8BC  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80A1C8C0  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A1C8C4  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80A1C8C8  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A1C8CC  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80A1C8D0:
/* 80A1C8D0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80A1C8D4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A1C8D8  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80A1C8DC  7C 60 E2 14 */	add r3, r0, r28
/* 80A1C8E0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A1C8E4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A1C8E8  4B 92 9B C9 */	bl PSMTXCopy
/* 80A1C8EC  2C 1F 00 04 */	cmpwi r31, 4
/* 80A1C8F0  40 80 00 2C */	bge lbl_80A1C91C
/* 80A1C8F4  2C 1F 00 01 */	cmpwi r31, 1
/* 80A1C8F8  40 80 00 08 */	bge lbl_80A1C900
/* 80A1C8FC  48 00 00 20 */	b lbl_80A1C91C
lbl_80A1C900:
/* 80A1C900  7F A3 EB 78 */	mr r3, r29
/* 80A1C904  7F E4 FB 78 */	mr r4, r31
/* 80A1C908  38 A1 00 08 */	addi r5, r1, 8
/* 80A1C90C  3C C0 80 A2 */	lis r6, m__21daNpcKasiHana_Param_c@ha /* 0x80A210C8@ha */
/* 80A1C910  38 C6 10 C8 */	addi r6, r6, m__21daNpcKasiHana_Param_c@l /* 0x80A210C8@l */
/* 80A1C914  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80A1C918  4B 73 6A 65 */	bl setLookatMtx__8daNpcF_cFiPif
lbl_80A1C91C:
/* 80A1C91C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A1C920  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A1C924  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80A1C928  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A1C92C  7C 80 E2 14 */	add r4, r0, r28
/* 80A1C930  4B 92 9B 81 */	bl PSMTXCopy
/* 80A1C934  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A1C938  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A1C93C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80A1C940  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80A1C944  4B 92 9B 6D */	bl PSMTXCopy
/* 80A1C948  38 60 00 01 */	li r3, 1
/* 80A1C94C  39 61 00 30 */	addi r11, r1, 0x30
/* 80A1C950  4B 94 58 D5 */	bl _restgpr_28
/* 80A1C954  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A1C958  7C 08 03 A6 */	mtlr r0
/* 80A1C95C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A1C960  4E 80 00 20 */	blr 
