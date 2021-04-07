lbl_80A085EC:
/* 80A085EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A085F0  7C 08 02 A6 */	mflr r0
/* 80A085F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A085F8  39 61 00 30 */	addi r11, r1, 0x30
/* 80A085FC  4B 95 9B DD */	bl _savegpr_28
/* 80A08600  7C 7D 1B 78 */	mr r29, r3
/* 80A08604  7C BE 2B 78 */	mr r30, r5
/* 80A08608  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80A0860C  7C BF 2B 78 */	mr r31, r5
/* 80A08610  3C 60 80 A1 */	lis r3, lit_4299@ha /* 0x80A0C2F8@ha */
/* 80A08614  38 83 C2 F8 */	addi r4, r3, lit_4299@l /* 0x80A0C2F8@l */
/* 80A08618  80 64 00 00 */	lwz r3, 0(r4)
/* 80A0861C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A08620  90 61 00 08 */	stw r3, 8(r1)
/* 80A08624  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A08628  80 04 00 08 */	lwz r0, 8(r4)
/* 80A0862C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A08630  2C 05 00 00 */	cmpwi r5, 0
/* 80A08634  40 82 00 B0 */	bne lbl_80A086E4
/* 80A08638  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A0863C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A08640  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A08644  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A08648  38 63 00 30 */	addi r3, r3, 0x30
/* 80A0864C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A08650  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A08654  4B 93 DE 5D */	bl PSMTXCopy
/* 80A08658  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A0865C  3B 83 D4 70 */	addi r28, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A08660  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A08664  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80A08668  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A0866C  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80A08670  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A08674  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80A08678  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A0867C  80 63 00 04 */	lwz r3, 4(r3)
/* 80A08680  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A08684  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A08688  38 63 00 90 */	addi r3, r3, 0x90
/* 80A0868C  7F 84 E3 78 */	mr r4, r28
/* 80A08690  4B 93 DE 21 */	bl PSMTXCopy
/* 80A08694  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A08698  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80A0869C  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A086A0  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80A086A4  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A086A8  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80A086AC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A086B0  80 63 00 04 */	lwz r3, 4(r3)
/* 80A086B4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80A086B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80A086BC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80A086C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A086C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A086C8  4B 93 DD E9 */	bl PSMTXCopy
/* 80A086CC  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80A086D0  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80A086D4  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 80A086D8  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80A086DC  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80A086E0  D0 1D 08 74 */	stfs f0, 0x874(r29)
lbl_80A086E4:
/* 80A086E4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80A086E8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A086EC  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80A086F0  7C 60 E2 14 */	add r3, r0, r28
/* 80A086F4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A086F8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A086FC  4B 93 DD B5 */	bl PSMTXCopy
/* 80A08700  2C 1F 00 02 */	cmpwi r31, 2
/* 80A08704  41 82 00 38 */	beq lbl_80A0873C
/* 80A08708  40 80 00 10 */	bge lbl_80A08718
/* 80A0870C  2C 1F 00 01 */	cmpwi r31, 1
/* 80A08710  40 80 00 10 */	bge lbl_80A08720
/* 80A08714  48 00 00 28 */	b lbl_80A0873C
lbl_80A08718:
/* 80A08718  2C 1F 00 05 */	cmpwi r31, 5
/* 80A0871C  40 80 00 20 */	bge lbl_80A0873C
lbl_80A08720:
/* 80A08720  7F A3 EB 78 */	mr r3, r29
/* 80A08724  7F E4 FB 78 */	mr r4, r31
/* 80A08728  38 A1 00 08 */	addi r5, r1, 8
/* 80A0872C  3C C0 80 A1 */	lis r6, m__18daNpcImpal_Param_c@ha /* 0x80A0C270@ha */
/* 80A08730  38 C6 C2 70 */	addi r6, r6, m__18daNpcImpal_Param_c@l /* 0x80A0C270@l */
/* 80A08734  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80A08738  4B 74 AC 45 */	bl setLookatMtx__8daNpcF_cFiPif
lbl_80A0873C:
/* 80A0873C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A08740  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A08744  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80A08748  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A0874C  7C 80 E2 14 */	add r4, r0, r28
/* 80A08750  4B 93 DD 61 */	bl PSMTXCopy
/* 80A08754  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80A08758  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80A0875C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80A08760  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80A08764  4B 93 DD 4D */	bl PSMTXCopy
/* 80A08768  2C 1F 00 04 */	cmpwi r31, 4
/* 80A0876C  41 82 00 0C */	beq lbl_80A08778
/* 80A08770  2C 1F 00 08 */	cmpwi r31, 8
/* 80A08774  40 82 00 2C */	bne lbl_80A087A0
lbl_80A08778:
/* 80A08778  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80A0877C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80A08780  41 82 00 20 */	beq lbl_80A087A0
/* 80A08784  83 9D 05 80 */	lwz r28, 0x580(r29)
/* 80A08788  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A0878C  80 83 00 08 */	lwz r4, 8(r3)
/* 80A08790  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80A08794  4B 60 51 FD */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80A08798  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A0879C  93 83 00 08 */	stw r28, 8(r3)
lbl_80A087A0:
/* 80A087A0  38 60 00 01 */	li r3, 1
/* 80A087A4  39 61 00 30 */	addi r11, r1, 0x30
/* 80A087A8  4B 95 9A 7D */	bl _restgpr_28
/* 80A087AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A087B0  7C 08 03 A6 */	mtlr r0
/* 80A087B4  38 21 00 30 */	addi r1, r1, 0x30
/* 80A087B8  4E 80 00 20 */	blr 
