lbl_8096F2E4:
/* 8096F2E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096F2E8  7C 08 02 A6 */	mflr r0
/* 8096F2EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096F2F0  39 61 00 20 */	addi r11, r1, 0x20
/* 8096F2F4  4B 9F 2E E1 */	bl _savegpr_27
/* 8096F2F8  7C 7D 1B 78 */	mr r29, r3
/* 8096F2FC  7C 9B 23 78 */	mr r27, r4
/* 8096F300  3B E0 00 00 */	li r31, 0
/* 8096F304  3B C0 FF FF */	li r30, -1
/* 8096F308  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8096F30C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8096F310  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 8096F314  7F 83 E3 78 */	mr r3, r28
/* 8096F318  3C A0 80 97 */	lis r5, d_a_npc_bou__stringBase0@ha /* 0x8097299C@ha */
/* 8096F31C  38 A5 29 9C */	addi r5, r5, d_a_npc_bou__stringBase0@l /* 0x8097299C@l */
/* 8096F320  38 A5 00 DA */	addi r5, r5, 0xda
/* 8096F324  38 C0 00 03 */	li r6, 3
/* 8096F328  4B 6D 8D C5 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 8096F32C  28 03 00 00 */	cmplwi r3, 0
/* 8096F330  41 82 00 08 */	beq lbl_8096F338
/* 8096F334  83 C3 00 00 */	lwz r30, 0(r3)
lbl_8096F338:
/* 8096F338  7F 83 E3 78 */	mr r3, r28
/* 8096F33C  7F 64 DB 78 */	mr r4, r27
/* 8096F340  4B 6D 8A 0D */	bl getIsAddvance__16dEvent_manager_cFi
/* 8096F344  2C 03 00 00 */	cmpwi r3, 0
/* 8096F348  41 82 00 B0 */	beq lbl_8096F3F8
/* 8096F34C  2C 1E 00 01 */	cmpwi r30, 1
/* 8096F350  41 82 00 A8 */	beq lbl_8096F3F8
/* 8096F354  40 80 00 A4 */	bge lbl_8096F3F8
/* 8096F358  2C 1E 00 00 */	cmpwi r30, 0
/* 8096F35C  40 80 00 08 */	bge lbl_8096F364
/* 8096F360  48 00 00 98 */	b lbl_8096F3F8
lbl_8096F364:
/* 8096F364  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 8096F368  2C 00 00 0A */	cmpwi r0, 0xa
/* 8096F36C  41 82 00 28 */	beq lbl_8096F394
/* 8096F370  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 8096F374  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8096F378  4B 7D 65 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096F37C  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8096F380  38 00 00 0A */	li r0, 0xa
/* 8096F384  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8096F388  3C 60 80 97 */	lis r3, lit_4758@ha /* 0x80972940@ha */
/* 8096F38C  C0 03 29 40 */	lfs f0, lit_4758@l(r3)  /* 0x80972940@l */
/* 8096F390  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_8096F394:
/* 8096F394  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 8096F398  2C 00 00 00 */	cmpwi r0, 0
/* 8096F39C  41 82 00 28 */	beq lbl_8096F3C4
/* 8096F3A0  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8096F3A4  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8096F3A8  4B 7D 64 F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096F3AC  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8096F3B0  38 00 00 00 */	li r0, 0
/* 8096F3B4  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8096F3B8  3C 60 80 97 */	lis r3, lit_4758@ha /* 0x80972940@ha */
/* 8096F3BC  C0 03 29 40 */	lfs f0, lit_4758@l(r3)  /* 0x80972940@l */
/* 8096F3C0  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_8096F3C4:
/* 8096F3C4  7F A3 EB 78 */	mr r3, r29
/* 8096F3C8  80 9D 0A 7C */	lwz r4, 0xa7c(r29)
/* 8096F3CC  38 A0 00 00 */	li r5, 0
/* 8096F3D0  4B 7D C8 21 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8096F3D4  38 00 00 00 */	li r0, 0
/* 8096F3D8  98 1D 0F F4 */	stb r0, 0xff4(r29)
/* 8096F3DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8096F3E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8096F3E4  80 63 00 00 */	lwz r3, 0(r3)
/* 8096F3E8  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8096F3EC  4B 94 04 99 */	bl subBgmStop__8Z2SeqMgrFv
/* 8096F3F0  38 60 00 1C */	li r3, 0x1c
/* 8096F3F4  4B 7D D6 F9 */	bl daNpcT_onTmpBit__FUl
lbl_8096F3F8:
/* 8096F3F8  2C 1E 00 01 */	cmpwi r30, 1
/* 8096F3FC  41 82 00 84 */	beq lbl_8096F480
/* 8096F400  40 80 00 F4 */	bge lbl_8096F4F4
/* 8096F404  2C 1E 00 00 */	cmpwi r30, 0
/* 8096F408  40 80 00 08 */	bge lbl_8096F410
/* 8096F40C  48 00 00 E8 */	b lbl_8096F4F4
lbl_8096F410:
/* 8096F410  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8096F414  2C 00 00 01 */	cmpwi r0, 1
/* 8096F418  41 82 00 2C */	beq lbl_8096F444
/* 8096F41C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8096F420  4B 7D 62 DD */	bl remove__18daNpcT_ActorMngr_cFv
/* 8096F424  38 00 00 00 */	li r0, 0
/* 8096F428  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8096F42C  3C 60 80 97 */	lis r3, lit_4328@ha /* 0x80972928@ha */
/* 8096F430  C0 03 29 28 */	lfs f0, lit_4328@l(r3)  /* 0x80972928@l */
/* 8096F434  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8096F438  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8096F43C  38 00 00 01 */	li r0, 1
/* 8096F440  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8096F444:
/* 8096F444  38 00 00 00 */	li r0, 0
/* 8096F448  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8096F44C  A8 9D 0D C8 */	lha r4, 0xdc8(r29)
/* 8096F450  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 8096F454  7C 04 00 00 */	cmpw r4, r0
/* 8096F458  40 82 00 0C */	bne lbl_8096F464
/* 8096F45C  3B E0 00 01 */	li r31, 1
/* 8096F460  48 00 00 94 */	b lbl_8096F4F4
lbl_8096F464:
/* 8096F464  7F A3 EB 78 */	mr r3, r29
/* 8096F468  38 A0 00 0A */	li r5, 0xa
/* 8096F46C  38 C0 00 12 */	li r6, 0x12
/* 8096F470  38 E0 00 0F */	li r7, 0xf
/* 8096F474  39 00 00 00 */	li r8, 0
/* 8096F478  4B 7D C1 D1 */	bl step__8daNpcT_cFsiiii
/* 8096F47C  48 00 00 78 */	b lbl_8096F4F4
lbl_8096F480:
/* 8096F480  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8096F484  2C 00 00 01 */	cmpwi r0, 1
/* 8096F488  41 82 00 2C */	beq lbl_8096F4B4
/* 8096F48C  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8096F490  4B 7D 62 6D */	bl remove__18daNpcT_ActorMngr_cFv
/* 8096F494  38 00 00 00 */	li r0, 0
/* 8096F498  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8096F49C  3C 60 80 97 */	lis r3, lit_4328@ha /* 0x80972928@ha */
/* 8096F4A0  C0 03 29 28 */	lfs f0, lit_4328@l(r3)  /* 0x80972928@l */
/* 8096F4A4  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8096F4A8  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8096F4AC  38 00 00 01 */	li r0, 1
/* 8096F4B0  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8096F4B4:
/* 8096F4B4  38 00 00 00 */	li r0, 0
/* 8096F4B8  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8096F4BC  7F A3 EB 78 */	mr r3, r29
/* 8096F4C0  38 80 00 00 */	li r4, 0
/* 8096F4C4  38 A0 00 00 */	li r5, 0
/* 8096F4C8  38 C0 00 00 */	li r6, 0
/* 8096F4CC  38 E0 00 00 */	li r7, 0
/* 8096F4D0  4B 7D C7 A9 */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8096F4D4  2C 03 00 00 */	cmpwi r3, 0
/* 8096F4D8  41 82 00 1C */	beq lbl_8096F4F4
/* 8096F4DC  88 1D 09 9A */	lbz r0, 0x99a(r29)
/* 8096F4E0  28 00 00 01 */	cmplwi r0, 1
/* 8096F4E4  40 82 00 10 */	bne lbl_8096F4F4
/* 8096F4E8  38 60 00 1C */	li r3, 0x1c
/* 8096F4EC  4B 7D D6 41 */	bl daNpcT_offTmpBit__FUl
/* 8096F4F0  3B E0 00 01 */	li r31, 1
lbl_8096F4F4:
/* 8096F4F4  7F E3 FB 78 */	mr r3, r31
/* 8096F4F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8096F4FC  4B 9F 2D 25 */	bl _restgpr_27
/* 8096F500  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096F504  7C 08 03 A6 */	mtlr r0
/* 8096F508  38 21 00 20 */	addi r1, r1, 0x20
/* 8096F50C  4E 80 00 20 */	blr 
