lbl_809699D0:
/* 809699D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809699D4  7C 08 02 A6 */	mflr r0
/* 809699D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 809699DC  39 61 00 30 */	addi r11, r1, 0x30
/* 809699E0  4B 9F 87 F9 */	bl _savegpr_28
/* 809699E4  7C 7D 1B 78 */	mr r29, r3
/* 809699E8  7C BE 2B 78 */	mr r30, r5
/* 809699EC  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 809699F0  7C BF 2B 78 */	mr r31, r5
/* 809699F4  3C 60 80 97 */	lis r3, lit_4574@ha /* 0x8096CA3C@ha */
/* 809699F8  38 83 CA 3C */	addi r4, r3, lit_4574@l /* 0x8096CA3C@l */
/* 809699FC  80 64 00 00 */	lwz r3, 0(r4)
/* 80969A00  80 04 00 04 */	lwz r0, 4(r4)
/* 80969A04  90 61 00 08 */	stw r3, 8(r1)
/* 80969A08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80969A0C  80 04 00 08 */	lwz r0, 8(r4)
/* 80969A10  90 01 00 10 */	stw r0, 0x10(r1)
/* 80969A14  2C 05 00 00 */	cmpwi r5, 0
/* 80969A18  40 82 00 B0 */	bne lbl_80969AC8
/* 80969A1C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80969A20  80 63 00 04 */	lwz r3, 4(r3)
/* 80969A24  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80969A28  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80969A2C  38 63 00 30 */	addi r3, r3, 0x30
/* 80969A30  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80969A34  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80969A38  4B 9D CA 79 */	bl PSMTXCopy
/* 80969A3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80969A40  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80969A44  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80969A48  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80969A4C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80969A50  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80969A54  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80969A58  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80969A5C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80969A60  80 63 00 04 */	lwz r3, 4(r3)
/* 80969A64  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80969A68  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80969A6C  38 63 00 90 */	addi r3, r3, 0x90
/* 80969A70  7F 84 E3 78 */	mr r4, r28
/* 80969A74  4B 9D CA 3D */	bl PSMTXCopy
/* 80969A78  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80969A7C  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80969A80  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80969A84  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80969A88  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80969A8C  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80969A90  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80969A94  80 63 00 04 */	lwz r3, 4(r3)
/* 80969A98  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80969A9C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80969AA0  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80969AA4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80969AA8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80969AAC  4B 9D CA 05 */	bl PSMTXCopy
/* 80969AB0  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80969AB4  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80969AB8  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80969ABC  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80969AC0  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80969AC4  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80969AC8:
/* 80969AC8  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80969ACC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80969AD0  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80969AD4  7C 60 E2 14 */	add r3, r0, r28
/* 80969AD8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80969ADC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80969AE0  4B 9D C9 D1 */	bl PSMTXCopy
/* 80969AE4  2C 1F 00 02 */	cmpwi r31, 2
/* 80969AE8  41 82 00 38 */	beq lbl_80969B20
/* 80969AEC  40 80 00 10 */	bge lbl_80969AFC
/* 80969AF0  2C 1F 00 01 */	cmpwi r31, 1
/* 80969AF4  40 80 00 10 */	bge lbl_80969B04
/* 80969AF8  48 00 00 28 */	b lbl_80969B20
lbl_80969AFC:
/* 80969AFC  2C 1F 00 05 */	cmpwi r31, 5
/* 80969B00  40 80 00 20 */	bge lbl_80969B20
lbl_80969B04:
/* 80969B04  7F A3 EB 78 */	mr r3, r29
/* 80969B08  7F E4 FB 78 */	mr r4, r31
/* 80969B0C  38 A1 00 08 */	addi r5, r1, 8
/* 80969B10  3C C0 80 97 */	lis r6, m__19daNpcBlueNS_Param_c@ha /* 0x8096C964@ha */
/* 80969B14  38 C6 C9 64 */	addi r6, r6, m__19daNpcBlueNS_Param_c@l /* 0x8096C964@l */
/* 80969B18  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80969B1C  4B 7E 98 61 */	bl setLookatMtx__8daNpcF_cFiPif
lbl_80969B20:
/* 80969B20  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80969B24  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80969B28  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80969B2C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80969B30  7C 80 E2 14 */	add r4, r0, r28
/* 80969B34  4B 9D C9 7D */	bl PSMTXCopy
/* 80969B38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80969B3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80969B40  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80969B44  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80969B48  4B 9D C9 69 */	bl PSMTXCopy
/* 80969B4C  38 60 00 01 */	li r3, 1
/* 80969B50  39 61 00 30 */	addi r11, r1, 0x30
/* 80969B54  4B 9F 86 D1 */	bl _restgpr_28
/* 80969B58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80969B5C  7C 08 03 A6 */	mtlr r0
/* 80969B60  38 21 00 30 */	addi r1, r1, 0x30
/* 80969B64  4E 80 00 20 */	blr 
