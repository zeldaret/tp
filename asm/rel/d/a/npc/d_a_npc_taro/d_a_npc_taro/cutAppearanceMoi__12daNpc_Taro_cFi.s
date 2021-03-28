lbl_8056A460:
/* 8056A460  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8056A464  7C 08 02 A6 */	mflr r0
/* 8056A468  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8056A46C  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8056A470  4B DF 7D 58 */	b _savegpr_24
/* 8056A474  7C 7E 1B 78 */	mr r30, r3
/* 8056A478  7C 98 23 78 */	mr r24, r4
/* 8056A47C  3C 60 80 57 */	lis r3, m__18daNpc_Taro_Param_c@ha
/* 8056A480  3B A3 16 C8 */	addi r29, r3, m__18daNpc_Taro_Param_c@l
/* 8056A484  3B E0 00 00 */	li r31, 0
/* 8056A488  3B 40 FF FF */	li r26, -1
/* 8056A48C  3B 20 00 00 */	li r25, 0
/* 8056A490  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8056A494  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8056A498  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 8056A49C  3B 9B 40 C0 */	addi r28, r27, 0x40c0
/* 8056A4A0  7F 83 E3 78 */	mr r3, r28
/* 8056A4A4  3C A0 80 57 */	lis r5, struct_80571908+0x0@ha
/* 8056A4A8  38 A5 19 08 */	addi r5, r5, struct_80571908+0x0@l
/* 8056A4AC  38 A5 02 9C */	addi r5, r5, 0x29c
/* 8056A4B0  38 C0 00 03 */	li r6, 3
/* 8056A4B4  4B AD DC 38 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056A4B8  28 03 00 00 */	cmplwi r3, 0
/* 8056A4BC  41 82 00 08 */	beq lbl_8056A4C4
/* 8056A4C0  83 43 00 00 */	lwz r26, 0(r3)
lbl_8056A4C4:
/* 8056A4C4  7F 83 E3 78 */	mr r3, r28
/* 8056A4C8  7F 04 C3 78 */	mr r4, r24
/* 8056A4CC  3C A0 80 57 */	lis r5, struct_80571908+0x0@ha
/* 8056A4D0  38 A5 19 08 */	addi r5, r5, struct_80571908+0x0@l
/* 8056A4D4  38 A5 02 A0 */	addi r5, r5, 0x2a0
/* 8056A4D8  38 C0 00 03 */	li r6, 3
/* 8056A4DC  4B AD DC 10 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8056A4E0  28 03 00 00 */	cmplwi r3, 0
/* 8056A4E4  41 82 00 08 */	beq lbl_8056A4EC
/* 8056A4E8  83 23 00 00 */	lwz r25, 0(r3)
lbl_8056A4EC:
/* 8056A4EC  80 7D 01 94 */	lwz r3, 0x194(r29)
/* 8056A4F0  80 1D 01 98 */	lwz r0, 0x198(r29)
/* 8056A4F4  90 61 00 14 */	stw r3, 0x14(r1)
/* 8056A4F8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8056A4FC  93 C1 00 14 */	stw r30, 0x14(r1)
/* 8056A500  38 7E 11 70 */	addi r3, r30, 0x1170
/* 8056A504  4B BD B2 04 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8056A508  90 61 00 18 */	stw r3, 0x18(r1)
/* 8056A50C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056A510  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8056A514  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8056A518  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 8056A51C  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 8056A520  38 00 00 00 */	li r0, 0
/* 8056A524  90 04 5E F8 */	stw r0, 0x5ef8(r4)
/* 8056A528  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 8056A52C  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 8056A530  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 8056A534  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 8056A538  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 8056A53C  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 8056A540  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 8056A544  7F 83 E3 78 */	mr r3, r28
/* 8056A548  7F 04 C3 78 */	mr r4, r24
/* 8056A54C  4B AD D8 00 */	b getIsAddvance__16dEvent_manager_cFi
/* 8056A550  2C 03 00 00 */	cmpwi r3, 0
/* 8056A554  41 82 03 F0 */	beq lbl_8056A944
/* 8056A558  28 1A 00 0A */	cmplwi r26, 0xa
/* 8056A55C  41 81 03 E8 */	bgt lbl_8056A944
/* 8056A560  3C 60 80 57 */	lis r3, lit_6877@ha
/* 8056A564  38 63 30 50 */	addi r3, r3, lit_6877@l
/* 8056A568  57 40 10 3A */	slwi r0, r26, 2
/* 8056A56C  7C 03 00 2E */	lwzx r0, r3, r0
/* 8056A570  7C 09 03 A6 */	mtctr r0
/* 8056A574  4E 80 04 20 */	bctr 
lbl_8056A578:
/* 8056A578  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056A57C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8056A580  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8056A584  C0 1D 01 9C */	lfs f0, 0x19c(r29)
/* 8056A588  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8056A58C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8056A590  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 8056A594  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 8056A598  A8 63 04 DE */	lha r3, 0x4de(r3)
/* 8056A59C  38 03 07 1C */	addi r0, r3, 0x71c
/* 8056A5A0  7C 04 07 34 */	extsh r4, r0
/* 8056A5A4  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 8056A5A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8056A5AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8056A5B0  4B AA 1E 2C */	b mDoMtx_YrotS__FPA4_fs
/* 8056A5B4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8056A5B8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8056A5BC  38 81 00 9C */	addi r4, r1, 0x9c
/* 8056A5C0  7C 85 23 78 */	mr r5, r4
/* 8056A5C4  4B DD C7 A8 */	b PSMTXMultVec
/* 8056A5C8  38 61 00 9C */	addi r3, r1, 0x9c
/* 8056A5CC  80 98 5D AC */	lwz r4, 0x5dac(r24)
/* 8056A5D0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8056A5D4  7C 65 1B 78 */	mr r5, r3
/* 8056A5D8  4B DD CA B8 */	b PSVECAdd
/* 8056A5DC  7F 83 E3 78 */	mr r3, r28
/* 8056A5E0  38 81 00 9C */	addi r4, r1, 0x9c
/* 8056A5E4  4B AD DD E0 */	b setGoal__16dEvent_manager_cFP4cXyz
/* 8056A5E8  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 8056A5EC  A8 01 00 1E */	lha r0, 0x1e(r1)
/* 8056A5F0  B0 03 06 06 */	sth r0, 0x606(r3)
/* 8056A5F4  38 60 00 0B */	li r3, 0xb
/* 8056A5F8  4B BE 25 34 */	b daNpcT_offTmpBit__FUl
/* 8056A5FC  38 60 00 0C */	li r3, 0xc
/* 8056A600  4B BE 25 2C */	b daNpcT_offTmpBit__FUl
/* 8056A604  48 00 03 40 */	b lbl_8056A944
lbl_8056A608:
/* 8056A608  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8056A60C  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056A610  41 82 00 24 */	beq lbl_8056A634
/* 8056A614  83 1E 0B 5C */	lwz r24, 0xb5c(r30)
/* 8056A618  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8056A61C  4B BD B2 7C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056A620  93 1E 0B 5C */	stw r24, 0xb5c(r30)
/* 8056A624  38 00 00 1F */	li r0, 0x1f
/* 8056A628  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8056A62C  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 8056A630  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8056A634:
/* 8056A634  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8056A638  2C 00 00 27 */	cmpwi r0, 0x27
/* 8056A63C  41 82 00 24 */	beq lbl_8056A660
/* 8056A640  83 1E 0B 80 */	lwz r24, 0xb80(r30)
/* 8056A644  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8056A648  4B BD B2 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056A64C  93 1E 0B 80 */	stw r24, 0xb80(r30)
/* 8056A650  38 00 00 27 */	li r0, 0x27
/* 8056A654  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8056A658  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 8056A65C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_8056A660:
/* 8056A660  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056A664  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8056A668  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8056A66C  C0 1D 00 F8 */	lfs f0, 0xf8(r29)
/* 8056A670  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8056A674  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8056A678  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8056A67C  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 8056A680  38 04 F8 E4 */	addi r0, r4, -1820
/* 8056A684  7C 04 07 34 */	extsh r4, r0
/* 8056A688  4B AA 1D 54 */	b mDoMtx_YrotS__FPA4_fs
/* 8056A68C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8056A690  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8056A694  38 81 00 9C */	addi r4, r1, 0x9c
/* 8056A698  7C 85 23 78 */	mr r5, r4
/* 8056A69C  4B DD C6 D0 */	b PSMTXMultVec
/* 8056A6A0  38 61 00 9C */	addi r3, r1, 0x9c
/* 8056A6A4  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8056A6A8  7C 65 1B 78 */	mr r5, r3
/* 8056A6AC  4B DD C9 E4 */	b PSVECAdd
/* 8056A6B0  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8056A6B4  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8056A6B8  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8056A6BC  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8056A6C0  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8056A6C4  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8056A6C8  7F C3 F3 78 */	mr r3, r30
/* 8056A6CC  38 81 00 90 */	addi r4, r1, 0x90
/* 8056A6D0  4B BE 02 38 */	b setPos__8daNpcT_cF4cXyz
/* 8056A6D4  7F C3 F3 78 */	mr r3, r30
/* 8056A6D8  38 80 00 78 */	li r4, 0x78
/* 8056A6DC  38 A1 00 14 */	addi r5, r1, 0x14
/* 8056A6E0  4B BE 15 10 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8056A6E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8056A6E8  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l
/* 8056A6EC  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 8056A6F0  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8056A6F4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8056A6F8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8056A6FC  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8056A700  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8056A704  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8056A708  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 8056A70C  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 8056A710  7F 83 E3 78 */	mr r3, r28
/* 8056A714  38 81 00 9C */	addi r4, r1, 0x9c
/* 8056A718  4B AD DC AC */	b setGoal__16dEvent_manager_cFP4cXyz
/* 8056A71C  80 78 5D AC */	lwz r3, 0x5dac(r24)
/* 8056A720  A8 01 00 1E */	lha r0, 0x1e(r1)
/* 8056A724  B0 03 06 06 */	sth r0, 0x606(r3)
/* 8056A728  48 00 02 1C */	b lbl_8056A944
lbl_8056A72C:
/* 8056A72C  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8056A730  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056A734  41 82 00 24 */	beq lbl_8056A758
/* 8056A738  83 1E 0B 5C */	lwz r24, 0xb5c(r30)
/* 8056A73C  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8056A740  4B BD B1 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056A744  93 1E 0B 5C */	stw r24, 0xb5c(r30)
/* 8056A748  38 00 00 1F */	li r0, 0x1f
/* 8056A74C  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8056A750  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056A754  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8056A758:
/* 8056A758  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8056A75C  2C 00 00 18 */	cmpwi r0, 0x18
/* 8056A760  41 82 00 24 */	beq lbl_8056A784
/* 8056A764  83 1E 0B 80 */	lwz r24, 0xb80(r30)
/* 8056A768  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8056A76C  4B BD B1 2C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056A770  93 1E 0B 80 */	stw r24, 0xb80(r30)
/* 8056A774  38 00 00 18 */	li r0, 0x18
/* 8056A778  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8056A77C  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056A780  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_8056A784:
/* 8056A784  7F C3 F3 78 */	mr r3, r30
/* 8056A788  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 8056A78C  4B BE 02 8C */	b setAngle__8daNpcT_cFs
/* 8056A790  48 00 01 B4 */	b lbl_8056A944
lbl_8056A794:
/* 8056A794  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8056A798  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056A79C  41 82 00 24 */	beq lbl_8056A7C0
/* 8056A7A0  83 1E 0B 5C */	lwz r24, 0xb5c(r30)
/* 8056A7A4  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8056A7A8  4B BD B0 F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056A7AC  93 1E 0B 5C */	stw r24, 0xb5c(r30)
/* 8056A7B0  38 00 00 1F */	li r0, 0x1f
/* 8056A7B4  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8056A7B8  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 8056A7BC  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8056A7C0:
/* 8056A7C0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8056A7C4  2C 00 00 25 */	cmpwi r0, 0x25
/* 8056A7C8  41 82 00 24 */	beq lbl_8056A7EC
/* 8056A7CC  83 1E 0B 80 */	lwz r24, 0xb80(r30)
/* 8056A7D0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8056A7D4  4B BD B0 C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056A7D8  93 1E 0B 80 */	stw r24, 0xb80(r30)
/* 8056A7DC  38 00 00 25 */	li r0, 0x25
/* 8056A7E0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8056A7E4  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 8056A7E8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_8056A7EC:
/* 8056A7EC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8056A7F0  D0 1E 04 A8 */	stfs f0, 0x4a8(r30)
/* 8056A7F4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8056A7F8  D0 1E 04 AC */	stfs f0, 0x4ac(r30)
/* 8056A7FC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8056A800  D0 1E 04 B0 */	stfs f0, 0x4b0(r30)
/* 8056A804  93 3E 0D C4 */	stw r25, 0xdc4(r30)
/* 8056A808  48 00 01 3C */	b lbl_8056A944
lbl_8056A80C:
/* 8056A80C  7F C3 F3 78 */	mr r3, r30
/* 8056A810  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 8056A814  38 04 F8 E4 */	addi r0, r4, -1820
/* 8056A818  7C 04 07 34 */	extsh r4, r0
/* 8056A81C  4B BE 01 FC */	b setAngle__8daNpcT_cFs
/* 8056A820  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056A824  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8056A828  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8056A82C  C0 1D 01 A0 */	lfs f0, 0x1a0(r29)
/* 8056A830  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8056A834  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8056A838  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8056A83C  A8 9E 0D 7A */	lha r4, 0xd7a(r30)
/* 8056A840  4B AA 1B 9C */	b mDoMtx_YrotS__FPA4_fs
/* 8056A844  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8056A848  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8056A84C  38 81 00 9C */	addi r4, r1, 0x9c
/* 8056A850  7C 85 23 78 */	mr r5, r4
/* 8056A854  4B DD C5 18 */	b PSMTXMultVec
/* 8056A858  38 61 00 9C */	addi r3, r1, 0x9c
/* 8056A85C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8056A860  7C 65 1B 78 */	mr r5, r3
/* 8056A864  4B DD C8 2C */	b PSVECAdd
/* 8056A868  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8056A86C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8056A870  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8056A874  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8056A878  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8056A87C  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8056A880  7F C3 F3 78 */	mr r3, r30
/* 8056A884  38 81 00 84 */	addi r4, r1, 0x84
/* 8056A888  4B BE 00 80 */	b setPos__8daNpcT_cF4cXyz
/* 8056A88C  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056A890  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8056A894  C0 1D 01 04 */	lfs f0, 0x104(r29)
/* 8056A898  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8056A89C  C0 1D 00 E0 */	lfs f0, 0xe0(r29)
/* 8056A8A0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8056A8A4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8056A8A8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8056A8AC  38 81 00 9C */	addi r4, r1, 0x9c
/* 8056A8B0  7C 85 23 78 */	mr r5, r4
/* 8056A8B4  4B DD C4 B8 */	b PSMTXMultVec
/* 8056A8B8  38 61 00 9C */	addi r3, r1, 0x9c
/* 8056A8BC  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8056A8C0  7C 65 1B 78 */	mr r5, r3
/* 8056A8C4  4B DD C7 CC */	b PSVECAdd
/* 8056A8C8  38 7E 09 30 */	addi r3, r30, 0x930
/* 8056A8CC  38 81 00 9C */	addi r4, r1, 0x9c
/* 8056A8D0  4B CF D4 58 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8056A8D4  7F 63 DB 78 */	mr r3, r27
/* 8056A8D8  38 9E 09 30 */	addi r4, r30, 0x930
/* 8056A8DC  4B B0 9B C4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8056A8E0  D0 21 00 A0 */	stfs f1, 0xa0(r1)
/* 8056A8E4  38 61 00 9C */	addi r3, r1, 0x9c
/* 8056A8E8  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8056A8EC  4B D0 63 18 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8056A8F0  7C 60 1B 78 */	mr r0, r3
/* 8056A8F4  B0 01 00 1E */	sth r0, 0x1e(r1)
/* 8056A8F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8056A8FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8056A900  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8056A904  38 81 00 9C */	addi r4, r1, 0x9c
/* 8056A908  7C 05 07 34 */	extsh r5, r0
/* 8056A90C  38 C0 00 00 */	li r6, 0
/* 8056A910  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8056A914  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8056A918  7D 89 03 A6 */	mtctr r12
/* 8056A91C  4E 80 04 21 */	bctrl 
/* 8056A920  93 3E 0D C4 */	stw r25, 0xdc4(r30)
/* 8056A924  48 00 00 20 */	b lbl_8056A944
lbl_8056A928:
/* 8056A928  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056A92C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8056A930  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 8056A934  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8056A938  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 8056A93C  38 00 00 01 */	li r0, 1
/* 8056A940  98 1E 0E 25 */	stb r0, 0xe25(r30)
lbl_8056A944:
/* 8056A944  28 1A 00 0A */	cmplwi r26, 0xa
/* 8056A948  41 81 06 9C */	bgt lbl_8056AFE4
/* 8056A94C  3C 60 80 57 */	lis r3, lit_6878@ha
/* 8056A950  38 63 30 24 */	addi r3, r3, lit_6878@l
/* 8056A954  57 40 10 3A */	slwi r0, r26, 2
/* 8056A958  7C 03 00 2E */	lwzx r0, r3, r0
/* 8056A95C  7C 09 03 A6 */	mtctr r0
/* 8056A960  4E 80 04 20 */	bctr 
lbl_8056A964:
/* 8056A964  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8056A968  2C 00 00 00 */	cmpwi r0, 0
/* 8056A96C  41 82 00 24 */	beq lbl_8056A990
/* 8056A970  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8056A974  4B BD AD 88 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056A978  38 00 00 00 */	li r0, 0
/* 8056A97C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8056A980  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056A984  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8056A988  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8056A98C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8056A990:
/* 8056A990  38 00 00 00 */	li r0, 0
/* 8056A994  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8056A998  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056A99C  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8056A9A0  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8056A9A4  C0 1D 01 04 */	lfs f0, 0x104(r29)
/* 8056A9A8  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8056A9AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8056A9B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8056A9B4  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 8056A9B8  38 04 F8 E4 */	addi r0, r4, -1820
/* 8056A9BC  7C 04 07 34 */	extsh r4, r0
/* 8056A9C0  4B AA 1A 1C */	b mDoMtx_YrotS__FPA4_fs
/* 8056A9C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8056A9C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8056A9CC  38 81 00 9C */	addi r4, r1, 0x9c
/* 8056A9D0  7C 85 23 78 */	mr r5, r4
/* 8056A9D4  4B DD C3 98 */	b PSMTXMultVec
/* 8056A9D8  38 61 00 9C */	addi r3, r1, 0x9c
/* 8056A9DC  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8056A9E0  7C 65 1B 78 */	mr r5, r3
/* 8056A9E4  4B DD C6 AC */	b PSVECAdd
/* 8056A9E8  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 8056A9EC  D0 41 00 78 */	stfs f2, 0x78(r1)
/* 8056A9F0  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8056A9F4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8056A9F8  C0 61 00 A4 */	lfs f3, 0xa4(r1)
/* 8056A9FC  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 8056AA00  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8056AA04  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8056AA08  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8056AA0C  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056AA10  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8056AA14  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8056AA18  D0 41 00 60 */	stfs f2, 0x60(r1)
/* 8056AA1C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8056AA20  D0 61 00 68 */	stfs f3, 0x68(r1)
/* 8056AA24  38 61 00 54 */	addi r3, r1, 0x54
/* 8056AA28  38 81 00 60 */	addi r4, r1, 0x60
/* 8056AA2C  4B DD C9 70 */	b PSVECSquareDistance
/* 8056AA30  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056AA34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056AA38  40 81 00 58 */	ble lbl_8056AA90
/* 8056AA3C  FC 00 08 34 */	frsqrte f0, f1
/* 8056AA40  C8 9D 01 20 */	lfd f4, 0x120(r29)
/* 8056AA44  FC 44 00 32 */	fmul f2, f4, f0
/* 8056AA48  C8 7D 01 28 */	lfd f3, 0x128(r29)
/* 8056AA4C  FC 00 00 32 */	fmul f0, f0, f0
/* 8056AA50  FC 01 00 32 */	fmul f0, f1, f0
/* 8056AA54  FC 03 00 28 */	fsub f0, f3, f0
/* 8056AA58  FC 02 00 32 */	fmul f0, f2, f0
/* 8056AA5C  FC 44 00 32 */	fmul f2, f4, f0
/* 8056AA60  FC 00 00 32 */	fmul f0, f0, f0
/* 8056AA64  FC 01 00 32 */	fmul f0, f1, f0
/* 8056AA68  FC 03 00 28 */	fsub f0, f3, f0
/* 8056AA6C  FC 02 00 32 */	fmul f0, f2, f0
/* 8056AA70  FC 44 00 32 */	fmul f2, f4, f0
/* 8056AA74  FC 00 00 32 */	fmul f0, f0, f0
/* 8056AA78  FC 01 00 32 */	fmul f0, f1, f0
/* 8056AA7C  FC 03 00 28 */	fsub f0, f3, f0
/* 8056AA80  FC 02 00 32 */	fmul f0, f2, f0
/* 8056AA84  FC 21 00 32 */	fmul f1, f1, f0
/* 8056AA88  FC 20 08 18 */	frsp f1, f1
/* 8056AA8C  48 00 00 88 */	b lbl_8056AB14
lbl_8056AA90:
/* 8056AA90  C8 1D 01 30 */	lfd f0, 0x130(r29)
/* 8056AA94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056AA98  40 80 00 10 */	bge lbl_8056AAA8
/* 8056AA9C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8056AAA0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8056AAA4  48 00 00 70 */	b lbl_8056AB14
lbl_8056AAA8:
/* 8056AAA8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8056AAAC  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8056AAB0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8056AAB4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8056AAB8  7C 03 00 00 */	cmpw r3, r0
/* 8056AABC  41 82 00 14 */	beq lbl_8056AAD0
/* 8056AAC0  40 80 00 40 */	bge lbl_8056AB00
/* 8056AAC4  2C 03 00 00 */	cmpwi r3, 0
/* 8056AAC8  41 82 00 20 */	beq lbl_8056AAE8
/* 8056AACC  48 00 00 34 */	b lbl_8056AB00
lbl_8056AAD0:
/* 8056AAD0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8056AAD4  41 82 00 0C */	beq lbl_8056AAE0
/* 8056AAD8  38 00 00 01 */	li r0, 1
/* 8056AADC  48 00 00 28 */	b lbl_8056AB04
lbl_8056AAE0:
/* 8056AAE0  38 00 00 02 */	li r0, 2
/* 8056AAE4  48 00 00 20 */	b lbl_8056AB04
lbl_8056AAE8:
/* 8056AAE8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8056AAEC  41 82 00 0C */	beq lbl_8056AAF8
/* 8056AAF0  38 00 00 05 */	li r0, 5
/* 8056AAF4  48 00 00 10 */	b lbl_8056AB04
lbl_8056AAF8:
/* 8056AAF8  38 00 00 03 */	li r0, 3
/* 8056AAFC  48 00 00 08 */	b lbl_8056AB04
lbl_8056AB00:
/* 8056AB00  38 00 00 04 */	li r0, 4
lbl_8056AB04:
/* 8056AB04  2C 00 00 01 */	cmpwi r0, 1
/* 8056AB08  40 82 00 0C */	bne lbl_8056AB14
/* 8056AB0C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8056AB10  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8056AB14:
/* 8056AB14  7F C3 F3 78 */	mr r3, r30
/* 8056AB18  38 81 00 78 */	addi r4, r1, 0x78
/* 8056AB1C  C0 1D 01 A4 */	lfs f0, 0x1a4(r29)
/* 8056AB20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056AB24  7C 00 00 26 */	mfcr r0
/* 8056AB28  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8056AB2C  38 C0 00 04 */	li r6, 4
/* 8056AB30  38 E0 08 00 */	li r7, 0x800
/* 8056AB34  4B BE 0C D4 */	b calcSpeedAndAngle__8daNpcT_cF4cXyziss
/* 8056AB38  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 8056AB3C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8056AB40  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8056AB44  C0 3D 00 E4 */	lfs f1, 0xe4(r29)
/* 8056AB48  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8056AB4C  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8056AB50  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8056AB54  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8056AB58  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8056AB5C  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8056AB60  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8056AB64  38 61 00 3C */	addi r3, r1, 0x3c
/* 8056AB68  38 81 00 48 */	addi r4, r1, 0x48
/* 8056AB6C  4B DD C8 30 */	b PSVECSquareDistance
/* 8056AB70  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056AB74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056AB78  40 81 00 58 */	ble lbl_8056ABD0
/* 8056AB7C  FC 00 08 34 */	frsqrte f0, f1
/* 8056AB80  C8 9D 01 20 */	lfd f4, 0x120(r29)
/* 8056AB84  FC 44 00 32 */	fmul f2, f4, f0
/* 8056AB88  C8 7D 01 28 */	lfd f3, 0x128(r29)
/* 8056AB8C  FC 00 00 32 */	fmul f0, f0, f0
/* 8056AB90  FC 01 00 32 */	fmul f0, f1, f0
/* 8056AB94  FC 03 00 28 */	fsub f0, f3, f0
/* 8056AB98  FC 02 00 32 */	fmul f0, f2, f0
/* 8056AB9C  FC 44 00 32 */	fmul f2, f4, f0
/* 8056ABA0  FC 00 00 32 */	fmul f0, f0, f0
/* 8056ABA4  FC 01 00 32 */	fmul f0, f1, f0
/* 8056ABA8  FC 03 00 28 */	fsub f0, f3, f0
/* 8056ABAC  FC 02 00 32 */	fmul f0, f2, f0
/* 8056ABB0  FC 44 00 32 */	fmul f2, f4, f0
/* 8056ABB4  FC 00 00 32 */	fmul f0, f0, f0
/* 8056ABB8  FC 01 00 32 */	fmul f0, f1, f0
/* 8056ABBC  FC 03 00 28 */	fsub f0, f3, f0
/* 8056ABC0  FC 02 00 32 */	fmul f0, f2, f0
/* 8056ABC4  FC 21 00 32 */	fmul f1, f1, f0
/* 8056ABC8  FC 20 08 18 */	frsp f1, f1
/* 8056ABCC  48 00 00 88 */	b lbl_8056AC54
lbl_8056ABD0:
/* 8056ABD0  C8 1D 01 30 */	lfd f0, 0x130(r29)
/* 8056ABD4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056ABD8  40 80 00 10 */	bge lbl_8056ABE8
/* 8056ABDC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8056ABE0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8056ABE4  48 00 00 70 */	b lbl_8056AC54
lbl_8056ABE8:
/* 8056ABE8  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8056ABEC  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8056ABF0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8056ABF4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8056ABF8  7C 03 00 00 */	cmpw r3, r0
/* 8056ABFC  41 82 00 14 */	beq lbl_8056AC10
/* 8056AC00  40 80 00 40 */	bge lbl_8056AC40
/* 8056AC04  2C 03 00 00 */	cmpwi r3, 0
/* 8056AC08  41 82 00 20 */	beq lbl_8056AC28
/* 8056AC0C  48 00 00 34 */	b lbl_8056AC40
lbl_8056AC10:
/* 8056AC10  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8056AC14  41 82 00 0C */	beq lbl_8056AC20
/* 8056AC18  38 00 00 01 */	li r0, 1
/* 8056AC1C  48 00 00 28 */	b lbl_8056AC44
lbl_8056AC20:
/* 8056AC20  38 00 00 02 */	li r0, 2
/* 8056AC24  48 00 00 20 */	b lbl_8056AC44
lbl_8056AC28:
/* 8056AC28  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8056AC2C  41 82 00 0C */	beq lbl_8056AC38
/* 8056AC30  38 00 00 05 */	li r0, 5
/* 8056AC34  48 00 00 10 */	b lbl_8056AC44
lbl_8056AC38:
/* 8056AC38  38 00 00 03 */	li r0, 3
/* 8056AC3C  48 00 00 08 */	b lbl_8056AC44
lbl_8056AC40:
/* 8056AC40  38 00 00 04 */	li r0, 4
lbl_8056AC44:
/* 8056AC44  2C 00 00 01 */	cmpwi r0, 1
/* 8056AC48  40 82 00 0C */	bne lbl_8056AC54
/* 8056AC4C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8056AC50  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8056AC54:
/* 8056AC54  C0 1D 01 A4 */	lfs f0, 0x1a4(r29)
/* 8056AC58  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056AC5C  40 80 03 88 */	bge lbl_8056AFE4
/* 8056AC60  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 8056AC64  FC 00 02 10 */	fabs f0, f0
/* 8056AC68  FC 20 00 18 */	frsp f1, f0
/* 8056AC6C  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 8056AC70  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 8056AC74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056AC78  40 80 03 6C */	bge lbl_8056AFE4
/* 8056AC7C  3B E0 00 01 */	li r31, 1
/* 8056AC80  48 00 03 64 */	b lbl_8056AFE4
lbl_8056AC84:
/* 8056AC84  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8056AC88  2C 00 00 00 */	cmpwi r0, 0
/* 8056AC8C  41 82 00 24 */	beq lbl_8056ACB0
/* 8056AC90  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8056AC94  4B BD AA 68 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056AC98  38 00 00 00 */	li r0, 0
/* 8056AC9C  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8056ACA0  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056ACA4  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8056ACA8  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8056ACAC  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8056ACB0:
/* 8056ACB0  38 00 00 00 */	li r0, 0
/* 8056ACB4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8056ACB8  38 7E 0D C4 */	addi r3, r30, 0xdc4
/* 8056ACBC  48 00 65 4D */	bl func_80571208
/* 8056ACC0  2C 03 00 00 */	cmpwi r3, 0
/* 8056ACC4  40 82 03 20 */	bne lbl_8056AFE4
/* 8056ACC8  3B E0 00 01 */	li r31, 1
/* 8056ACCC  48 00 03 18 */	b lbl_8056AFE4
lbl_8056ACD0:
/* 8056ACD0  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8056ACD4  2C 00 00 01 */	cmpwi r0, 1
/* 8056ACD8  41 82 00 28 */	beq lbl_8056AD00
/* 8056ACDC  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8056ACE0  4B BD AA 1C */	b remove__18daNpcT_ActorMngr_cFv
/* 8056ACE4  38 00 00 00 */	li r0, 0
/* 8056ACE8  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8056ACEC  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056ACF0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8056ACF4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8056ACF8  38 00 00 01 */	li r0, 1
/* 8056ACFC  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8056AD00:
/* 8056AD00  38 00 00 00 */	li r0, 0
/* 8056AD04  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8056AD08  7F C3 F3 78 */	mr r3, r30
/* 8056AD0C  38 80 00 00 */	li r4, 0
/* 8056AD10  38 A0 00 00 */	li r5, 0
/* 8056AD14  38 C1 00 14 */	addi r6, r1, 0x14
/* 8056AD18  38 E0 00 00 */	li r7, 0
/* 8056AD1C  4B BE 0F 5C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8056AD20  2C 03 00 00 */	cmpwi r3, 0
/* 8056AD24  41 82 02 C0 */	beq lbl_8056AFE4
/* 8056AD28  88 1E 09 9A */	lbz r0, 0x99a(r30)
/* 8056AD2C  28 00 00 01 */	cmplwi r0, 1
/* 8056AD30  40 82 02 B4 */	bne lbl_8056AFE4
/* 8056AD34  3B E0 00 01 */	li r31, 1
/* 8056AD38  48 00 02 AC */	b lbl_8056AFE4
lbl_8056AD3C:
/* 8056AD3C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 8056AD40  2C 00 00 00 */	cmpwi r0, 0
/* 8056AD44  41 82 00 24 */	beq lbl_8056AD68
/* 8056AD48  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 8056AD4C  4B BD A9 B0 */	b remove__18daNpcT_ActorMngr_cFv
/* 8056AD50  38 00 00 00 */	li r0, 0
/* 8056AD54  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 8056AD58  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056AD5C  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 8056AD60  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8056AD64  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_8056AD68:
/* 8056AD68  38 00 00 00 */	li r0, 0
/* 8056AD6C  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 8056AD70  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056AD74  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8056AD78  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8056AD7C  C0 3D 01 A0 */	lfs f1, 0x1a0(r29)
/* 8056AD80  D0 21 00 A4 */	stfs f1, 0xa4(r1)
/* 8056AD84  2C 1A 00 03 */	cmpwi r26, 3
/* 8056AD88  41 82 00 10 */	beq lbl_8056AD98
/* 8056AD8C  C0 1D 01 A8 */	lfs f0, 0x1a8(r29)
/* 8056AD90  EC 01 00 2A */	fadds f0, f1, f0
/* 8056AD94  D0 01 00 A4 */	stfs f0, 0xa4(r1)
lbl_8056AD98:
/* 8056AD98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8056AD9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8056ADA0  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 8056ADA4  38 04 F8 E4 */	addi r0, r4, -1820
/* 8056ADA8  7C 04 07 34 */	extsh r4, r0
/* 8056ADAC  4B AA 16 30 */	b mDoMtx_YrotS__FPA4_fs
/* 8056ADB0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8056ADB4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8056ADB8  38 81 00 9C */	addi r4, r1, 0x9c
/* 8056ADBC  7C 85 23 78 */	mr r5, r4
/* 8056ADC0  4B DD BF AC */	b PSMTXMultVec
/* 8056ADC4  38 61 00 9C */	addi r3, r1, 0x9c
/* 8056ADC8  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8056ADCC  7C 65 1B 78 */	mr r5, r3
/* 8056ADD0  4B DD C2 C0 */	b PSVECAdd
/* 8056ADD4  C0 41 00 9C */	lfs f2, 0x9c(r1)
/* 8056ADD8  D0 41 00 6C */	stfs f2, 0x6c(r1)
/* 8056ADDC  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8056ADE0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8056ADE4  C0 61 00 A4 */	lfs f3, 0xa4(r1)
/* 8056ADE8  D0 61 00 74 */	stfs f3, 0x74(r1)
/* 8056ADEC  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8056ADF0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8056ADF4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8056ADF8  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056ADFC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8056AE00  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8056AE04  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8056AE08  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8056AE0C  D0 61 00 38 */	stfs f3, 0x38(r1)
/* 8056AE10  38 61 00 24 */	addi r3, r1, 0x24
/* 8056AE14  38 81 00 30 */	addi r4, r1, 0x30
/* 8056AE18  4B DD C5 84 */	b PSVECSquareDistance
/* 8056AE1C  C0 1D 00 E4 */	lfs f0, 0xe4(r29)
/* 8056AE20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056AE24  40 81 00 58 */	ble lbl_8056AE7C
/* 8056AE28  FC 00 08 34 */	frsqrte f0, f1
/* 8056AE2C  C8 9D 01 20 */	lfd f4, 0x120(r29)
/* 8056AE30  FC 44 00 32 */	fmul f2, f4, f0
/* 8056AE34  C8 7D 01 28 */	lfd f3, 0x128(r29)
/* 8056AE38  FC 00 00 32 */	fmul f0, f0, f0
/* 8056AE3C  FC 01 00 32 */	fmul f0, f1, f0
/* 8056AE40  FC 03 00 28 */	fsub f0, f3, f0
/* 8056AE44  FC 02 00 32 */	fmul f0, f2, f0
/* 8056AE48  FC 44 00 32 */	fmul f2, f4, f0
/* 8056AE4C  FC 00 00 32 */	fmul f0, f0, f0
/* 8056AE50  FC 01 00 32 */	fmul f0, f1, f0
/* 8056AE54  FC 03 00 28 */	fsub f0, f3, f0
/* 8056AE58  FC 02 00 32 */	fmul f0, f2, f0
/* 8056AE5C  FC 44 00 32 */	fmul f2, f4, f0
/* 8056AE60  FC 00 00 32 */	fmul f0, f0, f0
/* 8056AE64  FC 01 00 32 */	fmul f0, f1, f0
/* 8056AE68  FC 03 00 28 */	fsub f0, f3, f0
/* 8056AE6C  FC 02 00 32 */	fmul f0, f2, f0
/* 8056AE70  FC 21 00 32 */	fmul f1, f1, f0
/* 8056AE74  FC 20 08 18 */	frsp f1, f1
/* 8056AE78  48 00 00 88 */	b lbl_8056AF00
lbl_8056AE7C:
/* 8056AE7C  C8 1D 01 30 */	lfd f0, 0x130(r29)
/* 8056AE80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056AE84  40 80 00 10 */	bge lbl_8056AE94
/* 8056AE88  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8056AE8C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8056AE90  48 00 00 70 */	b lbl_8056AF00
lbl_8056AE94:
/* 8056AE94  D0 21 00 08 */	stfs f1, 8(r1)
/* 8056AE98  80 81 00 08 */	lwz r4, 8(r1)
/* 8056AE9C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8056AEA0  3C 00 7F 80 */	lis r0, 0x7f80
/* 8056AEA4  7C 03 00 00 */	cmpw r3, r0
/* 8056AEA8  41 82 00 14 */	beq lbl_8056AEBC
/* 8056AEAC  40 80 00 40 */	bge lbl_8056AEEC
/* 8056AEB0  2C 03 00 00 */	cmpwi r3, 0
/* 8056AEB4  41 82 00 20 */	beq lbl_8056AED4
/* 8056AEB8  48 00 00 34 */	b lbl_8056AEEC
lbl_8056AEBC:
/* 8056AEBC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8056AEC0  41 82 00 0C */	beq lbl_8056AECC
/* 8056AEC4  38 00 00 01 */	li r0, 1
/* 8056AEC8  48 00 00 28 */	b lbl_8056AEF0
lbl_8056AECC:
/* 8056AECC  38 00 00 02 */	li r0, 2
/* 8056AED0  48 00 00 20 */	b lbl_8056AEF0
lbl_8056AED4:
/* 8056AED4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8056AED8  41 82 00 0C */	beq lbl_8056AEE4
/* 8056AEDC  38 00 00 05 */	li r0, 5
/* 8056AEE0  48 00 00 10 */	b lbl_8056AEF0
lbl_8056AEE4:
/* 8056AEE4  38 00 00 03 */	li r0, 3
/* 8056AEE8  48 00 00 08 */	b lbl_8056AEF0
lbl_8056AEEC:
/* 8056AEEC  38 00 00 04 */	li r0, 4
lbl_8056AEF0:
/* 8056AEF0  2C 00 00 01 */	cmpwi r0, 1
/* 8056AEF4  40 82 00 0C */	bne lbl_8056AF00
/* 8056AEF8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8056AEFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8056AF00:
/* 8056AF00  7F C3 F3 78 */	mr r3, r30
/* 8056AF04  38 81 00 6C */	addi r4, r1, 0x6c
/* 8056AF08  C0 1D 01 A4 */	lfs f0, 0x1a4(r29)
/* 8056AF0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8056AF10  7C 00 00 26 */	mfcr r0
/* 8056AF14  54 05 0F FE */	srwi r5, r0, 0x1f
/* 8056AF18  38 C0 00 04 */	li r6, 4
/* 8056AF1C  38 E0 08 00 */	li r7, 0x800
/* 8056AF20  4B BE 08 E8 */	b calcSpeedAndAngle__8daNpcT_cF4cXyziss
/* 8056AF24  38 7E 0D C4 */	addi r3, r30, 0xdc4
/* 8056AF28  48 00 62 E1 */	bl func_80571208
/* 8056AF2C  2C 03 00 00 */	cmpwi r3, 0
/* 8056AF30  40 82 00 B4 */	bne lbl_8056AFE4
/* 8056AF34  3B E0 00 01 */	li r31, 1
/* 8056AF38  48 00 00 AC */	b lbl_8056AFE4
lbl_8056AF3C:
/* 8056AF3C  3B E0 00 01 */	li r31, 1
/* 8056AF40  48 00 00 A4 */	b lbl_8056AFE4
lbl_8056AF44:
/* 8056AF44  A8 1E 0D 7A */	lha r0, 0xd7a(r30)
/* 8056AF48  A8 9E 0D C8 */	lha r4, 0xdc8(r30)
/* 8056AF4C  7C 00 20 00 */	cmpw r0, r4
/* 8056AF50  41 82 00 80 */	beq lbl_8056AFD0
/* 8056AF54  7F C3 F3 78 */	mr r3, r30
/* 8056AF58  38 A0 FF FF */	li r5, -1
/* 8056AF5C  38 C0 00 24 */	li r6, 0x24
/* 8056AF60  38 E0 00 0F */	li r7, 0xf
/* 8056AF64  39 00 00 00 */	li r8, 0
/* 8056AF68  4B BE 06 E0 */	b step__8daNpcT_cFsiiii
/* 8056AF6C  2C 03 00 00 */	cmpwi r3, 0
/* 8056AF70  41 82 00 74 */	beq lbl_8056AFE4
/* 8056AF74  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 8056AF78  2C 00 00 1F */	cmpwi r0, 0x1f
/* 8056AF7C  41 82 00 24 */	beq lbl_8056AFA0
/* 8056AF80  83 1E 0B 5C */	lwz r24, 0xb5c(r30)
/* 8056AF84  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 8056AF88  4B BD A9 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056AF8C  93 1E 0B 5C */	stw r24, 0xb5c(r30)
/* 8056AF90  38 00 00 1F */	li r0, 0x1f
/* 8056AF94  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 8056AF98  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 8056AF9C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_8056AFA0:
/* 8056AFA0  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 8056AFA4  2C 00 00 16 */	cmpwi r0, 0x16
/* 8056AFA8  41 82 00 3C */	beq lbl_8056AFE4
/* 8056AFAC  83 1E 0B 80 */	lwz r24, 0xb80(r30)
/* 8056AFB0  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8056AFB4  4B BD A8 E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8056AFB8  93 1E 0B 80 */	stw r24, 0xb80(r30)
/* 8056AFBC  38 00 00 16 */	li r0, 0x16
/* 8056AFC0  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 8056AFC4  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 8056AFC8  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 8056AFCC  48 00 00 18 */	b lbl_8056AFE4
lbl_8056AFD0:
/* 8056AFD0  38 7E 0D C4 */	addi r3, r30, 0xdc4
/* 8056AFD4  48 00 62 35 */	bl func_80571208
/* 8056AFD8  2C 03 00 00 */	cmpwi r3, 0
/* 8056AFDC  40 82 00 08 */	bne lbl_8056AFE4
/* 8056AFE0  3B E0 00 01 */	li r31, 1
lbl_8056AFE4:
/* 8056AFE4  7F E3 FB 78 */	mr r3, r31
/* 8056AFE8  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8056AFEC  4B DF 72 28 */	b _restgpr_24
/* 8056AFF0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8056AFF4  7C 08 03 A6 */	mtlr r0
/* 8056AFF8  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8056AFFC  4E 80 00 20 */	blr 
