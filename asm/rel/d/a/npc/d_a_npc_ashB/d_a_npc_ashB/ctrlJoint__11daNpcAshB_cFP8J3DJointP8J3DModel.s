lbl_8095E9C8:
/* 8095E9C8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8095E9CC  7C 08 02 A6 */	mflr r0
/* 8095E9D0  90 01 00 34 */	stw r0, 0x34(r1)
/* 8095E9D4  39 61 00 30 */	addi r11, r1, 0x30
/* 8095E9D8  4B A0 38 01 */	bl _savegpr_28
/* 8095E9DC  7C 7D 1B 78 */	mr r29, r3
/* 8095E9E0  7C BE 2B 78 */	mr r30, r5
/* 8095E9E4  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 8095E9E8  7C BF 2B 78 */	mr r31, r5
/* 8095E9EC  3C 60 80 96 */	lis r3, lit_4286@ha /* 0x8096216C@ha */
/* 8095E9F0  38 83 21 6C */	addi r4, r3, lit_4286@l /* 0x8096216C@l */
/* 8095E9F4  80 64 00 00 */	lwz r3, 0(r4)
/* 8095E9F8  80 04 00 04 */	lwz r0, 4(r4)
/* 8095E9FC  90 61 00 08 */	stw r3, 8(r1)
/* 8095EA00  90 01 00 0C */	stw r0, 0xc(r1)
/* 8095EA04  80 04 00 08 */	lwz r0, 8(r4)
/* 8095EA08  90 01 00 10 */	stw r0, 0x10(r1)
/* 8095EA0C  2C 05 00 00 */	cmpwi r5, 0
/* 8095EA10  40 82 00 B0 */	bne lbl_8095EAC0
/* 8095EA14  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8095EA18  80 63 00 04 */	lwz r3, 4(r3)
/* 8095EA1C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8095EA20  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8095EA24  38 63 00 30 */	addi r3, r3, 0x30
/* 8095EA28  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8095EA2C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8095EA30  4B 9E 7A 81 */	bl PSMTXCopy
/* 8095EA34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8095EA38  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8095EA3C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8095EA40  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 8095EA44  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8095EA48  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 8095EA4C  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8095EA50  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 8095EA54  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8095EA58  80 63 00 04 */	lwz r3, 4(r3)
/* 8095EA5C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8095EA60  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8095EA64  38 63 01 B0 */	addi r3, r3, 0x1b0
/* 8095EA68  7F 84 E3 78 */	mr r4, r28
/* 8095EA6C  4B 9E 7A 45 */	bl PSMTXCopy
/* 8095EA70  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8095EA74  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 8095EA78  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8095EA7C  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 8095EA80  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8095EA84  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 8095EA88  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8095EA8C  80 63 00 04 */	lwz r3, 4(r3)
/* 8095EA90  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8095EA94  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8095EA98  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8095EA9C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8095EAA0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8095EAA4  4B 9E 7A 0D */	bl PSMTXCopy
/* 8095EAA8  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 8095EAAC  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 8095EAB0  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 8095EAB4  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 8095EAB8  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 8095EABC  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_8095EAC0:
/* 8095EAC0  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 8095EAC4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 8095EAC8  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 8095EACC  7C 60 E2 14 */	add r3, r0, r28
/* 8095EAD0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8095EAD4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8095EAD8  4B 9E 79 D9 */	bl PSMTXCopy
/* 8095EADC  2C 1F 00 09 */	cmpwi r31, 9
/* 8095EAE0  40 80 00 10 */	bge lbl_8095EAF0
/* 8095EAE4  2C 1F 00 01 */	cmpwi r31, 1
/* 8095EAE8  41 82 00 10 */	beq lbl_8095EAF8
/* 8095EAEC  48 00 00 28 */	b lbl_8095EB14
lbl_8095EAF0:
/* 8095EAF0  2C 1F 00 0B */	cmpwi r31, 0xb
/* 8095EAF4  40 80 00 20 */	bge lbl_8095EB14
lbl_8095EAF8:
/* 8095EAF8  7F A3 EB 78 */	mr r3, r29
/* 8095EAFC  7F E4 FB 78 */	mr r4, r31
/* 8095EB00  38 A1 00 08 */	addi r5, r1, 8
/* 8095EB04  3C C0 80 96 */	lis r6, m__17daNpcAshB_Param_c@ha /* 0x809620E4@ha */
/* 8095EB08  38 C6 20 E4 */	addi r6, r6, m__17daNpcAshB_Param_c@l /* 0x809620E4@l */
/* 8095EB0C  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 8095EB10  4B 7F 48 6D */	bl setLookatMtx__8daNpcF_cFiPif
lbl_8095EB14:
/* 8095EB14  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8095EB18  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8095EB1C  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 8095EB20  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8095EB24  7C 80 E2 14 */	add r4, r0, r28
/* 8095EB28  4B 9E 79 89 */	bl PSMTXCopy
/* 8095EB2C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8095EB30  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8095EB34  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 8095EB38  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 8095EB3C  4B 9E 79 75 */	bl PSMTXCopy
/* 8095EB40  2C 1F 00 0A */	cmpwi r31, 0xa
/* 8095EB44  41 82 00 0C */	beq lbl_8095EB50
/* 8095EB48  2C 1F 00 13 */	cmpwi r31, 0x13
/* 8095EB4C  40 82 00 2C */	bne lbl_8095EB78
lbl_8095EB50:
/* 8095EB50  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 8095EB54  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8095EB58  41 82 00 20 */	beq lbl_8095EB78
/* 8095EB5C  83 9D 05 80 */	lwz r28, 0x580(r29)
/* 8095EB60  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8095EB64  80 83 00 08 */	lwz r4, 8(r3)
/* 8095EB68  38 7D 05 6C */	addi r3, r29, 0x56c
/* 8095EB6C  4B 6A EE 25 */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 8095EB70  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8095EB74  93 83 00 08 */	stw r28, 8(r3)
lbl_8095EB78:
/* 8095EB78  38 60 00 01 */	li r3, 1
/* 8095EB7C  39 61 00 30 */	addi r11, r1, 0x30
/* 8095EB80  4B A0 36 A5 */	bl _restgpr_28
/* 8095EB84  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8095EB88  7C 08 03 A6 */	mtlr r0
/* 8095EB8C  38 21 00 30 */	addi r1, r1, 0x30
/* 8095EB90  4E 80 00 20 */	blr 
