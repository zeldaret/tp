lbl_80D4B2B4:
/* 80D4B2B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80D4B2B8  7C 08 02 A6 */	mflr r0
/* 80D4B2BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80D4B2C0  39 61 00 40 */	addi r11, r1, 0x40
/* 80D4B2C4  4B 61 6E FD */	bl _savegpr_22
/* 80D4B2C8  7C 7F 1B 78 */	mr r31, r3
/* 80D4B2CC  7C 96 23 78 */	mr r22, r4
/* 80D4B2D0  7C B7 2B 78 */	mr r23, r5
/* 80D4B2D4  7C DA 33 78 */	mr r26, r6
/* 80D4B2D8  7C FB 3B 78 */	mr r27, r7
/* 80D4B2DC  7D 1C 43 78 */	mr r28, r8
/* 80D4B2E0  7D 3D 4B 78 */	mr r29, r9
/* 80D4B2E4  7D 58 53 78 */	mr r24, r10
/* 80D4B2E8  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80D4B2EC  3C 80 80 D5 */	lis r4, m__14daPeru_Param_c@ha /* 0x80D4C060@ha */
/* 80D4B2F0  3B C4 C0 60 */	addi r30, r4, m__14daPeru_Param_c@l /* 0x80D4C060@l */
/* 80D4B2F4  4B 2C D8 71 */	bl __ct__10fopAc_ac_cFv
/* 80D4B2F8  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80D4B2FC  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80D4B300  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80D4B304  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80D4B308  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80D4B30C  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80D4B310  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80D4B314  38 7F 05 80 */	addi r3, r31, 0x580
/* 80D4B318  4B 57 50 B1 */	bl __ct__10Z2CreatureFv
/* 80D4B31C  3A DF 06 10 */	addi r22, r31, 0x610
/* 80D4B320  3C 60 80 D5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D4C690@ha */
/* 80D4B324  38 03 C6 90 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D4C690@l */
/* 80D4B328  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80D4B32C  7E C3 B3 78 */	mr r3, r22
/* 80D4B330  38 80 00 00 */	li r4, 0
/* 80D4B334  4B 5D D0 C9 */	bl init__12J3DFrameCtrlFs
/* 80D4B338  38 00 00 00 */	li r0, 0
/* 80D4B33C  90 16 00 18 */	stw r0, 0x18(r22)
/* 80D4B340  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80D4B344  3C 60 80 D5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D4C690@ha */
/* 80D4B348  38 03 C6 90 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D4C690@l */
/* 80D4B34C  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80D4B350  7E C3 B3 78 */	mr r3, r22
/* 80D4B354  38 80 00 00 */	li r4, 0
/* 80D4B358  4B 5D D0 A5 */	bl init__12J3DFrameCtrlFs
/* 80D4B35C  38 00 00 00 */	li r0, 0
/* 80D4B360  90 16 00 14 */	stw r0, 0x14(r22)
/* 80D4B364  3A DF 06 44 */	addi r22, r31, 0x644
/* 80D4B368  3C 60 80 D5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D4C690@ha */
/* 80D4B36C  38 03 C6 90 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D4C690@l */
/* 80D4B370  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80D4B374  7E C3 B3 78 */	mr r3, r22
/* 80D4B378  38 80 00 00 */	li r4, 0
/* 80D4B37C  4B 5D D0 81 */	bl init__12J3DFrameCtrlFs
/* 80D4B380  38 00 00 00 */	li r0, 0
/* 80D4B384  90 16 00 14 */	stw r0, 0x14(r22)
/* 80D4B388  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80D4B38C  3C 60 80 D5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D4C690@ha */
/* 80D4B390  38 03 C6 90 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D4C690@l */
/* 80D4B394  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80D4B398  7E C3 B3 78 */	mr r3, r22
/* 80D4B39C  38 80 00 00 */	li r4, 0
/* 80D4B3A0  4B 5D D0 5D */	bl init__12J3DFrameCtrlFs
/* 80D4B3A4  38 00 00 00 */	li r0, 0
/* 80D4B3A8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80D4B3AC  3A DF 06 74 */	addi r22, r31, 0x674
/* 80D4B3B0  3C 60 80 D5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80D4C690@ha */
/* 80D4B3B4  38 03 C6 90 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80D4C690@l */
/* 80D4B3B8  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80D4B3BC  7E C3 B3 78 */	mr r3, r22
/* 80D4B3C0  38 80 00 00 */	li r4, 0
/* 80D4B3C4  4B 5D D0 39 */	bl init__12J3DFrameCtrlFs
/* 80D4B3C8  38 00 00 00 */	li r0, 0
/* 80D4B3CC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80D4B3D0  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80D4B3D4  7E C3 B3 78 */	mr r3, r22
/* 80D4B3D8  4B 32 AC C9 */	bl __ct__9dBgS_AcchFv
/* 80D4B3DC  3C 60 80 D5 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80D4C69C@ha */
/* 80D4B3E0  38 63 C6 9C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80D4C69C@l */
/* 80D4B3E4  90 76 00 10 */	stw r3, 0x10(r22)
/* 80D4B3E8  38 03 00 0C */	addi r0, r3, 0xc
/* 80D4B3EC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80D4B3F0  38 03 00 18 */	addi r0, r3, 0x18
/* 80D4B3F4  90 16 00 24 */	stw r0, 0x24(r22)
/* 80D4B3F8  38 76 00 14 */	addi r3, r22, 0x14
/* 80D4B3FC  4B 32 DA 6D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80D4B400  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D4B404  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D4B408  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80D4B40C  38 7F 08 80 */	addi r3, r31, 0x880
/* 80D4B410  4B 33 83 51 */	bl __ct__10dCcD_GSttsFv
/* 80D4B414  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D4B418  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D4B41C  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80D4B420  3B 23 00 20 */	addi r25, r3, 0x20
/* 80D4B424  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80D4B428  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80D4B42C  4B 32 AA 81 */	bl __ct__12dBgS_AcchCirFv
/* 80D4B430  38 7F 09 30 */	addi r3, r31, 0x930
/* 80D4B434  4B 51 C7 E9 */	bl __ct__11cBgS_GndChkFv
/* 80D4B438  38 7F 09 74 */	addi r3, r31, 0x974
/* 80D4B43C  4B 4F EA C5 */	bl __ct__10dMsgFlow_cFv
/* 80D4B440  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80D4B444  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80D4B448  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80D4B44C  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80D4B450  4B 33 83 11 */	bl __ct__10dCcD_GSttsFv
/* 80D4B454  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80D4B458  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80D4B45C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80D4B460  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80D4B464  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80D4B468  4B 32 C1 15 */	bl __ct__11dBgS_GndChkFv
/* 80D4B46C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80D4B470  4B 32 C7 F9 */	bl __ct__11dBgS_LinChkFv
/* 80D4B474  3C 60 80 D5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80D4C6E4@ha */
/* 80D4B478  38 03 C6 E4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80D4C6E4@l */
/* 80D4B47C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80D4B480  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80D4B484  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80D4B488  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80D4B48C  4B 3F A4 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D4B490  3C 60 80 D5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80D4C6E4@ha */
/* 80D4B494  38 03 C6 E4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80D4C6E4@l */
/* 80D4B498  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80D4B49C  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80D4B4A0  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80D4B4A4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80D4B4A8  4B 3F A3 F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D4B4AC  3C 60 80 D5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80D4C6F0@ha */
/* 80D4B4B0  38 03 C6 F0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80D4C6F0@l */
/* 80D4B4B4  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80D4B4B8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80D4B4BC  4B 3F A2 19 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80D4B4C0  3C 60 80 D5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80D4C6F0@ha */
/* 80D4B4C4  38 03 C6 F0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80D4C6F0@l */
/* 80D4B4C8  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80D4B4CC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80D4B4D0  4B 3F A2 05 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80D4B4D4  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80D4B4D8  3C 60 80 D5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80D4C6FC@ha */
/* 80D4B4DC  38 03 C6 FC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80D4C6FC@l */
/* 80D4B4E0  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80D4B4E4  3C 60 80 D5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80D4C6F0@ha */
/* 80D4B4E8  38 03 C6 F0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80D4C6F0@l */
/* 80D4B4EC  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80D4B4F0  7F 43 D3 78 */	mr r3, r26
/* 80D4B4F4  4B 3F A1 E1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80D4B4F8  38 7A 00 30 */	addi r3, r26, 0x30
/* 80D4B4FC  3C 80 80 D5 */	lis r4, __ct__4cXyzFv@ha /* 0x80D4B7B8@ha */
/* 80D4B500  38 84 B7 B8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80D4B7B8@l */
/* 80D4B504  3C A0 80 D5 */	lis r5, __dt__4cXyzFv@ha /* 0x80D4AF90@ha */
/* 80D4B508  38 A5 AF 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80D4AF90@l */
/* 80D4B50C  38 C0 00 0C */	li r6, 0xc
/* 80D4B510  38 E0 00 03 */	li r7, 3
/* 80D4B514  4B 61 68 4D */	bl __construct_array
/* 80D4B518  38 7A 00 54 */	addi r3, r26, 0x54
/* 80D4B51C  3C 80 80 D5 */	lis r4, __ct__4cXyzFv@ha /* 0x80D4B7B8@ha */
/* 80D4B520  38 84 B7 B8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80D4B7B8@l */
/* 80D4B524  3C A0 80 D5 */	lis r5, __dt__4cXyzFv@ha /* 0x80D4AF90@ha */
/* 80D4B528  38 A5 AF 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80D4AF90@l */
/* 80D4B52C  38 C0 00 0C */	li r6, 0xc
/* 80D4B530  38 E0 00 03 */	li r7, 3
/* 80D4B534  4B 61 68 2D */	bl __construct_array
/* 80D4B538  38 7A 00 78 */	addi r3, r26, 0x78
/* 80D4B53C  3C 80 80 D5 */	lis r4, __ct__4cXyzFv@ha /* 0x80D4B7B8@ha */
/* 80D4B540  38 84 B7 B8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80D4B7B8@l */
/* 80D4B544  3C A0 80 D5 */	lis r5, __dt__4cXyzFv@ha /* 0x80D4AF90@ha */
/* 80D4B548  38 A5 AF 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80D4AF90@l */
/* 80D4B54C  38 C0 00 0C */	li r6, 0xc
/* 80D4B550  38 E0 00 03 */	li r7, 3
/* 80D4B554  4B 61 68 0D */	bl __construct_array
/* 80D4B558  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80D4B55C  3C 80 80 D5 */	lis r4, __ct__4cXyzFv@ha /* 0x80D4B7B8@ha */
/* 80D4B560  38 84 B7 B8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80D4B7B8@l */
/* 80D4B564  3C A0 80 D5 */	lis r5, __dt__4cXyzFv@ha /* 0x80D4AF90@ha */
/* 80D4B568  38 A5 AF 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80D4AF90@l */
/* 80D4B56C  38 C0 00 0C */	li r6, 0xc
/* 80D4B570  38 E0 00 03 */	li r7, 3
/* 80D4B574  4B 61 67 ED */	bl __construct_array
/* 80D4B578  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80D4B57C  3C 80 80 D5 */	lis r4, __ct__4cXyzFv@ha /* 0x80D4B7B8@ha */
/* 80D4B580  38 84 B7 B8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80D4B7B8@l */
/* 80D4B584  3C A0 80 D5 */	lis r5, __dt__4cXyzFv@ha /* 0x80D4AF90@ha */
/* 80D4B588  38 A5 AF 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80D4AF90@l */
/* 80D4B58C  38 C0 00 0C */	li r6, 0xc
/* 80D4B590  38 E0 00 03 */	li r7, 3
/* 80D4B594  4B 61 67 CD */	bl __construct_array
/* 80D4B598  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80D4B59C  3C 80 80 D5 */	lis r4, __ct__4cXyzFv@ha /* 0x80D4B7B8@ha */
/* 80D4B5A0  38 84 B7 B8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80D4B7B8@l */
/* 80D4B5A4  3C A0 80 D5 */	lis r5, __dt__4cXyzFv@ha /* 0x80D4AF90@ha */
/* 80D4B5A8  38 A5 AF 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80D4AF90@l */
/* 80D4B5AC  38 C0 00 0C */	li r6, 0xc
/* 80D4B5B0  38 E0 00 03 */	li r7, 3
/* 80D4B5B4  4B 61 67 AD */	bl __construct_array
/* 80D4B5B8  7F 43 D3 78 */	mr r3, r26
/* 80D4B5BC  4B 3F B6 DD */	bl initialize__15daNpcT_JntAnm_cFv
/* 80D4B5C0  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80D4B5C4  3C 80 80 D5 */	lis r4, __ct__5csXyzFv@ha /* 0x80D4B6B8@ha */
/* 80D4B5C8  38 84 B6 B8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80D4B6B8@l */
/* 80D4B5CC  3C A0 80 D5 */	lis r5, __dt__5csXyzFv@ha /* 0x80D4AFCC@ha */
/* 80D4B5D0  38 A5 AF CC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80D4AFCC@l */
/* 80D4B5D4  38 C0 00 06 */	li r6, 6
/* 80D4B5D8  38 E0 00 02 */	li r7, 2
/* 80D4B5DC  4B 61 67 85 */	bl __construct_array
/* 80D4B5E0  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80D4B5E4  38 80 00 00 */	li r4, 0
/* 80D4B5E8  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80D4B5EC  7C A3 00 50 */	subf r5, r3, r0
/* 80D4B5F0  4B 2B 7E 69 */	bl memset
/* 80D4B5F4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80D4B5F8  4B 3F A2 A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D4B5FC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80D4B600  4B 3F A2 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80D4B604  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80D4B608  4B 3F A0 CD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80D4B60C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80D4B610  4B 3F A0 C5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80D4B614  7F 43 D3 78 */	mr r3, r26
/* 80D4B618  4B 3F B6 81 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80D4B61C  38 A0 00 00 */	li r5, 0
/* 80D4B620  38 60 00 00 */	li r3, 0
/* 80D4B624  7C A4 2B 78 */	mr r4, r5
/* 80D4B628  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80D4B62C  38 00 00 02 */	li r0, 2
/* 80D4B630  7C 09 03 A6 */	mtctr r0
lbl_80D4B634:
/* 80D4B634  7C DF 22 14 */	add r6, r31, r4
/* 80D4B638  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80D4B63C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80D4B640  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80D4B644  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80D4B648  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80D4B64C  38 63 00 04 */	addi r3, r3, 4
/* 80D4B650  38 84 00 06 */	addi r4, r4, 6
/* 80D4B654  42 00 FF E0 */	bdnz lbl_80D4B634
/* 80D4B658  38 00 00 00 */	li r0, 0
/* 80D4B65C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80D4B660  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80D4B664  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80D4B668  38 00 FF FF */	li r0, -1
/* 80D4B66C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80D4B670  38 00 00 01 */	li r0, 1
/* 80D4B674  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80D4B678  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80D4B67C  4B 51 C2 D9 */	bl cM_rndF__Ff
/* 80D4B680  FC 00 08 1E */	fctiwz f0, f1
/* 80D4B684  D8 01 00 08 */	stfd f0, 8(r1)
/* 80D4B688  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80D4B68C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80D4B690  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80D4B694  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80D4B698  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80D4B69C  7F E3 FB 78 */	mr r3, r31
/* 80D4B6A0  39 61 00 40 */	addi r11, r1, 0x40
/* 80D4B6A4  4B 61 6B 69 */	bl _restgpr_22
/* 80D4B6A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80D4B6AC  7C 08 03 A6 */	mtlr r0
/* 80D4B6B0  38 21 00 40 */	addi r1, r1, 0x40
/* 80D4B6B4  4E 80 00 20 */	blr 
