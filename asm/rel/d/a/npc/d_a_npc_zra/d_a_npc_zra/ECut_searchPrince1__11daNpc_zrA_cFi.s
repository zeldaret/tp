lbl_80B8B530:
/* 80B8B530  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80B8B534  7C 08 02 A6 */	mflr r0
/* 80B8B538  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80B8B53C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80B8B540  4B 7D 6C 8D */	bl _savegpr_25
/* 80B8B544  7C 7C 1B 78 */	mr r28, r3
/* 80B8B548  7C 99 23 78 */	mr r25, r4
/* 80B8B54C  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B8B550  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B8B554  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B8B558  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B8B55C  3B 63 4F F8 */	addi r27, r3, 0x4ff8
/* 80B8B560  3B C0 00 00 */	li r30, 0
/* 80B8B564  3B A0 FF FF */	li r29, -1
/* 80B8B568  80 7F 08 B4 */	lwz r3, 0x8b4(r31)
/* 80B8B56C  80 1F 08 B8 */	lwz r0, 0x8b8(r31)
/* 80B8B570  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80B8B574  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B8B578  93 81 00 1C */	stw r28, 0x1c(r1)
/* 80B8B57C  38 7C 13 2C */	addi r3, r28, 0x132c
/* 80B8B580  4B 5C 51 6D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80B8B584  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B8B588  7F 63 DB 78 */	mr r3, r27
/* 80B8B58C  7F 24 CB 78 */	mr r4, r25
/* 80B8B590  3C A0 80 B9 */	lis r5, d_a_npc_zra__stringBase0@ha /* 0x80B8CD30@ha */
/* 80B8B594  38 A5 CD 30 */	addi r5, r5, d_a_npc_zra__stringBase0@l /* 0x80B8CD30@l */
/* 80B8B598  38 A5 01 5B */	addi r5, r5, 0x15b
/* 80B8B59C  38 C0 00 03 */	li r6, 3
/* 80B8B5A0  4B 4B CB 4D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B8B5A4  28 03 00 00 */	cmplwi r3, 0
/* 80B8B5A8  41 82 00 08 */	beq lbl_80B8B5B0
/* 80B8B5AC  83 A3 00 00 */	lwz r29, 0(r3)
lbl_80B8B5B0:
/* 80B8B5B0  7F 63 DB 78 */	mr r3, r27
/* 80B8B5B4  7F 24 CB 78 */	mr r4, r25
/* 80B8B5B8  4B 4B C7 95 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80B8B5BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B8B5C0  41 82 01 68 */	beq lbl_80B8B728
/* 80B8B5C4  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80B8B5C8  41 82 00 CC */	beq lbl_80B8B694
/* 80B8B5CC  40 80 00 28 */	bge lbl_80B8B5F4
/* 80B8B5D0  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80B8B5D4  41 82 00 60 */	beq lbl_80B8B634
/* 80B8B5D8  40 80 00 10 */	bge lbl_80B8B5E8
/* 80B8B5DC  2C 1D 00 00 */	cmpwi r29, 0
/* 80B8B5E0  41 82 00 2C */	beq lbl_80B8B60C
/* 80B8B5E4  48 00 01 44 */	b lbl_80B8B728
lbl_80B8B5E8:
/* 80B8B5E8  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80B8B5EC  41 82 00 5C */	beq lbl_80B8B648
/* 80B8B5F0  48 00 01 38 */	b lbl_80B8B728
lbl_80B8B5F4:
/* 80B8B5F4  2C 1D 00 32 */	cmpwi r29, 0x32
/* 80B8B5F8  41 82 01 30 */	beq lbl_80B8B728
/* 80B8B5FC  40 80 01 2C */	bge lbl_80B8B728
/* 80B8B600  2C 1D 00 28 */	cmpwi r29, 0x28
/* 80B8B604  41 82 00 D0 */	beq lbl_80B8B6D4
/* 80B8B608  48 00 01 20 */	b lbl_80B8B728
lbl_80B8B60C:
/* 80B8B60C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B8B610  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B8B614  88 9C 15 0E */	lbz r4, 0x150e(r28)
/* 80B8B618  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80B8B61C  7C 05 07 74 */	extsb r5, r0
/* 80B8B620  4B 4A 9B E1 */	bl onSwitch__10dSv_info_cFii
/* 80B8B624  7F 83 E3 78 */	mr r3, r28
/* 80B8B628  38 80 00 04 */	li r4, 4
/* 80B8B62C  4B FF 30 C9 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B8B630  48 00 00 F8 */	b lbl_80B8B728
lbl_80B8B634:
/* 80B8B634  7F 83 E3 78 */	mr r3, r28
/* 80B8B638  80 9C 14 E0 */	lwz r4, 0x14e0(r28)
/* 80B8B63C  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80B8B640  4B 5C 86 DD */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
/* 80B8B644  48 00 00 E4 */	b lbl_80B8B728
lbl_80B8B648:
/* 80B8B648  7F 83 E3 78 */	mr r3, r28
/* 80B8B64C  38 80 00 00 */	li r4, 0
/* 80B8B650  4B FF 30 A5 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B8B654  7F 83 E3 78 */	mr r3, r28
/* 80B8B658  38 80 00 14 */	li r4, 0x14
/* 80B8B65C  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8B660  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B8B664  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8B668  7D 89 03 A6 */	mtctr r12
/* 80B8B66C  4E 80 04 21 */	bctrl 
/* 80B8B670  7F 83 E3 78 */	mr r3, r28
/* 80B8B674  38 80 00 20 */	li r4, 0x20
/* 80B8B678  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8B67C  38 A0 00 00 */	li r5, 0
/* 80B8B680  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B8B684  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8B688  7D 89 03 A6 */	mtctr r12
/* 80B8B68C  4E 80 04 21 */	bctrl 
/* 80B8B690  48 00 00 98 */	b lbl_80B8B728
lbl_80B8B694:
/* 80B8B694  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8B698  D0 1C 15 44 */	stfs f0, 0x1544(r28)
/* 80B8B69C  C0 1F 08 BC */	lfs f0, 0x8bc(r31)
/* 80B8B6A0  D0 1C 15 48 */	stfs f0, 0x1548(r28)
/* 80B8B6A4  C0 1F 08 C0 */	lfs f0, 0x8c0(r31)
/* 80B8B6A8  D0 1C 15 4C */	stfs f0, 0x154c(r28)
/* 80B8B6AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8B6B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8B6B4  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B8B6B8  4B 48 0D 25 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B8B6BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8B6C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8B6C4  38 9C 15 44 */	addi r4, r28, 0x1544
/* 80B8B6C8  7C 85 23 78 */	mr r5, r4
/* 80B8B6CC  4B 7B B6 A1 */	bl PSMTXMultVec
/* 80B8B6D0  48 00 00 58 */	b lbl_80B8B728
lbl_80B8B6D4:
/* 80B8B6D4  7F 83 E3 78 */	mr r3, r28
/* 80B8B6D8  38 80 00 14 */	li r4, 0x14
/* 80B8B6DC  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8B6E0  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B8B6E4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8B6E8  7D 89 03 A6 */	mtctr r12
/* 80B8B6EC  4E 80 04 21 */	bctrl 
/* 80B8B6F0  7F 83 E3 78 */	mr r3, r28
/* 80B8B6F4  38 80 00 22 */	li r4, 0x22
/* 80B8B6F8  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8B6FC  38 A0 00 00 */	li r5, 0
/* 80B8B700  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B8B704  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8B708  7D 89 03 A6 */	mtctr r12
/* 80B8B70C  4E 80 04 21 */	bctrl 
/* 80B8B710  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B8B714  B0 1C 15 36 */	sth r0, 0x1536(r28)
/* 80B8B718  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80B8B71C  B0 1C 15 38 */	sth r0, 0x1538(r28)
/* 80B8B720  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B8B724  B0 1C 15 3A */	sth r0, 0x153a(r28)
lbl_80B8B728:
/* 80B8B728  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 80B8B72C  41 82 01 CC */	beq lbl_80B8B8F8
/* 80B8B730  40 80 00 28 */	bge lbl_80B8B758
/* 80B8B734  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80B8B738  41 82 00 40 */	beq lbl_80B8B778
/* 80B8B73C  40 80 00 10 */	bge lbl_80B8B74C
/* 80B8B740  2C 1D 00 00 */	cmpwi r29, 0
/* 80B8B744  41 82 00 2C */	beq lbl_80B8B770
/* 80B8B748  48 00 05 80 */	b lbl_80B8BCC8
lbl_80B8B74C:
/* 80B8B74C  2C 1D 00 14 */	cmpwi r29, 0x14
/* 80B8B750  41 82 00 4C */	beq lbl_80B8B79C
/* 80B8B754  48 00 05 74 */	b lbl_80B8BCC8
lbl_80B8B758:
/* 80B8B758  2C 1D 00 32 */	cmpwi r29, 0x32
/* 80B8B75C  41 82 03 40 */	beq lbl_80B8BA9C
/* 80B8B760  40 80 05 68 */	bge lbl_80B8BCC8
/* 80B8B764  2C 1D 00 28 */	cmpwi r29, 0x28
/* 80B8B768  41 82 02 C4 */	beq lbl_80B8BA2C
/* 80B8B76C  48 00 05 5C */	b lbl_80B8BCC8
lbl_80B8B770:
/* 80B8B770  3B C0 00 01 */	li r30, 1
/* 80B8B774  48 00 05 58 */	b lbl_80B8BCCC
lbl_80B8B778:
/* 80B8B778  7F 83 E3 78 */	mr r3, r28
/* 80B8B77C  38 80 00 00 */	li r4, 0
/* 80B8B780  38 A0 00 00 */	li r5, 0
/* 80B8B784  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80B8B788  4B 5C 85 FD */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80B8B78C  2C 03 00 00 */	cmpwi r3, 0
/* 80B8B790  41 82 05 3C */	beq lbl_80B8BCCC
/* 80B8B794  3B C0 00 01 */	li r30, 1
/* 80B8B798  48 00 05 34 */	b lbl_80B8BCCC
lbl_80B8B79C:
/* 80B8B79C  80 1C 14 EC */	lwz r0, 0x14ec(r28)
/* 80B8B7A0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80B8B7A4  40 82 00 FC */	bne lbl_80B8B8A0
/* 80B8B7A8  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B8B7AC  38 80 00 01 */	li r4, 1
/* 80B8B7B0  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80B8B7B4  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80B8B7B8  40 82 00 18 */	bne lbl_80B8B7D0
/* 80B8B7BC  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B8B7C0  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80B8B7C4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80B8B7C8  41 82 00 08 */	beq lbl_80B8B7D0
/* 80B8B7CC  38 80 00 00 */	li r4, 0
lbl_80B8B7D0:
/* 80B8B7D0  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80B8B7D4  41 82 00 AC */	beq lbl_80B8B880
/* 80B8B7D8  C0 1F 08 A4 */	lfs f0, 0x8a4(r31)
/* 80B8B7DC  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80B8B7E0  C0 1F 08 C4 */	lfs f0, 0x8c4(r31)
/* 80B8B7E4  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 80B8B7E8  C0 1F 08 C8 */	lfs f0, 0x8c8(r31)
/* 80B8B7EC  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 80B8B7F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8B7F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8B7F8  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B8B7FC  4B 48 0B E1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B8B800  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8B804  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8B808  38 81 00 84 */	addi r4, r1, 0x84
/* 80B8B80C  7C 85 23 78 */	mr r5, r4
/* 80B8B810  4B 7B B5 5D */	bl PSMTXMultVec
/* 80B8B814  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B8B818  38 81 00 84 */	addi r4, r1, 0x84
/* 80B8B81C  7C 65 1B 78 */	mr r5, r3
/* 80B8B820  4B 7B B8 71 */	bl PSVECAdd
/* 80B8B824  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B8B828  D0 1C 04 BC */	stfs f0, 0x4bc(r28)
/* 80B8B82C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B8B830  D0 1C 04 C0 */	stfs f0, 0x4c0(r28)
/* 80B8B834  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B8B838  D0 1C 04 C4 */	stfs f0, 0x4c4(r28)
/* 80B8B83C  7F 83 E3 78 */	mr r3, r28
/* 80B8B840  38 80 00 14 */	li r4, 0x14
/* 80B8B844  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B8B848  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B8B84C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8B850  7D 89 03 A6 */	mtctr r12
/* 80B8B854  4E 80 04 21 */	bctrl 
/* 80B8B858  7F 83 E3 78 */	mr r3, r28
/* 80B8B85C  38 80 00 21 */	li r4, 0x21
/* 80B8B860  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 80B8B864  38 A0 00 00 */	li r5, 0
/* 80B8B868  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B8B86C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8B870  7D 89 03 A6 */	mtctr r12
/* 80B8B874  4E 80 04 21 */	bctrl 
/* 80B8B878  3B C0 00 01 */	li r30, 1
/* 80B8B87C  48 00 00 30 */	b lbl_80B8B8AC
lbl_80B8B880:
/* 80B8B880  38 7C 08 F2 */	addi r3, r28, 0x8f2
/* 80B8B884  38 80 2D CA */	li r4, 0x2dca
/* 80B8B888  38 A0 02 00 */	li r5, 0x200
/* 80B8B88C  4B 6E 53 05 */	bl cLib_chaseAngleS__FPsss
/* 80B8B890  7F 83 E3 78 */	mr r3, r28
/* 80B8B894  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B8B898  4B 5C 89 B9 */	bl setAngle__8daNpcF_cFs
/* 80B8B89C  48 00 00 10 */	b lbl_80B8B8AC
lbl_80B8B8A0:
/* 80B8B8A0  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80B8B8A4  40 82 00 08 */	bne lbl_80B8B8AC
/* 80B8B8A8  3B C0 00 01 */	li r30, 1
lbl_80B8B8AC:
/* 80B8B8AC  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B8B8B0  80 63 00 04 */	lwz r3, 4(r3)
/* 80B8B8B4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B8B8B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B8B8BC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80B8B8C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8B8C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8B8C8  4B 7B AB E9 */	bl PSMTXCopy
/* 80B8B8CC  38 7C 04 EC */	addi r3, r28, 0x4ec
/* 80B8B8D0  4B 48 15 A1 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80B8B8D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8B8D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8B8DC  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B8B8E0  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80B8B8E4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B8B8E8  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80B8B8EC  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B8B8F0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80B8B8F4  48 00 03 D8 */	b lbl_80B8BCCC
lbl_80B8B8F8:
/* 80B8B8F8  80 1C 14 EC */	lwz r0, 0x14ec(r28)
/* 80B8B8FC  2C 00 00 20 */	cmpwi r0, 0x20
/* 80B8B900  40 82 00 0C */	bne lbl_80B8B90C
/* 80B8B904  3B C0 00 01 */	li r30, 1
/* 80B8B908  48 00 01 00 */	b lbl_80B8BA08
lbl_80B8B90C:
/* 80B8B90C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B8B910  38 81 00 10 */	addi r4, r1, 0x10
/* 80B8B914  4B 49 1F 7D */	bl fopAcM_getWaterY__FPC4cXyzPf
/* 80B8B918  2C 03 00 00 */	cmpwi r3, 0
/* 80B8B91C  41 82 00 EC */	beq lbl_80B8BA08
/* 80B8B920  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B8B924  80 63 00 04 */	lwz r3, 4(r3)
/* 80B8B928  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B8B92C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B8B930  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80B8B934  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8B938  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8B93C  4B 7B AB 75 */	bl PSMTXCopy
/* 80B8B940  38 7C 04 EC */	addi r3, r28, 0x4ec
/* 80B8B944  4B 48 15 2D */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80B8B948  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8B94C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8B950  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80B8B954  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 80B8B958  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B8B95C  D0 21 00 70 */	stfs f1, 0x70(r1)
/* 80B8B960  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B8B964  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80B8B968  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 80B8B96C  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 80B8B970  4C 40 13 82 */	cror 2, 0, 2
/* 80B8B974  40 82 00 94 */	bne lbl_80B8BA08
/* 80B8B978  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 80B8B97C  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80B8B980  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B8B984  D0 61 00 64 */	stfs f3, 0x64(r1)
/* 80B8B988  38 61 00 60 */	addi r3, r1, 0x60
/* 80B8B98C  C0 3F 07 88 */	lfs f1, 0x788(r31)
/* 80B8B990  38 80 00 00 */	li r4, 0
/* 80B8B994  4B 49 3E E9 */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 80B8B998  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600C4@ha */
/* 80B8B99C  38 03 00 C4 */	addi r0, r3, 0x00C4 /* 0x000600C4@l */
/* 80B8B9A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B8B9A4  38 7C 0B 48 */	addi r3, r28, 0xb48
/* 80B8B9A8  38 81 00 0C */	addi r4, r1, 0xc
/* 80B8B9AC  38 A0 00 00 */	li r5, 0
/* 80B8B9B0  38 C0 FF FF */	li r6, -1
/* 80B8B9B4  81 9C 0B 48 */	lwz r12, 0xb48(r28)
/* 80B8B9B8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B8B9BC  7D 89 03 A6 */	mtctr r12
/* 80B8B9C0  4E 80 04 21 */	bctrl 
/* 80B8B9C4  7F 83 E3 78 */	mr r3, r28
/* 80B8B9C8  38 80 00 14 */	li r4, 0x14
/* 80B8B9CC  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8B9D0  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B8B9D4  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8B9D8  7D 89 03 A6 */	mtctr r12
/* 80B8B9DC  4E 80 04 21 */	bctrl 
/* 80B8B9E0  7F 83 E3 78 */	mr r3, r28
/* 80B8B9E4  38 80 00 22 */	li r4, 0x22
/* 80B8B9E8  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8B9EC  38 A0 00 00 */	li r5, 0
/* 80B8B9F0  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B8B9F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8B9F8  7D 89 03 A6 */	mtctr r12
/* 80B8B9FC  4E 80 04 21 */	bctrl 
/* 80B8BA00  3B C0 00 01 */	li r30, 1
/* 80B8BA04  48 00 02 C8 */	b lbl_80B8BCCC
lbl_80B8BA08:
/* 80B8BA08  C0 3C 15 48 */	lfs f1, 0x1548(r28)
/* 80B8BA0C  C0 1F 07 CC */	lfs f0, 0x7cc(r31)
/* 80B8BA10  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B8BA14  D0 1C 15 48 */	stfs f0, 0x1548(r28)
/* 80B8BA18  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B8BA1C  38 9C 15 44 */	addi r4, r28, 0x1544
/* 80B8BA20  7C 65 1B 78 */	mr r5, r3
/* 80B8BA24  4B 7B B6 6D */	bl PSVECAdd
/* 80B8BA28  48 00 02 A4 */	b lbl_80B8BCCC
lbl_80B8BA2C:
/* 80B8BA2C  80 1C 14 EC */	lwz r0, 0x14ec(r28)
/* 80B8BA30  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80B8BA34  40 82 00 08 */	bne lbl_80B8BA3C
/* 80B8BA38  3B C0 00 01 */	li r30, 1
lbl_80B8BA3C:
/* 80B8BA3C  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8BA40  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B8BA44  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B8BA48  38 7F 00 00 */	addi r3, r31, 0
/* 80B8BA4C  C0 03 00 6C */	lfs f0, 0x6c(r3)
/* 80B8BA50  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B8BA54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8BA58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8BA5C  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80B8BA60  4B 48 09 7D */	bl mDoMtx_YrotS__FPA4_fs
/* 80B8BA64  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8BA68  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8BA6C  38 81 00 54 */	addi r4, r1, 0x54
/* 80B8BA70  7C 85 23 78 */	mr r5, r4
/* 80B8BA74  4B 7B B2 F9 */	bl PSMTXMultVec
/* 80B8BA78  38 7C 15 44 */	addi r3, r28, 0x1544
/* 80B8BA7C  38 81 00 54 */	addi r4, r1, 0x54
/* 80B8BA80  C0 3F 08 28 */	lfs f1, 0x828(r31)
/* 80B8BA84  4B 6E 4D 29 */	bl cLib_chasePos__FP4cXyzRC4cXyzf
/* 80B8BA88  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B8BA8C  38 9C 15 44 */	addi r4, r28, 0x1544
/* 80B8BA90  7C 65 1B 78 */	mr r5, r3
/* 80B8BA94  4B 7B B5 FD */	bl PSVECAdd
/* 80B8BA98  48 00 02 34 */	b lbl_80B8BCCC
lbl_80B8BA9C:
/* 80B8BA9C  C0 1F 08 CC */	lfs f0, 0x8cc(r31)
/* 80B8BAA0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B8BAA4  C0 1F 08 D0 */	lfs f0, 0x8d0(r31)
/* 80B8BAA8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B8BAAC  C0 1F 08 D4 */	lfs f0, 0x8d4(r31)
/* 80B8BAB0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B8BAB4  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8BAB8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B8BABC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B8BAC0  3B 7F 00 00 */	addi r27, r31, 0
/* 80B8BAC4  C0 1B 00 6C */	lfs f0, 0x6c(r27)
/* 80B8BAC8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B8BACC  38 61 00 48 */	addi r3, r1, 0x48
/* 80B8BAD0  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80B8BAD4  4B 6E 51 A1 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B8BAD8  B0 61 00 14 */	sth r3, 0x14(r1)
/* 80B8BADC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B8BAE0  38 81 00 48 */	addi r4, r1, 0x48
/* 80B8BAE4  4B 6E 51 21 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B8BAE8  3B 21 00 16 */	addi r25, r1, 0x16
/* 80B8BAEC  B0 61 00 16 */	sth r3, 0x16(r1)
/* 80B8BAF0  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B8BAF4  3B 41 00 18 */	addi r26, r1, 0x18
/* 80B8BAF8  B0 01 00 18 */	sth r0, 0x18(r1)
/* 80B8BAFC  C0 3B 00 6C */	lfs f1, 0x6c(r27)
/* 80B8BB00  7F 7D DB 78 */	mr r29, r27
/* 80B8BB04  C0 1B 00 78 */	lfs f0, 0x78(r27)
/* 80B8BB08  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B8BB0C  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B8BB10  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B8BB14  7F 83 E3 78 */	mr r3, r28
/* 80B8BB18  38 81 00 14 */	addi r4, r1, 0x14
/* 80B8BB1C  38 BC 15 36 */	addi r5, r28, 0x1536
/* 80B8BB20  38 C0 00 17 */	li r6, 0x17
/* 80B8BB24  A8 1B 00 74 */	lha r0, 0x74(r27)
/* 80B8BB28  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B8BB2C  7C 00 01 94 */	addze r0, r0
/* 80B8BB30  7C 07 07 34 */	extsh r7, r0
/* 80B8BB34  4B FF 69 C1 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B8BB38  7F 83 E3 78 */	mr r3, r28
/* 80B8BB3C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B8BB40  4B FF 6A 45 */	bl calcSwimPos__11daNpc_zrA_cFR4cXyz
/* 80B8BB44  7F 83 E3 78 */	mr r3, r28
/* 80B8BB48  A8 1D 00 74 */	lha r0, 0x74(r29)
/* 80B8BB4C  7C 00 0E 70 */	srawi r0, r0, 1
/* 80B8BB50  7C 00 01 94 */	addze r0, r0
/* 80B8BB54  7C 04 07 34 */	extsh r4, r0
/* 80B8BB58  38 A0 00 10 */	li r5, 0x10
/* 80B8BB5C  7F 26 CB 78 */	mr r6, r25
/* 80B8BB60  7F 47 D3 78 */	mr r7, r26
/* 80B8BB64  4B FF 64 55 */	bl calcBank__11daNpc_zrA_cFssRsRs
/* 80B8BB68  A8 01 00 18 */	lha r0, 0x18(r1)
/* 80B8BB6C  B0 1C 04 E0 */	sth r0, 0x4e0(r28)
/* 80B8BB70  A8 1C 04 DC */	lha r0, 0x4dc(r28)
/* 80B8BB74  B0 1C 08 F0 */	sth r0, 0x8f0(r28)
/* 80B8BB78  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80B8BB7C  B0 1C 08 F2 */	sth r0, 0x8f2(r28)
/* 80B8BB80  A8 1C 04 E0 */	lha r0, 0x4e0(r28)
/* 80B8BB84  B0 1C 08 F4 */	sth r0, 0x8f4(r28)
/* 80B8BB88  A8 1C 08 F0 */	lha r0, 0x8f0(r28)
/* 80B8BB8C  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80B8BB90  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80B8BB94  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80B8BB98  A8 1C 08 F4 */	lha r0, 0x8f4(r28)
/* 80B8BB9C  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 80B8BBA0  38 61 00 30 */	addi r3, r1, 0x30
/* 80B8BBA4  38 81 00 48 */	addi r4, r1, 0x48
/* 80B8BBA8  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80B8BBAC  4B 6D AF 89 */	bl __mi__4cXyzCFRC3Vec
/* 80B8BBB0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B8BBB4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B8BBB8  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8BBBC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B8BBC0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B8BBC4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B8BBC8  38 61 00 24 */	addi r3, r1, 0x24
/* 80B8BBCC  4B 7B B5 6D */	bl PSVECSquareMag
/* 80B8BBD0  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8BBD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8BBD8  40 81 00 58 */	ble lbl_80B8BC30
/* 80B8BBDC  FC 00 08 34 */	frsqrte f0, f1
/* 80B8BBE0  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 80B8BBE4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8BBE8  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 80B8BBEC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8BBF0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8BBF4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8BBF8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8BBFC  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8BC00  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8BC04  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8BC08  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8BC0C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8BC10  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8BC14  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8BC18  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8BC1C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8BC20  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8BC24  FC 21 00 32 */	fmul f1, f1, f0
/* 80B8BC28  FC 20 08 18 */	frsp f1, f1
/* 80B8BC2C  48 00 00 88 */	b lbl_80B8BCB4
lbl_80B8BC30:
/* 80B8BC30  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 80B8BC34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8BC38  40 80 00 10 */	bge lbl_80B8BC48
/* 80B8BC3C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B8BC40  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B8BC44  48 00 00 70 */	b lbl_80B8BCB4
lbl_80B8BC48:
/* 80B8BC48  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B8BC4C  80 81 00 08 */	lwz r4, 8(r1)
/* 80B8BC50  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B8BC54  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B8BC58  7C 03 00 00 */	cmpw r3, r0
/* 80B8BC5C  41 82 00 14 */	beq lbl_80B8BC70
/* 80B8BC60  40 80 00 40 */	bge lbl_80B8BCA0
/* 80B8BC64  2C 03 00 00 */	cmpwi r3, 0
/* 80B8BC68  41 82 00 20 */	beq lbl_80B8BC88
/* 80B8BC6C  48 00 00 34 */	b lbl_80B8BCA0
lbl_80B8BC70:
/* 80B8BC70  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8BC74  41 82 00 0C */	beq lbl_80B8BC80
/* 80B8BC78  38 00 00 01 */	li r0, 1
/* 80B8BC7C  48 00 00 28 */	b lbl_80B8BCA4
lbl_80B8BC80:
/* 80B8BC80  38 00 00 02 */	li r0, 2
/* 80B8BC84  48 00 00 20 */	b lbl_80B8BCA4
lbl_80B8BC88:
/* 80B8BC88  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8BC8C  41 82 00 0C */	beq lbl_80B8BC98
/* 80B8BC90  38 00 00 05 */	li r0, 5
/* 80B8BC94  48 00 00 10 */	b lbl_80B8BCA4
lbl_80B8BC98:
/* 80B8BC98  38 00 00 03 */	li r0, 3
/* 80B8BC9C  48 00 00 08 */	b lbl_80B8BCA4
lbl_80B8BCA0:
/* 80B8BCA0  38 00 00 04 */	li r0, 4
lbl_80B8BCA4:
/* 80B8BCA4  2C 00 00 01 */	cmpwi r0, 1
/* 80B8BCA8  40 82 00 0C */	bne lbl_80B8BCB4
/* 80B8BCAC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B8BCB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80B8BCB4:
/* 80B8BCB4  C0 1F 01 54 */	lfs f0, 0x154(r31)
/* 80B8BCB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8BCBC  40 80 00 10 */	bge lbl_80B8BCCC
/* 80B8BCC0  3B C0 00 01 */	li r30, 1
/* 80B8BCC4  48 00 00 08 */	b lbl_80B8BCCC
lbl_80B8BCC8:
/* 80B8BCC8  3B C0 00 01 */	li r30, 1
lbl_80B8BCCC:
/* 80B8BCCC  7F C3 F3 78 */	mr r3, r30
/* 80B8BCD0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80B8BCD4  4B 7D 65 45 */	bl _restgpr_25
/* 80B8BCD8  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80B8BCDC  7C 08 03 A6 */	mtlr r0
/* 80B8BCE0  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80B8BCE4  4E 80 00 20 */	blr 
