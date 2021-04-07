lbl_80970278:
/* 80970278  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8097027C  7C 08 02 A6 */	mflr r0
/* 80970280  90 01 00 54 */	stw r0, 0x54(r1)
/* 80970284  39 61 00 50 */	addi r11, r1, 0x50
/* 80970288  4B 9F 1F 3D */	bl _savegpr_23
/* 8097028C  7C 7F 1B 78 */	mr r31, r3
/* 80970290  7C 97 23 78 */	mr r23, r4
/* 80970294  3C 60 80 97 */	lis r3, m__17daNpc_Bou_Param_c@ha /* 0x80972860@ha */
/* 80970298  3B C3 28 60 */	addi r30, r3, m__17daNpc_Bou_Param_c@l /* 0x80972860@l */
/* 8097029C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 809702A0  4B 7D 54 69 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 809702A4  7C 7A 1B 78 */	mr r26, r3
/* 809702A8  3B 80 00 00 */	li r28, 0
/* 809702AC  3B A0 FF FF */	li r29, -1
/* 809702B0  3B 00 00 00 */	li r24, 0
/* 809702B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809702B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809702BC  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 809702C0  3B 3B 40 C0 */	addi r25, r27, 0x40c0
/* 809702C4  7F 23 CB 78 */	mr r3, r25
/* 809702C8  7E E4 BB 78 */	mr r4, r23
/* 809702CC  3C A0 80 97 */	lis r5, d_a_npc_bou__stringBase0@ha /* 0x8097299C@ha */
/* 809702D0  38 A5 29 9C */	addi r5, r5, d_a_npc_bou__stringBase0@l /* 0x8097299C@l */
/* 809702D4  38 A5 00 DA */	addi r5, r5, 0xda
/* 809702D8  38 C0 00 03 */	li r6, 3
/* 809702DC  4B 6D 7E 11 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 809702E0  28 03 00 00 */	cmplwi r3, 0
/* 809702E4  41 82 00 08 */	beq lbl_809702EC
/* 809702E8  83 A3 00 00 */	lwz r29, 0(r3)
lbl_809702EC:
/* 809702EC  7F 23 CB 78 */	mr r3, r25
/* 809702F0  7E E4 BB 78 */	mr r4, r23
/* 809702F4  3C A0 80 97 */	lis r5, d_a_npc_bou__stringBase0@ha /* 0x8097299C@ha */
/* 809702F8  38 A5 29 9C */	addi r5, r5, d_a_npc_bou__stringBase0@l /* 0x8097299C@l */
/* 809702FC  38 A5 00 EB */	addi r5, r5, 0xeb
/* 80970300  38 C0 00 03 */	li r6, 3
/* 80970304  4B 6D 7D E9 */	bl getMySubstanceP__16dEvent_manager_cFiPCci
/* 80970308  28 03 00 00 */	cmplwi r3, 0
/* 8097030C  41 82 00 08 */	beq lbl_80970314
/* 80970310  83 03 00 00 */	lwz r24, 0(r3)
lbl_80970314:
/* 80970314  7F 23 CB 78 */	mr r3, r25
/* 80970318  7E E4 BB 78 */	mr r4, r23
/* 8097031C  4B 6D 7A 31 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80970320  2C 03 00 00 */	cmpwi r3, 0
/* 80970324  41 82 04 68 */	beq lbl_8097078C
/* 80970328  2C 1D 00 03 */	cmpwi r29, 3
/* 8097032C  41 82 01 3C */	beq lbl_80970468
/* 80970330  40 80 00 1C */	bge lbl_8097034C
/* 80970334  2C 1D 00 01 */	cmpwi r29, 1
/* 80970338  41 82 00 98 */	beq lbl_809703D0
/* 8097033C  40 80 00 CC */	bge lbl_80970408
/* 80970340  2C 1D 00 00 */	cmpwi r29, 0
/* 80970344  40 80 00 18 */	bge lbl_8097035C
/* 80970348  48 00 04 44 */	b lbl_8097078C
lbl_8097034C:
/* 8097034C  2C 1D 00 05 */	cmpwi r29, 5
/* 80970350  41 82 03 D8 */	beq lbl_80970728
/* 80970354  40 80 04 38 */	bge lbl_8097078C
/* 80970358  48 00 03 A8 */	b lbl_80970700
lbl_8097035C:
/* 8097035C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80970360  2C 00 00 0A */	cmpwi r0, 0xa
/* 80970364  41 82 00 24 */	beq lbl_80970388
/* 80970368  83 1F 0B 5C */	lwz r24, 0xb5c(r31)
/* 8097036C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80970370  4B 7D 55 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80970374  93 1F 0B 5C */	stw r24, 0xb5c(r31)
/* 80970378  38 00 00 0A */	li r0, 0xa
/* 8097037C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80970380  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80970384  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80970388:
/* 80970388  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 8097038C  2C 00 00 00 */	cmpwi r0, 0
/* 80970390  41 82 00 24 */	beq lbl_809703B4
/* 80970394  83 1F 0B 80 */	lwz r24, 0xb80(r31)
/* 80970398  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8097039C  4B 7D 54 FD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809703A0  93 1F 0B 80 */	stw r24, 0xb80(r31)
/* 809703A4  38 00 00 00 */	li r0, 0
/* 809703A8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 809703AC  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809703B0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_809703B4:
/* 809703B4  7F E3 FB 78 */	mr r3, r31
/* 809703B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809703BC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809703C0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809703C4  4B 6A A3 4D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809703C8  B0 7F 0D C8 */	sth r3, 0xdc8(r31)
/* 809703CC  48 00 03 C0 */	b lbl_8097078C
lbl_809703D0:
/* 809703D0  38 60 00 0B */	li r3, 0xb
/* 809703D4  4B 7D C7 59 */	bl daNpcT_offTmpBit__FUl
/* 809703D8  38 60 00 0C */	li r3, 0xc
/* 809703DC  4B 7D C7 51 */	bl daNpcT_offTmpBit__FUl
/* 809703E0  A8 7A 04 B4 */	lha r3, 0x4b4(r26)
/* 809703E4  3C 03 00 00 */	addis r0, r3, 0
/* 809703E8  28 00 FF FF */	cmplwi r0, 0xffff
/* 809703EC  38 80 FF FF */	li r4, -1
/* 809703F0  41 82 00 08 */	beq lbl_809703F8
/* 809703F4  54 64 04 3E */	clrlwi r4, r3, 0x10
lbl_809703F8:
/* 809703F8  7F E3 FB 78 */	mr r3, r31
/* 809703FC  38 A0 00 00 */	li r5, 0
/* 80970400  4B 7D B7 F1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80970404  48 00 03 88 */	b lbl_8097078C
lbl_80970408:
/* 80970408  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 8097040C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80970410  41 82 00 24 */	beq lbl_80970434
/* 80970414  83 3F 0B 5C */	lwz r25, 0xb5c(r31)
/* 80970418  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8097041C  4B 7D 54 7D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80970420  93 3F 0B 5C */	stw r25, 0xb5c(r31)
/* 80970424  38 00 00 0A */	li r0, 0xa
/* 80970428  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 8097042C  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80970430  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80970434:
/* 80970434  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80970438  2C 00 00 00 */	cmpwi r0, 0
/* 8097043C  41 82 00 24 */	beq lbl_80970460
/* 80970440  83 3F 0B 80 */	lwz r25, 0xb80(r31)
/* 80970444  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80970448  4B 7D 54 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 8097044C  93 3F 0B 80 */	stw r25, 0xb80(r31)
/* 80970450  38 00 00 00 */	li r0, 0
/* 80970454  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80970458  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 8097045C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80970460:
/* 80970460  93 1F 0D C4 */	stw r24, 0xdc4(r31)
/* 80970464  48 00 03 28 */	b lbl_8097078C
lbl_80970468:
/* 80970468  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8097046C  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80970470  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 80970474  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80970478  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8097047C  7D 89 03 A6 */	mtctr r12
/* 80970480  4E 80 04 21 */	bctrl 
/* 80970484  28 03 00 00 */	cmplwi r3, 0
/* 80970488  41 82 01 1C */	beq lbl_809705A4
/* 8097048C  7F E3 FB 78 */	mr r3, r31
/* 80970490  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80970494  4B 7D A5 85 */	bl setAngle__8daNpcT_cFs
/* 80970498  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8097049C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 809704A0  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 809704A4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 809704A8  C0 1E 01 2C */	lfs f0, 0x12c(r30)
/* 809704AC  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809704B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809704B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809704B8  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 809704BC  4B 69 BF 21 */	bl mDoMtx_YrotS__FPA4_fs
/* 809704C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809704C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809704C8  38 81 00 1C */	addi r4, r1, 0x1c
/* 809704CC  7C 85 23 78 */	mr r5, r4
/* 809704D0  4B 9D 68 9D */	bl PSMTXMultVec
/* 809704D4  38 61 00 1C */	addi r3, r1, 0x1c
/* 809704D8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809704DC  7C 65 1B 78 */	mr r5, r3
/* 809704E0  4B 9D 6B B1 */	bl PSVECAdd
/* 809704E4  38 7F 09 30 */	addi r3, r31, 0x930
/* 809704E8  38 81 00 1C */	addi r4, r1, 0x1c
/* 809704EC  4B 8F 78 3D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 809704F0  7F 63 DB 78 */	mr r3, r27
/* 809704F4  38 9F 09 30 */	addi r4, r31, 0x930
/* 809704F8  4B 70 3F A9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 809704FC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80970500  7F 23 CB 78 */	mr r3, r25
/* 80970504  38 81 00 1C */	addi r4, r1, 0x1c
/* 80970508  4B 6D 7E BD */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 8097050C  A8 7F 0D 7A */	lha r3, 0xd7a(r31)
/* 80970510  38 03 58 00 */	addi r0, r3, 0x5800
/* 80970514  7C 04 07 34 */	extsh r4, r0
/* 80970518  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8097051C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80970520  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80970524  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80970528  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8097052C  C0 1E 01 30 */	lfs f0, 0x130(r30)
/* 80970530  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80970534  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80970538  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8097053C  4B 69 BE A1 */	bl mDoMtx_YrotS__FPA4_fs
/* 80970540  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80970544  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80970548  38 81 00 10 */	addi r4, r1, 0x10
/* 8097054C  7C 85 23 78 */	mr r5, r4
/* 80970550  4B 9D 68 1D */	bl PSMTXMultVec
/* 80970554  38 61 00 10 */	addi r3, r1, 0x10
/* 80970558  38 81 00 1C */	addi r4, r1, 0x1c
/* 8097055C  7C 65 1B 78 */	mr r5, r3
/* 80970560  4B 9D 6B 31 */	bl PSVECAdd
/* 80970564  38 7F 09 30 */	addi r3, r31, 0x930
/* 80970568  38 81 00 10 */	addi r4, r1, 0x10
/* 8097056C  4B 8F 77 BD */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 80970570  7F 63 DB 78 */	mr r3, r27
/* 80970574  38 9F 09 30 */	addi r4, r31, 0x930
/* 80970578  4B 70 3F 29 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 8097057C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80970580  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 80970584  38 81 00 10 */	addi r4, r1, 0x10
/* 80970588  A8 A1 00 0A */	lha r5, 0xa(r1)
/* 8097058C  38 C0 00 00 */	li r6, 0
/* 80970590  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80970594  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80970598  7D 89 03 A6 */	mtctr r12
/* 8097059C  4E 80 04 21 */	bctrl 
/* 809705A0  48 00 01 EC */	b lbl_8097078C
lbl_809705A4:
/* 809705A4  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 809705A8  A8 1F 0D C8 */	lha r0, 0xdc8(r31)
/* 809705AC  7C 03 00 50 */	subf r0, r3, r0
/* 809705B0  B0 01 00 0A */	sth r0, 0xa(r1)
/* 809705B4  7C 03 07 35 */	extsh. r3, r0
/* 809705B8  40 80 00 24 */	bge lbl_809705DC
/* 809705BC  4B 9F 4B 15 */	bl abs
/* 809705C0  2C 03 40 00 */	cmpwi r3, 0x4000
/* 809705C4  40 80 00 10 */	bge lbl_809705D4
/* 809705C8  38 00 00 00 */	li r0, 0
/* 809705CC  B0 01 00 0A */	sth r0, 0xa(r1)
/* 809705D0  48 00 00 0C */	b lbl_809705DC
lbl_809705D4:
/* 809705D4  38 00 80 00 */	li r0, -32768
/* 809705D8  B0 01 00 0A */	sth r0, 0xa(r1)
lbl_809705DC:
/* 809705DC  A8 61 00 0A */	lha r3, 0xa(r1)
/* 809705E0  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 809705E4  7C 03 02 14 */	add r0, r3, r0
/* 809705E8  B0 01 00 0A */	sth r0, 0xa(r1)
/* 809705EC  7F E3 FB 78 */	mr r3, r31
/* 809705F0  7C 04 07 34 */	extsh r4, r0
/* 809705F4  4B 7D A4 25 */	bl setAngle__8daNpcT_cFs
/* 809705F8  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 809705FC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80970600  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80970604  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80970608  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8097060C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80970610  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80970614  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 80970618  4B 69 BD C5 */	bl mDoMtx_YrotS__FPA4_fs
/* 8097061C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80970620  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80970624  38 81 00 1C */	addi r4, r1, 0x1c
/* 80970628  7C 85 23 78 */	mr r5, r4
/* 8097062C  4B 9D 67 41 */	bl PSMTXMultVec
/* 80970630  38 61 00 1C */	addi r3, r1, 0x1c
/* 80970634  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80970638  7C 65 1B 78 */	mr r5, r3
/* 8097063C  4B 9D 6A 55 */	bl PSVECAdd
/* 80970640  38 7F 09 30 */	addi r3, r31, 0x930
/* 80970644  38 81 00 1C */	addi r4, r1, 0x1c
/* 80970648  4B 8F 76 E1 */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 8097064C  7F 63 DB 78 */	mr r3, r27
/* 80970650  38 9F 09 30 */	addi r4, r31, 0x930
/* 80970654  4B 70 3E 4D */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 80970658  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8097065C  80 7A 5D AC */	lwz r3, 0x5dac(r26)
/* 80970660  38 81 00 1C */	addi r4, r1, 0x1c
/* 80970664  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80970668  3C A5 00 01 */	addis r5, r5, 1
/* 8097066C  38 05 80 00 */	addi r0, r5, -32768
/* 80970670  7C 05 07 34 */	extsh r5, r0
/* 80970674  38 C0 00 00 */	li r6, 0
/* 80970678  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8097067C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80970680  7D 89 03 A6 */	mtctr r12
/* 80970684  4E 80 04 21 */	bctrl 
/* 80970688  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8097068C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80970690  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80970694  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80970698  C0 1E 01 34 */	lfs f0, 0x134(r30)
/* 8097069C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809706A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809706A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809706A8  A8 9F 0D 7A */	lha r4, 0xd7a(r31)
/* 809706AC  4B 69 BD 31 */	bl mDoMtx_YrotS__FPA4_fs
/* 809706B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 809706B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 809706B8  38 81 00 1C */	addi r4, r1, 0x1c
/* 809706BC  7C 85 23 78 */	mr r5, r4
/* 809706C0  4B 9D 66 AD */	bl PSMTXMultVec
/* 809706C4  38 61 00 1C */	addi r3, r1, 0x1c
/* 809706C8  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 809706CC  7C 65 1B 78 */	mr r5, r3
/* 809706D0  4B 9D 69 C1 */	bl PSVECAdd
/* 809706D4  38 7F 09 30 */	addi r3, r31, 0x930
/* 809706D8  38 81 00 1C */	addi r4, r1, 0x1c
/* 809706DC  4B 8F 76 4D */	bl SetPos__11cBgS_GndChkFPC4cXyz
/* 809706E0  7F 63 DB 78 */	mr r3, r27
/* 809706E4  38 9F 09 30 */	addi r4, r31, 0x930
/* 809706E8  4B 70 3D B9 */	bl GroundCross__4cBgSFP11cBgS_GndChk
/* 809706EC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 809706F0  7F 23 CB 78 */	mr r3, r25
/* 809706F4  38 81 00 1C */	addi r4, r1, 0x1c
/* 809706F8  4B 6D 7C CD */	bl setGoal__16dEvent_manager_cFP4cXyz
/* 809706FC  48 00 00 90 */	b lbl_8097078C
lbl_80970700:
/* 80970700  A8 7A 04 B4 */	lha r3, 0x4b4(r26)
/* 80970704  3C 03 00 00 */	addis r0, r3, 0
/* 80970708  28 00 FF FF */	cmplwi r0, 0xffff
/* 8097070C  38 80 FF FF */	li r4, -1
/* 80970710  41 82 00 08 */	beq lbl_80970718
/* 80970714  54 64 04 3E */	clrlwi r4, r3, 0x10
lbl_80970718:
/* 80970718  7F E3 FB 78 */	mr r3, r31
/* 8097071C  38 A0 00 00 */	li r5, 0
/* 80970720  4B 7D B4 D1 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
/* 80970724  48 00 00 68 */	b lbl_8097078C
lbl_80970728:
/* 80970728  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 8097072C  2C 00 00 00 */	cmpwi r0, 0
/* 80970730  41 82 00 24 */	beq lbl_80970754
/* 80970734  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80970738  4B 7D 4F C5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 8097073C  38 00 00 00 */	li r0, 0
/* 80970740  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80970744  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80970748  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 8097074C  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80970750  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80970754:
/* 80970754  38 00 00 00 */	li r0, 0
/* 80970758  B0 1F 0C D4 */	sth r0, 0xcd4(r31)
/* 8097075C  B0 1F 0C D6 */	sth r0, 0xcd6(r31)
/* 80970760  38 00 00 01 */	li r0, 1
/* 80970764  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80970768  A8 7A 04 B4 */	lha r3, 0x4b4(r26)
/* 8097076C  3C 03 00 00 */	addis r0, r3, 0
/* 80970770  28 00 FF FF */	cmplwi r0, 0xffff
/* 80970774  38 80 FF FF */	li r4, -1
/* 80970778  41 82 00 08 */	beq lbl_80970780
/* 8097077C  54 64 04 3E */	clrlwi r4, r3, 0x10
lbl_80970780:
/* 80970780  7F E3 FB 78 */	mr r3, r31
/* 80970784  38 A0 00 00 */	li r5, 0
/* 80970788  4B 7D B4 69 */	bl initTalk__8daNpcT_cFiPP10fopAc_ac_c
lbl_8097078C:
/* 8097078C  2C 1D 00 02 */	cmpwi r29, 2
/* 80970790  41 82 01 0C */	beq lbl_8097089C
/* 80970794  40 80 00 14 */	bge lbl_809707A8
/* 80970798  2C 1D 00 00 */	cmpwi r29, 0
/* 8097079C  41 82 00 20 */	beq lbl_809707BC
/* 809707A0  40 80 00 90 */	bge lbl_80970830
/* 809707A4  48 00 02 2C */	b lbl_809709D0
lbl_809707A8:
/* 809707A8  2C 1D 00 06 */	cmpwi r29, 6
/* 809707AC  40 80 02 24 */	bge lbl_809709D0
/* 809707B0  2C 1D 00 04 */	cmpwi r29, 4
/* 809707B4  40 80 01 40 */	bge lbl_809708F4
/* 809707B8  48 00 01 34 */	b lbl_809708EC
lbl_809707BC:
/* 809707BC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809707C0  2C 00 00 01 */	cmpwi r0, 1
/* 809707C4  41 82 00 28 */	beq lbl_809707EC
/* 809707C8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809707CC  4B 7D 4F 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809707D0  38 00 00 00 */	li r0, 0
/* 809707D4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809707D8  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 809707DC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809707E0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809707E4  38 00 00 01 */	li r0, 1
/* 809707E8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809707EC:
/* 809707EC  38 00 00 00 */	li r0, 0
/* 809707F0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809707F4  A8 7F 0D C8 */	lha r3, 0xdc8(r31)
/* 809707F8  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 809707FC  7C 03 00 00 */	cmpw r3, r0
/* 80970800  40 82 00 0C */	bne lbl_8097080C
/* 80970804  3B 80 00 01 */	li r28, 1
/* 80970808  48 00 01 C8 */	b lbl_809709D0
lbl_8097080C:
/* 8097080C  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 80970810  7F E3 FB 78 */	mr r3, r31
/* 80970814  A8 9F 0D C8 */	lha r4, 0xdc8(r31)
/* 80970818  38 A0 00 0A */	li r5, 0xa
/* 8097081C  38 C0 00 13 */	li r6, 0x13
/* 80970820  38 E0 00 0F */	li r7, 0xf
/* 80970824  39 00 00 00 */	li r8, 0
/* 80970828  4B 7D AE 21 */	bl step__8daNpcT_cFsiiii
/* 8097082C  48 00 01 A4 */	b lbl_809709D0
lbl_80970830:
/* 80970830  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80970834  2C 00 00 01 */	cmpwi r0, 1
/* 80970838  41 82 00 28 */	beq lbl_80970860
/* 8097083C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80970840  4B 7D 4E BD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80970844  38 00 00 00 */	li r0, 0
/* 80970848  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8097084C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80970850  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80970854  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80970858  38 00 00 01 */	li r0, 1
/* 8097085C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80970860:
/* 80970860  38 00 00 00 */	li r0, 0
/* 80970864  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80970868  7F E3 FB 78 */	mr r3, r31
/* 8097086C  38 80 00 00 */	li r4, 0
/* 80970870  38 A0 00 00 */	li r5, 0
/* 80970874  38 C0 00 00 */	li r6, 0
/* 80970878  38 E0 00 00 */	li r7, 0
/* 8097087C  4B 7D B3 FD */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80970880  2C 03 00 00 */	cmpwi r3, 0
/* 80970884  41 82 01 4C */	beq lbl_809709D0
/* 80970888  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 8097088C  28 00 00 01 */	cmplwi r0, 1
/* 80970890  40 82 01 40 */	bne lbl_809709D0
/* 80970894  3B 80 00 01 */	li r28, 1
/* 80970898  48 00 01 38 */	b lbl_809709D0
lbl_8097089C:
/* 8097089C  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809708A0  2C 00 00 01 */	cmpwi r0, 1
/* 809708A4  41 82 00 28 */	beq lbl_809708CC
/* 809708A8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 809708AC  4B 7D 4E 51 */	bl remove__18daNpcT_ActorMngr_cFv
/* 809708B0  38 00 00 00 */	li r0, 0
/* 809708B4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 809708B8  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 809708BC  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 809708C0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809708C4  38 00 00 01 */	li r0, 1
/* 809708C8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_809708CC:
/* 809708CC  38 00 00 00 */	li r0, 0
/* 809708D0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 809708D4  38 7F 0D C4 */	addi r3, r31, 0xdc4
/* 809708D8  48 00 1C B5 */	bl func_8097258C
/* 809708DC  2C 03 00 00 */	cmpwi r3, 0
/* 809708E0  40 82 00 F0 */	bne lbl_809709D0
/* 809708E4  3B 80 00 01 */	li r28, 1
/* 809708E8  48 00 00 E8 */	b lbl_809709D0
lbl_809708EC:
/* 809708EC  3B 80 00 01 */	li r28, 1
/* 809708F0  48 00 00 E0 */	b lbl_809709D0
lbl_809708F4:
/* 809708F4  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 809708F8  2C 00 00 00 */	cmpwi r0, 0
/* 809708FC  41 82 00 24 */	beq lbl_80970920
/* 80970900  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80970904  4B 7D 4D F9 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80970908  38 00 00 00 */	li r0, 0
/* 8097090C  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80970910  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80970914  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80970918  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 8097091C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80970920:
/* 80970920  38 00 00 00 */	li r0, 0
/* 80970924  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80970928  2C 1D 00 04 */	cmpwi r29, 4
/* 8097092C  40 82 00 3C */	bne lbl_80970968
/* 80970930  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80970934  2C 00 00 01 */	cmpwi r0, 1
/* 80970938  41 82 00 28 */	beq lbl_80970960
/* 8097093C  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80970940  4B 7D 4D BD */	bl remove__18daNpcT_ActorMngr_cFv
/* 80970944  38 00 00 00 */	li r0, 0
/* 80970948  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 8097094C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80970950  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80970954  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80970958  38 00 00 01 */	li r0, 1
/* 8097095C  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80970960:
/* 80970960  38 00 00 00 */	li r0, 0
/* 80970964  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80970968:
/* 80970968  7F E3 FB 78 */	mr r3, r31
/* 8097096C  38 80 00 00 */	li r4, 0
/* 80970970  38 A0 00 00 */	li r5, 0
/* 80970974  38 C0 00 00 */	li r6, 0
/* 80970978  38 E0 00 00 */	li r7, 0
/* 8097097C  4B 7D B2 FD */	bl talkProc__8daNpcT_cFPiiPP10fopAc_ac_ci
/* 80970980  2C 03 00 00 */	cmpwi r3, 0
/* 80970984  41 82 00 4C */	beq lbl_809709D0
/* 80970988  88 1F 09 9A */	lbz r0, 0x99a(r31)
/* 8097098C  28 00 00 01 */	cmplwi r0, 1
/* 80970990  40 82 00 40 */	bne lbl_809709D0
/* 80970994  2C 1D 00 04 */	cmpwi r29, 4
/* 80970998  40 82 00 34 */	bne lbl_809709CC
/* 8097099C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809709A0  7C 18 07 74 */	extsb r24, r0
/* 809709A4  38 60 00 00 */	li r3, 0
/* 809709A8  4B 6B BF D5 */	bl getLayerNo__14dComIfG_play_cFi
/* 809709AC  7C 67 1B 78 */	mr r7, r3
/* 809709B0  38 60 00 18 */	li r3, 0x18
/* 809709B4  C0 3E 00 C8 */	lfs f1, 0xc8(r30)
/* 809709B8  38 80 00 00 */	li r4, 0
/* 809709BC  7F 05 C3 78 */	mr r5, r24
/* 809709C0  38 C0 00 00 */	li r6, 0
/* 809709C4  4B 6B 67 AD */	bl dStage_changeScene__FifUlScsi
/* 809709C8  48 00 00 08 */	b lbl_809709D0
lbl_809709CC:
/* 809709CC  3B 80 00 01 */	li r28, 1
lbl_809709D0:
/* 809709D0  7F 83 E3 78 */	mr r3, r28
/* 809709D4  39 61 00 50 */	addi r11, r1, 0x50
/* 809709D8  4B 9F 18 39 */	bl _restgpr_23
/* 809709DC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 809709E0  7C 08 03 A6 */	mtlr r0
/* 809709E4  38 21 00 50 */	addi r1, r1, 0x50
/* 809709E8  4E 80 00 20 */	blr 
