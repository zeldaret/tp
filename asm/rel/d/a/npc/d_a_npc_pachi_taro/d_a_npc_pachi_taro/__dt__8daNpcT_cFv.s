lbl_80AA0358:
/* 80AA0358  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA035C  7C 08 02 A6 */	mflr r0
/* 80AA0360  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA0364  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA0368  93 C1 00 08 */	stw r30, 8(r1)
/* 80AA036C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AA0370  7C 9F 23 78 */	mr r31, r4
/* 80AA0374  41 82 03 50 */	beq lbl_80AA06C4
/* 80AA0378  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AA037C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AA0380  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AA0384  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 80AA0388  41 82 00 1C */	beq lbl_80AA03A4
/* 80AA038C  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 80AA0390  3C 80 80 AA */	lis r4, __dt__5csXyzFv@ha /* 0x80AA071C@ha */
/* 80AA0394  38 84 07 1C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AA071C@l */
/* 80AA0398  38 A0 00 06 */	li r5, 6
/* 80AA039C  38 C0 00 02 */	li r6, 2
/* 80AA03A0  4B 8C 19 49 */	bl __destroy_arr
lbl_80AA03A4:
/* 80AA03A4  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AA03A8  41 82 00 B4 */	beq lbl_80AA045C
/* 80AA03AC  3C 60 80 AA */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AA2A8C@ha */
/* 80AA03B0  38 03 2A 8C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AA2A8C@l */
/* 80AA03B4  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 80AA03B8  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 80AA03BC  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA03C0  38 84 06 E0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA03C4  38 A0 00 0C */	li r5, 0xc
/* 80AA03C8  38 C0 00 03 */	li r6, 3
/* 80AA03CC  4B 8C 19 1D */	bl __destroy_arr
/* 80AA03D0  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 80AA03D4  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA03D8  38 84 06 E0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA03DC  38 A0 00 0C */	li r5, 0xc
/* 80AA03E0  38 C0 00 03 */	li r6, 3
/* 80AA03E4  4B 8C 19 05 */	bl __destroy_arr
/* 80AA03E8  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 80AA03EC  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA03F0  38 84 06 E0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA03F4  38 A0 00 0C */	li r5, 0xc
/* 80AA03F8  38 C0 00 03 */	li r6, 3
/* 80AA03FC  4B 8C 18 ED */	bl __destroy_arr
/* 80AA0400  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 80AA0404  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0408  38 84 06 E0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA040C  38 A0 00 0C */	li r5, 0xc
/* 80AA0410  38 C0 00 03 */	li r6, 3
/* 80AA0414  4B 8C 18 D5 */	bl __destroy_arr
/* 80AA0418  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 80AA041C  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0420  38 84 06 E0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA0424  38 A0 00 0C */	li r5, 0xc
/* 80AA0428  38 C0 00 03 */	li r6, 3
/* 80AA042C  4B 8C 18 BD */	bl __destroy_arr
/* 80AA0430  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 80AA0434  3C 80 80 AA */	lis r4, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0438  38 84 06 E0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA043C  38 A0 00 0C */	li r5, 0xc
/* 80AA0440  38 C0 00 03 */	li r6, 3
/* 80AA0444  4B 8C 18 A5 */	bl __destroy_arr
/* 80AA0448  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 80AA044C  41 82 00 10 */	beq lbl_80AA045C
/* 80AA0450  3C 60 80 AA */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AA2A80@ha */
/* 80AA0454  38 03 2A 80 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AA2A80@l */
/* 80AA0458  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_80AA045C:
/* 80AA045C  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 80AA0460  41 82 00 10 */	beq lbl_80AA0470
/* 80AA0464  3C 60 80 AA */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AA2A80@ha */
/* 80AA0468  38 03 2A 80 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AA2A80@l */
/* 80AA046C  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_80AA0470:
/* 80AA0470  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 80AA0474  41 82 00 10 */	beq lbl_80AA0484
/* 80AA0478  3C 60 80 AA */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AA2A80@ha */
/* 80AA047C  38 03 2A 80 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AA2A80@l */
/* 80AA0480  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_80AA0484:
/* 80AA0484  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 80AA0488  41 82 00 10 */	beq lbl_80AA0498
/* 80AA048C  3C 60 80 AA */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AA2A74@ha */
/* 80AA0490  38 03 2A 74 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AA2A74@l */
/* 80AA0494  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_80AA0498:
/* 80AA0498  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 80AA049C  41 82 00 10 */	beq lbl_80AA04AC
/* 80AA04A0  3C 60 80 AA */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AA2A74@ha */
/* 80AA04A4  38 03 2A 74 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AA2A74@l */
/* 80AA04A8  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_80AA04AC:
/* 80AA04AC  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 80AA04B0  38 80 FF FF */	li r4, -1
/* 80AA04B4  4B 5D 78 29 */	bl __dt__11dBgS_LinChkFv
/* 80AA04B8  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 80AA04BC  38 80 FF FF */	li r4, -1
/* 80AA04C0  4B 5D 71 31 */	bl __dt__11dBgS_GndChkFv
/* 80AA04C4  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AA04C8  41 82 00 54 */	beq lbl_80AA051C
/* 80AA04CC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AA04D0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AA04D4  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 80AA04D8  38 03 00 20 */	addi r0, r3, 0x20
/* 80AA04DC  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AA04E0  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AA04E4  41 82 00 24 */	beq lbl_80AA0508
/* 80AA04E8  3C 60 80 AA */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AA2A68@ha */
/* 80AA04EC  38 03 2A 68 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AA2A68@l */
/* 80AA04F0  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80AA04F4  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 80AA04F8  41 82 00 10 */	beq lbl_80AA0508
/* 80AA04FC  3C 60 80 AA */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AA2A5C@ha */
/* 80AA0500  38 03 2A 5C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AA2A5C@l */
/* 80AA0504  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_80AA0508:
/* 80AA0508  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 80AA050C  41 82 00 10 */	beq lbl_80AA051C
/* 80AA0510  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AA0514  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AA0518  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_80AA051C:
/* 80AA051C  38 7E 09 74 */	addi r3, r30, 0x974
/* 80AA0520  38 80 FF FF */	li r4, -1
/* 80AA0524  4B 7A 9A 25 */	bl __dt__10dMsgFlow_cFv
/* 80AA0528  38 7E 09 30 */	addi r3, r30, 0x930
/* 80AA052C  38 80 FF FF */	li r4, -1
/* 80AA0530  4B 7C 77 65 */	bl __dt__11cBgS_GndChkFv
/* 80AA0534  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 80AA0538  41 82 00 28 */	beq lbl_80AA0560
/* 80AA053C  3C 60 80 AA */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80AA2A50@ha */
/* 80AA0540  38 03 2A 50 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80AA2A50@l */
/* 80AA0544  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 80AA0548  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 80AA054C  38 80 FF FF */	li r4, -1
/* 80AA0550  4B 7C E9 C9 */	bl __dt__8cM3dGCirFv
/* 80AA0554  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 80AA0558  38 80 00 00 */	li r4, 0
/* 80AA055C  4B 7C 7B 55 */	bl __dt__13cBgS_PolyInfoFv
lbl_80AA0560:
/* 80AA0560  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AA0564  41 82 00 54 */	beq lbl_80AA05B8
/* 80AA0568  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AA056C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AA0570  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 80AA0574  38 03 00 20 */	addi r0, r3, 0x20
/* 80AA0578  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AA057C  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AA0580  41 82 00 24 */	beq lbl_80AA05A4
/* 80AA0584  3C 60 80 AA */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AA2A68@ha */
/* 80AA0588  38 03 2A 68 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AA2A68@l */
/* 80AA058C  90 1E 08 80 */	stw r0, 0x880(r30)
/* 80AA0590  34 1E 08 80 */	addic. r0, r30, 0x880
/* 80AA0594  41 82 00 10 */	beq lbl_80AA05A4
/* 80AA0598  3C 60 80 AA */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AA2A5C@ha */
/* 80AA059C  38 03 2A 5C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AA2A5C@l */
/* 80AA05A0  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_80AA05A4:
/* 80AA05A4  34 1E 08 64 */	addic. r0, r30, 0x864
/* 80AA05A8  41 82 00 10 */	beq lbl_80AA05B8
/* 80AA05AC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AA05B0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AA05B4  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_80AA05B8:
/* 80AA05B8  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 80AA05BC  41 82 00 2C */	beq lbl_80AA05E8
/* 80AA05C0  3C 60 80 AA */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AA2A2C@ha */
/* 80AA05C4  38 63 2A 2C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AA2A2C@l */
/* 80AA05C8  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 80AA05CC  38 03 00 0C */	addi r0, r3, 0xc
/* 80AA05D0  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 80AA05D4  38 03 00 18 */	addi r0, r3, 0x18
/* 80AA05D8  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 80AA05DC  38 7E 06 8C */	addi r3, r30, 0x68c
/* 80AA05E0  38 80 00 00 */	li r4, 0
/* 80AA05E4  4B 5D 59 B1 */	bl __dt__9dBgS_AcchFv
lbl_80AA05E8:
/* 80AA05E8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AA05EC  41 82 00 20 */	beq lbl_80AA060C
/* 80AA05F0  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AA05F4  41 82 00 18 */	beq lbl_80AA060C
/* 80AA05F8  34 1E 06 74 */	addic. r0, r30, 0x674
/* 80AA05FC  41 82 00 10 */	beq lbl_80AA060C
/* 80AA0600  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AA2A20@ha */
/* 80AA0604  38 03 2A 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AA2A20@l */
/* 80AA0608  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_80AA060C:
/* 80AA060C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AA0610  41 82 00 20 */	beq lbl_80AA0630
/* 80AA0614  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AA0618  41 82 00 18 */	beq lbl_80AA0630
/* 80AA061C  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 80AA0620  41 82 00 10 */	beq lbl_80AA0630
/* 80AA0624  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AA2A20@ha */
/* 80AA0628  38 03 2A 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AA2A20@l */
/* 80AA062C  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_80AA0630:
/* 80AA0630  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AA0634  41 82 00 20 */	beq lbl_80AA0654
/* 80AA0638  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AA063C  41 82 00 18 */	beq lbl_80AA0654
/* 80AA0640  34 1E 06 44 */	addic. r0, r30, 0x644
/* 80AA0644  41 82 00 10 */	beq lbl_80AA0654
/* 80AA0648  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AA2A20@ha */
/* 80AA064C  38 03 2A 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AA2A20@l */
/* 80AA0650  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_80AA0654:
/* 80AA0654  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AA0658  41 82 00 20 */	beq lbl_80AA0678
/* 80AA065C  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AA0660  41 82 00 18 */	beq lbl_80AA0678
/* 80AA0664  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 80AA0668  41 82 00 10 */	beq lbl_80AA0678
/* 80AA066C  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AA2A20@ha */
/* 80AA0670  38 03 2A 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AA2A20@l */
/* 80AA0674  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_80AA0678:
/* 80AA0678  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AA067C  41 82 00 20 */	beq lbl_80AA069C
/* 80AA0680  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AA0684  41 82 00 18 */	beq lbl_80AA069C
/* 80AA0688  34 1E 06 10 */	addic. r0, r30, 0x610
/* 80AA068C  41 82 00 10 */	beq lbl_80AA069C
/* 80AA0690  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AA2A20@ha */
/* 80AA0694  38 03 2A 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AA2A20@l */
/* 80AA0698  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_80AA069C:
/* 80AA069C  38 7E 05 80 */	addi r3, r30, 0x580
/* 80AA06A0  38 80 FF FF */	li r4, -1
/* 80AA06A4  4B 81 FD 7D */	bl __dt__10Z2CreatureFv
/* 80AA06A8  7F C3 F3 78 */	mr r3, r30
/* 80AA06AC  38 80 00 00 */	li r4, 0
/* 80AA06B0  4B 57 85 DD */	bl __dt__10fopAc_ac_cFv
/* 80AA06B4  7F E0 07 35 */	extsh. r0, r31
/* 80AA06B8  40 81 00 0C */	ble lbl_80AA06C4
/* 80AA06BC  7F C3 F3 78 */	mr r3, r30
/* 80AA06C0  4B 82 E6 7D */	bl __dl__FPv
lbl_80AA06C4:
/* 80AA06C4  7F C3 F3 78 */	mr r3, r30
/* 80AA06C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA06CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AA06D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA06D4  7C 08 03 A6 */	mtlr r0
/* 80AA06D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA06DC  4E 80 00 20 */	blr 
