lbl_8095B58C:
/* 8095B58C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8095B590  7C 08 02 A6 */	mflr r0
/* 8095B594  90 01 00 44 */	stw r0, 0x44(r1)
/* 8095B598  39 61 00 40 */	addi r11, r1, 0x40
/* 8095B59C  4B A0 6C 39 */	bl _savegpr_27
/* 8095B5A0  7C 7D 1B 78 */	mr r29, r3
/* 8095B5A4  7C 9B 23 78 */	mr r27, r4
/* 8095B5A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095B5AC  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095B5B0  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 8095B5B4  3C 60 80 96 */	lis r3, lit_5254@ha /* 0x8095D8C0@ha */
/* 8095B5B8  38 83 D8 C0 */	addi r4, r3, lit_5254@l /* 0x8095D8C0@l */
/* 8095B5BC  80 64 00 00 */	lwz r3, 0(r4)
/* 8095B5C0  80 04 00 04 */	lwz r0, 4(r4)
/* 8095B5C4  90 61 00 10 */	stw r3, 0x10(r1)
/* 8095B5C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095B5CC  80 64 00 08 */	lwz r3, 8(r4)
/* 8095B5D0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 8095B5D4  90 61 00 18 */	stw r3, 0x18(r1)
/* 8095B5D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8095B5DC  38 7D 0C 90 */	addi r3, r29, 0xc90
/* 8095B5E0  4B 7F 51 0D */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 8095B5E4  90 61 00 10 */	stw r3, 0x10(r1)
/* 8095B5E8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8095B5EC  38 7D 0C 88 */	addi r3, r29, 0xc88
/* 8095B5F0  4B 7F 50 FD */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 8095B5F4  90 61 00 18 */	stw r3, 0x18(r1)
/* 8095B5F8  38 7D 0C 98 */	addi r3, r29, 0xc98
/* 8095B5FC  4B 7F 50 F1 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 8095B600  90 61 00 1C */	stw r3, 0x1c(r1)
/* 8095B604  7F 83 E3 78 */	mr r3, r28
/* 8095B608  7F 64 DB 78 */	mr r4, r27
/* 8095B60C  4B 6E C9 51 */	bl getMyNowCutName__16dEvent_manager_cFi
/* 8095B610  7C 7F 1B 78 */	mr r31, r3
/* 8095B614  7F 83 E3 78 */	mr r3, r28
/* 8095B618  7F 64 DB 78 */	mr r4, r27
/* 8095B61C  4B 6E C7 31 */	bl getIsAddvance__16dEvent_manager_cFi
/* 8095B620  2C 03 00 00 */	cmpwi r3, 0
/* 8095B624  41 82 00 7C */	beq lbl_8095B6A0
/* 8095B628  80 9F 00 00 */	lwz r4, 0(r31)
/* 8095B62C  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303033@ha */
/* 8095B630  38 03 30 33 */	addi r0, r3, 0x3033 /* 0x30303033@l */
/* 8095B634  7C 04 00 00 */	cmpw r4, r0
/* 8095B638  40 80 00 68 */	bge lbl_8095B6A0
/* 8095B63C  38 03 30 31 */	addi r0, r3, 0x3031
/* 8095B640  7C 04 00 00 */	cmpw r4, r0
/* 8095B644  40 80 00 08 */	bge lbl_8095B64C
/* 8095B648  48 00 00 58 */	b lbl_8095B6A0
lbl_8095B64C:
/* 8095B64C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 8095B650  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095B654  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095B658  90 03 5E F0 */	stw r0, 0x5ef0(r3)
/* 8095B65C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095B660  90 03 5E F4 */	stw r0, 0x5ef4(r3)
/* 8095B664  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8095B668  90 03 5E F8 */	stw r0, 0x5ef8(r3)
/* 8095B66C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8095B670  90 03 5E FC */	stw r0, 0x5efc(r3)
/* 8095B674  38 00 00 00 */	li r0, 0
/* 8095B678  90 03 5F 00 */	stw r0, 0x5f00(r3)
/* 8095B67C  90 03 5F 04 */	stw r0, 0x5f04(r3)
/* 8095B680  90 03 5F 08 */	stw r0, 0x5f08(r3)
/* 8095B684  90 03 5F 0C */	stw r0, 0x5f0c(r3)
/* 8095B688  90 03 5F 10 */	stw r0, 0x5f10(r3)
/* 8095B68C  90 03 5F 14 */	stw r0, 0x5f14(r3)
/* 8095B690  7F A3 EB 78 */	mr r3, r29
/* 8095B694  38 80 04 2E */	li r4, 0x42e
/* 8095B698  38 A1 00 10 */	addi r5, r1, 0x10
/* 8095B69C  4B 7F 86 81 */	bl initTalk__8daNpcF_cFiPP10fopAc_ac_c
lbl_8095B6A0:
/* 8095B6A0  83 9D 09 50 */	lwz r28, 0x950(r29)
/* 8095B6A4  7F A3 EB 78 */	mr r3, r29
/* 8095B6A8  38 81 00 0C */	addi r4, r1, 0xc
/* 8095B6AC  38 A1 00 08 */	addi r5, r1, 8
/* 8095B6B0  7F A6 EB 78 */	mr r6, r29
/* 8095B6B4  38 E0 00 00 */	li r7, 0
/* 8095B6B8  4B 7F 80 61 */	bl ctrlMsgAnm__8daNpcF_cFRiRiP10fopAc_ac_ci
/* 8095B6BC  2C 03 00 00 */	cmpwi r3, 0
/* 8095B6C0  41 82 00 4C */	beq lbl_8095B70C
/* 8095B6C4  7F A3 EB 78 */	mr r3, r29
/* 8095B6C8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8095B6CC  3C A0 80 96 */	lis r5, lit_4976@ha /* 0x8095D884@ha */
/* 8095B6D0  C0 25 D8 84 */	lfs f1, lit_4976@l(r5)  /* 0x8095D884@l */
/* 8095B6D4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095B6D8  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095B6DC  7D 89 03 A6 */	mtctr r12
/* 8095B6E0  4E 80 04 21 */	bctrl 
/* 8095B6E4  7F A3 EB 78 */	mr r3, r29
/* 8095B6E8  80 81 00 08 */	lwz r4, 8(r1)
/* 8095B6EC  3C A0 80 96 */	lis r5, lit_4976@ha /* 0x8095D884@ha */
/* 8095B6F0  C0 25 D8 84 */	lfs f1, lit_4976@l(r5)  /* 0x8095D884@l */
/* 8095B6F4  38 A0 00 00 */	li r5, 0
/* 8095B6F8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095B6FC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8095B700  7D 89 03 A6 */	mtctr r12
/* 8095B704  4E 80 04 21 */	bctrl 
/* 8095B708  48 00 00 38 */	b lbl_8095B740
lbl_8095B70C:
/* 8095B70C  2C 1C 00 00 */	cmpwi r28, 0
/* 8095B710  41 82 00 30 */	beq lbl_8095B740
/* 8095B714  80 1D 09 50 */	lwz r0, 0x950(r29)
/* 8095B718  2C 00 00 00 */	cmpwi r0, 0
/* 8095B71C  40 82 00 24 */	bne lbl_8095B740
/* 8095B720  7F A3 EB 78 */	mr r3, r29
/* 8095B724  38 80 00 07 */	li r4, 7
/* 8095B728  3C A0 80 96 */	lis r5, lit_4976@ha /* 0x8095D884@ha */
/* 8095B72C  C0 25 D8 84 */	lfs f1, lit_4976@l(r5)  /* 0x8095D884@l */
/* 8095B730  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 8095B734  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 8095B738  7D 89 03 A6 */	mtctr r12
/* 8095B73C  4E 80 04 21 */	bctrl 
lbl_8095B740:
/* 8095B740  80 9F 00 00 */	lwz r4, 0(r31)
/* 8095B744  3C 60 30 30 */	lis r3, 0x3030 /* 0x30303032@ha */
/* 8095B748  38 03 30 32 */	addi r0, r3, 0x3032 /* 0x30303032@l */
/* 8095B74C  7C 04 00 00 */	cmpw r4, r0
/* 8095B750  41 82 00 84 */	beq lbl_8095B7D4
/* 8095B754  40 80 00 CC */	bge lbl_8095B820
/* 8095B758  38 03 30 31 */	addi r0, r3, 0x3031
/* 8095B75C  7C 04 00 00 */	cmpw r4, r0
/* 8095B760  40 80 00 08 */	bge lbl_8095B768
/* 8095B764  48 00 00 BC */	b lbl_8095B820
lbl_8095B768:
/* 8095B768  7F A3 EB 78 */	mr r3, r29
/* 8095B76C  38 80 00 00 */	li r4, 0
/* 8095B770  38 A0 00 01 */	li r5, 1
/* 8095B774  38 C1 00 10 */	addi r6, r1, 0x10
/* 8095B778  4B 7F 86 0D */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 8095B77C  2C 03 00 00 */	cmpwi r3, 0
/* 8095B780  41 82 00 0C */	beq lbl_8095B78C
/* 8095B784  38 60 00 01 */	li r3, 1
/* 8095B788  48 00 00 9C */	b lbl_8095B824
lbl_8095B78C:
/* 8095B78C  38 7E 4E C8 */	addi r3, r30, 0x4ec8
/* 8095B790  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8095B794  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8095B798  80 84 4F 94 */	lwz r4, 0x4f94(r4)
/* 8095B79C  4B 6E 7B 51 */	bl convPId__14dEvt_control_cFUi
/* 8095B7A0  7C 03 E8 40 */	cmplw r3, r29
/* 8095B7A4  40 82 00 08 */	bne lbl_8095B7AC
/* 8095B7A8  38 60 00 00 */	li r3, 0
lbl_8095B7AC:
/* 8095B7AC  A8 1D 0F 5A */	lha r0, 0xf5a(r29)
/* 8095B7B0  2C 00 00 05 */	cmpwi r0, 5
/* 8095B7B4  40 82 00 10 */	bne lbl_8095B7C4
/* 8095B7B8  80 1D 0C B0 */	lwz r0, 0xcb0(r29)
/* 8095B7BC  7C 03 00 40 */	cmplw r3, r0
/* 8095B7C0  41 82 00 60 */	beq lbl_8095B820
lbl_8095B7C4:
/* 8095B7C4  38 00 00 05 */	li r0, 5
/* 8095B7C8  B0 1D 0F 5A */	sth r0, 0xf5a(r29)
/* 8095B7CC  90 7D 0C B0 */	stw r3, 0xcb0(r29)
/* 8095B7D0  48 00 00 50 */	b lbl_8095B820
lbl_8095B7D4:
/* 8095B7D4  7F A3 EB 78 */	mr r3, r29
/* 8095B7D8  38 80 00 00 */	li r4, 0
/* 8095B7DC  38 A0 00 01 */	li r5, 1
/* 8095B7E0  38 C1 00 10 */	addi r6, r1, 0x10
/* 8095B7E4  4B 7F 85 A1 */	bl talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 8095B7E8  2C 03 00 00 */	cmpwi r3, 0
/* 8095B7EC  41 82 00 0C */	beq lbl_8095B7F8
/* 8095B7F0  38 60 00 01 */	li r3, 1
/* 8095B7F4  48 00 00 30 */	b lbl_8095B824
lbl_8095B7F8:
/* 8095B7F8  A8 1D 0F 5A */	lha r0, 0xf5a(r29)
/* 8095B7FC  2C 00 00 02 */	cmpwi r0, 2
/* 8095B800  40 82 00 10 */	bne lbl_8095B810
/* 8095B804  80 1D 0C B0 */	lwz r0, 0xcb0(r29)
/* 8095B808  28 00 00 00 */	cmplwi r0, 0
/* 8095B80C  41 82 00 14 */	beq lbl_8095B820
lbl_8095B810:
/* 8095B810  38 00 00 02 */	li r0, 2
/* 8095B814  B0 1D 0F 5A */	sth r0, 0xf5a(r29)
/* 8095B818  38 00 00 00 */	li r0, 0
/* 8095B81C  90 1D 0C B0 */	stw r0, 0xcb0(r29)
lbl_8095B820:
/* 8095B820  38 60 00 00 */	li r3, 0
lbl_8095B824:
/* 8095B824  39 61 00 40 */	addi r11, r1, 0x40
/* 8095B828  4B A0 69 F9 */	bl _restgpr_27
/* 8095B82C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8095B830  7C 08 03 A6 */	mtlr r0
/* 8095B834  38 21 00 40 */	addi r1, r1, 0x40
/* 8095B838  4E 80 00 20 */	blr 
