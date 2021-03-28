lbl_8096F510:
/* 8096F510  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8096F514  7C 08 02 A6 */	mflr r0
/* 8096F518  90 01 00 24 */	stw r0, 0x24(r1)
/* 8096F51C  39 61 00 20 */	addi r11, r1, 0x20
/* 8096F520  4B 9F 2C B4 */	b _savegpr_27
/* 8096F524  7C 7D 1B 78 */	mr r29, r3
/* 8096F528  7C 9B 23 78 */	mr r27, r4
/* 8096F52C  3B E0 00 00 */	li r31, 0
/* 8096F530  3B C0 FF FF */	li r30, -1
/* 8096F534  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8096F538  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8096F53C  3B 83 4F F8 */	addi r28, r3, 0x4ff8
/* 8096F540  7F 83 E3 78 */	mr r3, r28
/* 8096F544  3C A0 80 97 */	lis r5, struct_8097299C+0x0@ha
/* 8096F548  38 A5 29 9C */	addi r5, r5, struct_8097299C+0x0@l
/* 8096F54C  38 A5 00 DA */	addi r5, r5, 0xda
/* 8096F550  38 C0 00 03 */	li r6, 3
/* 8096F554  4B 6D 8B 98 */	b getMySubstanceP__16dEvent_manager_cFiPCci
/* 8096F558  28 03 00 00 */	cmplwi r3, 0
/* 8096F55C  41 82 00 08 */	beq lbl_8096F564
/* 8096F560  83 C3 00 00 */	lwz r30, 0(r3)
lbl_8096F564:
/* 8096F564  7F 83 E3 78 */	mr r3, r28
/* 8096F568  7F 64 DB 78 */	mr r4, r27
/* 8096F56C  4B 6D 87 E0 */	b getIsAddvance__16dEvent_manager_cFi
/* 8096F570  2C 03 00 00 */	cmpwi r3, 0
/* 8096F574  41 82 00 B8 */	beq lbl_8096F62C
/* 8096F578  2C 1E 00 01 */	cmpwi r30, 1
/* 8096F57C  41 82 00 38 */	beq lbl_8096F5B4
/* 8096F580  40 80 00 AC */	bge lbl_8096F62C
/* 8096F584  2C 1E 00 00 */	cmpwi r30, 0
/* 8096F588  40 80 00 0C */	bge lbl_8096F594
/* 8096F58C  48 00 00 A0 */	b lbl_8096F62C
/* 8096F590  48 00 00 9C */	b lbl_8096F62C
lbl_8096F594:
/* 8096F594  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8096F598  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8096F59C  80 63 00 00 */	lwz r3, 0(r3)
/* 8096F5A0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8096F5A4  4B 94 02 E0 */	b subBgmStop__8Z2SeqMgrFv
/* 8096F5A8  38 60 00 1C */	li r3, 0x1c
/* 8096F5AC  4B 7D D5 40 */	b daNpcT_onTmpBit__FUl
/* 8096F5B0  48 00 00 7C */	b lbl_8096F62C
lbl_8096F5B4:
/* 8096F5B4  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 8096F5B8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8096F5BC  41 82 00 28 */	beq lbl_8096F5E4
/* 8096F5C0  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 8096F5C4  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 8096F5C8  4B 7D 62 D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096F5CC  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 8096F5D0  38 00 00 0A */	li r0, 0xa
/* 8096F5D4  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 8096F5D8  3C 60 80 97 */	lis r3, lit_4758@ha
/* 8096F5DC  C0 03 29 40 */	lfs f0, lit_4758@l(r3)
/* 8096F5E0  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_8096F5E4:
/* 8096F5E4  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 8096F5E8  2C 00 00 00 */	cmpwi r0, 0
/* 8096F5EC  41 82 00 28 */	beq lbl_8096F614
/* 8096F5F0  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 8096F5F4  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 8096F5F8  4B 7D 62 A0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096F5FC  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 8096F600  38 00 00 00 */	li r0, 0
/* 8096F604  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 8096F608  3C 60 80 97 */	lis r3, lit_4758@ha
/* 8096F60C  C0 03 29 40 */	lfs f0, lit_4758@l(r3)
/* 8096F610  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_8096F614:
/* 8096F614  7F A3 EB 78 */	mr r3, r29
/* 8096F618  80 9D 0A 7C */	lwz r4, 0xa7c(r29)
/* 8096F61C  38 A0 00 00 */	li r5, 0
/* 8096F620  4B 7D C5 D0 */	b initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 8096F624  38 00 00 00 */	li r0, 0
/* 8096F628  98 1D 0F F4 */	stb r0, 0xff4(r29)
lbl_8096F62C:
/* 8096F62C  2C 1E 00 01 */	cmpwi r30, 1
/* 8096F630  41 82 00 28 */	beq lbl_8096F658
/* 8096F634  40 80 00 10 */	bge lbl_8096F644
/* 8096F638  2C 1E 00 00 */	cmpwi r30, 0
/* 8096F63C  40 80 00 14 */	bge lbl_8096F650
/* 8096F640  48 00 00 FC */	b lbl_8096F73C
lbl_8096F644:
/* 8096F644  2C 1E 00 03 */	cmpwi r30, 3
/* 8096F648  40 80 00 F4 */	bge lbl_8096F73C
/* 8096F64C  48 00 00 7C */	b lbl_8096F6C8
lbl_8096F650:
/* 8096F650  3B E0 00 01 */	li r31, 1
/* 8096F654  48 00 00 E8 */	b lbl_8096F73C
lbl_8096F658:
/* 8096F658  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8096F65C  2C 00 00 01 */	cmpwi r0, 1
/* 8096F660  41 82 00 2C */	beq lbl_8096F68C
/* 8096F664  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8096F668  4B 7D 60 94 */	b remove__18daNpcT_ActorMngr_cFv
/* 8096F66C  38 00 00 00 */	li r0, 0
/* 8096F670  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8096F674  3C 60 80 97 */	lis r3, lit_4328@ha
/* 8096F678  C0 03 29 28 */	lfs f0, lit_4328@l(r3)
/* 8096F67C  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8096F680  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8096F684  38 00 00 01 */	li r0, 1
/* 8096F688  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8096F68C:
/* 8096F68C  38 00 00 00 */	li r0, 0
/* 8096F690  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8096F694  A8 9D 0D C8 */	lha r4, 0xdc8(r29)
/* 8096F698  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 8096F69C  7C 04 00 00 */	cmpw r4, r0
/* 8096F6A0  40 82 00 0C */	bne lbl_8096F6AC
/* 8096F6A4  3B E0 00 01 */	li r31, 1
/* 8096F6A8  48 00 00 94 */	b lbl_8096F73C
lbl_8096F6AC:
/* 8096F6AC  7F A3 EB 78 */	mr r3, r29
/* 8096F6B0  38 A0 00 0A */	li r5, 0xa
/* 8096F6B4  38 C0 00 12 */	li r6, 0x12
/* 8096F6B8  38 E0 00 0F */	li r7, 0xf
/* 8096F6BC  39 00 00 00 */	li r8, 0
/* 8096F6C0  4B 7D BF 88 */	b step__8daNpcT_cFsiiii
/* 8096F6C4  48 00 00 78 */	b lbl_8096F73C
lbl_8096F6C8:
/* 8096F6C8  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 8096F6CC  2C 00 00 01 */	cmpwi r0, 1
/* 8096F6D0  41 82 00 2C */	beq lbl_8096F6FC
/* 8096F6D4  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 8096F6D8  4B 7D 60 24 */	b remove__18daNpcT_ActorMngr_cFv
/* 8096F6DC  38 00 00 00 */	li r0, 0
/* 8096F6E0  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 8096F6E4  3C 60 80 97 */	lis r3, lit_4328@ha
/* 8096F6E8  C0 03 29 28 */	lfs f0, lit_4328@l(r3)
/* 8096F6EC  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 8096F6F0  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8096F6F4  38 00 00 01 */	li r0, 1
/* 8096F6F8  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_8096F6FC:
/* 8096F6FC  38 00 00 00 */	li r0, 0
/* 8096F700  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 8096F704  7F A3 EB 78 */	mr r3, r29
/* 8096F708  38 80 00 00 */	li r4, 0
/* 8096F70C  38 A0 00 00 */	li r5, 0
/* 8096F710  38 C0 00 00 */	li r6, 0
/* 8096F714  38 E0 00 00 */	li r7, 0
/* 8096F718  4B 7D C5 60 */	b talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 8096F71C  2C 03 00 00 */	cmpwi r3, 0
/* 8096F720  41 82 00 1C */	beq lbl_8096F73C
/* 8096F724  88 1D 09 9A */	lbz r0, 0x99a(r29)
/* 8096F728  28 00 00 01 */	cmplwi r0, 1
/* 8096F72C  40 82 00 10 */	bne lbl_8096F73C
/* 8096F730  38 60 00 1C */	li r3, 0x1c
/* 8096F734  4B 7D D3 F8 */	b daNpcT_offTmpBit__FUl
/* 8096F738  3B E0 00 01 */	li r31, 1
lbl_8096F73C:
/* 8096F73C  7F E3 FB 78 */	mr r3, r31
/* 8096F740  39 61 00 20 */	addi r11, r1, 0x20
/* 8096F744  4B 9F 2A DC */	b _restgpr_27
/* 8096F748  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8096F74C  7C 08 03 A6 */	mtlr r0
/* 8096F750  38 21 00 20 */	addi r1, r1, 0x20
/* 8096F754  4E 80 00 20 */	blr 
