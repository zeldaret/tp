lbl_80541348:
/* 80541348  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8054134C  7C 08 02 A6 */	mflr r0
/* 80541350  90 01 00 44 */	stw r0, 0x44(r1)
/* 80541354  39 61 00 40 */	addi r11, r1, 0x40
/* 80541358  4B E2 0E 69 */	bl _savegpr_22
/* 8054135C  7C 7F 1B 78 */	mr r31, r3
/* 80541360  7C 96 23 78 */	mr r22, r4
/* 80541364  7C B7 2B 78 */	mr r23, r5
/* 80541368  7C DA 33 78 */	mr r26, r6
/* 8054136C  7C FB 3B 78 */	mr r27, r7
/* 80541370  7D 1C 43 78 */	mr r28, r8
/* 80541374  7D 3D 4B 78 */	mr r29, r9
/* 80541378  7D 58 53 78 */	mr r24, r10
/* 8054137C  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80541380  3C 80 80 54 */	lis r4, m__25daNpc_FairySeirei_Param_c@ha /* 0x80541D8C@ha */
/* 80541384  3B C4 1D 8C */	addi r30, r4, m__25daNpc_FairySeirei_Param_c@l /* 0x80541D8C@l */
/* 80541388  4B AD 77 DD */	bl __ct__10fopAc_ac_cFv
/* 8054138C  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80541390  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80541394  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80541398  92 DF 05 68 */	stw r22, 0x568(r31)
/* 8054139C  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 805413A0  93 1F 05 70 */	stw r24, 0x570(r31)
/* 805413A4  93 3F 05 74 */	stw r25, 0x574(r31)
/* 805413A8  38 7F 05 80 */	addi r3, r31, 0x580
/* 805413AC  4B D7 F0 1D */	bl __ct__10Z2CreatureFv
/* 805413B0  3A DF 06 10 */	addi r22, r31, 0x610
/* 805413B4  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80541F80@ha */
/* 805413B8  38 03 1F 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80541F80@l */
/* 805413BC  90 1F 06 10 */	stw r0, 0x610(r31)
/* 805413C0  7E C3 B3 78 */	mr r3, r22
/* 805413C4  38 80 00 00 */	li r4, 0
/* 805413C8  4B DE 70 35 */	bl init__12J3DFrameCtrlFs
/* 805413CC  38 00 00 00 */	li r0, 0
/* 805413D0  90 16 00 18 */	stw r0, 0x18(r22)
/* 805413D4  3A DF 06 2C */	addi r22, r31, 0x62c
/* 805413D8  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80541F80@ha */
/* 805413DC  38 03 1F 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80541F80@l */
/* 805413E0  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 805413E4  7E C3 B3 78 */	mr r3, r22
/* 805413E8  38 80 00 00 */	li r4, 0
/* 805413EC  4B DE 70 11 */	bl init__12J3DFrameCtrlFs
/* 805413F0  38 00 00 00 */	li r0, 0
/* 805413F4  90 16 00 14 */	stw r0, 0x14(r22)
/* 805413F8  3A DF 06 44 */	addi r22, r31, 0x644
/* 805413FC  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80541F80@ha */
/* 80541400  38 03 1F 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80541F80@l */
/* 80541404  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80541408  7E C3 B3 78 */	mr r3, r22
/* 8054140C  38 80 00 00 */	li r4, 0
/* 80541410  4B DE 6F ED */	bl init__12J3DFrameCtrlFs
/* 80541414  38 00 00 00 */	li r0, 0
/* 80541418  90 16 00 14 */	stw r0, 0x14(r22)
/* 8054141C  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80541420  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80541F80@ha */
/* 80541424  38 03 1F 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80541F80@l */
/* 80541428  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 8054142C  7E C3 B3 78 */	mr r3, r22
/* 80541430  38 80 00 00 */	li r4, 0
/* 80541434  4B DE 6F C9 */	bl init__12J3DFrameCtrlFs
/* 80541438  38 00 00 00 */	li r0, 0
/* 8054143C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80541440  3A DF 06 74 */	addi r22, r31, 0x674
/* 80541444  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80541F80@ha */
/* 80541448  38 03 1F 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80541F80@l */
/* 8054144C  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80541450  7E C3 B3 78 */	mr r3, r22
/* 80541454  38 80 00 00 */	li r4, 0
/* 80541458  4B DE 6F A5 */	bl init__12J3DFrameCtrlFs
/* 8054145C  38 00 00 00 */	li r0, 0
/* 80541460  90 16 00 14 */	stw r0, 0x14(r22)
/* 80541464  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80541468  7E C3 B3 78 */	mr r3, r22
/* 8054146C  4B B3 4C 35 */	bl __ct__9dBgS_AcchFv
/* 80541470  3C 60 80 54 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80541F8C@ha */
/* 80541474  38 63 1F 8C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80541F8C@l */
/* 80541478  90 76 00 10 */	stw r3, 0x10(r22)
/* 8054147C  38 03 00 0C */	addi r0, r3, 0xc
/* 80541480  90 16 00 14 */	stw r0, 0x14(r22)
/* 80541484  38 03 00 18 */	addi r0, r3, 0x18
/* 80541488  90 16 00 24 */	stw r0, 0x24(r22)
/* 8054148C  38 76 00 14 */	addi r3, r22, 0x14
/* 80541490  4B B3 79 D9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80541494  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80541498  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8054149C  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 805414A0  38 7F 08 80 */	addi r3, r31, 0x880
/* 805414A4  4B B4 22 BD */	bl __ct__10dCcD_GSttsFv
/* 805414A8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 805414AC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 805414B0  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 805414B4  3B 23 00 20 */	addi r25, r3, 0x20
/* 805414B8  93 3F 08 80 */	stw r25, 0x880(r31)
/* 805414BC  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 805414C0  4B B3 49 ED */	bl __ct__12dBgS_AcchCirFv
/* 805414C4  38 7F 09 30 */	addi r3, r31, 0x930
/* 805414C8  4B D2 67 55 */	bl __ct__11cBgS_GndChkFv
/* 805414CC  38 7F 09 74 */	addi r3, r31, 0x974
/* 805414D0  4B D0 8A 31 */	bl __ct__10dMsgFlow_cFv
/* 805414D4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 805414D8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 805414DC  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 805414E0  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 805414E4  4B B4 22 7D */	bl __ct__10dCcD_GSttsFv
/* 805414E8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 805414EC  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 805414F0  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 805414F4  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 805414F8  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 805414FC  4B B3 60 81 */	bl __ct__11dBgS_GndChkFv
/* 80541500  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80541504  4B B3 67 65 */	bl __ct__11dBgS_LinChkFv
/* 80541508  3C 60 80 54 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80541FD4@ha */
/* 8054150C  38 03 1F D4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80541FD4@l */
/* 80541510  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80541514  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80541518  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 8054151C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80541520  4B C0 43 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80541524  3C 60 80 54 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80541FD4@ha */
/* 80541528  38 03 1F D4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80541FD4@l */
/* 8054152C  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80541530  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80541534  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80541538  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8054153C  4B C0 43 5D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80541540  3C 60 80 54 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80541FE0@ha */
/* 80541544  38 03 1F E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80541FE0@l */
/* 80541548  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 8054154C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80541550  4B C0 41 85 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80541554  3C 60 80 54 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80541FE0@ha */
/* 80541558  38 03 1F E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80541FE0@l */
/* 8054155C  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80541560  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80541564  4B C0 41 71 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80541568  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 8054156C  3C 60 80 54 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80541FEC@ha */
/* 80541570  38 03 1F EC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80541FEC@l */
/* 80541574  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80541578  3C 60 80 54 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80541FE0@ha */
/* 8054157C  38 03 1F E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80541FE0@l */
/* 80541580  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80541584  7F 43 D3 78 */	mr r3, r26
/* 80541588  4B C0 41 4D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 8054158C  38 7A 00 30 */	addi r3, r26, 0x30
/* 80541590  3C 80 80 54 */	lis r4, __ct__4cXyzFv@ha /* 0x8054184C@ha */
/* 80541594  38 84 18 4C */	addi r4, r4, __ct__4cXyzFv@l /* 0x8054184C@l */
/* 80541598  3C A0 80 54 */	lis r5, __dt__4cXyzFv@ha /* 0x805412D0@ha */
/* 8054159C  38 A5 12 D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x805412D0@l */
/* 805415A0  38 C0 00 0C */	li r6, 0xc
/* 805415A4  38 E0 00 03 */	li r7, 3
/* 805415A8  4B E2 07 B9 */	bl __construct_array
/* 805415AC  38 7A 00 54 */	addi r3, r26, 0x54
/* 805415B0  3C 80 80 54 */	lis r4, __ct__4cXyzFv@ha /* 0x8054184C@ha */
/* 805415B4  38 84 18 4C */	addi r4, r4, __ct__4cXyzFv@l /* 0x8054184C@l */
/* 805415B8  3C A0 80 54 */	lis r5, __dt__4cXyzFv@ha /* 0x805412D0@ha */
/* 805415BC  38 A5 12 D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x805412D0@l */
/* 805415C0  38 C0 00 0C */	li r6, 0xc
/* 805415C4  38 E0 00 03 */	li r7, 3
/* 805415C8  4B E2 07 99 */	bl __construct_array
/* 805415CC  38 7A 00 78 */	addi r3, r26, 0x78
/* 805415D0  3C 80 80 54 */	lis r4, __ct__4cXyzFv@ha /* 0x8054184C@ha */
/* 805415D4  38 84 18 4C */	addi r4, r4, __ct__4cXyzFv@l /* 0x8054184C@l */
/* 805415D8  3C A0 80 54 */	lis r5, __dt__4cXyzFv@ha /* 0x805412D0@ha */
/* 805415DC  38 A5 12 D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x805412D0@l */
/* 805415E0  38 C0 00 0C */	li r6, 0xc
/* 805415E4  38 E0 00 03 */	li r7, 3
/* 805415E8  4B E2 07 79 */	bl __construct_array
/* 805415EC  38 7A 00 9C */	addi r3, r26, 0x9c
/* 805415F0  3C 80 80 54 */	lis r4, __ct__4cXyzFv@ha /* 0x8054184C@ha */
/* 805415F4  38 84 18 4C */	addi r4, r4, __ct__4cXyzFv@l /* 0x8054184C@l */
/* 805415F8  3C A0 80 54 */	lis r5, __dt__4cXyzFv@ha /* 0x805412D0@ha */
/* 805415FC  38 A5 12 D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x805412D0@l */
/* 80541600  38 C0 00 0C */	li r6, 0xc
/* 80541604  38 E0 00 03 */	li r7, 3
/* 80541608  4B E2 07 59 */	bl __construct_array
/* 8054160C  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80541610  3C 80 80 54 */	lis r4, __ct__4cXyzFv@ha /* 0x8054184C@ha */
/* 80541614  38 84 18 4C */	addi r4, r4, __ct__4cXyzFv@l /* 0x8054184C@l */
/* 80541618  3C A0 80 54 */	lis r5, __dt__4cXyzFv@ha /* 0x805412D0@ha */
/* 8054161C  38 A5 12 D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x805412D0@l */
/* 80541620  38 C0 00 0C */	li r6, 0xc
/* 80541624  38 E0 00 03 */	li r7, 3
/* 80541628  4B E2 07 39 */	bl __construct_array
/* 8054162C  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80541630  3C 80 80 54 */	lis r4, __ct__4cXyzFv@ha /* 0x8054184C@ha */
/* 80541634  38 84 18 4C */	addi r4, r4, __ct__4cXyzFv@l /* 0x8054184C@l */
/* 80541638  3C A0 80 54 */	lis r5, __dt__4cXyzFv@ha /* 0x805412D0@ha */
/* 8054163C  38 A5 12 D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x805412D0@l */
/* 80541640  38 C0 00 0C */	li r6, 0xc
/* 80541644  38 E0 00 03 */	li r7, 3
/* 80541648  4B E2 07 19 */	bl __construct_array
/* 8054164C  7F 43 D3 78 */	mr r3, r26
/* 80541650  4B C0 56 49 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80541654  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80541658  3C 80 80 54 */	lis r4, __ct__5csXyzFv@ha /* 0x8054174C@ha */
/* 8054165C  38 84 17 4C */	addi r4, r4, __ct__5csXyzFv@l /* 0x8054174C@l */
/* 80541660  3C A0 80 54 */	lis r5, __dt__5csXyzFv@ha /* 0x8054130C@ha */
/* 80541664  38 A5 13 0C */	addi r5, r5, __dt__5csXyzFv@l /* 0x8054130C@l */
/* 80541668  38 C0 00 06 */	li r6, 6
/* 8054166C  38 E0 00 02 */	li r7, 2
/* 80541670  4B E2 06 F1 */	bl __construct_array
/* 80541674  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80541678  38 80 00 00 */	li r4, 0
/* 8054167C  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80541680  7C A3 00 50 */	subf r5, r3, r0
/* 80541684  4B AC 1D D5 */	bl memset
/* 80541688  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8054168C  4B C0 42 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80541690  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80541694  4B C0 42 05 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80541698  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8054169C  4B C0 40 39 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 805416A0  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 805416A4  4B C0 40 31 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 805416A8  7F 43 D3 78 */	mr r3, r26
/* 805416AC  4B C0 55 ED */	bl initialize__15daNpcT_JntAnm_cFv
/* 805416B0  38 A0 00 00 */	li r5, 0
/* 805416B4  38 60 00 00 */	li r3, 0
/* 805416B8  7C A4 2B 78 */	mr r4, r5
/* 805416BC  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 805416C0  38 00 00 02 */	li r0, 2
/* 805416C4  7C 09 03 A6 */	mtctr r0
lbl_805416C8:
/* 805416C8  7C DF 22 14 */	add r6, r31, r4
/* 805416CC  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 805416D0  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 805416D4  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 805416D8  38 03 0D 14 */	addi r0, r3, 0xd14
/* 805416DC  7C 1F 05 2E */	stfsx f0, r31, r0
/* 805416E0  38 63 00 04 */	addi r3, r3, 4
/* 805416E4  38 84 00 06 */	addi r4, r4, 6
/* 805416E8  42 00 FF E0 */	bdnz lbl_805416C8
/* 805416EC  38 00 00 00 */	li r0, 0
/* 805416F0  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 805416F4  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 805416F8  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 805416FC  38 00 FF FF */	li r0, -1
/* 80541700  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80541704  38 00 00 01 */	li r0, 1
/* 80541708  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 8054170C  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80541710  4B D2 62 45 */	bl cM_rndF__Ff
/* 80541714  FC 00 08 1E */	fctiwz f0, f1
/* 80541718  D8 01 00 08 */	stfd f0, 8(r1)
/* 8054171C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80541720  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80541724  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80541728  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 8054172C  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80541730  7F E3 FB 78 */	mr r3, r31
/* 80541734  39 61 00 40 */	addi r11, r1, 0x40
/* 80541738  4B E2 0A D5 */	bl _restgpr_22
/* 8054173C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80541740  7C 08 03 A6 */	mtlr r0
/* 80541744  38 21 00 40 */	addi r1, r1, 0x40
/* 80541748  4E 80 00 20 */	blr 
