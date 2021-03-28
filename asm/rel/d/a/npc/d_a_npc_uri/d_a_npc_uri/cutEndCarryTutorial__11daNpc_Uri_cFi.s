lbl_80B293C0:
/* 80B293C0  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80B293C4  7C 08 02 A6 */	mflr r0
/* 80B293C8  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B293CC  39 61 00 50 */	addi r11, r1, 0x50
/* 80B293D0  4B 83 8E 04 */	b _savegpr_27
/* 80B293D4  7C 7D 1B 78 */	mr r29, r3
/* 80B293D8  7C 9B 23 78 */	mr r27, r4
/* 80B293DC  3B E0 00 00 */	li r31, 0
/* 80B293E0  3B C0 FF FF */	li r30, -1
/* 80B293E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B293E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B293EC  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 80B293F0  7F 83 E3 78 */	mr r3, r28
/* 80B293F4  3C A0 80 B3 */	lis r5, struct_80B2CF74+0x0@ha
/* 80B293F8  38 A5 CF 74 */	addi r5, r5, struct_80B2CF74+0x0@l
/* 80B293FC  38 A5 00 C4 */	addi r5, r5, 0xc4
/* 80B29400  38 C0 00 03 */	li r6, 3
/* 80B29404  4B 51 EC E8 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 80B29408  28 03 00 00 */	cmplwi r3, 0
/* 80B2940C  41 82 00 08 */	beq lbl_80B29414
/* 80B29410  83 C3 00 00 */	lwz r30, 0(r3)
lbl_80B29414:
/* 80B29414  7F 83 E3 78 */	mr r3, r28
/* 80B29418  7F 64 DB 78 */	mr r4, r27
/* 80B2941C  4B 51 E9 30 */	b getIsAddvance__16dEvent_manager_cFi
/* 80B29420  2C 03 00 00 */	cmpwi r3, 0
/* 80B29424  41 82 01 7C */	beq lbl_80B295A0
/* 80B29428  2C 1E 00 01 */	cmpwi r30, 1
/* 80B2942C  41 82 00 18 */	beq lbl_80B29444
/* 80B29430  40 80 00 08 */	bge lbl_80B29438
/* 80B29434  48 00 01 6C */	b lbl_80B295A0
lbl_80B29438:
/* 80B29438  2C 1E 00 03 */	cmpwi r30, 3
/* 80B2943C  40 80 01 64 */	bge lbl_80B295A0
/* 80B29440  48 00 01 48 */	b lbl_80B29588
lbl_80B29444:
/* 80B29444  38 60 00 15 */	li r3, 0x15
/* 80B29448  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B2944C  7C 04 07 74 */	extsb r4, r0
/* 80B29450  38 A1 00 20 */	addi r5, r1, 0x20
/* 80B29454  38 C1 00 0C */	addi r6, r1, 0xc
/* 80B29458  4B 62 30 A8 */	b daNpcT_getPlayerInfoFromPlayerList__FiiP4cXyzP5csXyz
/* 80B2945C  2C 03 00 00 */	cmpwi r3, 0
/* 80B29460  41 82 00 38 */	beq lbl_80B29498
/* 80B29464  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B29468  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B2946C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80B29470  38 81 00 20 */	addi r4, r1, 0x20
/* 80B29474  A8 A1 00 0E */	lha r5, 0xe(r1)
/* 80B29478  38 C0 00 00 */	li r6, 0
/* 80B2947C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B29480  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80B29484  7D 89 03 A6 */	mtctr r12
/* 80B29488  4E 80 04 21 */	bctrl 
/* 80B2948C  7F 83 E3 78 */	mr r3, r28
/* 80B29490  38 81 00 20 */	addi r4, r1, 0x20
/* 80B29494  4B 51 EF 30 */	b setGoal__16dEvent_manager_cFP4cXyz
lbl_80B29498:
/* 80B29498  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B2949C  2C 00 00 11 */	cmpwi r0, 0x11
/* 80B294A0  41 82 00 28 */	beq lbl_80B294C8
/* 80B294A4  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B294A8  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B294AC  4B 61 C3 EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B294B0  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B294B4  38 00 00 11 */	li r0, 0x11
/* 80B294B8  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B294BC  3C 60 80 B3 */	lis r3, lit_4713@ha
/* 80B294C0  C0 03 CF 04 */	lfs f0, lit_4713@l(r3)
/* 80B294C4  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B294C8:
/* 80B294C8  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B294CC  2C 00 00 00 */	cmpwi r0, 0
/* 80B294D0  41 82 00 28 */	beq lbl_80B294F8
/* 80B294D4  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B294D8  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B294DC  4B 61 C3 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B294E0  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B294E4  38 00 00 00 */	li r0, 0
/* 80B294E8  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B294EC  3C 60 80 B3 */	lis r3, lit_4713@ha
/* 80B294F0  C0 03 CF 04 */	lfs f0, lit_4713@l(r3)
/* 80B294F4  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80B294F8:
/* 80B294F8  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80B294FC  2C 00 00 01 */	cmpwi r0, 1
/* 80B29500  41 82 00 2C */	beq lbl_80B2952C
/* 80B29504  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B29508  4B 61 C1 F4 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B2950C  38 00 00 00 */	li r0, 0
/* 80B29510  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80B29514  3C 60 80 B3 */	lis r3, lit_4055@ha
/* 80B29518  C0 03 CE EC */	lfs f0, lit_4055@l(r3)
/* 80B2951C  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80B29520  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B29524  38 00 00 01 */	li r0, 1
/* 80B29528  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80B2952C:
/* 80B2952C  38 00 00 00 */	li r0, 0
/* 80B29530  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B29534  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80B29538  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B2953C  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 80B29540  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B29544  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 80B29548  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B2954C  7F A3 EB 78 */	mr r3, r29
/* 80B29550  38 81 00 14 */	addi r4, r1, 0x14
/* 80B29554  4B 62 13 B4 */	b setPos__8daNpcT_cF4cXyz
/* 80B29558  7F A3 EB 78 */	mr r3, r29
/* 80B2955C  A8 9D 04 B6 */	lha r4, 0x4b6(r29)
/* 80B29560  4B 62 14 B8 */	b setAngle__8daNpcT_cFs
/* 80B29564  3C 60 80 B3 */	lis r3, lit_4055@ha
/* 80B29568  C0 03 CE EC */	lfs f0, lit_4055@l(r3)
/* 80B2956C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80B29570  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80B29574  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B29578  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80B2957C  38 60 00 1E */	li r3, 0x1e
/* 80B29580  4B 62 34 AC */	b daNpcT_onEvtBit__FUl
/* 80B29584  48 00 00 1C */	b lbl_80B295A0
lbl_80B29588:
/* 80B29588  7F A3 EB 78 */	mr r3, r29
/* 80B2958C  38 80 00 13 */	li r4, 0x13
/* 80B29590  38 A0 00 00 */	li r5, 0
/* 80B29594  4B 62 26 5C */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80B29598  38 00 FF FF */	li r0, -1
/* 80B2959C  90 1D 0D 90 */	stw r0, 0xd90(r29)
lbl_80B295A0:
/* 80B295A0  2C 1E 00 01 */	cmpwi r30, 1
/* 80B295A4  41 82 00 3C */	beq lbl_80B295E0
/* 80B295A8  40 80 00 10 */	bge lbl_80B295B8
/* 80B295AC  2C 1E 00 00 */	cmpwi r30, 0
/* 80B295B0  40 80 00 14 */	bge lbl_80B295C4
/* 80B295B4  48 00 00 E8 */	b lbl_80B2969C
lbl_80B295B8:
/* 80B295B8  2C 1E 00 03 */	cmpwi r30, 3
/* 80B295BC  40 80 00 E0 */	bge lbl_80B2969C
/* 80B295C0  48 00 00 28 */	b lbl_80B295E8
lbl_80B295C4:
/* 80B295C4  7F A3 EB 78 */	mr r3, r29
/* 80B295C8  81 9D 0E 3C */	lwz r12, 0xe3c(r29)
/* 80B295CC  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 80B295D0  7D 89 03 A6 */	mtctr r12
/* 80B295D4  4E 80 04 21 */	bctrl 
/* 80B295D8  3B E0 00 01 */	li r31, 1
/* 80B295DC  48 00 00 C0 */	b lbl_80B2969C
lbl_80B295E0:
/* 80B295E0  3B E0 00 01 */	li r31, 1
/* 80B295E4  48 00 00 B8 */	b lbl_80B2969C
lbl_80B295E8:
/* 80B295E8  7F A3 EB 78 */	mr r3, r29
/* 80B295EC  38 80 00 00 */	li r4, 0
/* 80B295F0  38 A0 00 00 */	li r5, 0
/* 80B295F4  38 C0 00 00 */	li r6, 0
/* 80B295F8  38 E0 00 00 */	li r7, 0
/* 80B295FC  4B 62 26 7C */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80B29600  2C 03 00 00 */	cmpwi r3, 0
/* 80B29604  41 82 00 98 */	beq lbl_80B2969C
/* 80B29608  88 1D 09 9A */	lbz r0, 0x99a(r29)
/* 80B2960C  28 00 00 01 */	cmplwi r0, 1
/* 80B29610  40 82 00 8C */	bne lbl_80B2969C
/* 80B29614  38 7D 09 74 */	addi r3, r29, 0x974
/* 80B29618  38 81 00 08 */	addi r4, r1, 8
/* 80B2961C  4B 72 0F 0C */	b getEventId__10dMsgFlow_cFPi
/* 80B29620  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80B29624  2C 00 00 01 */	cmpwi r0, 1
/* 80B29628  40 82 00 74 */	bne lbl_80B2969C
/* 80B2962C  80 7D 0D 90 */	lwz r3, 0xd90(r29)
/* 80B29630  3C 03 00 01 */	addis r0, r3, 1
/* 80B29634  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B29638  40 82 00 28 */	bne lbl_80B29660
/* 80B2963C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B29640  80 81 00 08 */	lwz r4, 8(r1)
/* 80B29644  38 A0 00 00 */	li r5, 0
/* 80B29648  38 C0 FF FF */	li r6, -1
/* 80B2964C  38 E0 FF FF */	li r7, -1
/* 80B29650  39 00 00 00 */	li r8, 0
/* 80B29654  39 20 00 00 */	li r9, 0
/* 80B29658  4B 4F 25 90 */	b fopAcM_createItemForPresentDemo__FPC4cXyziUciiPC5csXyzPC4cXyz
/* 80B2965C  90 7D 0D 90 */	stw r3, 0xd90(r29)
lbl_80B29660:
/* 80B29660  80 7D 0D 90 */	lwz r3, 0xd90(r29)
/* 80B29664  4B 4F 7D 38 */	b fpcEx_IsExist__FUi
/* 80B29668  2C 03 00 00 */	cmpwi r3, 0
/* 80B2966C  41 82 00 30 */	beq lbl_80B2969C
/* 80B29670  38 60 00 07 */	li r3, 7
/* 80B29674  4B 62 34 B8 */	b daNpcT_offTmpBit__FUl
/* 80B29678  38 60 00 0A */	li r3, 0xa
/* 80B2967C  4B 62 34 B0 */	b daNpcT_offTmpBit__FUl
/* 80B29680  38 60 00 20 */	li r3, 0x20
/* 80B29684  4B 62 34 A8 */	b daNpcT_offTmpBit__FUl
/* 80B29688  38 00 00 01 */	li r0, 1
/* 80B2968C  98 1D 10 0B */	stb r0, 0x100b(r29)
/* 80B29690  B0 1D 0E 30 */	sth r0, 0xe30(r29)
/* 80B29694  7F A3 EB 78 */	mr r3, r29
/* 80B29698  4B 62 0B 8C */	b evtChange__8daNpcT_cFv
lbl_80B2969C:
/* 80B2969C  7F E3 FB 78 */	mr r3, r31
/* 80B296A0  39 61 00 50 */	addi r11, r1, 0x50
/* 80B296A4  4B 83 8B 7C */	b _restgpr_27
/* 80B296A8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80B296AC  7C 08 03 A6 */	mtlr r0
/* 80B296B0  38 21 00 50 */	addi r1, r1, 0x50
/* 80B296B4  4E 80 00 20 */	blr 
