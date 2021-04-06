lbl_80B5153C:
/* 80B5153C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B51540  7C 08 02 A6 */	mflr r0
/* 80B51544  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B51548  39 61 00 40 */	addi r11, r1, 0x40
/* 80B5154C  4B 81 0C 75 */	bl _savegpr_22
/* 80B51550  7C 7F 1B 78 */	mr r31, r3
/* 80B51554  7C 96 23 78 */	mr r22, r4
/* 80B51558  7C B7 2B 78 */	mr r23, r5
/* 80B5155C  7C DA 33 78 */	mr r26, r6
/* 80B51560  7C FB 3B 78 */	mr r27, r7
/* 80B51564  7D 1C 43 78 */	mr r28, r8
/* 80B51568  7D 3D 4B 78 */	mr r29, r9
/* 80B5156C  7D 58 53 78 */	mr r24, r10
/* 80B51570  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80B51574  3C 80 80 B5 */	lis r4, m__19daNpc_Yelia_Param_c@ha /* 0x80B522B4@ha */
/* 80B51578  3B C4 22 B4 */	addi r30, r4, m__19daNpc_Yelia_Param_c@l /* 0x80B522B4@l */
/* 80B5157C  4B 4C 75 E9 */	bl __ct__10fopAc_ac_cFv
/* 80B51580  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80B51584  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80B51588  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B5158C  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80B51590  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80B51594  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80B51598  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80B5159C  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B515A0  4B 76 EE 29 */	bl __ct__10Z2CreatureFv
/* 80B515A4  3A DF 06 10 */	addi r22, r31, 0x610
/* 80B515A8  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B5327C@ha */
/* 80B515AC  38 03 32 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B5327C@l */
/* 80B515B0  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80B515B4  7E C3 B3 78 */	mr r3, r22
/* 80B515B8  38 80 00 00 */	li r4, 0
/* 80B515BC  4B 7D 6E 41 */	bl init__12J3DFrameCtrlFs
/* 80B515C0  38 00 00 00 */	li r0, 0
/* 80B515C4  90 16 00 18 */	stw r0, 0x18(r22)
/* 80B515C8  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80B515CC  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B5327C@ha */
/* 80B515D0  38 03 32 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B5327C@l */
/* 80B515D4  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B515D8  7E C3 B3 78 */	mr r3, r22
/* 80B515DC  38 80 00 00 */	li r4, 0
/* 80B515E0  4B 7D 6E 1D */	bl init__12J3DFrameCtrlFs
/* 80B515E4  38 00 00 00 */	li r0, 0
/* 80B515E8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B515EC  3A DF 06 44 */	addi r22, r31, 0x644
/* 80B515F0  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B5327C@ha */
/* 80B515F4  38 03 32 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B5327C@l */
/* 80B515F8  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80B515FC  7E C3 B3 78 */	mr r3, r22
/* 80B51600  38 80 00 00 */	li r4, 0
/* 80B51604  4B 7D 6D F9 */	bl init__12J3DFrameCtrlFs
/* 80B51608  38 00 00 00 */	li r0, 0
/* 80B5160C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B51610  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80B51614  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B5327C@ha */
/* 80B51618  38 03 32 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B5327C@l */
/* 80B5161C  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80B51620  7E C3 B3 78 */	mr r3, r22
/* 80B51624  38 80 00 00 */	li r4, 0
/* 80B51628  4B 7D 6D D5 */	bl init__12J3DFrameCtrlFs
/* 80B5162C  38 00 00 00 */	li r0, 0
/* 80B51630  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B51634  3A DF 06 74 */	addi r22, r31, 0x674
/* 80B51638  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B5327C@ha */
/* 80B5163C  38 03 32 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B5327C@l */
/* 80B51640  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80B51644  7E C3 B3 78 */	mr r3, r22
/* 80B51648  38 80 00 00 */	li r4, 0
/* 80B5164C  4B 7D 6D B1 */	bl init__12J3DFrameCtrlFs
/* 80B51650  38 00 00 00 */	li r0, 0
/* 80B51654  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B51658  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80B5165C  7E C3 B3 78 */	mr r3, r22
/* 80B51660  4B 52 4A 41 */	bl __ct__9dBgS_AcchFv
/* 80B51664  3C 60 80 B5 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B53288@ha */
/* 80B51668  38 63 32 88 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B53288@l */
/* 80B5166C  90 76 00 10 */	stw r3, 0x10(r22)
/* 80B51670  38 03 00 0C */	addi r0, r3, 0xc
/* 80B51674  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B51678  38 03 00 18 */	addi r0, r3, 0x18
/* 80B5167C  90 16 00 24 */	stw r0, 0x24(r22)
/* 80B51680  38 76 00 14 */	addi r3, r22, 0x14
/* 80B51684  4B 52 77 E5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80B51688  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B5168C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B51690  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80B51694  38 7F 08 80 */	addi r3, r31, 0x880
/* 80B51698  4B 53 20 C9 */	bl __ct__10dCcD_GSttsFv
/* 80B5169C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B516A0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B516A4  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80B516A8  3B 23 00 20 */	addi r25, r3, 0x20
/* 80B516AC  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80B516B0  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B516B4  4B 52 47 F9 */	bl __ct__12dBgS_AcchCirFv
/* 80B516B8  38 7F 09 30 */	addi r3, r31, 0x930
/* 80B516BC  4B 71 65 61 */	bl __ct__11cBgS_GndChkFv
/* 80B516C0  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B516C4  4B 6F 88 3D */	bl __ct__10dMsgFlow_cFv
/* 80B516C8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B516CC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B516D0  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B516D4  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80B516D8  4B 53 20 89 */	bl __ct__10dCcD_GSttsFv
/* 80B516DC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B516E0  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B516E4  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B516E8  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80B516EC  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80B516F0  4B 52 5E 8D */	bl __ct__11dBgS_GndChkFv
/* 80B516F4  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80B516F8  4B 52 65 71 */	bl __ct__11dBgS_LinChkFv
/* 80B516FC  3C 60 80 B5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B532D0@ha */
/* 80B51700  38 03 32 D0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B532D0@l */
/* 80B51704  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80B51708  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80B5170C  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80B51710  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B51714  4B 5F 41 85 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B51718  3C 60 80 B5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B532D0@ha */
/* 80B5171C  38 03 32 D0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B532D0@l */
/* 80B51720  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80B51724  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80B51728  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80B5172C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B51730  4B 5F 41 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B51734  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B532DC@ha */
/* 80B51738  38 03 32 DC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B532DC@l */
/* 80B5173C  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80B51740  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B51744  4B 5F 3F 91 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B51748  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B532DC@ha */
/* 80B5174C  38 03 32 DC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B532DC@l */
/* 80B51750  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80B51754  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B51758  4B 5F 3F 7D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B5175C  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80B51760  3C 60 80 B5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B532E8@ha */
/* 80B51764  38 03 32 E8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B532E8@l */
/* 80B51768  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80B5176C  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B532DC@ha */
/* 80B51770  38 03 32 DC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B532DC@l */
/* 80B51774  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80B51778  7F 43 D3 78 */	mr r3, r26
/* 80B5177C  4B 5F 3F 59 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B51780  38 7A 00 30 */	addi r3, r26, 0x30
/* 80B51784  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha /* 0x80B51A40@ha */
/* 80B51788  38 84 1A 40 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B51A40@l */
/* 80B5178C  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha /* 0x80B51368@ha */
/* 80B51790  38 A5 13 68 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B51368@l */
/* 80B51794  38 C0 00 0C */	li r6, 0xc
/* 80B51798  38 E0 00 03 */	li r7, 3
/* 80B5179C  4B 81 05 C5 */	bl __construct_array
/* 80B517A0  38 7A 00 54 */	addi r3, r26, 0x54
/* 80B517A4  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha /* 0x80B51A40@ha */
/* 80B517A8  38 84 1A 40 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B51A40@l */
/* 80B517AC  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha /* 0x80B51368@ha */
/* 80B517B0  38 A5 13 68 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B51368@l */
/* 80B517B4  38 C0 00 0C */	li r6, 0xc
/* 80B517B8  38 E0 00 03 */	li r7, 3
/* 80B517BC  4B 81 05 A5 */	bl __construct_array
/* 80B517C0  38 7A 00 78 */	addi r3, r26, 0x78
/* 80B517C4  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha /* 0x80B51A40@ha */
/* 80B517C8  38 84 1A 40 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B51A40@l */
/* 80B517CC  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha /* 0x80B51368@ha */
/* 80B517D0  38 A5 13 68 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B51368@l */
/* 80B517D4  38 C0 00 0C */	li r6, 0xc
/* 80B517D8  38 E0 00 03 */	li r7, 3
/* 80B517DC  4B 81 05 85 */	bl __construct_array
/* 80B517E0  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80B517E4  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha /* 0x80B51A40@ha */
/* 80B517E8  38 84 1A 40 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B51A40@l */
/* 80B517EC  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha /* 0x80B51368@ha */
/* 80B517F0  38 A5 13 68 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B51368@l */
/* 80B517F4  38 C0 00 0C */	li r6, 0xc
/* 80B517F8  38 E0 00 03 */	li r7, 3
/* 80B517FC  4B 81 05 65 */	bl __construct_array
/* 80B51800  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80B51804  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha /* 0x80B51A40@ha */
/* 80B51808  38 84 1A 40 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B51A40@l */
/* 80B5180C  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha /* 0x80B51368@ha */
/* 80B51810  38 A5 13 68 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B51368@l */
/* 80B51814  38 C0 00 0C */	li r6, 0xc
/* 80B51818  38 E0 00 03 */	li r7, 3
/* 80B5181C  4B 81 05 45 */	bl __construct_array
/* 80B51820  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80B51824  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha /* 0x80B51A40@ha */
/* 80B51828  38 84 1A 40 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B51A40@l */
/* 80B5182C  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha /* 0x80B51368@ha */
/* 80B51830  38 A5 13 68 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B51368@l */
/* 80B51834  38 C0 00 0C */	li r6, 0xc
/* 80B51838  38 E0 00 03 */	li r7, 3
/* 80B5183C  4B 81 05 25 */	bl __construct_array
/* 80B51840  7F 43 D3 78 */	mr r3, r26
/* 80B51844  4B 5F 54 55 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B51848  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B5184C  3C 80 80 B5 */	lis r4, __ct__5csXyzFv@ha /* 0x80B51940@ha */
/* 80B51850  38 84 19 40 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B51940@l */
/* 80B51854  3C A0 80 B5 */	lis r5, __dt__5csXyzFv@ha /* 0x80B513A4@ha */
/* 80B51858  38 A5 13 A4 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B513A4@l */
/* 80B5185C  38 C0 00 06 */	li r6, 6
/* 80B51860  38 E0 00 02 */	li r7, 2
/* 80B51864  4B 81 04 FD */	bl __construct_array
/* 80B51868  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B5186C  38 80 00 00 */	li r4, 0
/* 80B51870  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B51874  7C A3 00 50 */	subf r5, r3, r0
/* 80B51878  4B 4B 1B E1 */	bl memset
/* 80B5187C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B51880  4B 5F 40 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B51884  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B51888  4B 5F 40 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5188C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B51890  4B 5F 3E 45 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B51894  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B51898  4B 5F 3E 3D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B5189C  7F 43 D3 78 */	mr r3, r26
/* 80B518A0  4B 5F 53 F9 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B518A4  38 A0 00 00 */	li r5, 0
/* 80B518A8  38 60 00 00 */	li r3, 0
/* 80B518AC  7C A4 2B 78 */	mr r4, r5
/* 80B518B0  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B518B4  38 00 00 02 */	li r0, 2
/* 80B518B8  7C 09 03 A6 */	mtctr r0
lbl_80B518BC:
/* 80B518BC  7C DF 22 14 */	add r6, r31, r4
/* 80B518C0  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B518C4  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B518C8  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B518CC  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B518D0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B518D4  38 63 00 04 */	addi r3, r3, 4
/* 80B518D8  38 84 00 06 */	addi r4, r4, 6
/* 80B518DC  42 00 FF E0 */	bdnz lbl_80B518BC
/* 80B518E0  38 00 00 00 */	li r0, 0
/* 80B518E4  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B518E8  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B518EC  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B518F0  38 00 FF FF */	li r0, -1
/* 80B518F4  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B518F8  38 00 00 01 */	li r0, 1
/* 80B518FC  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B51900  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80B51904  4B 71 60 51 */	bl cM_rndF__Ff
/* 80B51908  FC 00 08 1E */	fctiwz f0, f1
/* 80B5190C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B51910  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B51914  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B51918  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80B5191C  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B51920  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B51924  7F E3 FB 78 */	mr r3, r31
/* 80B51928  39 61 00 40 */	addi r11, r1, 0x40
/* 80B5192C  4B 81 08 E1 */	bl _restgpr_22
/* 80B51930  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B51934  7C 08 03 A6 */	mtlr r0
/* 80B51938  38 21 00 40 */	addi r1, r1, 0x40
/* 80B5193C  4E 80 00 20 */	blr 
