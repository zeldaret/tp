lbl_80AD732C:
/* 80AD732C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AD7330  7C 08 02 A6 */	mflr r0
/* 80AD7334  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AD7338  39 61 00 40 */	addi r11, r1, 0x40
/* 80AD733C  4B 88 AE 85 */	bl _savegpr_22
/* 80AD7340  7C 7F 1B 78 */	mr r31, r3
/* 80AD7344  7C 96 23 78 */	mr r22, r4
/* 80AD7348  7C B7 2B 78 */	mr r23, r5
/* 80AD734C  7C DA 33 78 */	mr r26, r6
/* 80AD7350  7C FB 3B 78 */	mr r27, r7
/* 80AD7354  7D 1C 43 78 */	mr r28, r8
/* 80AD7358  7D 3D 4B 78 */	mr r29, r9
/* 80AD735C  7D 58 53 78 */	mr r24, r10
/* 80AD7360  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80AD7364  3C 80 80 AD */	lis r4, m__20daNpc_Seirei_Param_c@ha /* 0x80AD7CA8@ha */
/* 80AD7368  3B C4 7C A8 */	addi r30, r4, m__20daNpc_Seirei_Param_c@l /* 0x80AD7CA8@l */
/* 80AD736C  4B 54 17 F9 */	bl __ct__10fopAc_ac_cFv
/* 80AD7370  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AD7374  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AD7378  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AD737C  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80AD7380  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80AD7384  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80AD7388  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80AD738C  38 7F 05 80 */	addi r3, r31, 0x580
/* 80AD7390  4B 7E 90 39 */	bl __ct__10Z2CreatureFv
/* 80AD7394  3A DF 06 10 */	addi r22, r31, 0x610
/* 80AD7398  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AD7FA4@ha */
/* 80AD739C  38 03 7F A4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AD7FA4@l */
/* 80AD73A0  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80AD73A4  7E C3 B3 78 */	mr r3, r22
/* 80AD73A8  38 80 00 00 */	li r4, 0
/* 80AD73AC  4B 85 10 51 */	bl init__12J3DFrameCtrlFs
/* 80AD73B0  38 00 00 00 */	li r0, 0
/* 80AD73B4  90 16 00 18 */	stw r0, 0x18(r22)
/* 80AD73B8  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80AD73BC  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AD7FA4@ha */
/* 80AD73C0  38 03 7F A4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AD7FA4@l */
/* 80AD73C4  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80AD73C8  7E C3 B3 78 */	mr r3, r22
/* 80AD73CC  38 80 00 00 */	li r4, 0
/* 80AD73D0  4B 85 10 2D */	bl init__12J3DFrameCtrlFs
/* 80AD73D4  38 00 00 00 */	li r0, 0
/* 80AD73D8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AD73DC  3A DF 06 44 */	addi r22, r31, 0x644
/* 80AD73E0  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AD7FA4@ha */
/* 80AD73E4  38 03 7F A4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AD7FA4@l */
/* 80AD73E8  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80AD73EC  7E C3 B3 78 */	mr r3, r22
/* 80AD73F0  38 80 00 00 */	li r4, 0
/* 80AD73F4  4B 85 10 09 */	bl init__12J3DFrameCtrlFs
/* 80AD73F8  38 00 00 00 */	li r0, 0
/* 80AD73FC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AD7400  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80AD7404  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AD7FA4@ha */
/* 80AD7408  38 03 7F A4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AD7FA4@l */
/* 80AD740C  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80AD7410  7E C3 B3 78 */	mr r3, r22
/* 80AD7414  38 80 00 00 */	li r4, 0
/* 80AD7418  4B 85 0F E5 */	bl init__12J3DFrameCtrlFs
/* 80AD741C  38 00 00 00 */	li r0, 0
/* 80AD7420  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AD7424  3A DF 06 74 */	addi r22, r31, 0x674
/* 80AD7428  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AD7FA4@ha */
/* 80AD742C  38 03 7F A4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AD7FA4@l */
/* 80AD7430  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80AD7434  7E C3 B3 78 */	mr r3, r22
/* 80AD7438  38 80 00 00 */	li r4, 0
/* 80AD743C  4B 85 0F C1 */	bl init__12J3DFrameCtrlFs
/* 80AD7440  38 00 00 00 */	li r0, 0
/* 80AD7444  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AD7448  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80AD744C  7E C3 B3 78 */	mr r3, r22
/* 80AD7450  4B 59 EC 51 */	bl __ct__9dBgS_AcchFv
/* 80AD7454  3C 60 80 AD */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AD7FB0@ha */
/* 80AD7458  38 63 7F B0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AD7FB0@l */
/* 80AD745C  90 76 00 10 */	stw r3, 0x10(r22)
/* 80AD7460  38 03 00 0C */	addi r0, r3, 0xc
/* 80AD7464  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AD7468  38 03 00 18 */	addi r0, r3, 0x18
/* 80AD746C  90 16 00 24 */	stw r0, 0x24(r22)
/* 80AD7470  38 76 00 14 */	addi r3, r22, 0x14
/* 80AD7474  4B 5A 19 F5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80AD7478  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AD747C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AD7480  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80AD7484  38 7F 08 80 */	addi r3, r31, 0x880
/* 80AD7488  4B 5A C2 D9 */	bl __ct__10dCcD_GSttsFv
/* 80AD748C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AD7490  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AD7494  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80AD7498  3B 23 00 20 */	addi r25, r3, 0x20
/* 80AD749C  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80AD74A0  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AD74A4  4B 59 EA 09 */	bl __ct__12dBgS_AcchCirFv
/* 80AD74A8  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AD74AC  4B 79 07 71 */	bl __ct__11cBgS_GndChkFv
/* 80AD74B0  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AD74B4  4B 77 2A 4D */	bl __ct__10dMsgFlow_cFv
/* 80AD74B8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AD74BC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AD74C0  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AD74C4  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80AD74C8  4B 5A C2 99 */	bl __ct__10dCcD_GSttsFv
/* 80AD74CC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AD74D0  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AD74D4  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AD74D8  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80AD74DC  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80AD74E0  4B 5A 00 9D */	bl __ct__11dBgS_GndChkFv
/* 80AD74E4  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80AD74E8  4B 5A 07 81 */	bl __ct__11dBgS_LinChkFv
/* 80AD74EC  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AD7FF8@ha */
/* 80AD74F0  38 03 7F F8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AD7FF8@l */
/* 80AD74F4  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80AD74F8  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80AD74FC  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80AD7500  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD7504  4B 66 E3 95 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD7508  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AD7FF8@ha */
/* 80AD750C  38 03 7F F8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AD7FF8@l */
/* 80AD7510  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80AD7514  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80AD7518  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80AD751C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD7520  4B 66 E3 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD7524  3C 60 80 AE */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AD8004@ha */
/* 80AD7528  38 03 80 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AD8004@l */
/* 80AD752C  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80AD7530  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AD7534  4B 66 E1 A1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD7538  3C 60 80 AE */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AD8004@ha */
/* 80AD753C  38 03 80 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AD8004@l */
/* 80AD7540  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80AD7544  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AD7548  4B 66 E1 8D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD754C  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80AD7550  3C 60 80 AE */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AD8010@ha */
/* 80AD7554  38 03 80 10 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AD8010@l */
/* 80AD7558  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80AD755C  3C 60 80 AE */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AD8004@ha */
/* 80AD7560  38 03 80 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AD8004@l */
/* 80AD7564  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80AD7568  7F 43 D3 78 */	mr r3, r26
/* 80AD756C  4B 66 E1 69 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD7570  38 7A 00 30 */	addi r3, r26, 0x30
/* 80AD7574  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AD7830@ha */
/* 80AD7578  38 84 78 30 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AD7830@l */
/* 80AD757C  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AD72B4@ha */
/* 80AD7580  38 A5 72 B4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AD72B4@l */
/* 80AD7584  38 C0 00 0C */	li r6, 0xc
/* 80AD7588  38 E0 00 03 */	li r7, 3
/* 80AD758C  4B 88 A7 D5 */	bl __construct_array
/* 80AD7590  38 7A 00 54 */	addi r3, r26, 0x54
/* 80AD7594  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AD7830@ha */
/* 80AD7598  38 84 78 30 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AD7830@l */
/* 80AD759C  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AD72B4@ha */
/* 80AD75A0  38 A5 72 B4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AD72B4@l */
/* 80AD75A4  38 C0 00 0C */	li r6, 0xc
/* 80AD75A8  38 E0 00 03 */	li r7, 3
/* 80AD75AC  4B 88 A7 B5 */	bl __construct_array
/* 80AD75B0  38 7A 00 78 */	addi r3, r26, 0x78
/* 80AD75B4  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AD7830@ha */
/* 80AD75B8  38 84 78 30 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AD7830@l */
/* 80AD75BC  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AD72B4@ha */
/* 80AD75C0  38 A5 72 B4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AD72B4@l */
/* 80AD75C4  38 C0 00 0C */	li r6, 0xc
/* 80AD75C8  38 E0 00 03 */	li r7, 3
/* 80AD75CC  4B 88 A7 95 */	bl __construct_array
/* 80AD75D0  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80AD75D4  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AD7830@ha */
/* 80AD75D8  38 84 78 30 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AD7830@l */
/* 80AD75DC  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AD72B4@ha */
/* 80AD75E0  38 A5 72 B4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AD72B4@l */
/* 80AD75E4  38 C0 00 0C */	li r6, 0xc
/* 80AD75E8  38 E0 00 03 */	li r7, 3
/* 80AD75EC  4B 88 A7 75 */	bl __construct_array
/* 80AD75F0  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80AD75F4  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AD7830@ha */
/* 80AD75F8  38 84 78 30 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AD7830@l */
/* 80AD75FC  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AD72B4@ha */
/* 80AD7600  38 A5 72 B4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AD72B4@l */
/* 80AD7604  38 C0 00 0C */	li r6, 0xc
/* 80AD7608  38 E0 00 03 */	li r7, 3
/* 80AD760C  4B 88 A7 55 */	bl __construct_array
/* 80AD7610  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80AD7614  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AD7830@ha */
/* 80AD7618  38 84 78 30 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AD7830@l */
/* 80AD761C  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AD72B4@ha */
/* 80AD7620  38 A5 72 B4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AD72B4@l */
/* 80AD7624  38 C0 00 0C */	li r6, 0xc
/* 80AD7628  38 E0 00 03 */	li r7, 3
/* 80AD762C  4B 88 A7 35 */	bl __construct_array
/* 80AD7630  7F 43 D3 78 */	mr r3, r26
/* 80AD7634  4B 66 F6 65 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AD7638  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AD763C  3C 80 80 AD */	lis r4, __ct__5csXyzFv@ha /* 0x80AD7730@ha */
/* 80AD7640  38 84 77 30 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AD7730@l */
/* 80AD7644  3C A0 80 AD */	lis r5, __dt__5csXyzFv@ha /* 0x80AD72F0@ha */
/* 80AD7648  38 A5 72 F0 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AD72F0@l */
/* 80AD764C  38 C0 00 06 */	li r6, 6
/* 80AD7650  38 E0 00 02 */	li r7, 2
/* 80AD7654  4B 88 A7 0D */	bl __construct_array
/* 80AD7658  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AD765C  38 80 00 00 */	li r4, 0
/* 80AD7660  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AD7664  7C A3 00 50 */	subf r5, r3, r0
/* 80AD7668  4B 52 BD F1 */	bl memset
/* 80AD766C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD7670  4B 66 E2 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD7674  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD7678  4B 66 E2 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD767C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AD7680  4B 66 E0 55 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD7684  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AD7688  4B 66 E0 4D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD768C  7F 43 D3 78 */	mr r3, r26
/* 80AD7690  4B 66 F6 09 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AD7694  38 A0 00 00 */	li r5, 0
/* 80AD7698  38 60 00 00 */	li r3, 0
/* 80AD769C  7C A4 2B 78 */	mr r4, r5
/* 80AD76A0  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 80AD76A4  38 00 00 02 */	li r0, 2
/* 80AD76A8  7C 09 03 A6 */	mtctr r0
lbl_80AD76AC:
/* 80AD76AC  7C DF 22 14 */	add r6, r31, r4
/* 80AD76B0  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AD76B4  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AD76B8  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AD76BC  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AD76C0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AD76C4  38 63 00 04 */	addi r3, r3, 4
/* 80AD76C8  38 84 00 06 */	addi r4, r4, 6
/* 80AD76CC  42 00 FF E0 */	bdnz lbl_80AD76AC
/* 80AD76D0  38 00 00 00 */	li r0, 0
/* 80AD76D4  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AD76D8  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AD76DC  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AD76E0  38 00 FF FF */	li r0, -1
/* 80AD76E4  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AD76E8  38 00 00 01 */	li r0, 1
/* 80AD76EC  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AD76F0  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 80AD76F4  4B 79 02 61 */	bl cM_rndF__Ff
/* 80AD76F8  FC 00 08 1E */	fctiwz f0, f1
/* 80AD76FC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AD7700  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AD7704  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AD7708  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80AD770C  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AD7710  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AD7714  7F E3 FB 78 */	mr r3, r31
/* 80AD7718  39 61 00 40 */	addi r11, r1, 0x40
/* 80AD771C  4B 88 AA F1 */	bl _restgpr_22
/* 80AD7720  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AD7724  7C 08 03 A6 */	mtlr r0
/* 80AD7728  38 21 00 40 */	addi r1, r1, 0x40
/* 80AD772C  4E 80 00 20 */	blr 
