lbl_8053A45C:
/* 8053A45C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8053A460  7C 08 02 A6 */	mflr r0
/* 8053A464  90 01 00 44 */	stw r0, 0x44(r1)
/* 8053A468  39 61 00 40 */	addi r11, r1, 0x40
/* 8053A46C  4B E2 7D 60 */	b _savegpr_25
/* 8053A470  7C 79 1B 78 */	mr r25, r3
/* 8053A474  7C 9A 23 78 */	mr r26, r4
/* 8053A478  3C 60 80 54 */	lis r3, m__18daNpc_Besu_Param_c@ha
/* 8053A47C  3B E3 E7 54 */	addi r31, r3, m__18daNpc_Besu_Param_c@l
/* 8053A480  3B A0 00 00 */	li r29, 0
/* 8053A484  3B 80 FF FF */	li r28, -1
/* 8053A488  3B 60 00 00 */	li r27, 0
/* 8053A48C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8053A490  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8053A494  3B C3 4F F8 */	addi r30, r3, 0x4ff8
/* 8053A498  7F C3 F3 78 */	mr r3, r30
/* 8053A49C  3C A0 80 54 */	lis r5, struct_8053E908+0x0@ha
/* 8053A4A0  38 A5 E9 08 */	addi r5, r5, struct_8053E908+0x0@l
/* 8053A4A4  38 A5 01 F3 */	addi r5, r5, 0x1f3
/* 8053A4A8  38 C0 00 03 */	li r6, 3
/* 8053A4AC  4B B0 DC 40 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053A4B0  28 03 00 00 */	cmplwi r3, 0
/* 8053A4B4  41 82 00 08 */	beq lbl_8053A4BC
/* 8053A4B8  83 83 00 00 */	lwz r28, 0(r3)
lbl_8053A4BC:
/* 8053A4BC  7F C3 F3 78 */	mr r3, r30
/* 8053A4C0  7F 44 D3 78 */	mr r4, r26
/* 8053A4C4  3C A0 80 54 */	lis r5, struct_8053E908+0x0@ha
/* 8053A4C8  38 A5 E9 08 */	addi r5, r5, struct_8053E908+0x0@l
/* 8053A4CC  38 A5 02 04 */	addi r5, r5, 0x204
/* 8053A4D0  38 C0 00 03 */	li r6, 3
/* 8053A4D4  4B B0 DC 18 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8053A4D8  28 03 00 00 */	cmplwi r3, 0
/* 8053A4DC  41 82 00 08 */	beq lbl_8053A4E4
/* 8053A4E0  83 63 00 00 */	lwz r27, 0(r3)
lbl_8053A4E4:
/* 8053A4E4  80 7F 01 98 */	lwz r3, 0x198(r31)
/* 8053A4E8  80 1F 01 9C */	lwz r0, 0x19c(r31)
/* 8053A4EC  90 61 00 0C */	stw r3, 0xc(r1)
/* 8053A4F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8053A4F4  80 1F 01 A0 */	lwz r0, 0x1a0(r31)
/* 8053A4F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053A4FC  38 79 10 C8 */	addi r3, r25, 0x10c8
/* 8053A500  4B C0 B2 08 */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053A504  90 61 00 0C */	stw r3, 0xc(r1)
/* 8053A508  38 79 10 D0 */	addi r3, r25, 0x10d0
/* 8053A50C  4B C0 B1 FC */	b getActorP__18daNpcT_ActorMngr_cFv
/* 8053A510  90 61 00 10 */	stw r3, 0x10(r1)
/* 8053A514  93 21 00 14 */	stw r25, 0x14(r1)
/* 8053A518  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8053A51C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8053A520  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8053A524  90 04 5E F0 */	stw r0, 0x5ef0(r4)
/* 8053A528  90 64 5E F4 */	stw r3, 0x5ef4(r4)
/* 8053A52C  93 24 5E F8 */	stw r25, 0x5ef8(r4)
/* 8053A530  38 00 00 00 */	li r0, 0
/* 8053A534  90 04 5E FC */	stw r0, 0x5efc(r4)
/* 8053A538  90 04 5F 00 */	stw r0, 0x5f00(r4)
/* 8053A53C  90 04 5F 04 */	stw r0, 0x5f04(r4)
/* 8053A540  90 04 5F 08 */	stw r0, 0x5f08(r4)
/* 8053A544  90 04 5F 0C */	stw r0, 0x5f0c(r4)
/* 8053A548  90 04 5F 10 */	stw r0, 0x5f10(r4)
/* 8053A54C  90 04 5F 14 */	stw r0, 0x5f14(r4)
/* 8053A550  7F C3 F3 78 */	mr r3, r30
/* 8053A554  7F 44 D3 78 */	mr r4, r26
/* 8053A558  4B B0 D7 F4 */	b getIsAddvance__16dEvent_manager_cFi
/* 8053A55C  2C 03 00 00 */	cmpwi r3, 0
/* 8053A560  41 82 00 30 */	beq lbl_8053A590
/* 8053A564  2C 1C 00 01 */	cmpwi r28, 1
/* 8053A568  41 82 00 28 */	beq lbl_8053A590
/* 8053A56C  40 80 00 24 */	bge lbl_8053A590
/* 8053A570  2C 1C 00 00 */	cmpwi r28, 0
/* 8053A574  40 80 00 08 */	bge lbl_8053A57C
/* 8053A578  48 00 00 18 */	b lbl_8053A590
lbl_8053A57C:
/* 8053A57C  93 79 0D C4 */	stw r27, 0xdc4(r25)
/* 8053A580  7F 23 CB 78 */	mr r3, r25
/* 8053A584  80 99 0A 7C */	lwz r4, 0xa7c(r25)
/* 8053A588  38 A1 00 0C */	addi r5, r1, 0xc
/* 8053A58C  4B C1 16 64 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_8053A590:
/* 8053A590  2C 1C 00 01 */	cmpwi r28, 1
/* 8053A594  41 82 01 80 */	beq lbl_8053A714
/* 8053A598  40 80 01 EC */	bge lbl_8053A784
/* 8053A59C  2C 1C 00 00 */	cmpwi r28, 0
/* 8053A5A0  40 80 00 08 */	bge lbl_8053A5A8
/* 8053A5A4  48 00 01 E0 */	b lbl_8053A784
lbl_8053A5A8:
/* 8053A5A8  80 19 0C E0 */	lwz r0, 0xce0(r25)
/* 8053A5AC  2C 00 00 01 */	cmpwi r0, 1
/* 8053A5B0  41 82 00 28 */	beq lbl_8053A5D8
/* 8053A5B4  38 79 0B A8 */	addi r3, r25, 0xba8
/* 8053A5B8  4B C0 B1 44 */	b remove__18daNpcT_ActorMngr_cFv
/* 8053A5BC  38 00 00 00 */	li r0, 0
/* 8053A5C0  90 19 0B C8 */	stw r0, 0xbc8(r25)
/* 8053A5C4  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 8053A5C8  D0 19 0C F4 */	stfs f0, 0xcf4(r25)
/* 8053A5CC  98 19 0C FF */	stb r0, 0xcff(r25)
/* 8053A5D0  38 00 00 01 */	li r0, 1
/* 8053A5D4  90 19 0C E0 */	stw r0, 0xce0(r25)
lbl_8053A5D8:
/* 8053A5D8  38 00 00 00 */	li r0, 0
/* 8053A5DC  98 19 0C FF */	stb r0, 0xcff(r25)
/* 8053A5E0  A8 79 0D C8 */	lha r3, 0xdc8(r25)
/* 8053A5E4  A8 19 0D 7A */	lha r0, 0xd7a(r25)
/* 8053A5E8  7C 03 00 00 */	cmpw r3, r0
/* 8053A5EC  41 82 01 10 */	beq lbl_8053A6FC
/* 8053A5F0  7F 23 CB 78 */	mr r3, r25
/* 8053A5F4  4B FF DA 09 */	bl chkBesu3__12daNpc_Besu_cFv
/* 8053A5F8  2C 03 00 00 */	cmpwi r3, 0
/* 8053A5FC  41 82 00 84 */	beq lbl_8053A680
/* 8053A600  7F 23 CB 78 */	mr r3, r25
/* 8053A604  A8 99 0D C8 */	lha r4, 0xdc8(r25)
/* 8053A608  38 A0 00 1C */	li r5, 0x1c
/* 8053A60C  38 C0 00 1D */	li r6, 0x1d
/* 8053A610  38 E0 00 0F */	li r7, 0xf
/* 8053A614  39 00 00 00 */	li r8, 0
/* 8053A618  4B C1 10 30 */	b step__8daNpcT_cFsiiii
/* 8053A61C  2C 03 00 00 */	cmpwi r3, 0
/* 8053A620  41 82 00 DC */	beq lbl_8053A6FC
/* 8053A624  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 8053A628  2C 00 00 1C */	cmpwi r0, 0x1c
/* 8053A62C  41 82 00 24 */	beq lbl_8053A650
/* 8053A630  83 59 0B 5C */	lwz r26, 0xb5c(r25)
/* 8053A634  38 79 0B 50 */	addi r3, r25, 0xb50
/* 8053A638  4B C0 B2 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053A63C  93 59 0B 5C */	stw r26, 0xb5c(r25)
/* 8053A640  38 00 00 1C */	li r0, 0x1c
/* 8053A644  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 8053A648  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053A64C  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_8053A650:
/* 8053A650  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 8053A654  2C 00 00 00 */	cmpwi r0, 0
/* 8053A658  41 82 00 A4 */	beq lbl_8053A6FC
/* 8053A65C  83 59 0B 80 */	lwz r26, 0xb80(r25)
/* 8053A660  38 79 0B 74 */	addi r3, r25, 0xb74
/* 8053A664  4B C0 B2 34 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053A668  93 59 0B 80 */	stw r26, 0xb80(r25)
/* 8053A66C  38 00 00 00 */	li r0, 0
/* 8053A670  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 8053A674  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053A678  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
/* 8053A67C  48 00 00 80 */	b lbl_8053A6FC
lbl_8053A680:
/* 8053A680  7F 23 CB 78 */	mr r3, r25
/* 8053A684  A8 99 0D C8 */	lha r4, 0xdc8(r25)
/* 8053A688  38 A0 00 1C */	li r5, 0x1c
/* 8053A68C  38 C0 00 11 */	li r6, 0x11
/* 8053A690  38 E0 00 0F */	li r7, 0xf
/* 8053A694  39 00 00 00 */	li r8, 0
/* 8053A698  4B C1 0F B0 */	b step__8daNpcT_cFsiiii
/* 8053A69C  2C 03 00 00 */	cmpwi r3, 0
/* 8053A6A0  41 82 00 5C */	beq lbl_8053A6FC
/* 8053A6A4  80 19 0B 58 */	lwz r0, 0xb58(r25)
/* 8053A6A8  2C 00 00 1C */	cmpwi r0, 0x1c
/* 8053A6AC  41 82 00 24 */	beq lbl_8053A6D0
/* 8053A6B0  83 59 0B 5C */	lwz r26, 0xb5c(r25)
/* 8053A6B4  38 79 0B 50 */	addi r3, r25, 0xb50
/* 8053A6B8  4B C0 B1 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053A6BC  93 59 0B 5C */	stw r26, 0xb5c(r25)
/* 8053A6C0  38 00 00 1C */	li r0, 0x1c
/* 8053A6C4  90 19 0B 58 */	stw r0, 0xb58(r25)
/* 8053A6C8  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053A6CC  D0 19 0B 68 */	stfs f0, 0xb68(r25)
lbl_8053A6D0:
/* 8053A6D0  80 19 0B 7C */	lwz r0, 0xb7c(r25)
/* 8053A6D4  2C 00 00 00 */	cmpwi r0, 0
/* 8053A6D8  41 82 00 24 */	beq lbl_8053A6FC
/* 8053A6DC  83 59 0B 80 */	lwz r26, 0xb80(r25)
/* 8053A6E0  38 79 0B 74 */	addi r3, r25, 0xb74
/* 8053A6E4  4B C0 B1 B4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053A6E8  93 59 0B 80 */	stw r26, 0xb80(r25)
/* 8053A6EC  38 00 00 00 */	li r0, 0
/* 8053A6F0  90 19 0B 7C */	stw r0, 0xb7c(r25)
/* 8053A6F4  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8053A6F8  D0 19 0B 8C */	stfs f0, 0xb8c(r25)
lbl_8053A6FC:
/* 8053A6FC  38 79 0D C4 */	addi r3, r25, 0xdc4
/* 8053A700  48 00 3C 35 */	bl func_8053E334
/* 8053A704  2C 03 00 00 */	cmpwi r3, 0
/* 8053A708  40 82 00 7C */	bne lbl_8053A784
/* 8053A70C  3B A0 00 01 */	li r29, 1
/* 8053A710  48 00 00 74 */	b lbl_8053A784
lbl_8053A714:
/* 8053A714  7F 23 CB 78 */	mr r3, r25
/* 8053A718  38 80 00 00 */	li r4, 0
/* 8053A71C  38 A0 00 00 */	li r5, 0
/* 8053A720  38 C1 00 0C */	addi r6, r1, 0xc
/* 8053A724  38 E0 00 00 */	li r7, 0
/* 8053A728  4B C1 15 50 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8053A72C  2C 03 00 00 */	cmpwi r3, 0
/* 8053A730  41 82 00 54 */	beq lbl_8053A784
/* 8053A734  38 79 09 74 */	addi r3, r25, 0x974
/* 8053A738  38 81 00 08 */	addi r4, r1, 8
/* 8053A73C  4B D0 FD EC */	b getEventId__10dMsgFlow_cFPi
/* 8053A740  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8053A744  2C 00 00 02 */	cmpwi r0, 2
/* 8053A748  41 82 00 08 */	beq lbl_8053A750
/* 8053A74C  48 00 00 28 */	b lbl_8053A774
lbl_8053A750:
/* 8053A750  38 60 00 0C */	li r3, 0xc
/* 8053A754  C0 3F 00 F0 */	lfs f1, 0xf0(r31)
/* 8053A758  38 80 00 00 */	li r4, 0
/* 8053A75C  88 19 04 E2 */	lbz r0, 0x4e2(r25)
/* 8053A760  7C 05 07 74 */	extsb r5, r0
/* 8053A764  38 C0 00 00 */	li r6, 0
/* 8053A768  38 E0 FF FF */	li r7, -1
/* 8053A76C  4B AE CA 04 */	b dStage_changeScene__FifUlScsi
/* 8053A770  48 00 00 14 */	b lbl_8053A784
lbl_8053A774:
/* 8053A774  88 19 09 9A */	lbz r0, 0x99a(r25)
/* 8053A778  28 00 00 01 */	cmplwi r0, 1
/* 8053A77C  40 82 00 08 */	bne lbl_8053A784
/* 8053A780  3B A0 00 01 */	li r29, 1
lbl_8053A784:
/* 8053A784  7F A3 EB 78 */	mr r3, r29
/* 8053A788  39 61 00 40 */	addi r11, r1, 0x40
/* 8053A78C  4B E2 7A 8C */	b _restgpr_25
/* 8053A790  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8053A794  7C 08 03 A6 */	mtlr r0
/* 8053A798  38 21 00 40 */	addi r1, r1, 0x40
/* 8053A79C  4E 80 00 20 */	blr 
