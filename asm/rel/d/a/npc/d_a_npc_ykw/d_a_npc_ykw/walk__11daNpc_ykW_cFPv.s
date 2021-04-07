lbl_80B654CC:
/* 80B654CC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80B654D0  7C 08 02 A6 */	mflr r0
/* 80B654D4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80B654D8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80B654DC  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80B654E0  39 61 00 50 */	addi r11, r1, 0x50
/* 80B654E4  4B 7F CC F9 */	bl _savegpr_29
/* 80B654E8  7C 7E 1B 78 */	mr r30, r3
/* 80B654EC  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80B654F0  2C 00 00 02 */	cmpwi r0, 2
/* 80B654F4  41 82 00 98 */	beq lbl_80B6558C
/* 80B654F8  40 80 04 00 */	bge lbl_80B658F8
/* 80B654FC  2C 00 00 00 */	cmpwi r0, 0
/* 80B65500  40 80 00 0C */	bge lbl_80B6550C
/* 80B65504  48 00 03 F4 */	b lbl_80B658F8
/* 80B65508  48 00 03 F0 */	b lbl_80B658F8
lbl_80B6550C:
/* 80B6550C  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B65510  2C 00 00 00 */	cmpwi r0, 0
/* 80B65514  40 82 00 78 */	bne lbl_80B6558C
/* 80B65518  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B6551C  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B65520  41 82 00 28 */	beq lbl_80B65548
/* 80B65524  83 FE 0B 5C */	lwz r31, 0xb5c(r30)
/* 80B65528  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B6552C  4B 5E 03 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B65530  93 FE 0B 5C */	stw r31, 0xb5c(r30)
/* 80B65534  38 00 00 0D */	li r0, 0xd
/* 80B65538  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B6553C  3C 60 80 B6 */	lis r3, lit_5096@ha /* 0x80B67D38@ha */
/* 80B65540  C0 03 7D 38 */	lfs f0, lit_5096@l(r3)  /* 0x80B67D38@l */
/* 80B65544  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B65548:
/* 80B65548  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B6554C  2C 00 00 00 */	cmpwi r0, 0
/* 80B65550  41 82 00 28 */	beq lbl_80B65578
/* 80B65554  83 FE 0B 80 */	lwz r31, 0xb80(r30)
/* 80B65558  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B6555C  4B 5E 03 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B65560  93 FE 0B 80 */	stw r31, 0xb80(r30)
/* 80B65564  38 00 00 00 */	li r0, 0
/* 80B65568  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B6556C  3C 60 80 B6 */	lis r3, lit_5096@ha /* 0x80B67D38@ha */
/* 80B65570  C0 03 7D 38 */	lfs f0, lit_5096@l(r3)  /* 0x80B67D38@l */
/* 80B65574  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B65578:
/* 80B65578  38 00 00 00 */	li r0, 0
/* 80B6557C  90 1E 10 2C */	stw r0, 0x102c(r30)
/* 80B65580  90 1E 10 28 */	stw r0, 0x1028(r30)
/* 80B65584  38 00 00 02 */	li r0, 2
/* 80B65588  B0 1E 0E 22 */	sth r0, 0xe22(r30)
lbl_80B6558C:
/* 80B6558C  7F C3 F3 78 */	mr r3, r30
/* 80B65590  4B FF C4 7D */	bl orderGoIntoBossRoomEvt__11daNpc_ykW_cFv
/* 80B65594  2C 03 00 00 */	cmpwi r3, 0
/* 80B65598  41 82 00 2C */	beq lbl_80B655C4
/* 80B6559C  88 1E 10 66 */	lbz r0, 0x1066(r30)
/* 80B655A0  28 00 00 02 */	cmplwi r0, 2
/* 80B655A4  41 80 00 10 */	blt lbl_80B655B4
/* 80B655A8  38 00 00 04 */	li r0, 4
/* 80B655AC  B0 1E 0E 30 */	sth r0, 0xe30(r30)
/* 80B655B0  48 00 00 0C */	b lbl_80B655BC
lbl_80B655B4:
/* 80B655B4  38 00 00 05 */	li r0, 5
/* 80B655B8  B0 1E 0E 30 */	sth r0, 0xe30(r30)
lbl_80B655BC:
/* 80B655BC  38 00 00 01 */	li r0, 1
/* 80B655C0  98 1E 0E 33 */	stb r0, 0xe33(r30)
lbl_80B655C4:
/* 80B655C4  A8 1E 0D 1C */	lha r0, 0xd1c(r30)
/* 80B655C8  2C 00 00 00 */	cmpwi r0, 0
/* 80B655CC  40 82 03 2C */	bne lbl_80B658F8
/* 80B655D0  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B655D4  28 00 00 02 */	cmplwi r0, 2
/* 80B655D8  40 82 00 50 */	bne lbl_80B65628
/* 80B655DC  88 1E 10 66 */	lbz r0, 0x1066(r30)
/* 80B655E0  28 00 00 01 */	cmplwi r0, 1
/* 80B655E4  40 82 00 44 */	bne lbl_80B65628
/* 80B655E8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B655EC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80B655F0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B655F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B655F8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B655FC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B65600  38 7E 0F AC */	addi r3, r30, 0xfac
/* 80B65604  38 81 00 20 */	addi r4, r1, 0x20
/* 80B65608  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80B6560C  80 DE 0F AC */	lwz r6, 0xfac(r30)
/* 80B65610  A0 C6 00 00 */	lhz r6, 0(r6)
/* 80B65614  38 C6 FF FF */	addi r6, r6, -1
/* 80B65618  38 E0 00 03 */	li r7, 3
/* 80B6561C  4B 5E 09 99 */	bl getDstPosH__13daNpcT_Path_cF4cXyzP4cXyzii
/* 80B65620  7C 7F 1B 78 */	mr r31, r3
/* 80B65624  48 00 00 30 */	b lbl_80B65654
lbl_80B65628:
/* 80B65628  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B6562C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B65630  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B65634  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B65638  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B6563C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B65640  38 7E 0F AC */	addi r3, r30, 0xfac
/* 80B65644  38 81 00 14 */	addi r4, r1, 0x14
/* 80B65648  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80B6564C  48 00 21 7D */	bl getDstPos__13daNpcT_Path_cF4cXyzP4cXyz
/* 80B65650  7C 7F 1B 78 */	mr r31, r3
lbl_80B65654:
/* 80B65654  7F E5 FB 78 */	mr r5, r31
/* 80B65658  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B6565C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B65660  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 80B65664  28 00 00 00 */	cmplwi r0, 0
/* 80B65668  41 82 00 14 */	beq lbl_80B6567C
/* 80B6566C  80 1E 0D AC */	lwz r0, 0xdac(r30)
/* 80B65670  2C 00 FF FF */	cmpwi r0, -1
/* 80B65674  40 82 00 08 */	bne lbl_80B6567C
/* 80B65678  38 A0 00 01 */	li r5, 1
lbl_80B6567C:
/* 80B6567C  C3 FE 05 2C */	lfs f31, 0x52c(r30)
/* 80B65680  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B65684  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B65688  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B6568C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B65690  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B65694  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B65698  7F C3 F3 78 */	mr r3, r30
/* 80B6569C  38 81 00 08 */	addi r4, r1, 8
/* 80B656A0  38 C0 00 06 */	li r6, 6
/* 80B656A4  38 E0 08 00 */	li r7, 0x800
/* 80B656A8  4B 5E 61 61 */	bl calcSpeedAndAngle__8daNpcT_cF4cXyziss
/* 80B656AC  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80B656B0  FC 00 02 10 */	fabs f0, f0
/* 80B656B4  FC 00 00 18 */	frsp f0, f0
/* 80B656B8  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80B656BC  C0 23 11 80 */	lfs f1, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80B656C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B656C4  40 80 00 80 */	bge lbl_80B65744
/* 80B656C8  FC 00 FA 10 */	fabs f0, f31
/* 80B656CC  FC 00 00 18 */	frsp f0, f0
/* 80B656D0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B656D4  7C 00 00 26 */	mfcr r0
/* 80B656D8  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80B656DC  40 82 00 A0 */	bne lbl_80B6577C
/* 80B656E0  80 1E 0B 58 */	lwz r0, 0xb58(r30)
/* 80B656E4  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B656E8  41 82 00 28 */	beq lbl_80B65710
/* 80B656EC  83 BE 0B 5C */	lwz r29, 0xb5c(r30)
/* 80B656F0  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80B656F4  4B 5E 01 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B656F8  93 BE 0B 5C */	stw r29, 0xb5c(r30)
/* 80B656FC  38 00 00 0D */	li r0, 0xd
/* 80B65700  90 1E 0B 58 */	stw r0, 0xb58(r30)
/* 80B65704  3C 60 80 B6 */	lis r3, lit_5096@ha /* 0x80B67D38@ha */
/* 80B65708  C0 03 7D 38 */	lfs f0, lit_5096@l(r3)  /* 0x80B67D38@l */
/* 80B6570C  D0 1E 0B 68 */	stfs f0, 0xb68(r30)
lbl_80B65710:
/* 80B65710  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B65714  2C 00 00 00 */	cmpwi r0, 0
/* 80B65718  41 82 00 64 */	beq lbl_80B6577C
/* 80B6571C  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B65720  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B65724  4B 5E 01 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B65728  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B6572C  38 00 00 00 */	li r0, 0
/* 80B65730  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B65734  3C 60 80 B6 */	lis r3, lit_5096@ha /* 0x80B67D38@ha */
/* 80B65738  C0 03 7D 38 */	lfs f0, lit_5096@l(r3)  /* 0x80B67D38@l */
/* 80B6573C  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
/* 80B65740  48 00 00 3C */	b lbl_80B6577C
lbl_80B65744:
/* 80B65744  80 1E 0B 7C */	lwz r0, 0xb7c(r30)
/* 80B65748  2C 00 00 00 */	cmpwi r0, 0
/* 80B6574C  40 82 00 30 */	bne lbl_80B6577C
/* 80B65750  2C 00 00 14 */	cmpwi r0, 0x14
/* 80B65754  41 82 00 28 */	beq lbl_80B6577C
/* 80B65758  83 BE 0B 80 */	lwz r29, 0xb80(r30)
/* 80B6575C  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 80B65760  4B 5E 01 39 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B65764  93 BE 0B 80 */	stw r29, 0xb80(r30)
/* 80B65768  38 00 00 14 */	li r0, 0x14
/* 80B6576C  90 1E 0B 7C */	stw r0, 0xb7c(r30)
/* 80B65770  3C 60 80 B6 */	lis r3, lit_5096@ha /* 0x80B67D38@ha */
/* 80B65774  C0 03 7D 38 */	lfs f0, lit_5096@l(r3)  /* 0x80B67D38@l */
/* 80B65778  D0 1E 0B 8C */	stfs f0, 0xb8c(r30)
lbl_80B6577C:
/* 80B6577C  2C 1F 00 00 */	cmpwi r31, 0
/* 80B65780  41 82 00 8C */	beq lbl_80B6580C
/* 80B65784  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80B65788  FC 00 02 10 */	fabs f0, f0
/* 80B6578C  FC 20 00 18 */	frsp f1, f0
/* 80B65790  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha /* 0x80451180@ha */
/* 80B65794  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)  /* 0x80451180@l */
/* 80B65798  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B6579C  40 80 00 70 */	bge lbl_80B6580C
/* 80B657A0  38 00 00 00 */	li r0, 0
/* 80B657A4  98 1E 10 63 */	stb r0, 0x1063(r30)
/* 80B657A8  38 00 00 01 */	li r0, 1
/* 80B657AC  98 1E 10 64 */	stb r0, 0x1064(r30)
/* 80B657B0  88 1E 10 66 */	lbz r0, 0x1066(r30)
/* 80B657B4  28 00 00 01 */	cmplwi r0, 1
/* 80B657B8  40 82 00 54 */	bne lbl_80B6580C
/* 80B657BC  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 80B657C0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B657C4  28 04 00 FF */	cmplwi r4, 0xff
/* 80B657C8  41 82 00 3C */	beq lbl_80B65804
/* 80B657CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B657D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B657D4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B657D8  7C 05 07 74 */	extsb r5, r0
/* 80B657DC  4B 4C FB 85 */	bl isSwitch__10dSv_info_cCFii
/* 80B657E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B657E4  40 82 00 20 */	bne lbl_80B65804
/* 80B657E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B657EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B657F0  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 80B657F4  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80B657F8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80B657FC  7C 05 07 74 */	extsb r5, r0
/* 80B65800  4B 4C FA 01 */	bl onSwitch__10dSv_info_cFii
lbl_80B65804:
/* 80B65804  38 00 00 02 */	li r0, 2
/* 80B65808  98 1E 10 66 */	stb r0, 0x1066(r30)
lbl_80B6580C:
/* 80B6580C  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B65810  4B 5D FE F9 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B65814  28 03 00 00 */	cmplwi r3, 0
/* 80B65818  41 82 00 A0 */	beq lbl_80B658B8
/* 80B6581C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B65820  2C 00 00 01 */	cmpwi r0, 1
/* 80B65824  41 82 00 2C */	beq lbl_80B65850
/* 80B65828  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B6582C  4B 5D FE D1 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B65830  38 00 00 00 */	li r0, 0
/* 80B65834  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B65838  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B6583C  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B65840  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B65844  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B65848  38 00 00 01 */	li r0, 1
/* 80B6584C  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B65850:
/* 80B65850  38 00 00 00 */	li r0, 0
/* 80B65854  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B65858  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80B6585C  4B 5D FE AD */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80B65860  7C 64 1B 78 */	mr r4, r3
/* 80B65864  7F C3 F3 78 */	mr r3, r30
/* 80B65868  C0 3E 0D F8 */	lfs f1, 0xdf8(r30)
/* 80B6586C  A8 BE 0D 7A */	lha r5, 0xd7a(r30)
/* 80B65870  4B 5E 53 61 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80B65874  2C 03 00 00 */	cmpwi r3, 0
/* 80B65878  40 82 00 78 */	bne lbl_80B658F0
/* 80B6587C  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B65880  2C 00 00 00 */	cmpwi r0, 0
/* 80B65884  41 82 00 28 */	beq lbl_80B658AC
/* 80B65888  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B6588C  4B 5D FE 71 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B65890  38 00 00 00 */	li r0, 0
/* 80B65894  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B65898  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B6589C  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B658A0  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B658A4  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B658A8  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B658AC:
/* 80B658AC  38 00 00 00 */	li r0, 0
/* 80B658B0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B658B4  48 00 00 3C */	b lbl_80B658F0
lbl_80B658B8:
/* 80B658B8  80 1E 0C E0 */	lwz r0, 0xce0(r30)
/* 80B658BC  2C 00 00 00 */	cmpwi r0, 0
/* 80B658C0  41 82 00 28 */	beq lbl_80B658E8
/* 80B658C4  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80B658C8  4B 5D FE 35 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80B658CC  38 00 00 00 */	li r0, 0
/* 80B658D0  90 1E 0B C8 */	stw r0, 0xbc8(r30)
/* 80B658D4  3C 60 80 B6 */	lis r3, lit_4358@ha /* 0x80B67D18@ha */
/* 80B658D8  C0 03 7D 18 */	lfs f0, lit_4358@l(r3)  /* 0x80B67D18@l */
/* 80B658DC  D0 1E 0C F4 */	stfs f0, 0xcf4(r30)
/* 80B658E0  98 1E 0C FF */	stb r0, 0xcff(r30)
/* 80B658E4  90 1E 0C E0 */	stw r0, 0xce0(r30)
lbl_80B658E8:
/* 80B658E8  38 00 00 00 */	li r0, 0
/* 80B658EC  98 1E 0C FF */	stb r0, 0xcff(r30)
lbl_80B658F0:
/* 80B658F0  7F C3 F3 78 */	mr r3, r30
/* 80B658F4  4B 5E 5A 45 */	bl srchPlayerActor__8daNpcT_cFv
lbl_80B658F8:
/* 80B658F8  38 60 00 01 */	li r3, 1
/* 80B658FC  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80B65900  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80B65904  39 61 00 50 */	addi r11, r1, 0x50
/* 80B65908  4B 7F C9 21 */	bl _restgpr_29
/* 80B6590C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B65910  7C 08 03 A6 */	mtlr r0
/* 80B65914  38 21 00 60 */	addi r1, r1, 0x60
/* 80B65918  4E 80 00 20 */	blr 
