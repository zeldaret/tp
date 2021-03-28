lbl_8053D39C:
/* 8053D39C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053D3A0  7C 08 02 A6 */	mflr r0
/* 8053D3A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053D3A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8053D3AC  93 C1 00 08 */	stw r30, 8(r1)
/* 8053D3B0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8053D3B4  7C 9F 23 78 */	mr r31, r4
/* 8053D3B8  41 82 03 50 */	beq lbl_8053D708
/* 8053D3BC  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 8053D3C0  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 8053D3C4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 8053D3C8  34 1E 0D 08 */	addic. r0, r30, 0xd08
/* 8053D3CC  41 82 00 1C */	beq lbl_8053D3E8
/* 8053D3D0  38 7E 0D 08 */	addi r3, r30, 0xd08
/* 8053D3D4  3C 80 80 54 */	lis r4, __dt__5csXyzFv@ha
/* 8053D3D8  38 84 D7 60 */	addi r4, r4, __dt__5csXyzFv@l
/* 8053D3DC  38 A0 00 06 */	li r5, 6
/* 8053D3E0  38 C0 00 02 */	li r6, 2
/* 8053D3E4  4B E2 49 04 */	b __destroy_arr
lbl_8053D3E8:
/* 8053D3E8  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 8053D3EC  41 82 00 B4 */	beq lbl_8053D4A0
/* 8053D3F0  3C 60 80 54 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 8053D3F4  38 03 FD 74 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 8053D3F8  90 1E 0D 04 */	stw r0, 0xd04(r30)
/* 8053D3FC  38 7E 0C 8C */	addi r3, r30, 0xc8c
/* 8053D400  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha
/* 8053D404  38 84 D7 24 */	addi r4, r4, __dt__4cXyzFv@l
/* 8053D408  38 A0 00 0C */	li r5, 0xc
/* 8053D40C  38 C0 00 03 */	li r6, 3
/* 8053D410  4B E2 48 D8 */	b __destroy_arr
/* 8053D414  38 7E 0C 68 */	addi r3, r30, 0xc68
/* 8053D418  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha
/* 8053D41C  38 84 D7 24 */	addi r4, r4, __dt__4cXyzFv@l
/* 8053D420  38 A0 00 0C */	li r5, 0xc
/* 8053D424  38 C0 00 03 */	li r6, 3
/* 8053D428  4B E2 48 C0 */	b __destroy_arr
/* 8053D42C  38 7E 0C 44 */	addi r3, r30, 0xc44
/* 8053D430  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha
/* 8053D434  38 84 D7 24 */	addi r4, r4, __dt__4cXyzFv@l
/* 8053D438  38 A0 00 0C */	li r5, 0xc
/* 8053D43C  38 C0 00 03 */	li r6, 3
/* 8053D440  4B E2 48 A8 */	b __destroy_arr
/* 8053D444  38 7E 0C 20 */	addi r3, r30, 0xc20
/* 8053D448  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha
/* 8053D44C  38 84 D7 24 */	addi r4, r4, __dt__4cXyzFv@l
/* 8053D450  38 A0 00 0C */	li r5, 0xc
/* 8053D454  38 C0 00 03 */	li r6, 3
/* 8053D458  4B E2 48 90 */	b __destroy_arr
/* 8053D45C  38 7E 0B FC */	addi r3, r30, 0xbfc
/* 8053D460  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha
/* 8053D464  38 84 D7 24 */	addi r4, r4, __dt__4cXyzFv@l
/* 8053D468  38 A0 00 0C */	li r5, 0xc
/* 8053D46C  38 C0 00 03 */	li r6, 3
/* 8053D470  4B E2 48 78 */	b __destroy_arr
/* 8053D474  38 7E 0B D8 */	addi r3, r30, 0xbd8
/* 8053D478  3C 80 80 54 */	lis r4, __dt__4cXyzFv@ha
/* 8053D47C  38 84 D7 24 */	addi r4, r4, __dt__4cXyzFv@l
/* 8053D480  38 A0 00 0C */	li r5, 0xc
/* 8053D484  38 C0 00 03 */	li r6, 3
/* 8053D488  4B E2 48 60 */	b __destroy_arr
/* 8053D48C  34 1E 0B A8 */	addic. r0, r30, 0xba8
/* 8053D490  41 82 00 10 */	beq lbl_8053D4A0
/* 8053D494  3C 60 80 54 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8053D498  38 03 FD 68 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8053D49C  90 1E 0B AC */	stw r0, 0xbac(r30)
lbl_8053D4A0:
/* 8053D4A0  34 1E 0B A0 */	addic. r0, r30, 0xba0
/* 8053D4A4  41 82 00 10 */	beq lbl_8053D4B4
/* 8053D4A8  3C 60 80 54 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8053D4AC  38 03 FD 68 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8053D4B0  90 1E 0B A4 */	stw r0, 0xba4(r30)
lbl_8053D4B4:
/* 8053D4B4  34 1E 0B 98 */	addic. r0, r30, 0xb98
/* 8053D4B8  41 82 00 10 */	beq lbl_8053D4C8
/* 8053D4BC  3C 60 80 54 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8053D4C0  38 03 FD 68 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8053D4C4  90 1E 0B 9C */	stw r0, 0xb9c(r30)
lbl_8053D4C8:
/* 8053D4C8  34 1E 0B 74 */	addic. r0, r30, 0xb74
/* 8053D4CC  41 82 00 10 */	beq lbl_8053D4DC
/* 8053D4D0  3C 60 80 54 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 8053D4D4  38 03 FD 5C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 8053D4D8  90 1E 0B 94 */	stw r0, 0xb94(r30)
lbl_8053D4DC:
/* 8053D4DC  34 1E 0B 50 */	addic. r0, r30, 0xb50
/* 8053D4E0  41 82 00 10 */	beq lbl_8053D4F0
/* 8053D4E4  3C 60 80 54 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 8053D4E8  38 03 FD 5C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 8053D4EC  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_8053D4F0:
/* 8053D4F0  38 7E 0A E0 */	addi r3, r30, 0xae0
/* 8053D4F4  38 80 FF FF */	li r4, -1
/* 8053D4F8  4B B3 A7 E4 */	b __dt__11dBgS_LinChkFv
/* 8053D4FC  38 7E 0A 8C */	addi r3, r30, 0xa8c
/* 8053D500  38 80 FF FF */	li r4, -1
/* 8053D504  4B B3 A0 EC */	b __dt__11dBgS_GndChkFv
/* 8053D508  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 8053D50C  41 82 00 54 */	beq lbl_8053D560
/* 8053D510  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8053D514  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8053D518  90 7E 0A 58 */	stw r3, 0xa58(r30)
/* 8053D51C  38 03 00 20 */	addi r0, r3, 0x20
/* 8053D520  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 8053D524  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 8053D528  41 82 00 24 */	beq lbl_8053D54C
/* 8053D52C  3C 60 80 54 */	lis r3, __vt__10dCcD_GStts@ha
/* 8053D530  38 03 FD 50 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8053D534  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 8053D538  34 1E 0A 5C */	addic. r0, r30, 0xa5c
/* 8053D53C  41 82 00 10 */	beq lbl_8053D54C
/* 8053D540  3C 60 80 54 */	lis r3, __vt__10cCcD_GStts@ha
/* 8053D544  38 03 FD 44 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8053D548  90 1E 0A 5C */	stw r0, 0xa5c(r30)
lbl_8053D54C:
/* 8053D54C  34 1E 0A 40 */	addic. r0, r30, 0xa40
/* 8053D550  41 82 00 10 */	beq lbl_8053D560
/* 8053D554  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8053D558  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8053D55C  90 1E 0A 58 */	stw r0, 0xa58(r30)
lbl_8053D560:
/* 8053D560  38 7E 09 74 */	addi r3, r30, 0x974
/* 8053D564  38 80 FF FF */	li r4, -1
/* 8053D568  4B D0 C9 E0 */	b __dt__10dMsgFlow_cFv
/* 8053D56C  38 7E 09 30 */	addi r3, r30, 0x930
/* 8053D570  38 80 FF FF */	li r4, -1
/* 8053D574  4B D2 A7 20 */	b __dt__11cBgS_GndChkFv
/* 8053D578  34 1E 08 A0 */	addic. r0, r30, 0x8a0
/* 8053D57C  41 82 00 28 */	beq lbl_8053D5A4
/* 8053D580  3C 60 80 54 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8053D584  38 03 FD 38 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 8053D588  90 1E 08 AC */	stw r0, 0x8ac(r30)
/* 8053D58C  38 7E 08 B4 */	addi r3, r30, 0x8b4
/* 8053D590  38 80 FF FF */	li r4, -1
/* 8053D594  4B D3 19 84 */	b __dt__8cM3dGCirFv
/* 8053D598  38 7E 08 A0 */	addi r3, r30, 0x8a0
/* 8053D59C  38 80 00 00 */	li r4, 0
/* 8053D5A0  4B D2 AB 10 */	b __dt__13cBgS_PolyInfoFv
lbl_8053D5A4:
/* 8053D5A4  34 1E 08 64 */	addic. r0, r30, 0x864
/* 8053D5A8  41 82 00 54 */	beq lbl_8053D5FC
/* 8053D5AC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8053D5B0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8053D5B4  90 7E 08 7C */	stw r3, 0x87c(r30)
/* 8053D5B8  38 03 00 20 */	addi r0, r3, 0x20
/* 8053D5BC  90 1E 08 80 */	stw r0, 0x880(r30)
/* 8053D5C0  34 1E 08 80 */	addic. r0, r30, 0x880
/* 8053D5C4  41 82 00 24 */	beq lbl_8053D5E8
/* 8053D5C8  3C 60 80 54 */	lis r3, __vt__10dCcD_GStts@ha
/* 8053D5CC  38 03 FD 50 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 8053D5D0  90 1E 08 80 */	stw r0, 0x880(r30)
/* 8053D5D4  34 1E 08 80 */	addic. r0, r30, 0x880
/* 8053D5D8  41 82 00 10 */	beq lbl_8053D5E8
/* 8053D5DC  3C 60 80 54 */	lis r3, __vt__10cCcD_GStts@ha
/* 8053D5E0  38 03 FD 44 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 8053D5E4  90 1E 08 80 */	stw r0, 0x880(r30)
lbl_8053D5E8:
/* 8053D5E8  34 1E 08 64 */	addic. r0, r30, 0x864
/* 8053D5EC  41 82 00 10 */	beq lbl_8053D5FC
/* 8053D5F0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8053D5F4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8053D5F8  90 1E 08 7C */	stw r0, 0x87c(r30)
lbl_8053D5FC:
/* 8053D5FC  34 1E 06 8C */	addic. r0, r30, 0x68c
/* 8053D600  41 82 00 2C */	beq lbl_8053D62C
/* 8053D604  3C 60 80 54 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8053D608  38 63 FD 14 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8053D60C  90 7E 06 9C */	stw r3, 0x69c(r30)
/* 8053D610  38 03 00 0C */	addi r0, r3, 0xc
/* 8053D614  90 1E 06 A0 */	stw r0, 0x6a0(r30)
/* 8053D618  38 03 00 18 */	addi r0, r3, 0x18
/* 8053D61C  90 1E 06 B0 */	stw r0, 0x6b0(r30)
/* 8053D620  38 7E 06 8C */	addi r3, r30, 0x68c
/* 8053D624  38 80 00 00 */	li r4, 0
/* 8053D628  4B B3 89 6C */	b __dt__9dBgS_AcchFv
lbl_8053D62C:
/* 8053D62C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 8053D630  41 82 00 20 */	beq lbl_8053D650
/* 8053D634  34 1E 06 74 */	addic. r0, r30, 0x674
/* 8053D638  41 82 00 18 */	beq lbl_8053D650
/* 8053D63C  34 1E 06 74 */	addic. r0, r30, 0x674
/* 8053D640  41 82 00 10 */	beq lbl_8053D650
/* 8053D644  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8053D648  38 03 FD 08 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8053D64C  90 1E 06 74 */	stw r0, 0x674(r30)
lbl_8053D650:
/* 8053D650  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 8053D654  41 82 00 20 */	beq lbl_8053D674
/* 8053D658  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 8053D65C  41 82 00 18 */	beq lbl_8053D674
/* 8053D660  34 1E 06 5C */	addic. r0, r30, 0x65c
/* 8053D664  41 82 00 10 */	beq lbl_8053D674
/* 8053D668  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8053D66C  38 03 FD 08 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8053D670  90 1E 06 5C */	stw r0, 0x65c(r30)
lbl_8053D674:
/* 8053D674  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8053D678  41 82 00 20 */	beq lbl_8053D698
/* 8053D67C  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8053D680  41 82 00 18 */	beq lbl_8053D698
/* 8053D684  34 1E 06 44 */	addic. r0, r30, 0x644
/* 8053D688  41 82 00 10 */	beq lbl_8053D698
/* 8053D68C  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8053D690  38 03 FD 08 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8053D694  90 1E 06 44 */	stw r0, 0x644(r30)
lbl_8053D698:
/* 8053D698  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 8053D69C  41 82 00 20 */	beq lbl_8053D6BC
/* 8053D6A0  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 8053D6A4  41 82 00 18 */	beq lbl_8053D6BC
/* 8053D6A8  34 1E 06 2C */	addic. r0, r30, 0x62c
/* 8053D6AC  41 82 00 10 */	beq lbl_8053D6BC
/* 8053D6B0  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8053D6B4  38 03 FD 08 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8053D6B8  90 1E 06 2C */	stw r0, 0x62c(r30)
lbl_8053D6BC:
/* 8053D6BC  34 1E 06 10 */	addic. r0, r30, 0x610
/* 8053D6C0  41 82 00 20 */	beq lbl_8053D6E0
/* 8053D6C4  34 1E 06 10 */	addic. r0, r30, 0x610
/* 8053D6C8  41 82 00 18 */	beq lbl_8053D6E0
/* 8053D6CC  34 1E 06 10 */	addic. r0, r30, 0x610
/* 8053D6D0  41 82 00 10 */	beq lbl_8053D6E0
/* 8053D6D4  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8053D6D8  38 03 FD 08 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8053D6DC  90 1E 06 10 */	stw r0, 0x610(r30)
lbl_8053D6E0:
/* 8053D6E0  38 7E 05 80 */	addi r3, r30, 0x580
/* 8053D6E4  38 80 FF FF */	li r4, -1
/* 8053D6E8  4B D8 2D 38 */	b __dt__10Z2CreatureFv
/* 8053D6EC  7F C3 F3 78 */	mr r3, r30
/* 8053D6F0  38 80 00 00 */	li r4, 0
/* 8053D6F4  4B AD B5 98 */	b __dt__10fopAc_ac_cFv
/* 8053D6F8  7F E0 07 35 */	extsh. r0, r31
/* 8053D6FC  40 81 00 0C */	ble lbl_8053D708
/* 8053D700  7F C3 F3 78 */	mr r3, r30
/* 8053D704  4B D9 16 38 */	b __dl__FPv
lbl_8053D708:
/* 8053D708  7F C3 F3 78 */	mr r3, r30
/* 8053D70C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8053D710  83 C1 00 08 */	lwz r30, 8(r1)
/* 8053D714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053D718  7C 08 03 A6 */	mtlr r0
/* 8053D71C  38 21 00 10 */	addi r1, r1, 0x10
/* 8053D720  4E 80 00 20 */	blr 
