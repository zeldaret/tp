lbl_809D619C:
/* 809D619C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809D61A0  7C 08 02 A6 */	mflr r0
/* 809D61A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 809D61A8  39 61 00 40 */	addi r11, r1, 0x40
/* 809D61AC  4B 98 C0 15 */	bl _savegpr_22
/* 809D61B0  7C 7F 1B 78 */	mr r31, r3
/* 809D61B4  7C 96 23 78 */	mr r22, r4
/* 809D61B8  7C B7 2B 78 */	mr r23, r5
/* 809D61BC  7C DA 33 78 */	mr r26, r6
/* 809D61C0  7C FB 3B 78 */	mr r27, r7
/* 809D61C4  7D 1C 43 78 */	mr r28, r8
/* 809D61C8  7D 3D 4B 78 */	mr r29, r9
/* 809D61CC  7D 58 53 78 */	mr r24, r10
/* 809D61D0  83 21 00 48 */	lwz r25, 0x48(r1)
/* 809D61D4  3C 80 80 9D */	lis r4, m__17daNpc_grM_Param_c@ha /* 0x809D6D70@ha */
/* 809D61D8  3B C4 6D 70 */	addi r30, r4, m__17daNpc_grM_Param_c@l /* 0x809D6D70@l */
/* 809D61DC  4B 64 29 89 */	bl __ct__10fopAc_ac_cFv
/* 809D61E0  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 809D61E4  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 809D61E8  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 809D61EC  92 DF 05 68 */	stw r22, 0x568(r31)
/* 809D61F0  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 809D61F4  93 1F 05 70 */	stw r24, 0x570(r31)
/* 809D61F8  93 3F 05 74 */	stw r25, 0x574(r31)
/* 809D61FC  38 7F 05 80 */	addi r3, r31, 0x580
/* 809D6200  4B 8E A1 C9 */	bl __ct__10Z2CreatureFv
/* 809D6204  3A DF 06 10 */	addi r22, r31, 0x610
/* 809D6208  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809D7180@ha */
/* 809D620C  38 03 71 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809D7180@l */
/* 809D6210  90 1F 06 10 */	stw r0, 0x610(r31)
/* 809D6214  7E C3 B3 78 */	mr r3, r22
/* 809D6218  38 80 00 00 */	li r4, 0
/* 809D621C  4B 95 21 E1 */	bl init__12J3DFrameCtrlFs
/* 809D6220  38 00 00 00 */	li r0, 0
/* 809D6224  90 16 00 18 */	stw r0, 0x18(r22)
/* 809D6228  3A DF 06 2C */	addi r22, r31, 0x62c
/* 809D622C  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809D7180@ha */
/* 809D6230  38 03 71 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809D7180@l */
/* 809D6234  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 809D6238  7E C3 B3 78 */	mr r3, r22
/* 809D623C  38 80 00 00 */	li r4, 0
/* 809D6240  4B 95 21 BD */	bl init__12J3DFrameCtrlFs
/* 809D6244  38 00 00 00 */	li r0, 0
/* 809D6248  90 16 00 14 */	stw r0, 0x14(r22)
/* 809D624C  3A DF 06 44 */	addi r22, r31, 0x644
/* 809D6250  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809D7180@ha */
/* 809D6254  38 03 71 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809D7180@l */
/* 809D6258  90 1F 06 44 */	stw r0, 0x644(r31)
/* 809D625C  7E C3 B3 78 */	mr r3, r22
/* 809D6260  38 80 00 00 */	li r4, 0
/* 809D6264  4B 95 21 99 */	bl init__12J3DFrameCtrlFs
/* 809D6268  38 00 00 00 */	li r0, 0
/* 809D626C  90 16 00 14 */	stw r0, 0x14(r22)
/* 809D6270  3A DF 06 5C */	addi r22, r31, 0x65c
/* 809D6274  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809D7180@ha */
/* 809D6278  38 03 71 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809D7180@l */
/* 809D627C  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 809D6280  7E C3 B3 78 */	mr r3, r22
/* 809D6284  38 80 00 00 */	li r4, 0
/* 809D6288  4B 95 21 75 */	bl init__12J3DFrameCtrlFs
/* 809D628C  38 00 00 00 */	li r0, 0
/* 809D6290  90 16 00 14 */	stw r0, 0x14(r22)
/* 809D6294  3A DF 06 74 */	addi r22, r31, 0x674
/* 809D6298  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809D7180@ha */
/* 809D629C  38 03 71 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809D7180@l */
/* 809D62A0  90 1F 06 74 */	stw r0, 0x674(r31)
/* 809D62A4  7E C3 B3 78 */	mr r3, r22
/* 809D62A8  38 80 00 00 */	li r4, 0
/* 809D62AC  4B 95 21 51 */	bl init__12J3DFrameCtrlFs
/* 809D62B0  38 00 00 00 */	li r0, 0
/* 809D62B4  90 16 00 14 */	stw r0, 0x14(r22)
/* 809D62B8  3A DF 06 8C */	addi r22, r31, 0x68c
/* 809D62BC  7E C3 B3 78 */	mr r3, r22
/* 809D62C0  4B 69 FD E1 */	bl __ct__9dBgS_AcchFv
/* 809D62C4  3C 60 80 9D */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809D718C@ha */
/* 809D62C8  38 63 71 8C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809D718C@l */
/* 809D62CC  90 76 00 10 */	stw r3, 0x10(r22)
/* 809D62D0  38 03 00 0C */	addi r0, r3, 0xc
/* 809D62D4  90 16 00 14 */	stw r0, 0x14(r22)
/* 809D62D8  38 03 00 18 */	addi r0, r3, 0x18
/* 809D62DC  90 16 00 24 */	stw r0, 0x24(r22)
/* 809D62E0  38 76 00 14 */	addi r3, r22, 0x14
/* 809D62E4  4B 6A 2B 85 */	bl SetObj__16dBgS_PolyPassChkFv
/* 809D62E8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809D62EC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809D62F0  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 809D62F4  38 7F 08 80 */	addi r3, r31, 0x880
/* 809D62F8  4B 6A D4 69 */	bl __ct__10dCcD_GSttsFv
/* 809D62FC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809D6300  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809D6304  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 809D6308  3B 23 00 20 */	addi r25, r3, 0x20
/* 809D630C  93 3F 08 80 */	stw r25, 0x880(r31)
/* 809D6310  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 809D6314  4B 69 FB 99 */	bl __ct__12dBgS_AcchCirFv
/* 809D6318  38 7F 09 30 */	addi r3, r31, 0x930
/* 809D631C  4B 89 19 01 */	bl __ct__11cBgS_GndChkFv
/* 809D6320  38 7F 09 74 */	addi r3, r31, 0x974
/* 809D6324  4B 87 3B DD */	bl __ct__10dMsgFlow_cFv
/* 809D6328  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809D632C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809D6330  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 809D6334  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 809D6338  4B 6A D4 29 */	bl __ct__10dCcD_GSttsFv
/* 809D633C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809D6340  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809D6344  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 809D6348  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 809D634C  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 809D6350  4B 6A 12 2D */	bl __ct__11dBgS_GndChkFv
/* 809D6354  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 809D6358  4B 6A 19 11 */	bl __ct__11dBgS_LinChkFv
/* 809D635C  3C 60 80 9D */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x809D71D4@ha */
/* 809D6360  38 03 71 D4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x809D71D4@l */
/* 809D6364  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 809D6368  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 809D636C  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 809D6370  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809D6374  4B 76 F5 25 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D6378  3C 60 80 9D */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x809D71D4@ha */
/* 809D637C  38 03 71 D4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x809D71D4@l */
/* 809D6380  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 809D6384  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 809D6388  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 809D638C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809D6390  4B 76 F5 09 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D6394  3C 60 80 9D */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809D71E0@ha */
/* 809D6398  38 03 71 E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809D71E0@l */
/* 809D639C  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 809D63A0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809D63A4  4B 76 F3 31 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809D63A8  3C 60 80 9D */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809D71E0@ha */
/* 809D63AC  38 03 71 E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809D71E0@l */
/* 809D63B0  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 809D63B4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 809D63B8  4B 76 F3 1D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809D63BC  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 809D63C0  3C 60 80 9D */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x809D71EC@ha */
/* 809D63C4  38 03 71 EC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x809D71EC@l */
/* 809D63C8  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 809D63CC  3C 60 80 9D */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809D71E0@ha */
/* 809D63D0  38 03 71 E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809D71E0@l */
/* 809D63D4  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 809D63D8  7F 43 D3 78 */	mr r3, r26
/* 809D63DC  4B 76 F2 F9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809D63E0  38 7A 00 30 */	addi r3, r26, 0x30
/* 809D63E4  3C 80 80 9D */	lis r4, __ct__4cXyzFv@ha /* 0x809D66A0@ha */
/* 809D63E8  38 84 66 A0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809D66A0@l */
/* 809D63EC  3C A0 80 9D */	lis r5, __dt__4cXyzFv@ha /* 0x809D5F5C@ha */
/* 809D63F0  38 A5 5F 5C */	addi r5, r5, __dt__4cXyzFv@l /* 0x809D5F5C@l */
/* 809D63F4  38 C0 00 0C */	li r6, 0xc
/* 809D63F8  38 E0 00 03 */	li r7, 3
/* 809D63FC  4B 98 B9 65 */	bl __construct_array
/* 809D6400  38 7A 00 54 */	addi r3, r26, 0x54
/* 809D6404  3C 80 80 9D */	lis r4, __ct__4cXyzFv@ha /* 0x809D66A0@ha */
/* 809D6408  38 84 66 A0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809D66A0@l */
/* 809D640C  3C A0 80 9D */	lis r5, __dt__4cXyzFv@ha /* 0x809D5F5C@ha */
/* 809D6410  38 A5 5F 5C */	addi r5, r5, __dt__4cXyzFv@l /* 0x809D5F5C@l */
/* 809D6414  38 C0 00 0C */	li r6, 0xc
/* 809D6418  38 E0 00 03 */	li r7, 3
/* 809D641C  4B 98 B9 45 */	bl __construct_array
/* 809D6420  38 7A 00 78 */	addi r3, r26, 0x78
/* 809D6424  3C 80 80 9D */	lis r4, __ct__4cXyzFv@ha /* 0x809D66A0@ha */
/* 809D6428  38 84 66 A0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809D66A0@l */
/* 809D642C  3C A0 80 9D */	lis r5, __dt__4cXyzFv@ha /* 0x809D5F5C@ha */
/* 809D6430  38 A5 5F 5C */	addi r5, r5, __dt__4cXyzFv@l /* 0x809D5F5C@l */
/* 809D6434  38 C0 00 0C */	li r6, 0xc
/* 809D6438  38 E0 00 03 */	li r7, 3
/* 809D643C  4B 98 B9 25 */	bl __construct_array
/* 809D6440  38 7A 00 9C */	addi r3, r26, 0x9c
/* 809D6444  3C 80 80 9D */	lis r4, __ct__4cXyzFv@ha /* 0x809D66A0@ha */
/* 809D6448  38 84 66 A0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809D66A0@l */
/* 809D644C  3C A0 80 9D */	lis r5, __dt__4cXyzFv@ha /* 0x809D5F5C@ha */
/* 809D6450  38 A5 5F 5C */	addi r5, r5, __dt__4cXyzFv@l /* 0x809D5F5C@l */
/* 809D6454  38 C0 00 0C */	li r6, 0xc
/* 809D6458  38 E0 00 03 */	li r7, 3
/* 809D645C  4B 98 B9 05 */	bl __construct_array
/* 809D6460  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 809D6464  3C 80 80 9D */	lis r4, __ct__4cXyzFv@ha /* 0x809D66A0@ha */
/* 809D6468  38 84 66 A0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809D66A0@l */
/* 809D646C  3C A0 80 9D */	lis r5, __dt__4cXyzFv@ha /* 0x809D5F5C@ha */
/* 809D6470  38 A5 5F 5C */	addi r5, r5, __dt__4cXyzFv@l /* 0x809D5F5C@l */
/* 809D6474  38 C0 00 0C */	li r6, 0xc
/* 809D6478  38 E0 00 03 */	li r7, 3
/* 809D647C  4B 98 B8 E5 */	bl __construct_array
/* 809D6480  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 809D6484  3C 80 80 9D */	lis r4, __ct__4cXyzFv@ha /* 0x809D66A0@ha */
/* 809D6488  38 84 66 A0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809D66A0@l */
/* 809D648C  3C A0 80 9D */	lis r5, __dt__4cXyzFv@ha /* 0x809D5F5C@ha */
/* 809D6490  38 A5 5F 5C */	addi r5, r5, __dt__4cXyzFv@l /* 0x809D5F5C@l */
/* 809D6494  38 C0 00 0C */	li r6, 0xc
/* 809D6498  38 E0 00 03 */	li r7, 3
/* 809D649C  4B 98 B8 C5 */	bl __construct_array
/* 809D64A0  7F 43 D3 78 */	mr r3, r26
/* 809D64A4  4B 77 07 F5 */	bl initialize__15daNpcT_JntAnm_cFv
/* 809D64A8  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 809D64AC  3C 80 80 9D */	lis r4, __ct__5csXyzFv@ha /* 0x809D65A0@ha */
/* 809D64B0  38 84 65 A0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809D65A0@l */
/* 809D64B4  3C A0 80 9D */	lis r5, __dt__5csXyzFv@ha /* 0x809D6160@ha */
/* 809D64B8  38 A5 61 60 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809D6160@l */
/* 809D64BC  38 C0 00 06 */	li r6, 6
/* 809D64C0  38 E0 00 02 */	li r7, 2
/* 809D64C4  4B 98 B8 9D */	bl __construct_array
/* 809D64C8  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 809D64CC  38 80 00 00 */	li r4, 0
/* 809D64D0  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 809D64D4  7C A3 00 50 */	subf r5, r3, r0
/* 809D64D8  4B 62 CF 81 */	bl memset
/* 809D64DC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809D64E0  4B 76 F3 B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D64E4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809D64E8  4B 76 F3 B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809D64EC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809D64F0  4B 76 F1 E5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809D64F4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 809D64F8  4B 76 F1 DD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809D64FC  7F 43 D3 78 */	mr r3, r26
/* 809D6500  4B 77 07 99 */	bl initialize__15daNpcT_JntAnm_cFv
/* 809D6504  38 A0 00 00 */	li r5, 0
/* 809D6508  38 60 00 00 */	li r3, 0
/* 809D650C  7C A4 2B 78 */	mr r4, r5
/* 809D6510  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809D6514  38 00 00 02 */	li r0, 2
/* 809D6518  7C 09 03 A6 */	mtctr r0
lbl_809D651C:
/* 809D651C  7C DF 22 14 */	add r6, r31, r4
/* 809D6520  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 809D6524  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 809D6528  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 809D652C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809D6530  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809D6534  38 63 00 04 */	addi r3, r3, 4
/* 809D6538  38 84 00 06 */	addi r4, r4, 6
/* 809D653C  42 00 FF E0 */	bdnz lbl_809D651C
/* 809D6540  38 00 00 00 */	li r0, 0
/* 809D6544  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809D6548  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809D654C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809D6550  38 00 FF FF */	li r0, -1
/* 809D6554  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 809D6558  38 00 00 01 */	li r0, 1
/* 809D655C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 809D6560  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 809D6564  4B 89 13 F1 */	bl cM_rndF__Ff
/* 809D6568  FC 00 08 1E */	fctiwz f0, f1
/* 809D656C  D8 01 00 08 */	stfd f0, 8(r1)
/* 809D6570  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809D6574  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 809D6578  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 809D657C  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 809D6580  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 809D6584  7F E3 FB 78 */	mr r3, r31
/* 809D6588  39 61 00 40 */	addi r11, r1, 0x40
/* 809D658C  4B 98 BC 81 */	bl _restgpr_22
/* 809D6590  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809D6594  7C 08 03 A6 */	mtlr r0
/* 809D6598  38 21 00 40 */	addi r1, r1, 0x40
/* 809D659C  4E 80 00 20 */	blr 
