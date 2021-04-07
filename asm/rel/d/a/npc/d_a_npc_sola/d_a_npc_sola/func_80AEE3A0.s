lbl_80AEE3A0:
/* 80AEE3A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AEE3A4  7C 08 02 A6 */	mflr r0
/* 80AEE3A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AEE3AC  39 61 00 40 */	addi r11, r1, 0x40
/* 80AEE3B0  4B 87 3E 11 */	bl _savegpr_22
/* 80AEE3B4  7C 7F 1B 78 */	mr r31, r3
/* 80AEE3B8  7C 96 23 78 */	mr r22, r4
/* 80AEE3BC  7C B7 2B 78 */	mr r23, r5
/* 80AEE3C0  7C DA 33 78 */	mr r26, r6
/* 80AEE3C4  7C FB 3B 78 */	mr r27, r7
/* 80AEE3C8  7D 1C 43 78 */	mr r28, r8
/* 80AEE3CC  7D 3D 4B 78 */	mr r29, r9
/* 80AEE3D0  7D 58 53 78 */	mr r24, r10
/* 80AEE3D4  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80AEE3D8  3C 80 80 AF */	lis r4, m__18daNpc_solA_Param_c@ha /* 0x80AEF100@ha */
/* 80AEE3DC  3B C4 F1 00 */	addi r30, r4, m__18daNpc_solA_Param_c@l /* 0x80AEF100@l */
/* 80AEE3E0  4B 52 A7 85 */	bl __ct__10fopAc_ac_cFv
/* 80AEE3E4  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AEE3E8  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AEE3EC  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AEE3F0  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80AEE3F4  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80AEE3F8  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80AEE3FC  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80AEE400  38 7F 05 80 */	addi r3, r31, 0x580
/* 80AEE404  4B 7D 1F C5 */	bl __ct__10Z2CreatureFv
/* 80AEE408  3A DF 06 10 */	addi r22, r31, 0x610
/* 80AEE40C  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AEF318@ha */
/* 80AEE410  38 03 F3 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AEF318@l */
/* 80AEE414  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80AEE418  7E C3 B3 78 */	mr r3, r22
/* 80AEE41C  38 80 00 00 */	li r4, 0
/* 80AEE420  4B 83 9F DD */	bl init__12J3DFrameCtrlFs
/* 80AEE424  38 00 00 00 */	li r0, 0
/* 80AEE428  90 16 00 18 */	stw r0, 0x18(r22)
/* 80AEE42C  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80AEE430  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AEF318@ha */
/* 80AEE434  38 03 F3 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AEF318@l */
/* 80AEE438  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80AEE43C  7E C3 B3 78 */	mr r3, r22
/* 80AEE440  38 80 00 00 */	li r4, 0
/* 80AEE444  4B 83 9F B9 */	bl init__12J3DFrameCtrlFs
/* 80AEE448  38 00 00 00 */	li r0, 0
/* 80AEE44C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AEE450  3A DF 06 44 */	addi r22, r31, 0x644
/* 80AEE454  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AEF318@ha */
/* 80AEE458  38 03 F3 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AEF318@l */
/* 80AEE45C  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80AEE460  7E C3 B3 78 */	mr r3, r22
/* 80AEE464  38 80 00 00 */	li r4, 0
/* 80AEE468  4B 83 9F 95 */	bl init__12J3DFrameCtrlFs
/* 80AEE46C  38 00 00 00 */	li r0, 0
/* 80AEE470  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AEE474  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80AEE478  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AEF318@ha */
/* 80AEE47C  38 03 F3 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AEF318@l */
/* 80AEE480  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80AEE484  7E C3 B3 78 */	mr r3, r22
/* 80AEE488  38 80 00 00 */	li r4, 0
/* 80AEE48C  4B 83 9F 71 */	bl init__12J3DFrameCtrlFs
/* 80AEE490  38 00 00 00 */	li r0, 0
/* 80AEE494  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AEE498  3A DF 06 74 */	addi r22, r31, 0x674
/* 80AEE49C  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AEF318@ha */
/* 80AEE4A0  38 03 F3 18 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AEF318@l */
/* 80AEE4A4  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80AEE4A8  7E C3 B3 78 */	mr r3, r22
/* 80AEE4AC  38 80 00 00 */	li r4, 0
/* 80AEE4B0  4B 83 9F 4D */	bl init__12J3DFrameCtrlFs
/* 80AEE4B4  38 00 00 00 */	li r0, 0
/* 80AEE4B8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AEE4BC  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80AEE4C0  7E C3 B3 78 */	mr r3, r22
/* 80AEE4C4  4B 58 7B DD */	bl __ct__9dBgS_AcchFv
/* 80AEE4C8  3C 60 80 AF */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AEF324@ha */
/* 80AEE4CC  38 63 F3 24 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AEF324@l */
/* 80AEE4D0  90 76 00 10 */	stw r3, 0x10(r22)
/* 80AEE4D4  38 03 00 0C */	addi r0, r3, 0xc
/* 80AEE4D8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AEE4DC  38 03 00 18 */	addi r0, r3, 0x18
/* 80AEE4E0  90 16 00 24 */	stw r0, 0x24(r22)
/* 80AEE4E4  38 76 00 14 */	addi r3, r22, 0x14
/* 80AEE4E8  4B 58 A9 81 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80AEE4EC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AEE4F0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AEE4F4  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80AEE4F8  38 7F 08 80 */	addi r3, r31, 0x880
/* 80AEE4FC  4B 59 52 65 */	bl __ct__10dCcD_GSttsFv
/* 80AEE500  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AEE504  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AEE508  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80AEE50C  3B 23 00 20 */	addi r25, r3, 0x20
/* 80AEE510  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80AEE514  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AEE518  4B 58 79 95 */	bl __ct__12dBgS_AcchCirFv
/* 80AEE51C  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AEE520  4B 77 96 FD */	bl __ct__11cBgS_GndChkFv
/* 80AEE524  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AEE528  4B 75 B9 D9 */	bl __ct__10dMsgFlow_cFv
/* 80AEE52C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AEE530  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AEE534  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AEE538  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80AEE53C  4B 59 52 25 */	bl __ct__10dCcD_GSttsFv
/* 80AEE540  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AEE544  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AEE548  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AEE54C  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80AEE550  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80AEE554  4B 58 90 29 */	bl __ct__11dBgS_GndChkFv
/* 80AEE558  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80AEE55C  4B 58 97 0D */	bl __ct__11dBgS_LinChkFv
/* 80AEE560  3C 60 80 AF */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AEF36C@ha */
/* 80AEE564  38 03 F3 6C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AEF36C@l */
/* 80AEE568  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80AEE56C  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80AEE570  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80AEE574  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AEE578  4B 65 73 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AEE57C  3C 60 80 AF */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AEF36C@ha */
/* 80AEE580  38 03 F3 6C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AEF36C@l */
/* 80AEE584  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80AEE588  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80AEE58C  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80AEE590  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AEE594  4B 65 73 05 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AEE598  3C 60 80 AF */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AEF378@ha */
/* 80AEE59C  38 03 F3 78 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AEF378@l */
/* 80AEE5A0  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80AEE5A4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AEE5A8  4B 65 71 2D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AEE5AC  3C 60 80 AF */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AEF378@ha */
/* 80AEE5B0  38 03 F3 78 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AEF378@l */
/* 80AEE5B4  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80AEE5B8  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AEE5BC  4B 65 71 19 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AEE5C0  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80AEE5C4  3C 60 80 AF */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AEF384@ha */
/* 80AEE5C8  38 03 F3 84 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AEF384@l */
/* 80AEE5CC  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80AEE5D0  3C 60 80 AF */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AEF378@ha */
/* 80AEE5D4  38 03 F3 78 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AEF378@l */
/* 80AEE5D8  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80AEE5DC  7F 43 D3 78 */	mr r3, r26
/* 80AEE5E0  4B 65 70 F5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AEE5E4  38 7A 00 30 */	addi r3, r26, 0x30
/* 80AEE5E8  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha /* 0x80AEE8A4@ha */
/* 80AEE5EC  38 84 E8 A4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AEE8A4@l */
/* 80AEE5F0  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha /* 0x80AEE328@ha */
/* 80AEE5F4  38 A5 E3 28 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AEE328@l */
/* 80AEE5F8  38 C0 00 0C */	li r6, 0xc
/* 80AEE5FC  38 E0 00 03 */	li r7, 3
/* 80AEE600  4B 87 37 61 */	bl __construct_array
/* 80AEE604  38 7A 00 54 */	addi r3, r26, 0x54
/* 80AEE608  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha /* 0x80AEE8A4@ha */
/* 80AEE60C  38 84 E8 A4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AEE8A4@l */
/* 80AEE610  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha /* 0x80AEE328@ha */
/* 80AEE614  38 A5 E3 28 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AEE328@l */
/* 80AEE618  38 C0 00 0C */	li r6, 0xc
/* 80AEE61C  38 E0 00 03 */	li r7, 3
/* 80AEE620  4B 87 37 41 */	bl __construct_array
/* 80AEE624  38 7A 00 78 */	addi r3, r26, 0x78
/* 80AEE628  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha /* 0x80AEE8A4@ha */
/* 80AEE62C  38 84 E8 A4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AEE8A4@l */
/* 80AEE630  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha /* 0x80AEE328@ha */
/* 80AEE634  38 A5 E3 28 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AEE328@l */
/* 80AEE638  38 C0 00 0C */	li r6, 0xc
/* 80AEE63C  38 E0 00 03 */	li r7, 3
/* 80AEE640  4B 87 37 21 */	bl __construct_array
/* 80AEE644  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80AEE648  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha /* 0x80AEE8A4@ha */
/* 80AEE64C  38 84 E8 A4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AEE8A4@l */
/* 80AEE650  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha /* 0x80AEE328@ha */
/* 80AEE654  38 A5 E3 28 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AEE328@l */
/* 80AEE658  38 C0 00 0C */	li r6, 0xc
/* 80AEE65C  38 E0 00 03 */	li r7, 3
/* 80AEE660  4B 87 37 01 */	bl __construct_array
/* 80AEE664  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80AEE668  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha /* 0x80AEE8A4@ha */
/* 80AEE66C  38 84 E8 A4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AEE8A4@l */
/* 80AEE670  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha /* 0x80AEE328@ha */
/* 80AEE674  38 A5 E3 28 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AEE328@l */
/* 80AEE678  38 C0 00 0C */	li r6, 0xc
/* 80AEE67C  38 E0 00 03 */	li r7, 3
/* 80AEE680  4B 87 36 E1 */	bl __construct_array
/* 80AEE684  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80AEE688  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha /* 0x80AEE8A4@ha */
/* 80AEE68C  38 84 E8 A4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AEE8A4@l */
/* 80AEE690  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha /* 0x80AEE328@ha */
/* 80AEE694  38 A5 E3 28 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AEE328@l */
/* 80AEE698  38 C0 00 0C */	li r6, 0xc
/* 80AEE69C  38 E0 00 03 */	li r7, 3
/* 80AEE6A0  4B 87 36 C1 */	bl __construct_array
/* 80AEE6A4  7F 43 D3 78 */	mr r3, r26
/* 80AEE6A8  4B 65 85 F1 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AEE6AC  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AEE6B0  3C 80 80 AF */	lis r4, __ct__5csXyzFv@ha /* 0x80AEE7A4@ha */
/* 80AEE6B4  38 84 E7 A4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AEE7A4@l */
/* 80AEE6B8  3C A0 80 AF */	lis r5, __dt__5csXyzFv@ha /* 0x80AEE364@ha */
/* 80AEE6BC  38 A5 E3 64 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AEE364@l */
/* 80AEE6C0  38 C0 00 06 */	li r6, 6
/* 80AEE6C4  38 E0 00 02 */	li r7, 2
/* 80AEE6C8  4B 87 36 99 */	bl __construct_array
/* 80AEE6CC  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AEE6D0  38 80 00 00 */	li r4, 0
/* 80AEE6D4  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AEE6D8  7C A3 00 50 */	subf r5, r3, r0
/* 80AEE6DC  4B 51 4D 7D */	bl memset
/* 80AEE6E0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AEE6E4  4B 65 71 B5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AEE6E8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AEE6EC  4B 65 71 AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AEE6F0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AEE6F4  4B 65 6F E1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AEE6F8  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AEE6FC  4B 65 6F D9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AEE700  7F 43 D3 78 */	mr r3, r26
/* 80AEE704  4B 65 85 95 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AEE708  38 A0 00 00 */	li r5, 0
/* 80AEE70C  38 60 00 00 */	li r3, 0
/* 80AEE710  7C A4 2B 78 */	mr r4, r5
/* 80AEE714  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80AEE718  38 00 00 02 */	li r0, 2
/* 80AEE71C  7C 09 03 A6 */	mtctr r0
lbl_80AEE720:
/* 80AEE720  7C DF 22 14 */	add r6, r31, r4
/* 80AEE724  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AEE728  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AEE72C  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AEE730  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AEE734  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AEE738  38 63 00 04 */	addi r3, r3, 4
/* 80AEE73C  38 84 00 06 */	addi r4, r4, 6
/* 80AEE740  42 00 FF E0 */	bdnz lbl_80AEE720
/* 80AEE744  38 00 00 00 */	li r0, 0
/* 80AEE748  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AEE74C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AEE750  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AEE754  38 00 FF FF */	li r0, -1
/* 80AEE758  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AEE75C  38 00 00 01 */	li r0, 1
/* 80AEE760  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AEE764  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80AEE768  4B 77 91 ED */	bl cM_rndF__Ff
/* 80AEE76C  FC 00 08 1E */	fctiwz f0, f1
/* 80AEE770  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AEE774  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AEE778  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AEE77C  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80AEE780  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AEE784  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AEE788  7F E3 FB 78 */	mr r3, r31
/* 80AEE78C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AEE790  4B 87 3A 7D */	bl _restgpr_22
/* 80AEE794  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AEE798  7C 08 03 A6 */	mtlr r0
/* 80AEE79C  38 21 00 40 */	addi r1, r1, 0x40
/* 80AEE7A0  4E 80 00 20 */	blr 
