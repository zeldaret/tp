lbl_80575404:
/* 80575404  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575408  7C 08 02 A6 */	mflr r0
/* 8057540C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575410  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80575414  93 C1 00 08 */	stw r30, 8(r1)
/* 80575418  7C 7E 1B 79 */	or. r30, r3, r3
/* 8057541C  7C 9F 23 78 */	mr r31, r4
/* 80575420  41 82 03 50 */	beq lbl_80575770
/* 80575424  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80575428  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 8057542C  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80575430  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80575434  41 82 00 1C */	beq lbl_80575450
/* 80575438  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 8057543C  3C 80 80 57 */	lis r4, __dt__5csXyzFv@ha /* 0x805757C8@ha */
/* 80575440  38 84 57 C8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x805757C8@l */
/* 80575444  38 A0 00 06 */	li r5, 6
/* 80575448  38 C0 00 02 */	li r6, 2
/* 8057544C  4B DE C8 9D */	bl __destroy_arr
lbl_80575450:
/* 80575450  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80575454  41 82 00 B4 */	beq lbl_80575508
/* 80575458  3C 60 80 57 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x805768C8@ha */
/* 8057545C  38 03 68 C8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x805768C8@l */
/* 80575460  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80575464  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80575468  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 8057546C  38 84 57 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 80575470  38 A0 00 0C */	li r5, 0xc
/* 80575474  38 C0 00 03 */	li r6, 3
/* 80575478  4B DE C8 71 */	bl __destroy_arr
/* 8057547C  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80575480  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 80575484  38 84 57 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 80575488  38 A0 00 0C */	li r5, 0xc
/* 8057548C  38 C0 00 03 */	li r6, 3
/* 80575490  4B DE C8 59 */	bl __destroy_arr
/* 80575494  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80575498  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 8057549C  38 84 57 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 805754A0  38 A0 00 0C */	li r5, 0xc
/* 805754A4  38 C0 00 03 */	li r6, 3
/* 805754A8  4B DE C8 41 */	bl __destroy_arr
/* 805754AC  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 805754B0  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 805754B4  38 84 57 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 805754B8  38 A0 00 0C */	li r5, 0xc
/* 805754BC  38 C0 00 03 */	li r6, 3
/* 805754C0  4B DE C8 29 */	bl __destroy_arr
/* 805754C4  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 805754C8  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 805754CC  38 84 57 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 805754D0  38 A0 00 0C */	li r5, 0xc
/* 805754D4  38 C0 00 03 */	li r6, 3
/* 805754D8  4B DE C8 11 */	bl __destroy_arr
/* 805754DC  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 805754E0  3C 80 80 57 */	lis r4, __dt__4cXyzFv@ha /* 0x8057578C@ha */
/* 805754E4  38 84 57 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x8057578C@l */
/* 805754E8  38 A0 00 0C */	li r5, 0xc
/* 805754EC  38 C0 00 03 */	li r6, 3
/* 805754F0  4B DE C7 F9 */	bl __destroy_arr
/* 805754F4  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 805754F8  41 82 00 10 */	beq lbl_80575508
/* 805754FC  3C 60 80 57 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x805768BC@ha */
/* 80575500  38 03 68 BC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x805768BC@l */
/* 80575504  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80575508:
/* 80575508  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 8057550C  41 82 00 10 */	beq lbl_8057551C
/* 80575510  3C 60 80 57 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x805768BC@ha */
/* 80575514  38 03 68 BC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x805768BC@l */
/* 80575518  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_8057551C:
/* 8057551C  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80575520  41 82 00 10 */	beq lbl_80575530
/* 80575524  3C 60 80 57 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x805768BC@ha */
/* 80575528  38 03 68 BC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x805768BC@l */
/* 8057552C  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80575530:
/* 80575530  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80575534  41 82 00 10 */	beq lbl_80575544
/* 80575538  3C 60 80 57 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x805768B0@ha */
/* 8057553C  38 03 68 B0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x805768B0@l */
/* 80575540  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80575544:
/* 80575544  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80575548  41 82 00 10 */	beq lbl_80575558
/* 8057554C  3C 60 80 57 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x805768B0@ha */
/* 80575550  38 03 68 B0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x805768B0@l */
/* 80575554  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80575558:
/* 80575558  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 8057555C  38 80 FF FF */	li r4, -1
/* 80575560  4B B0 27 7D */	bl __dt__11dBgS_LinChkFv
/* 80575564  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80575568  38 80 FF FF */	li r4, -1
/* 8057556C  4B B0 20 85 */	bl __dt__11dBgS_GndChkFv
/* 80575570  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80575574  41 82 00 54 */	beq lbl_805755C8
/* 80575578  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8057557C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80575580  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80575584  38 03 00 20 */	addi r0, r3, 0x20
/* 80575588  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 8057558C  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80575590  41 82 00 24 */	beq lbl_805755B4
/* 80575594  3C 60 80 57 */	lis r3, __vt__10dCcD_GStts@ha /* 0x805768A4@ha */
/* 80575598  38 03 68 A4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x805768A4@l */
/* 8057559C  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 805755A0  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 805755A4  41 82 00 10 */	beq lbl_805755B4
/* 805755A8  3C 60 80 57 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80576898@ha */
/* 805755AC  38 03 68 98 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80576898@l */
/* 805755B0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_805755B4:
/* 805755B4  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 805755B8  41 82 00 10 */	beq lbl_805755C8
/* 805755BC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 805755C0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 805755C4  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_805755C8:
/* 805755C8  38 7E 09 74 */	addi r3, r30, 0x974
/* 805755CC  38 80 FF FF */	li r4, -1
/* 805755D0  4B CD 49 79 */	bl __dt__10dMsgFlow_cFv
/* 805755D4  38 7E 09 30 */	addi r3, r30, 0x930
/* 805755D8  38 80 FF FF */	li r4, -1
/* 805755DC  4B CF 26 B9 */	bl __dt__11cBgS_GndChkFv
/* 805755E0  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 805755E4  41 82 00 28 */	beq lbl_8057560C
/* 805755E8  3C 60 80 57 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8057688C@ha */
/* 805755EC  38 03 68 8C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8057688C@l */
/* 805755F0  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 805755F4  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 805755F8  38 80 FF FF */	li r4, -1
/* 805755FC  4B CF 99 1D */	bl __dt__8cM3dGCirFv
/* 80575600  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80575604  38 80 00 00 */	li r4, 0
/* 80575608  4B CF 2A A9 */	bl __dt__13cBgS_PolyInfoFv
lbl_8057560C:
/* 8057560C  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80575610  41 82 00 54 */	beq lbl_80575664
/* 80575614  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80575618  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8057561C  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80575620  38 03 00 20 */	addi r0, r3, 0x20
/* 80575624  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80575628  34 1E 08 80 */	addic. r0, r30, 0x880
/* 8057562C  41 82 00 24 */	beq lbl_80575650
/* 80575630  3C 60 80 57 */	lis r3, __vt__10dCcD_GStts@ha /* 0x805768A4@ha */
/* 80575634  38 03 68 A4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x805768A4@l */
/* 80575638  90 1E 08 80 */	stw r0, 0x880(r30)
/* 8057563C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80575640  41 82 00 10 */	beq lbl_80575650
/* 80575644  3C 60 80 57 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80576898@ha */
/* 80575648  38 03 68 98 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80576898@l */
/* 8057564C  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80575650:
/* 80575650  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80575654  41 82 00 10 */	beq lbl_80575664
/* 80575658  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8057565C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80575660  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80575664:
/* 80575664  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80575668  41 82 00 2C */	beq lbl_80575694
/* 8057566C  3C 60 80 57 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80576868@ha */
/* 80575670  38 63 68 68 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80576868@l */
/* 80575674  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80575678  38 03 00 0C */	addi r0, r3, 0xc
/* 8057567C  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80575680  38 03 00 18 */	addi r0, r3, 0x18
/* 80575684  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80575688  38 7E 06 8C */	addi r3, r30, 0x68c
/* 8057568C  38 80 00 00 */	li r4, 0
/* 80575690  4B B0 09 05 */	bl __dt__9dBgS_AcchFv
lbl_80575694:
/* 80575694  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80575698  41 82 00 20 */	beq lbl_805756B8
/* 8057569C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 805756A0  41 82 00 18 */	beq lbl_805756B8
/* 805756A4  34 1E 06 74 */	addic. r0, r30, 0x674
/* 805756A8  41 82 00 10 */	beq lbl_805756B8
/* 805756AC  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8057685C@ha */
/* 805756B0  38 03 68 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8057685C@l */
/* 805756B4  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_805756B8:
/* 805756B8  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 805756BC  41 82 00 20 */	beq lbl_805756DC
/* 805756C0  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 805756C4  41 82 00 18 */	beq lbl_805756DC
/* 805756C8  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 805756CC  41 82 00 10 */	beq lbl_805756DC
/* 805756D0  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8057685C@ha */
/* 805756D4  38 03 68 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8057685C@l */
/* 805756D8  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_805756DC:
/* 805756DC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 805756E0  41 82 00 20 */	beq lbl_80575700
/* 805756E4  34 1E 06 44 */	addic. r0, r30, 0x644
/* 805756E8  41 82 00 18 */	beq lbl_80575700
/* 805756EC  34 1E 06 44 */	addic. r0, r30, 0x644
/* 805756F0  41 82 00 10 */	beq lbl_80575700
/* 805756F4  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8057685C@ha */
/* 805756F8  38 03 68 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8057685C@l */
/* 805756FC  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80575700:
/* 80575700  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80575704  41 82 00 20 */	beq lbl_80575724
/* 80575708  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 8057570C  41 82 00 18 */	beq lbl_80575724
/* 80575710  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80575714  41 82 00 10 */	beq lbl_80575724
/* 80575718  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8057685C@ha */
/* 8057571C  38 03 68 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8057685C@l */
/* 80575720  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80575724:
/* 80575724  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80575728  41 82 00 20 */	beq lbl_80575748
/* 8057572C  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80575730  41 82 00 18 */	beq lbl_80575748
/* 80575734  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80575738  41 82 00 10 */	beq lbl_80575748
/* 8057573C  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8057685C@ha */
/* 80575740  38 03 68 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8057685C@l */
/* 80575744  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80575748:
/* 80575748  38 7E 05 80 */	addi r3, r30, 0x580
/* 8057574C  38 80 FF FF */	li r4, -1
/* 80575750  4B D4 AC D1 */	bl __dt__10Z2CreatureFv
/* 80575754  7F C3 F3 78 */	mr r3, r30
/* 80575758  38 80 00 00 */	li r4, 0
/* 8057575C  4B AA 35 31 */	bl __dt__10fopAc_ac_cFv
/* 80575760  7F E0 07 35 */	extsh. r0, r31
/* 80575764  40 81 00 0C */	ble lbl_80575770
/* 80575768  7F C3 F3 78 */	mr r3, r30
/* 8057576C  4B D5 95 D1 */	bl __dl__FPv
lbl_80575770:
/* 80575770  7F C3 F3 78 */	mr r3, r30
/* 80575774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575778  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057577C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575780  7C 08 03 A6 */	mtlr r0
/* 80575784  38 21 00 10 */	addi r1, r1, 0x10
/* 80575788  4E 80 00 20 */	blr 
