lbl_8056B68C:
/* 8056B68C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8056B690  7C 08 02 A6 */	mflr r0
/* 8056B694  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8056B698  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8056B69C  4B DF 6B 25 */	bl _savegpr_22
/* 8056B6A0  7C 7F 1B 78 */	mr r31, r3
/* 8056B6A4  7C 96 23 78 */	mr r22, r4
/* 8056B6A8  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha /* 0x805716C8@ha */
/* 8056B6AC  3B C3 16 C8 */	addi r30, r3, m__18daNpc_Taro_Param_c@l /* 0x805716C8@l */
/* 8056B6B0  3B 80 00 00 */	li r28, 0
/* 8056B6B4  3B 60 FF FF */	li r27, -1
/* 8056B6B8  3B 40 00 00 */	li r26, 0
/* 8056B6BC  3B 20 00 00 */	li r25, 0
/* 8056B6C0  3B 00 00 00 */	li r24, 0
/* 8056B6C4  3A E0 00 00 */	li r23, 0
/* 8056B6C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056B6CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056B6D0  3B A3 4F F8 */	addi r29, r3, 0x4ff8
/* 8056B6D4  7F A3 EB 78 */	mr r3, r29
/* 8056B6D8  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056B6DC  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056B6E0  38 A5 02 9C */	addi r5, r5, 0x29c
/* 8056B6E4  38 C0 00 03 */	li r6, 3
/* 8056B6E8  4B AD CA 05 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056B6EC  28 03 00 00 */	cmplwi r3, 0
/* 8056B6F0  41 82 00 08 */	beq lbl_8056B6F8
/* 8056B6F4  83 63 00 00 */	lwz r27, 0(r3)
lbl_8056B6F8:
/* 8056B6F8  7F A3 EB 78 */	mr r3, r29
/* 8056B6FC  7E C4 B3 78 */	mr r4, r22
/* 8056B700  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056B704  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056B708  38 A5 02 A6 */	addi r5, r5, 0x2a6
/* 8056B70C  38 C0 00 03 */	li r6, 3
/* 8056B710  4B AD C9 DD */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056B714  28 03 00 00 */	cmplwi r3, 0
/* 8056B718  41 82 00 08 */	beq lbl_8056B720
/* 8056B71C  83 43 00 00 */	lwz r26, 0(r3)
lbl_8056B720:
/* 8056B720  7F A3 EB 78 */	mr r3, r29
/* 8056B724  7E C4 B3 78 */	mr r4, r22
/* 8056B728  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056B72C  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056B730  38 A5 02 AC */	addi r5, r5, 0x2ac
/* 8056B734  38 C0 00 03 */	li r6, 3
/* 8056B738  4B AD C9 B5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056B73C  28 03 00 00 */	cmplwi r3, 0
/* 8056B740  41 82 00 08 */	beq lbl_8056B748
/* 8056B744  83 23 00 00 */	lwz r25, 0(r3)
lbl_8056B748:
/* 8056B748  7F A3 EB 78 */	mr r3, r29
/* 8056B74C  7E C4 B3 78 */	mr r4, r22
/* 8056B750  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056B754  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056B758  38 A5 02 A0 */	addi r5, r5, 0x2a0
/* 8056B75C  38 C0 00 03 */	li r6, 3
/* 8056B760  4B AD C9 8D */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056B764  28 03 00 00 */	cmplwi r3, 0
/* 8056B768  41 82 00 08 */	beq lbl_8056B770
/* 8056B76C  83 03 00 00 */	lwz r24, 0(r3)
lbl_8056B770:
/* 8056B770  7F A3 EB 78 */	mr r3, r29
/* 8056B774  7E C4 B3 78 */	mr r4, r22
/* 8056B778  3C A0 80 57 */	lis r5, d_a_npc_taro__stringBase0@ha /* 0x80571908@ha */
/* 8056B77C  38 A5 19 08 */	addi r5, r5, d_a_npc_taro__stringBase0@l /* 0x80571908@l */
/* 8056B780  38 A5 02 B3 */	addi r5, r5, 0x2b3
/* 8056B784  38 C0 00 03 */	li r6, 3
/* 8056B788  4B AD C9 65 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056B78C  28 03 00 00 */	cmplwi r3, 0
/* 8056B790  41 82 00 08 */	beq lbl_8056B798
/* 8056B794  82 E3 00 00 */	lwz r23, 0(r3)
lbl_8056B798:
/* 8056B798  80 7E 01 D8 */	lwz r3, 0x1d8(r30)
/* 8056B79C  80 1E 01 DC */	lwz r0, 0x1dc(r30)
/* 8056B7A0  90 61 00 10 */	stw r3, 0x10(r1)
/* 8056B7A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056B7A8  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8056B7AC  38 7F 10 C8 */	addi r3, r31, 0x10c8
/* 8056B7B0  4B BD 9F 59 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 8056B7B4  90 61 00 14 */	stw r3, 0x14(r1)
/* 8056B7B8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8056B7BC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056B7C0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056B7C4  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 8056B7C8  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 8056B7CC  38 00 00 00 */	li r0, 0
/* 8056B7D0  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 8056B7D4  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 8056B7D8  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 8056B7DC  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 8056B7E0  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 8056B7E4  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 8056B7E8  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 8056B7EC  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 8056B7F0  7F A3 EB 78 */	mr r3, r29
/* 8056B7F4  7E C4 B3 78 */	mr r4, r22
/* 8056B7F8  4B AD C5 55 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8056B7FC  2C 03 00 00 */	cmpwi r3, 0
/* 8056B800  41 82 02 C4 */	beq lbl_8056BAC4
/* 8056B804  28 1B 00 15 */	cmplwi r27, 0x15
/* 8056B808  41 81 02 BC */	bgt lbl_8056BAC4
/* 8056B80C  3C 60 80 57 */	lis r3, lit_7368@ha /* 0x805730F8@ha */
/* 8056B810  38 63 30 F8 */	addi r3, r3, lit_7368@l /* 0x805730F8@l */
/* 8056B814  57 60 10 3A */	slwi r0, r27, 2
/* 8056B818  7C 03 00 2E */	lwzx r0, r3, r0
/* 8056B81C  7C 09 03 A6 */	mtctr r0
/* 8056B820  4E 80 04 20 */	bctr 
lbl_8056B824:
/* 8056B824  93 1F 0D C4 */	stw r24, 0xdc4(r31)
/* 8056B828  48 00 02 9C */	b lbl_8056BAC4
lbl_8056B82C:
/* 8056B82C  C0 5E 01 C0 */	lfs f2, 0x1c0(r30)
/* 8056B830  D0 41 00 68 */	stfs f2, 0x68(r1)
/* 8056B834  C0 3E 01 C4 */	lfs f1, 0x1c4(r30)
/* 8056B838  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 8056B83C  C0 1E 01 C8 */	lfs f0, 0x1c8(r30)
/* 8056B840  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8056B844  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8056B848  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 8056B84C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8056B850  7F E3 FB 78 */	mr r3, r31
/* 8056B854  38 81 00 50 */	addi r4, r1, 0x50
/* 8056B858  4B BD F0 B1 */	bl setPos__8daNpcT_cF4cXyz
/* 8056B85C  7F E3 FB 78 */	mr r3, r31
/* 8056B860  38 80 11 C7 */	li r4, 0x11c7
/* 8056B864  4B BD F1 B5 */	bl setAngle__8daNpcT_cFs
/* 8056B868  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056B86C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8056B870  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8056B874  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8056B878  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8056B87C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8056B880  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8056B884  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 8056B888  4B AA 0B 55 */	bl mDoMtx_YrotS__FPA4_fs
/* 8056B88C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8056B890  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8056B894  38 81 00 68 */	addi r4, r1, 0x68
/* 8056B898  7C 85 23 78 */	mr r5, r4
/* 8056B89C  4B DD B4 D1 */	bl PSMTXMultVec
/* 8056B8A0  38 61 00 68 */	addi r3, r1, 0x68
/* 8056B8A4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8056B8A8  7C 65 1B 78 */	mr r5, r3
/* 8056B8AC  4B DD B7 E5 */	bl PSVECAdd
/* 8056B8B0  38 61 00 68 */	addi r3, r1, 0x68
/* 8056B8B4  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8056B8B8  4B D0 53 4D */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8056B8BC  7C 60 1B 78 */	mr r0, r3
/* 8056B8C0  B0 01 00 1A */	sth r0, 0x1a(r1)
/* 8056B8C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8056B8C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8056B8CC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8056B8D0  38 81 00 68 */	addi r4, r1, 0x68
/* 8056B8D4  7C 05 07 34 */	extsh r5, r0
/* 8056B8D8  38 C0 00 00 */	li r6, 0
/* 8056B8DC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8056B8E0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8056B8E4  7D 89 03 A6 */	mtctr r12
/* 8056B8E8  4E 80 04 21 */	bctrl 
/* 8056B8EC  48 00 01 D8 */	b lbl_8056BAC4
lbl_8056B8F0:
/* 8056B8F0  7F E3 FB 78 */	mr r3, r31
/* 8056B8F4  80 9F 0A 7C */	lwz r4, 0xa7c(r31)
/* 8056B8F8  38 A1 00 10 */	addi r5, r1, 0x10
/* 8056B8FC  4B BE 02 F5 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056B900  48 00 01 C4 */	b lbl_8056BAC4
lbl_8056B904:
/* 8056B904  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8056B908  2C 00 00 09 */	cmpwi r0, 9
/* 8056B90C  41 82 00 24 */	beq lbl_8056B930
/* 8056B910  82 DF 0B 5C */	lwz r22, 0xb5c(r31)
/* 8056B914  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8056B918  4B BD 9F 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056B91C  92 DF 0B 5C */	stw r22, 0xb5c(r31)
/* 8056B920  38 00 00 09 */	li r0, 9
/* 8056B924  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8056B928  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056B92C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8056B930:
/* 8056B930  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8056B934  2C 00 00 04 */	cmpwi r0, 4
/* 8056B938  41 82 00 24 */	beq lbl_8056B95C
/* 8056B93C  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 8056B940  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8056B944  4B BD 9F 55 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056B948  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 8056B94C  38 00 00 04 */	li r0, 4
/* 8056B950  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8056B954  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056B958  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8056B95C:
/* 8056B95C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056B960  2C 00 00 00 */	cmpwi r0, 0
/* 8056B964  41 82 00 24 */	beq lbl_8056B988
/* 8056B968  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056B96C  4B BD 9D 91 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056B970  38 00 00 00 */	li r0, 0
/* 8056B974  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056B978  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056B97C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056B980  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056B984  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056B988:
/* 8056B988  38 00 00 00 */	li r0, 0
/* 8056B98C  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 8056B990  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 8056B994  38 00 00 01 */	li r0, 1
/* 8056B998  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056B99C  98 1F 11 A5 */	stb r0, 0x11a5(r31)
/* 8056B9A0  38 60 00 FF */	li r3, 0xff
/* 8056B9A4  38 80 00 00 */	li r4, 0
/* 8056B9A8  4B CB 2B 89 */	bl dMeter2Info_setSword__FUcb
/* 8056B9AC  93 1F 0D C4 */	stw r24, 0xdc4(r31)
/* 8056B9B0  7F E3 FB 78 */	mr r3, r31
/* 8056B9B4  38 80 00 5A */	li r4, 0x5a
/* 8056B9B8  38 A0 00 00 */	li r5, 0
/* 8056B9BC  4B BE 02 35 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056B9C0  48 00 01 04 */	b lbl_8056BAC4
lbl_8056B9C4:
/* 8056B9C4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8056B9C8  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056B9CC  41 82 00 24 */	beq lbl_8056B9F0
/* 8056B9D0  82 DF 0B 5C */	lwz r22, 0xb5c(r31)
/* 8056B9D4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8056B9D8  4B BD 9E C1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056B9DC  92 DF 0B 5C */	stw r22, 0xb5c(r31)
/* 8056B9E0  38 00 00 1F */	li r0, 0x1f
/* 8056B9E4  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8056B9E8  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 8056B9EC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8056B9F0:
/* 8056B9F0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8056B9F4  2C 00 00 26 */	cmpwi r0, 0x26
/* 8056B9F8  41 82 00 24 */	beq lbl_8056BA1C
/* 8056B9FC  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 8056BA00  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8056BA04  4B BD 9E 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056BA08  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 8056BA0C  38 00 00 26 */	li r0, 0x26
/* 8056BA10  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8056BA14  C0 1E 01 08 */	lfs f0, 0x108(r30)
/* 8056BA18  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8056BA1C:
/* 8056BA1C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8056BA20  D0 1F 04 A8 */	stfs f0, 0x4a8(r31)
/* 8056BA24  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8056BA28  D0 1F 04 AC */	stfs f0, 0x4ac(r31)
/* 8056BA2C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8056BA30  D0 1F 04 B0 */	stfs f0, 0x4b0(r31)
/* 8056BA34  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 8056BA38  B0 1F 04 B6 */	sth r0, 0x4b6(r31)
/* 8056BA3C  93 1F 0D C4 */	stw r24, 0xdc4(r31)
/* 8056BA40  48 00 00 84 */	b lbl_8056BAC4
lbl_8056BA44:
/* 8056BA44  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8056BA48  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056BA4C  41 82 00 24 */	beq lbl_8056BA70
/* 8056BA50  82 DF 0B 5C */	lwz r22, 0xb5c(r31)
/* 8056BA54  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8056BA58  4B BD 9E 41 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056BA5C  92 DF 0B 5C */	stw r22, 0xb5c(r31)
/* 8056BA60  38 00 00 1F */	li r0, 0x1f
/* 8056BA64  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8056BA68  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056BA6C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_8056BA70:
/* 8056BA70  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8056BA74  2C 00 00 00 */	cmpwi r0, 0
/* 8056BA78  41 82 00 24 */	beq lbl_8056BA9C
/* 8056BA7C  82 DF 0B 80 */	lwz r22, 0xb80(r31)
/* 8056BA80  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8056BA84  4B BD 9E 15 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056BA88  92 DF 0B 80 */	stw r22, 0xb80(r31)
/* 8056BA8C  38 00 00 00 */	li r0, 0
/* 8056BA90  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 8056BA94  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056BA98  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_8056BA9C:
/* 8056BA9C  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056BAA0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8056BAA4  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 8056BAA8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8056BAAC  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 8056BAB0  38 00 00 01 */	li r0, 1
/* 8056BAB4  98 1F 0E 25 */	stb r0, 0xe25(r31)
/* 8056BAB8  48 00 00 0C */	b lbl_8056BAC4
lbl_8056BABC:
/* 8056BABC  38 00 00 00 */	li r0, 0
/* 8056BAC0  98 1F 0E 25 */	stb r0, 0xe25(r31)
lbl_8056BAC4:
/* 8056BAC4  80 7E 01 E0 */	lwz r3, 0x1e0(r30)
/* 8056BAC8  80 1E 01 E4 */	lwz r0, 0x1e4(r30)
/* 8056BACC  90 61 00 5C */	stw r3, 0x5c(r1)
/* 8056BAD0  90 01 00 60 */	stw r0, 0x60(r1)
/* 8056BAD4  80 1E 01 E8 */	lwz r0, 0x1e8(r30)
/* 8056BAD8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8056BADC  28 1B 00 15 */	cmplwi r27, 0x15
/* 8056BAE0  41 81 06 50 */	bgt lbl_8056C130
/* 8056BAE4  3C 60 80 57 */	lis r3, lit_7369@ha /* 0x805730A0@ha */
/* 8056BAE8  38 63 30 A0 */	addi r3, r3, lit_7369@l /* 0x805730A0@l */
/* 8056BAEC  57 60 10 3A */	slwi r0, r27, 2
/* 8056BAF0  7C 03 00 2E */	lwzx r0, r3, r0
/* 8056BAF4  7C 09 03 A6 */	mtctr r0
/* 8056BAF8  4E 80 04 20 */	bctr 
lbl_8056BAFC:
/* 8056BAFC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056BB00  2C 00 00 01 */	cmpwi r0, 1
/* 8056BB04  41 82 00 28 */	beq lbl_8056BB2C
/* 8056BB08  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056BB0C  4B BD 9B F1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056BB10  38 00 00 00 */	li r0, 0
/* 8056BB14  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056BB18  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056BB1C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056BB20  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056BB24  38 00 00 01 */	li r0, 1
/* 8056BB28  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056BB2C:
/* 8056BB2C  38 00 00 00 */	li r0, 0
/* 8056BB30  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056BB34  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 8056BB38  48 00 56 D1 */	bl func_80571208
/* 8056BB3C  2C 03 00 00 */	cmpwi r3, 0
/* 8056BB40  40 82 05 F0 */	bne lbl_8056C130
/* 8056BB44  3B 80 00 01 */	li r28, 1
/* 8056BB48  48 00 05 E8 */	b lbl_8056C130
lbl_8056BB4C:
/* 8056BB4C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056BB50  2C 00 00 01 */	cmpwi r0, 1
/* 8056BB54  41 82 00 28 */	beq lbl_8056BB7C
/* 8056BB58  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056BB5C  4B BD 9B A1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056BB60  38 00 00 00 */	li r0, 0
/* 8056BB64  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056BB68  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056BB6C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056BB70  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056BB74  38 00 00 01 */	li r0, 1
/* 8056BB78  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056BB7C:
/* 8056BB7C  38 00 00 00 */	li r0, 0
/* 8056BB80  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056BB84  3B 80 00 01 */	li r28, 1
/* 8056BB88  48 00 05 A8 */	b lbl_8056C130
lbl_8056BB8C:
/* 8056BB8C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056BB90  2C 00 00 00 */	cmpwi r0, 0
/* 8056BB94  41 82 00 24 */	beq lbl_8056BBB8
/* 8056BB98  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056BB9C  4B BD 9B 61 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056BBA0  38 00 00 00 */	li r0, 0
/* 8056BBA4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056BBA8  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056BBAC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056BBB0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056BBB4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056BBB8:
/* 8056BBB8  38 00 00 00 */	li r0, 0
/* 8056BBBC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056BBC0  93 41 00 5C */	stw r26, 0x5c(r1)
/* 8056BBC4  93 21 00 60 */	stw r25, 0x60(r1)
/* 8056BBC8  7F E3 FB 78 */	mr r3, r31
/* 8056BBCC  38 81 00 5C */	addi r4, r1, 0x5c
/* 8056BBD0  38 A0 00 00 */	li r5, 0
/* 8056BBD4  38 C1 00 10 */	addi r6, r1, 0x10
/* 8056BBD8  38 E0 00 00 */	li r7, 0
/* 8056BBDC  4B BE 00 9D */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8056BBE0  2C 03 00 00 */	cmpwi r3, 0
/* 8056BBE4  41 82 05 4C */	beq lbl_8056C130
/* 8056BBE8  2C 1A 00 00 */	cmpwi r26, 0
/* 8056BBEC  40 82 00 20 */	bne lbl_8056BC0C
/* 8056BBF0  2C 19 00 00 */	cmpwi r25, 0
/* 8056BBF4  40 82 00 18 */	bne lbl_8056BC0C
/* 8056BBF8  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 8056BBFC  28 00 00 01 */	cmplwi r0, 1
/* 8056BC00  40 82 05 30 */	bne lbl_8056C130
/* 8056BC04  3B 80 00 01 */	li r28, 1
/* 8056BC08  48 00 05 28 */	b lbl_8056C130
lbl_8056BC0C:
/* 8056BC0C  3B 80 00 01 */	li r28, 1
/* 8056BC10  48 00 05 20 */	b lbl_8056C130
lbl_8056BC14:
/* 8056BC14  38 00 00 00 */	li r0, 0
/* 8056BC18  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 8056BC1C  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056BC20  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8056BC24  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 8056BC28  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8056BC2C  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 8056BC30  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8056BC34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8056BC38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8056BC3C  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 8056BC40  4B AA 07 9D */	bl mDoMtx_YrotS__FPA4_fs
/* 8056BC44  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8056BC48  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8056BC4C  38 81 00 68 */	addi r4, r1, 0x68
/* 8056BC50  7C 85 23 78 */	mr r5, r4
/* 8056BC54  4B DD B1 19 */	bl PSMTXMultVec
/* 8056BC58  38 61 00 44 */	addi r3, r1, 0x44
/* 8056BC5C  38 81 00 68 */	addi r4, r1, 0x68
/* 8056BC60  38 BF 05 50 */	addi r5, r31, 0x550
/* 8056BC64  4B CF AE 81 */	bl __pl__4cXyzCFRC3Vec
/* 8056BC68  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 8056BC6C  D0 1F 0D 6C */	stfs f0, 0xd6c(r31)
/* 8056BC70  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8056BC74  D0 1F 0D 70 */	stfs f0, 0xd70(r31)
/* 8056BC78  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8056BC7C  D0 1F 0D 74 */	stfs f0, 0xd74(r31)
/* 8056BC80  80 7F 0B C8 */	lwz r3, 0xbc8(r31)
/* 8056BC84  38 1F 0D 6C */	addi r0, r31, 0xd6c
/* 8056BC88  7C 63 00 50 */	subf r3, r3, r0
/* 8056BC8C  30 03 FF FF */	addic r0, r3, -1
/* 8056BC90  7C 00 19 10 */	subfe r0, r0, r3
/* 8056BC94  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8056BC98  40 82 00 10 */	bne lbl_8056BCA8
/* 8056BC9C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056BCA0  2C 00 00 03 */	cmpwi r0, 3
/* 8056BCA4  41 82 00 30 */	beq lbl_8056BCD4
lbl_8056BCA8:
/* 8056BCA8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056BCAC  4B BD 9A 51 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056BCB0  38 00 00 00 */	li r0, 0
/* 8056BCB4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056BCB8  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056BCBC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056BCC0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056BCC4  38 00 00 03 */	li r0, 3
/* 8056BCC8  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 8056BCCC  38 00 00 01 */	li r0, 1
/* 8056BCD0  48 00 00 08 */	b lbl_8056BCD8
lbl_8056BCD4:
/* 8056BCD4  38 00 00 00 */	li r0, 0
lbl_8056BCD8:
/* 8056BCD8  2C 00 00 00 */	cmpwi r0, 0
/* 8056BCDC  41 82 00 0C */	beq lbl_8056BCE8
/* 8056BCE0  38 1F 0D 6C */	addi r0, r31, 0xd6c
/* 8056BCE4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
lbl_8056BCE8:
/* 8056BCE8  38 00 00 00 */	li r0, 0
/* 8056BCEC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056BCF0  80 1F 0B 84 */	lwz r0, 0xb84(r31)
/* 8056BCF4  2C 00 00 00 */	cmpwi r0, 0
/* 8056BCF8  40 82 00 60 */	bne lbl_8056BD58
/* 8056BCFC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 8056BD00  38 63 00 0C */	addi r3, r3, 0xc
/* 8056BD04  C0 3E 01 EC */	lfs f1, 0x1ec(r30)
/* 8056BD08  4B DB C7 25 */	bl checkPass__12J3DFrameCtrlFf
/* 8056BD0C  2C 03 00 00 */	cmpwi r3, 0
/* 8056BD10  40 82 00 1C */	bne lbl_8056BD2C
/* 8056BD14  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 8056BD18  38 63 00 0C */	addi r3, r3, 0xc
/* 8056BD1C  C0 3E 01 F0 */	lfs f1, 0x1f0(r30)
/* 8056BD20  4B DB C7 0D */	bl checkPass__12J3DFrameCtrlFf
/* 8056BD24  2C 03 00 00 */	cmpwi r3, 0
/* 8056BD28  41 82 00 34 */	beq lbl_8056BD5C
lbl_8056BD2C:
/* 8056BD2C  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050060@ha */
/* 8056BD30  38 03 00 60 */	addi r0, r3, 0x0060 /* 0x00050060@l */
/* 8056BD34  90 01 00 0C */	stw r0, 0xc(r1)
/* 8056BD38  38 7F 05 80 */	addi r3, r31, 0x580
/* 8056BD3C  38 81 00 0C */	addi r4, r1, 0xc
/* 8056BD40  38 A0 FF FF */	li r5, -1
/* 8056BD44  81 9F 05 80 */	lwz r12, 0x580(r31)
/* 8056BD48  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8056BD4C  7D 89 03 A6 */	mtctr r12
/* 8056BD50  4E 80 04 21 */	bctrl 
/* 8056BD54  48 00 00 08 */	b lbl_8056BD5C
lbl_8056BD58:
/* 8056BD58  3A E0 00 01 */	li r23, 1
lbl_8056BD5C:
/* 8056BD5C  93 41 00 5C */	stw r26, 0x5c(r1)
/* 8056BD60  93 21 00 60 */	stw r25, 0x60(r1)
/* 8056BD64  7F E3 FB 78 */	mr r3, r31
/* 8056BD68  38 81 00 5C */	addi r4, r1, 0x5c
/* 8056BD6C  7E E5 BB 78 */	mr r5, r23
/* 8056BD70  38 C0 00 00 */	li r6, 0
/* 8056BD74  38 E0 00 00 */	li r7, 0
/* 8056BD78  4B BD FF 01 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8056BD7C  2C 03 00 00 */	cmpwi r3, 0
/* 8056BD80  41 82 03 B0 */	beq lbl_8056C130
/* 8056BD84  2C 1A 00 00 */	cmpwi r26, 0
/* 8056BD88  40 82 00 20 */	bne lbl_8056BDA8
/* 8056BD8C  2C 19 00 00 */	cmpwi r25, 0
/* 8056BD90  40 82 00 18 */	bne lbl_8056BDA8
/* 8056BD94  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 8056BD98  28 00 00 01 */	cmplwi r0, 1
/* 8056BD9C  40 82 03 94 */	bne lbl_8056C130
/* 8056BDA0  3B 80 00 01 */	li r28, 1
/* 8056BDA4  48 00 03 8C */	b lbl_8056C130
lbl_8056BDA8:
/* 8056BDA8  3B 80 00 01 */	li r28, 1
/* 8056BDAC  48 00 03 84 */	b lbl_8056C130
lbl_8056BDB0:
/* 8056BDB0  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056BDB4  2C 00 00 00 */	cmpwi r0, 0
/* 8056BDB8  41 82 00 24 */	beq lbl_8056BDDC
/* 8056BDBC  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056BDC0  4B BD 99 3D */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056BDC4  38 00 00 00 */	li r0, 0
/* 8056BDC8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056BDCC  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056BDD0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056BDD4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056BDD8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056BDDC:
/* 8056BDDC  38 00 00 00 */	li r0, 0
/* 8056BDE0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056BDE4  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056BDE8  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8056BDEC  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8056BDF0  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 8056BDF4  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8056BDF8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8056BDFC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8056BE00  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8056BE04  38 04 3D 27 */	addi r0, r4, 0x3d27
/* 8056BE08  7C 04 07 34 */	extsh r4, r0
/* 8056BE0C  4B AA 05 D1 */	bl mDoMtx_YrotS__FPA4_fs
/* 8056BE10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8056BE14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8056BE18  38 81 00 68 */	addi r4, r1, 0x68
/* 8056BE1C  7C 85 23 78 */	mr r5, r4
/* 8056BE20  4B DD AF 4D */	bl PSMTXMultVec
/* 8056BE24  38 61 00 68 */	addi r3, r1, 0x68
/* 8056BE28  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 8056BE2C  7C 65 1B 78 */	mr r5, r3
/* 8056BE30  4B DD B2 61 */	bl PSVECAdd
/* 8056BE34  C0 41 00 68 */	lfs f2, 0x68(r1)
/* 8056BE38  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8056BE3C  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 8056BE40  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8056BE44  C0 61 00 70 */	lfs f3, 0x70(r1)
/* 8056BE48  D0 61 00 40 */	stfs f3, 0x40(r1)
/* 8056BE4C  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8056BE50  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8056BE54  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8056BE58  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056BE5C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8056BE60  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8056BE64  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8056BE68  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8056BE6C  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8056BE70  38 61 00 20 */	addi r3, r1, 0x20
/* 8056BE74  38 81 00 2C */	addi r4, r1, 0x2c
/* 8056BE78  4B DD B5 25 */	bl PSVECSquareDistance
/* 8056BE7C  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056BE80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056BE84  40 81 00 58 */	ble lbl_8056BEDC
/* 8056BE88  FC 00 08 34 */	frsqrte f0, f1
/* 8056BE8C  C8 9E 01 20 */	lfd f4, 0x120(r30)
/* 8056BE90  FC 44 00 32 */	fmul f2, f4, f0
/* 8056BE94  C8 7E 01 28 */	lfd f3, 0x128(r30)
/* 8056BE98  FC 00 00 32 */	fmul f0, f0, f0
/* 8056BE9C  FC 01 00 32 */	fmul f0, f1, f0
/* 8056BEA0  FC 03 00 28 */	fsub f0, f3, f0
/* 8056BEA4  FC 02 00 32 */	fmul f0, f2, f0
/* 8056BEA8  FC 44 00 32 */	fmul f2, f4, f0
/* 8056BEAC  FC 00 00 32 */	fmul f0, f0, f0
/* 8056BEB0  FC 01 00 32 */	fmul f0, f1, f0
/* 8056BEB4  FC 03 00 28 */	fsub f0, f3, f0
/* 8056BEB8  FC 02 00 32 */	fmul f0, f2, f0
/* 8056BEBC  FC 44 00 32 */	fmul f2, f4, f0
/* 8056BEC0  FC 00 00 32 */	fmul f0, f0, f0
/* 8056BEC4  FC 01 00 32 */	fmul f0, f1, f0
/* 8056BEC8  FC 03 00 28 */	fsub f0, f3, f0
/* 8056BECC  FC 02 00 32 */	fmul f0, f2, f0
/* 8056BED0  FC 21 00 32 */	fmul f1, f1, f0
/* 8056BED4  FC 20 08 18 */	frsp f1, f1
/* 8056BED8  48 00 00 88 */	b lbl_8056BF60
lbl_8056BEDC:
/* 8056BEDC  C8 1E 01 30 */	lfd f0, 0x130(r30)
/* 8056BEE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056BEE4  40 80 00 10 */	bge lbl_8056BEF4
/* 8056BEE8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8056BEEC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8056BEF0  48 00 00 70 */	b lbl_8056BF60
lbl_8056BEF4:
/* 8056BEF4  D0 21 00 08 */	stfs f1, 8(r1)
/* 8056BEF8  80 81 00 08 */	lwz r4, 8(r1)
/* 8056BEFC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8056BF00  3C 00 7F 80 */	lis r0, 0x7f80
/* 8056BF04  7C 03 00 00 */	cmpw r3, r0
/* 8056BF08  41 82 00 14 */	beq lbl_8056BF1C
/* 8056BF0C  40 80 00 40 */	bge lbl_8056BF4C
/* 8056BF10  2C 03 00 00 */	cmpwi r3, 0
/* 8056BF14  41 82 00 20 */	beq lbl_8056BF34
/* 8056BF18  48 00 00 34 */	b lbl_8056BF4C
lbl_8056BF1C:
/* 8056BF1C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8056BF20  41 82 00 0C */	beq lbl_8056BF2C
/* 8056BF24  38 00 00 01 */	li r0, 1
/* 8056BF28  48 00 00 28 */	b lbl_8056BF50
lbl_8056BF2C:
/* 8056BF2C  38 00 00 02 */	li r0, 2
/* 8056BF30  48 00 00 20 */	b lbl_8056BF50
lbl_8056BF34:
/* 8056BF34  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8056BF38  41 82 00 0C */	beq lbl_8056BF44
/* 8056BF3C  38 00 00 05 */	li r0, 5
/* 8056BF40  48 00 00 10 */	b lbl_8056BF50
lbl_8056BF44:
/* 8056BF44  38 00 00 03 */	li r0, 3
/* 8056BF48  48 00 00 08 */	b lbl_8056BF50
lbl_8056BF4C:
/* 8056BF4C  38 00 00 04 */	li r0, 4
lbl_8056BF50:
/* 8056BF50  2C 00 00 01 */	cmpwi r0, 1
/* 8056BF54  40 82 00 0C */	bne lbl_8056BF60
/* 8056BF58  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8056BF5C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8056BF60:
/* 8056BF60  7F E3 FB 78 */	mr r3, r31
/* 8056BF64  38 81 00 38 */	addi r4, r1, 0x38
/* 8056BF68  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 8056BF6C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056BF70  7C 00 00 26 */	mfcr r0
/* 8056BF74  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8056BF78  38 C0 00 04 */	li r6, 4
/* 8056BF7C  38 E0 08 00 */	li r7, 0x800
/* 8056BF80  4B BD F8 89 */	bl calcSpeedAndAngle__8daNpcT_cF4cXyziss
/* 8056BF84  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 8056BF88  48 00 52 81 */	bl func_80571208
/* 8056BF8C  2C 03 00 00 */	cmpwi r3, 0
/* 8056BF90  40 82 01 A0 */	bne lbl_8056C130
/* 8056BF94  3B 80 00 01 */	li r28, 1
/* 8056BF98  48 00 01 98 */	b lbl_8056C130
lbl_8056BF9C:
/* 8056BF9C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056BFA0  2C 00 00 00 */	cmpwi r0, 0
/* 8056BFA4  41 82 00 24 */	beq lbl_8056BFC8
/* 8056BFA8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056BFAC  4B BD 97 51 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056BFB0  38 00 00 00 */	li r0, 0
/* 8056BFB4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056BFB8  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056BFBC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056BFC0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056BFC4  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056BFC8:
/* 8056BFC8  38 00 00 00 */	li r0, 0
/* 8056BFCC  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056BFD0  48 00 01 60 */	b lbl_8056C130
lbl_8056BFD4:
/* 8056BFD4  2C 1B 00 0E */	cmpwi r27, 0xe
/* 8056BFD8  40 82 00 B8 */	bne lbl_8056C090
/* 8056BFDC  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 8056BFE0  80 63 00 04 */	lwz r3, 4(r3)
/* 8056BFE4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8056BFE8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8056BFEC  38 63 02 D0 */	addi r3, r3, 0x2d0
/* 8056BFF0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8056BFF4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8056BFF8  4B DD A4 B9 */	bl PSMTXCopy
/* 8056BFFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8056C000  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8056C004  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8056C008  D0 1F 0D 6C */	stfs f0, 0xd6c(r31)
/* 8056C00C  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8056C010  D0 1F 0D 70 */	stfs f0, 0xd70(r31)
/* 8056C014  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8056C018  D0 1F 0D 74 */	stfs f0, 0xd74(r31)
/* 8056C01C  80 7F 0B C8 */	lwz r3, 0xbc8(r31)
/* 8056C020  38 1F 0D 6C */	addi r0, r31, 0xd6c
/* 8056C024  7C 63 00 50 */	subf r3, r3, r0
/* 8056C028  30 03 FF FF */	addic r0, r3, -1
/* 8056C02C  7C 00 19 10 */	subfe r0, r0, r3
/* 8056C030  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8056C034  40 82 00 10 */	bne lbl_8056C044
/* 8056C038  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056C03C  2C 00 00 03 */	cmpwi r0, 3
/* 8056C040  41 82 00 30 */	beq lbl_8056C070
lbl_8056C044:
/* 8056C044  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056C048  4B BD 96 B5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056C04C  38 00 00 00 */	li r0, 0
/* 8056C050  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056C054  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056C058  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056C05C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056C060  38 00 00 03 */	li r0, 3
/* 8056C064  90 1F 0C E0 */	stw r0, 0xce0(r31)
/* 8056C068  38 00 00 01 */	li r0, 1
/* 8056C06C  48 00 00 08 */	b lbl_8056C074
lbl_8056C070:
/* 8056C070  38 00 00 00 */	li r0, 0
lbl_8056C074:
/* 8056C074  2C 00 00 00 */	cmpwi r0, 0
/* 8056C078  41 82 00 0C */	beq lbl_8056C084
/* 8056C07C  38 1F 0D 6C */	addi r0, r31, 0xd6c
/* 8056C080  90 1F 0B C8 */	stw r0, 0xbc8(r31)
lbl_8056C084:
/* 8056C084  38 00 00 00 */	li r0, 0
/* 8056C088  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056C08C  48 00 00 38 */	b lbl_8056C0C4
lbl_8056C090:
/* 8056C090  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8056C094  2C 00 00 00 */	cmpwi r0, 0
/* 8056C098  41 82 00 24 */	beq lbl_8056C0BC
/* 8056C09C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 8056C0A0  4B BD 96 5D */	bl remove__18daNpcT_ActorMngr_cFv
/* 8056C0A4  38 00 00 00 */	li r0, 0
/* 8056C0A8  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8056C0AC  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 8056C0B0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8056C0B4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8056C0B8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_8056C0BC:
/* 8056C0BC  38 00 00 00 */	li r0, 0
/* 8056C0C0  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_8056C0C4:
/* 8056C0C4  93 41 00 5C */	stw r26, 0x5c(r1)
/* 8056C0C8  93 21 00 60 */	stw r25, 0x60(r1)
/* 8056C0CC  7F E3 FB 78 */	mr r3, r31
/* 8056C0D0  38 81 00 5C */	addi r4, r1, 0x5c
/* 8056C0D4  7E E5 BB 78 */	mr r5, r23
/* 8056C0D8  38 C0 00 00 */	li r6, 0
/* 8056C0DC  38 E0 00 00 */	li r7, 0
/* 8056C0E0  4B BD FB 99 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8056C0E4  2C 03 00 00 */	cmpwi r3, 0
/* 8056C0E8  41 82 00 48 */	beq lbl_8056C130
/* 8056C0EC  2C 1A 00 00 */	cmpwi r26, 0
/* 8056C0F0  40 82 00 20 */	bne lbl_8056C110
/* 8056C0F4  2C 19 00 00 */	cmpwi r25, 0
/* 8056C0F8  40 82 00 18 */	bne lbl_8056C110
/* 8056C0FC  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 8056C100  28 00 00 01 */	cmplwi r0, 1
/* 8056C104  40 82 00 2C */	bne lbl_8056C130
/* 8056C108  3B 80 00 01 */	li r28, 1
/* 8056C10C  48 00 00 24 */	b lbl_8056C130
lbl_8056C110:
/* 8056C110  3B 80 00 01 */	li r28, 1
/* 8056C114  48 00 00 1C */	b lbl_8056C130
lbl_8056C118:
/* 8056C118  7F E3 FB 78 */	mr r3, r31
/* 8056C11C  81 9F 0E 3C */	lwz r12, 0xe3c(r31)
/* 8056C120  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8056C124  7D 89 03 A6 */	mtctr r12
/* 8056C128  4E 80 04 21 */	bctrl 
/* 8056C12C  3B 80 00 01 */	li r28, 1
lbl_8056C130:
/* 8056C130  7F 83 E3 78 */	mr r3, r28
/* 8056C134  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8056C138  4B DF 60 D5 */	bl _restgpr_22
/* 8056C13C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8056C140  7C 08 03 A6 */	mtlr r0
/* 8056C144  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8056C148  4E 80 00 20 */	blr 
