lbl_80AFD2A8:
/* 80AFD2A8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AFD2AC  7C 08 02 A6 */	mflr r0
/* 80AFD2B0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AFD2B4  39 61 00 30 */	addi r11, r1, 0x30
/* 80AFD2B8  4B 86 4F 21 */	bl _savegpr_28
/* 80AFD2BC  7C 7D 1B 78 */	mr r29, r3
/* 80AFD2C0  7C BE 2B 78 */	mr r30, r5
/* 80AFD2C4  A0 A4 00 14 */	lhz r5, 0x14(r4)
/* 80AFD2C8  7C BF 2B 78 */	mr r31, r5
/* 80AFD2CC  2C 05 00 00 */	cmpwi r5, 0
/* 80AFD2D0  40 82 00 B8 */	bne lbl_80AFD388
/* 80AFD2D4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFD2D8  80 63 00 04 */	lwz r3, 4(r3)
/* 80AFD2DC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AFD2E0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AFD2E4  38 63 00 30 */	addi r3, r3, 0x30
/* 80AFD2E8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFD2EC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFD2F0  4B 84 91 C1 */	bl PSMTXCopy
/* 80AFD2F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFD2F8  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFD2FC  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80AFD300  D0 1D 08 54 */	stfs f0, 0x854(r29)
/* 80AFD304  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80AFD308  D0 1D 08 58 */	stfs f0, 0x858(r29)
/* 80AFD30C  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80AFD310  D0 1D 08 5C */	stfs f0, 0x85c(r29)
/* 80AFD314  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFD318  80 63 00 04 */	lwz r3, 4(r3)
/* 80AFD31C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AFD320  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AFD324  38 63 01 B0 */	addi r3, r3, 0x1b0
/* 80AFD328  7F C4 F3 78 */	mr r4, r30
/* 80AFD32C  4B 84 91 85 */	bl PSMTXCopy
/* 80AFD330  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80AFD334  D0 1D 08 60 */	stfs f0, 0x860(r29)
/* 80AFD338  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80AFD33C  D0 1D 08 64 */	stfs f0, 0x864(r29)
/* 80AFD340  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80AFD344  D0 1D 08 68 */	stfs f0, 0x868(r29)
/* 80AFD348  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFD34C  80 63 00 04 */	lwz r3, 4(r3)
/* 80AFD350  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80AFD354  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80AFD358  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 80AFD35C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFD360  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFD364  4B 84 91 4D */	bl PSMTXCopy
/* 80AFD368  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80AFD36C  D0 1D 08 6C */	stfs f0, 0x86c(r29)
/* 80AFD370  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80AFD374  D0 1D 08 70 */	stfs f0, 0x870(r29)
/* 80AFD378  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 80AFD37C  D0 1D 08 74 */	stfs f0, 0x874(r29)
/* 80AFD380  38 60 00 01 */	li r3, 1
/* 80AFD384  48 00 01 00 */	b lbl_80AFD484
lbl_80AFD388:
/* 80AFD388  3C 60 80 B0 */	lis r3, lit_4298@ha /* 0x80B00DF4@ha */
/* 80AFD38C  38 83 0D F4 */	addi r4, r3, lit_4298@l /* 0x80B00DF4@l */
/* 80AFD390  80 64 00 00 */	lwz r3, 0(r4)
/* 80AFD394  80 04 00 04 */	lwz r0, 4(r4)
/* 80AFD398  90 61 00 08 */	stw r3, 8(r1)
/* 80AFD39C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AFD3A0  80 04 00 08 */	lwz r0, 8(r4)
/* 80AFD3A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AFD3A8  2C 05 00 09 */	cmpwi r5, 9
/* 80AFD3AC  40 80 00 10 */	bge lbl_80AFD3BC
/* 80AFD3B0  2C 05 00 01 */	cmpwi r5, 1
/* 80AFD3B4  41 82 00 10 */	beq lbl_80AFD3C4
/* 80AFD3B8  48 00 00 90 */	b lbl_80AFD448
lbl_80AFD3BC:
/* 80AFD3BC  2C 05 00 0B */	cmpwi r5, 0xb
/* 80AFD3C0  40 80 00 88 */	bge lbl_80AFD448
lbl_80AFD3C4:
/* 80AFD3C4  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 80AFD3C8  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80AFD3CC  1F 9F 00 30 */	mulli r28, r31, 0x30
/* 80AFD3D0  7C 60 E2 14 */	add r3, r0, r28
/* 80AFD3D4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFD3D8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFD3DC  4B 84 90 D5 */	bl PSMTXCopy
/* 80AFD3E0  7F A3 EB 78 */	mr r3, r29
/* 80AFD3E4  7F E4 FB 78 */	mr r4, r31
/* 80AFD3E8  38 A1 00 08 */	addi r5, r1, 8
/* 80AFD3EC  3C C0 80 B0 */	lis r6, m__17daNpcTheB_Param_c@ha /* 0x80B00D6C@ha */
/* 80AFD3F0  38 C6 0D 6C */	addi r6, r6, m__17daNpcTheB_Param_c@l /* 0x80B00D6C@l */
/* 80AFD3F4  C0 26 00 40 */	lfs f1, 0x40(r6)
/* 80AFD3F8  4B 65 5F 85 */	bl setLookatMtx__8daNpcF_cFiPif
/* 80AFD3FC  2C 1F 00 01 */	cmpwi r31, 1
/* 80AFD400  40 82 00 1C */	bne lbl_80AFD41C
/* 80AFD404  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFD408  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFD40C  A8 9D 0E 06 */	lha r4, 0xe06(r29)
/* 80AFD410  A8 BD 0E 08 */	lha r5, 0xe08(r29)
/* 80AFD414  A8 DD 0E 0A */	lha r6, 0xe0a(r29)
/* 80AFD418  4B 50 ED 4D */	bl mDoMtx_XYZrotM__FPA4_fsss
lbl_80AFD41C:
/* 80AFD41C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFD420  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFD424  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 80AFD428  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80AFD42C  7C 80 E2 14 */	add r4, r0, r28
/* 80AFD430  4B 84 90 81 */	bl PSMTXCopy
/* 80AFD434  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80AFD438  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80AFD43C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 80AFD440  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 80AFD444  4B 84 90 6D */	bl PSMTXCopy
lbl_80AFD448:
/* 80AFD448  2C 1F 00 0A */	cmpwi r31, 0xa
/* 80AFD44C  41 82 00 0C */	beq lbl_80AFD458
/* 80AFD450  2C 1F 00 0D */	cmpwi r31, 0xd
/* 80AFD454  40 82 00 2C */	bne lbl_80AFD480
lbl_80AFD458:
/* 80AFD458  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80AFD45C  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80AFD460  41 82 00 20 */	beq lbl_80AFD480
/* 80AFD464  83 DD 05 80 */	lwz r30, 0x580(r29)
/* 80AFD468  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFD46C  80 83 00 08 */	lwz r4, 8(r3)
/* 80AFD470  38 7D 05 6C */	addi r3, r29, 0x56c
/* 80AFD474  4B 51 05 1D */	bl changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80AFD478  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80AFD47C  93 C3 00 08 */	stw r30, 8(r3)
lbl_80AFD480:
/* 80AFD480  38 60 00 01 */	li r3, 1
lbl_80AFD484:
/* 80AFD484  39 61 00 30 */	addi r11, r1, 0x30
/* 80AFD488  4B 86 4D 9D */	bl _restgpr_28
/* 80AFD48C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AFD490  7C 08 03 A6 */	mtlr r0
/* 80AFD494  38 21 00 30 */	addi r1, r1, 0x30
/* 80AFD498  4E 80 00 20 */	blr 
