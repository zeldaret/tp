lbl_80570270:
/* 80570270  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570274  7C 08 02 A6 */	mflr r0
/* 80570278  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057027C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80570280  93 C1 00 08 */	stw r30, 8(r1)
/* 80570284  7C 7E 1B 79 */	or. r30, r3, r3
/* 80570288  7C 9F 23 78 */	mr r31, r4
/* 8057028C  41 82 03 50 */	beq lbl_805705DC
/* 80570290  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80570294  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80570298  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 8057029C  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 805702A0  41 82 00 1C */	beq lbl_805702BC
/* 805702A4  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 805702A8  3C 80 80 57 */	lis r4, __dt__5csXyzFv@ha
/* 805702AC  38 84 06 34 */	addi r4, r4, __dt__5csXyzFv@l
/* 805702B0  38 A0 00 06 */	li r5, 6
/* 805702B4  38 C0 00 02 */	li r6, 2
/* 805702B8  4B DF 1A 30 */	b __destroy_arr
lbl_805702BC:
/* 805702BC  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 805702C0  41 82 00 B4 */	beq lbl_80570374
/* 805702C4  3C 60 80 57 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 805702C8  38 03 34 64 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 805702CC  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 805702D0  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 805702D4  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha
/* 805702D8  38 84 05 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 805702DC  38 A0 00 0C */	li r5, 0xc
/* 805702E0  38 C0 00 03 */	li r6, 3
/* 805702E4  4B DF 1A 04 */	b __destroy_arr
/* 805702E8  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 805702EC  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha
/* 805702F0  38 84 05 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 805702F4  38 A0 00 0C */	li r5, 0xc
/* 805702F8  38 C0 00 03 */	li r6, 3
/* 805702FC  4B DF 19 EC */	b __destroy_arr
/* 80570300  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80570304  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha
/* 80570308  38 84 05 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 8057030C  38 A0 00 0C */	li r5, 0xc
/* 80570310  38 C0 00 03 */	li r6, 3
/* 80570314  4B DF 19 D4 */	b __destroy_arr
/* 80570318  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 8057031C  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha
/* 80570320  38 84 05 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80570324  38 A0 00 0C */	li r5, 0xc
/* 80570328  38 C0 00 03 */	li r6, 3
/* 8057032C  4B DF 19 BC */	b __destroy_arr
/* 80570330  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80570334  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha
/* 80570338  38 84 05 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 8057033C  38 A0 00 0C */	li r5, 0xc
/* 80570340  38 C0 00 03 */	li r6, 3
/* 80570344  4B DF 19 A4 */	b __destroy_arr
/* 80570348  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 8057034C  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha
/* 80570350  38 84 05 F8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80570354  38 A0 00 0C */	li r5, 0xc
/* 80570358  38 C0 00 03 */	li r6, 3
/* 8057035C  4B DF 19 8C */	b __destroy_arr
/* 80570360  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80570364  41 82 00 10 */	beq lbl_80570374
/* 80570368  3C 60 80 57 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8057036C  38 03 34 58 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80570370  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80570374:
/* 80570374  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80570378  41 82 00 10 */	beq lbl_80570388
/* 8057037C  3C 60 80 57 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80570380  38 03 34 58 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80570384  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80570388:
/* 80570388  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 8057038C  41 82 00 10 */	beq lbl_8057039C
/* 80570390  3C 60 80 57 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80570394  38 03 34 58 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80570398  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_8057039C:
/* 8057039C  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 805703A0  41 82 00 10 */	beq lbl_805703B0
/* 805703A4  3C 60 80 57 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 805703A8  38 03 34 4C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 805703AC  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_805703B0:
/* 805703B0  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 805703B4  41 82 00 10 */	beq lbl_805703C4
/* 805703B8  3C 60 80 57 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 805703BC  38 03 34 4C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 805703C0  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_805703C4:
/* 805703C4  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 805703C8  38 80 FF FF */	li r4, -1
/* 805703CC  4B B0 79 10 */	b __dt__11dBgS_LinChkFv
/* 805703D0  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 805703D4  38 80 FF FF */	li r4, -1
/* 805703D8  4B B0 72 18 */	b __dt__11dBgS_GndChkFv
/* 805703DC  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 805703E0  41 82 00 54 */	beq lbl_80570434
/* 805703E4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805703E8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 805703EC  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 805703F0  38 03 00 20 */	addi r0, r3, 0x20
/* 805703F4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 805703F8  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 805703FC  41 82 00 24 */	beq lbl_80570420
/* 80570400  3C 60 80 57 */	lis r3, __vt__10dCcD_GStts@ha
/* 80570404  38 03 34 40 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80570408  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 8057040C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80570410  41 82 00 10 */	beq lbl_80570420
/* 80570414  3C 60 80 57 */	lis r3, __vt__10cCcD_GStts@ha
/* 80570418  38 03 34 34 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8057041C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80570420:
/* 80570420  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80570424  41 82 00 10 */	beq lbl_80570434
/* 80570428  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8057042C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80570430  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80570434:
/* 80570434  38 7E 09 74 */	addi r3, r30, 0x974
/* 80570438  38 80 FF FF */	li r4, -1
/* 8057043C  4B CD 9B 0C */	b __dt__10dMsgFlow_cFv
/* 80570440  38 7E 09 30 */	addi r3, r30, 0x930
/* 80570444  38 80 FF FF */	li r4, -1
/* 80570448  4B CF 78 4C */	b __dt__11cBgS_GndChkFv
/* 8057044C  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80570450  41 82 00 28 */	beq lbl_80570478
/* 80570454  3C 60 80 57 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80570458  38 03 34 28 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8057045C  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80570460  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80570464  38 80 FF FF */	li r4, -1
/* 80570468  4B CF EA B0 */	b __dt__8cM3dGCirFv
/* 8057046C  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80570470  38 80 00 00 */	li r4, 0
/* 80570474  4B CF 7C 3C */	b __dt__13cBgS_PolyInfoFv
lbl_80570478:
/* 80570478  34 1E 08 64 */	addic. r0, r30, 0x864
/* 8057047C  41 82 00 54 */	beq lbl_805704D0
/* 80570480  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80570484  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80570488  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 8057048C  38 03 00 20 */	addi r0, r3, 0x20
/* 80570490  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80570494  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80570498  41 82 00 24 */	beq lbl_805704BC
/* 8057049C  3C 60 80 57 */	lis r3, __vt__10dCcD_GStts@ha
/* 805704A0  38 03 34 40 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 805704A4  90 1E 08 80 */	stw r0, 0x880(r30)
/* 805704A8  34 1E 08 80 */	addic. r0, r30, 0x880
/* 805704AC  41 82 00 10 */	beq lbl_805704BC
/* 805704B0  3C 60 80 57 */	lis r3, __vt__10cCcD_GStts@ha
/* 805704B4  38 03 34 34 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 805704B8  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_805704BC:
/* 805704BC  34 1E 08 64 */	addic. r0, r30, 0x864
/* 805704C0  41 82 00 10 */	beq lbl_805704D0
/* 805704C4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 805704C8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 805704CC  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_805704D0:
/* 805704D0  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 805704D4  41 82 00 2C */	beq lbl_80570500
/* 805704D8  3C 60 80 57 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 805704DC  38 63 34 04 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 805704E0  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 805704E4  38 03 00 0C */	addi r0, r3, 0xc
/* 805704E8  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 805704EC  38 03 00 18 */	addi r0, r3, 0x18
/* 805704F0  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 805704F4  38 7E 06 8C */	addi r3, r30, 0x68c
/* 805704F8  38 80 00 00 */	li r4, 0
/* 805704FC  4B B0 5A 98 */	b __dt__9dBgS_AcchFv
lbl_80570500:
/* 80570500  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80570504  41 82 00 20 */	beq lbl_80570524
/* 80570508  34 1E 06 74 */	addic. r0, r30, 0x674
/* 8057050C  41 82 00 18 */	beq lbl_80570524
/* 80570510  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80570514  41 82 00 10 */	beq lbl_80570524
/* 80570518  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8057051C  38 03 33 F8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80570520  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80570524:
/* 80570524  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80570528  41 82 00 20 */	beq lbl_80570548
/* 8057052C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80570530  41 82 00 18 */	beq lbl_80570548
/* 80570534  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80570538  41 82 00 10 */	beq lbl_80570548
/* 8057053C  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80570540  38 03 33 F8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80570544  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80570548:
/* 80570548  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8057054C  41 82 00 20 */	beq lbl_8057056C
/* 80570550  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80570554  41 82 00 18 */	beq lbl_8057056C
/* 80570558  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8057055C  41 82 00 10 */	beq lbl_8057056C
/* 80570560  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80570564  38 03 33 F8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80570568  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_8057056C:
/* 8057056C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80570570  41 82 00 20 */	beq lbl_80570590
/* 80570574  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80570578  41 82 00 18 */	beq lbl_80570590
/* 8057057C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80570580  41 82 00 10 */	beq lbl_80570590
/* 80570584  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80570588  38 03 33 F8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8057058C  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80570590:
/* 80570590  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80570594  41 82 00 20 */	beq lbl_805705B4
/* 80570598  34 1E 06 10 */	addic. r0, r30, 0x610
/* 8057059C  41 82 00 18 */	beq lbl_805705B4
/* 805705A0  34 1E 06 10 */	addic. r0, r30, 0x610
/* 805705A4  41 82 00 10 */	beq lbl_805705B4
/* 805705A8  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 805705AC  38 03 33 F8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 805705B0  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_805705B4:
/* 805705B4  38 7E 05 80 */	addi r3, r30, 0x580
/* 805705B8  38 80 FF FF */	li r4, -1
/* 805705BC  4B D4 FE 64 */	b __dt__10Z2CreatureFv
/* 805705C0  7F C3 F3 78 */	mr r3, r30
/* 805705C4  38 80 00 00 */	li r4, 0
/* 805705C8  4B AA 86 C4 */	b __dt__10fopAc_ac_cFv
/* 805705CC  7F E0 07 35 */	extsh. r0, r31
/* 805705D0  40 81 00 0C */	ble lbl_805705DC
/* 805705D4  7F C3 F3 78 */	mr r3, r30
/* 805705D8  4B D5 E7 64 */	b __dl__FPv
lbl_805705DC:
/* 805705DC  7F C3 F3 78 */	mr r3, r30
/* 805705E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805705E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 805705E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805705EC  7C 08 03 A6 */	mtlr r0
/* 805705F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805705F4  4E 80 00 20 */	blr 
