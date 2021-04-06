lbl_809D093C:
/* 809D093C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809D0940  7C 08 02 A6 */	mflr r0
/* 809D0944  90 01 00 34 */	stw r0, 0x34(r1)
/* 809D0948  39 61 00 30 */	addi r11, r1, 0x30
/* 809D094C  4B 99 18 8D */	bl _savegpr_28
/* 809D0950  7C 7F 1B 78 */	mr r31, r3
/* 809D0954  7C BC 2B 78 */	mr r28, r5
/* 809D0958  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 809D095C  7C BD 2B 78 */	mr r29, r5
/* 809D0960  3C 60 80 9D */	lis r3, lit_4503@ha /* 0x809D3A88@ha */
/* 809D0964  38 83 3A 88 */	addi r4, r3, lit_4503@l /* 0x809D3A88@l */
/* 809D0968  80 64 00 00 */	lwz r3, 0(r4)
/* 809D096C  80 04 00 04 */	lwz r0, 4(r4)
/* 809D0970  90 61 00 08 */	stw r3, 8(r1)
/* 809D0974  90 01 00 0C */	stw r0, 0xc(r1)
/* 809D0978  80 04 00 08 */	lwz r0, 8(r4)
/* 809D097C  90 01 00 10 */	stw r0, 0x10(r1)
/* 809D0980  2C 05 00 00 */	cmpwi r5, 0
/* 809D0984  40 82 00 B0 */	bne lbl_809D0A34
/* 809D0988  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809D098C  80 63 00 04 */	lwz r3, 4(r3)
/* 809D0990  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809D0994  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809D0998  38 63 00 30 */	addi r3, r3, 0x30
/* 809D099C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D09A0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D09A4  4B 97 5B 0D */	bl PSMTXCopy
/* 809D09A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D09AC  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D09B0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809D09B4  D0 1F 08 54 */	stfs f0, 0x854(r31)
/* 809D09B8  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809D09BC  D0 1F 08 58 */	stfs f0, 0x858(r31)
/* 809D09C0  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809D09C4  D0 1F 08 5C */	stfs f0, 0x85c(r31)
/* 809D09C8  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809D09CC  80 63 00 04 */	lwz r3, 4(r3)
/* 809D09D0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809D09D4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809D09D8  38 63 00 90 */	addi r3, r3, 0x90
/* 809D09DC  7F C4 F3 78 */	mr r4, r30
/* 809D09E0  4B 97 5A D1 */	bl PSMTXCopy
/* 809D09E4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809D09E8  D0 1F 08 60 */	stfs f0, 0x860(r31)
/* 809D09EC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809D09F0  D0 1F 08 64 */	stfs f0, 0x864(r31)
/* 809D09F4  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809D09F8  D0 1F 08 68 */	stfs f0, 0x868(r31)
/* 809D09FC  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809D0A00  80 63 00 04 */	lwz r3, 4(r3)
/* 809D0A04  80 63 00 84 */	lwz r3, 0x84(r3)
/* 809D0A08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 809D0A0C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 809D0A10  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D0A14  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D0A18  4B 97 5A 99 */	bl PSMTXCopy
/* 809D0A1C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 809D0A20  D0 1F 08 6C */	stfs f0, 0x86c(r31)
/* 809D0A24  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 809D0A28  D0 1F 08 70 */	stfs f0, 0x870(r31)
/* 809D0A2C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 809D0A30  D0 1F 08 74 */	stfs f0, 0x874(r31)
lbl_809D0A34:
/* 809D0A34  80 7C 00 84 */	lwz r3, 0x84(r28)
/* 809D0A38  80 03 00 0C */	lwz r0, 0xc(r3)
/* 809D0A3C  1F DD 00 30 */	mulli r30, r29, 0x30
/* 809D0A40  7C 60 F2 14 */	add r3, r0, r30
/* 809D0A44  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D0A48  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D0A4C  4B 97 5A 65 */	bl PSMTXCopy
/* 809D0A50  2C 1D 00 02 */	cmpwi r29, 2
/* 809D0A54  41 82 00 38 */	beq lbl_809D0A8C
/* 809D0A58  40 80 00 10 */	bge lbl_809D0A68
/* 809D0A5C  2C 1D 00 01 */	cmpwi r29, 1
/* 809D0A60  40 80 00 10 */	bge lbl_809D0A70
/* 809D0A64  48 00 00 28 */	b lbl_809D0A8C
lbl_809D0A68:
/* 809D0A68  2C 1D 00 05 */	cmpwi r29, 5
/* 809D0A6C  40 80 00 20 */	bge lbl_809D0A8C
lbl_809D0A70:
/* 809D0A70  7F E3 FB 78 */	mr r3, r31
/* 809D0A74  7F A4 EB 78 */	mr r4, r29
/* 809D0A78  38 A1 00 08 */	addi r5, r1, 8
/* 809D0A7C  3C C0 80 9D */	lis r6, m__17daNpc_Grd_Param_c@ha /* 0x809D3A04@ha */
/* 809D0A80  38 C6 3A 04 */	addi r6, r6, m__17daNpc_Grd_Param_c@l /* 0x809D3A04@l */
/* 809D0A84  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 809D0A88  4B 78 28 F5 */	bl setLookatMtx__8daNpcF_cFiPif
lbl_809D0A8C:
/* 809D0A8C  2C 1D 00 01 */	cmpwi r29, 1
/* 809D0A90  40 82 00 30 */	bne lbl_809D0AC0
/* 809D0A94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D0A98  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D0A9C  A8 1F 09 0C */	lha r0, 0x90c(r31)
/* 809D0AA0  7C 00 00 D0 */	neg r0, r0
/* 809D0AA4  7C 04 07 34 */	extsh r4, r0
/* 809D0AA8  4B 63 B9 8D */	bl mDoMtx_YrotM__FPA4_fs
/* 809D0AAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D0AB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D0AB4  A8 9F 09 08 */	lha r4, 0x908(r31)
/* 809D0AB8  4B 63 BA 15 */	bl mDoMtx_ZrotM__FPA4_fs
/* 809D0ABC  48 00 00 34 */	b lbl_809D0AF0
lbl_809D0AC0:
/* 809D0AC0  2C 1D 00 04 */	cmpwi r29, 4
/* 809D0AC4  40 82 00 2C */	bne lbl_809D0AF0
/* 809D0AC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D0ACC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D0AD0  A8 1F 09 18 */	lha r0, 0x918(r31)
/* 809D0AD4  7C 00 00 D0 */	neg r0, r0
/* 809D0AD8  7C 04 07 34 */	extsh r4, r0
/* 809D0ADC  4B 63 B9 59 */	bl mDoMtx_YrotM__FPA4_fs
/* 809D0AE0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D0AE4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D0AE8  A8 9F 09 14 */	lha r4, 0x914(r31)
/* 809D0AEC  4B 63 B9 E1 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_809D0AF0:
/* 809D0AF0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D0AF4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D0AF8  80 9C 00 84 */	lwz r4, 0x84(r28)
/* 809D0AFC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 809D0B00  7C 80 F2 14 */	add r4, r0, r30
/* 809D0B04  4B 97 59 AD */	bl PSMTXCopy
/* 809D0B08  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809D0B0C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809D0B10  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 809D0B14  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 809D0B18  4B 97 59 99 */	bl PSMTXCopy
/* 809D0B1C  2C 1D 00 04 */	cmpwi r29, 4
/* 809D0B20  41 82 00 0C */	beq lbl_809D0B2C
/* 809D0B24  2C 1D 00 07 */	cmpwi r29, 7
/* 809D0B28  40 82 00 2C */	bne lbl_809D0B54
lbl_809D0B2C:
/* 809D0B2C  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 809D0B30  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 809D0B34  41 82 00 20 */	beq lbl_809D0B54
/* 809D0B38  83 9F 05 80 */	lwz r28, 0x580(r31)
/* 809D0B3C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809D0B40  80 83 00 08 */	lwz r4, 8(r3)
/* 809D0B44  38 7F 05 6C */	addi r3, r31, 0x56c
/* 809D0B48  4B 63 CE 49 */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 809D0B4C  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 809D0B50  93 83 00 08 */	stw r28, 8(r3)
lbl_809D0B54:
/* 809D0B54  38 60 00 01 */	li r3, 1
/* 809D0B58  39 61 00 30 */	addi r11, r1, 0x30
/* 809D0B5C  4B 99 16 C9 */	bl _restgpr_28
/* 809D0B60  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809D0B64  7C 08 03 A6 */	mtlr r0
/* 809D0B68  38 21 00 30 */	addi r1, r1, 0x30
/* 809D0B6C  4E 80 00 20 */	blr 
