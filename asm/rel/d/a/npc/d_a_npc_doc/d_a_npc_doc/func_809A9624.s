lbl_809A9624:
/* 809A9624  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809A9628  7C 08 02 A6 */	mflr r0
/* 809A962C  90 01 00 44 */	stw r0, 0x44(r1)
/* 809A9630  39 61 00 40 */	addi r11, r1, 0x40
/* 809A9634  4B 9B 8B 8D */	bl _savegpr_22
/* 809A9638  7C 7F 1B 78 */	mr r31, r3
/* 809A963C  7C 96 23 78 */	mr r22, r4
/* 809A9640  7C B7 2B 78 */	mr r23, r5
/* 809A9644  7C DA 33 78 */	mr r26, r6
/* 809A9648  7C FB 3B 78 */	mr r27, r7
/* 809A964C  7D 1C 43 78 */	mr r28, r8
/* 809A9650  7D 3D 4B 78 */	mr r29, r9
/* 809A9654  7D 58 53 78 */	mr r24, r10
/* 809A9658  83 21 00 48 */	lwz r25, 0x48(r1)
/* 809A965C  3C 80 80 9B */	lis r4, m__17daNpc_Doc_Param_c@ha /* 0x809AA31C@ha */
/* 809A9660  3B C4 A3 1C */	addi r30, r4, m__17daNpc_Doc_Param_c@l /* 0x809AA31C@l */
/* 809A9664  4B 66 F5 01 */	bl __ct__10fopAc_ac_cFv
/* 809A9668  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 809A966C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 809A9670  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 809A9674  92 DF 05 68 */	stw r22, 0x568(r31)
/* 809A9678  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 809A967C  93 1F 05 70 */	stw r24, 0x570(r31)
/* 809A9680  93 3F 05 74 */	stw r25, 0x574(r31)
/* 809A9684  38 7F 05 80 */	addi r3, r31, 0x580
/* 809A9688  4B 91 6D 41 */	bl __ct__10Z2CreatureFv
/* 809A968C  3A DF 06 10 */	addi r22, r31, 0x610
/* 809A9690  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809AA958@ha */
/* 809A9694  38 03 A9 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809AA958@l */
/* 809A9698  90 1F 06 10 */	stw r0, 0x610(r31)
/* 809A969C  7E C3 B3 78 */	mr r3, r22
/* 809A96A0  38 80 00 00 */	li r4, 0
/* 809A96A4  4B 97 ED 59 */	bl init__12J3DFrameCtrlFs
/* 809A96A8  38 00 00 00 */	li r0, 0
/* 809A96AC  90 16 00 18 */	stw r0, 0x18(r22)
/* 809A96B0  3A DF 06 2C */	addi r22, r31, 0x62c
/* 809A96B4  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809AA958@ha */
/* 809A96B8  38 03 A9 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809AA958@l */
/* 809A96BC  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 809A96C0  7E C3 B3 78 */	mr r3, r22
/* 809A96C4  38 80 00 00 */	li r4, 0
/* 809A96C8  4B 97 ED 35 */	bl init__12J3DFrameCtrlFs
/* 809A96CC  38 00 00 00 */	li r0, 0
/* 809A96D0  90 16 00 14 */	stw r0, 0x14(r22)
/* 809A96D4  3A DF 06 44 */	addi r22, r31, 0x644
/* 809A96D8  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809AA958@ha */
/* 809A96DC  38 03 A9 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809AA958@l */
/* 809A96E0  90 1F 06 44 */	stw r0, 0x644(r31)
/* 809A96E4  7E C3 B3 78 */	mr r3, r22
/* 809A96E8  38 80 00 00 */	li r4, 0
/* 809A96EC  4B 97 ED 11 */	bl init__12J3DFrameCtrlFs
/* 809A96F0  38 00 00 00 */	li r0, 0
/* 809A96F4  90 16 00 14 */	stw r0, 0x14(r22)
/* 809A96F8  3A DF 06 5C */	addi r22, r31, 0x65c
/* 809A96FC  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809AA958@ha */
/* 809A9700  38 03 A9 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809AA958@l */
/* 809A9704  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 809A9708  7E C3 B3 78 */	mr r3, r22
/* 809A970C  38 80 00 00 */	li r4, 0
/* 809A9710  4B 97 EC ED */	bl init__12J3DFrameCtrlFs
/* 809A9714  38 00 00 00 */	li r0, 0
/* 809A9718  90 16 00 14 */	stw r0, 0x14(r22)
/* 809A971C  3A DF 06 74 */	addi r22, r31, 0x674
/* 809A9720  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809AA958@ha */
/* 809A9724  38 03 A9 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809AA958@l */
/* 809A9728  90 1F 06 74 */	stw r0, 0x674(r31)
/* 809A972C  7E C3 B3 78 */	mr r3, r22
/* 809A9730  38 80 00 00 */	li r4, 0
/* 809A9734  4B 97 EC C9 */	bl init__12J3DFrameCtrlFs
/* 809A9738  38 00 00 00 */	li r0, 0
/* 809A973C  90 16 00 14 */	stw r0, 0x14(r22)
/* 809A9740  3A DF 06 8C */	addi r22, r31, 0x68c
/* 809A9744  7E C3 B3 78 */	mr r3, r22
/* 809A9748  4B 6C C9 59 */	bl __ct__9dBgS_AcchFv
/* 809A974C  3C 60 80 9B */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809AA964@ha */
/* 809A9750  38 63 A9 64 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809AA964@l */
/* 809A9754  90 76 00 10 */	stw r3, 0x10(r22)
/* 809A9758  38 03 00 0C */	addi r0, r3, 0xc
/* 809A975C  90 16 00 14 */	stw r0, 0x14(r22)
/* 809A9760  38 03 00 18 */	addi r0, r3, 0x18
/* 809A9764  90 16 00 24 */	stw r0, 0x24(r22)
/* 809A9768  38 76 00 14 */	addi r3, r22, 0x14
/* 809A976C  4B 6C F6 FD */	bl SetObj__16dBgS_PolyPassChkFv
/* 809A9770  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809A9774  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809A9778  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 809A977C  38 7F 08 80 */	addi r3, r31, 0x880
/* 809A9780  4B 6D 9F E1 */	bl __ct__10dCcD_GSttsFv
/* 809A9784  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809A9788  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809A978C  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 809A9790  3B 23 00 20 */	addi r25, r3, 0x20
/* 809A9794  93 3F 08 80 */	stw r25, 0x880(r31)
/* 809A9798  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 809A979C  4B 6C C7 11 */	bl __ct__12dBgS_AcchCirFv
/* 809A97A0  38 7F 09 30 */	addi r3, r31, 0x930
/* 809A97A4  4B 8B E4 79 */	bl __ct__11cBgS_GndChkFv
/* 809A97A8  38 7F 09 74 */	addi r3, r31, 0x974
/* 809A97AC  4B 8A 07 55 */	bl __ct__10dMsgFlow_cFv
/* 809A97B0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809A97B4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809A97B8  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 809A97BC  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 809A97C0  4B 6D 9F A1 */	bl __ct__10dCcD_GSttsFv
/* 809A97C4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809A97C8  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809A97CC  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 809A97D0  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 809A97D4  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 809A97D8  4B 6C DD A5 */	bl __ct__11dBgS_GndChkFv
/* 809A97DC  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 809A97E0  4B 6C E4 89 */	bl __ct__11dBgS_LinChkFv
/* 809A97E4  3C 60 80 9B */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x809AA9AC@ha */
/* 809A97E8  38 03 A9 AC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x809AA9AC@l */
/* 809A97EC  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 809A97F0  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 809A97F4  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 809A97F8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809A97FC  4B 79 C0 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809A9800  3C 60 80 9B */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x809AA9AC@ha */
/* 809A9804  38 03 A9 AC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x809AA9AC@l */
/* 809A9808  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 809A980C  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 809A9810  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 809A9814  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809A9818  4B 79 C0 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809A981C  3C 60 80 9B */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809AA9B8@ha */
/* 809A9820  38 03 A9 B8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809AA9B8@l */
/* 809A9824  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 809A9828  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809A982C  4B 79 BE A9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809A9830  3C 60 80 9B */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809AA9B8@ha */
/* 809A9834  38 03 A9 B8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809AA9B8@l */
/* 809A9838  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 809A983C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 809A9840  4B 79 BE 95 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809A9844  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 809A9848  3C 60 80 9B */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x809AA9C4@ha */
/* 809A984C  38 03 A9 C4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x809AA9C4@l */
/* 809A9850  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 809A9854  3C 60 80 9B */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809AA9B8@ha */
/* 809A9858  38 03 A9 B8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809AA9B8@l */
/* 809A985C  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 809A9860  7F 43 D3 78 */	mr r3, r26
/* 809A9864  4B 79 BE 71 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809A9868  38 7A 00 30 */	addi r3, r26, 0x30
/* 809A986C  3C 80 80 9B */	lis r4, __ct__4cXyzFv@ha /* 0x809A9B28@ha */
/* 809A9870  38 84 9B 28 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809A9B28@l */
/* 809A9874  3C A0 80 9B */	lis r5, __dt__4cXyzFv@ha /* 0x809A94D4@ha */
/* 809A9878  38 A5 94 D4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809A94D4@l */
/* 809A987C  38 C0 00 0C */	li r6, 0xc
/* 809A9880  38 E0 00 03 */	li r7, 3
/* 809A9884  4B 9B 84 DD */	bl __construct_array
/* 809A9888  38 7A 00 54 */	addi r3, r26, 0x54
/* 809A988C  3C 80 80 9B */	lis r4, __ct__4cXyzFv@ha /* 0x809A9B28@ha */
/* 809A9890  38 84 9B 28 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809A9B28@l */
/* 809A9894  3C A0 80 9B */	lis r5, __dt__4cXyzFv@ha /* 0x809A94D4@ha */
/* 809A9898  38 A5 94 D4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809A94D4@l */
/* 809A989C  38 C0 00 0C */	li r6, 0xc
/* 809A98A0  38 E0 00 03 */	li r7, 3
/* 809A98A4  4B 9B 84 BD */	bl __construct_array
/* 809A98A8  38 7A 00 78 */	addi r3, r26, 0x78
/* 809A98AC  3C 80 80 9B */	lis r4, __ct__4cXyzFv@ha /* 0x809A9B28@ha */
/* 809A98B0  38 84 9B 28 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809A9B28@l */
/* 809A98B4  3C A0 80 9B */	lis r5, __dt__4cXyzFv@ha /* 0x809A94D4@ha */
/* 809A98B8  38 A5 94 D4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809A94D4@l */
/* 809A98BC  38 C0 00 0C */	li r6, 0xc
/* 809A98C0  38 E0 00 03 */	li r7, 3
/* 809A98C4  4B 9B 84 9D */	bl __construct_array
/* 809A98C8  38 7A 00 9C */	addi r3, r26, 0x9c
/* 809A98CC  3C 80 80 9B */	lis r4, __ct__4cXyzFv@ha /* 0x809A9B28@ha */
/* 809A98D0  38 84 9B 28 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809A9B28@l */
/* 809A98D4  3C A0 80 9B */	lis r5, __dt__4cXyzFv@ha /* 0x809A94D4@ha */
/* 809A98D8  38 A5 94 D4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809A94D4@l */
/* 809A98DC  38 C0 00 0C */	li r6, 0xc
/* 809A98E0  38 E0 00 03 */	li r7, 3
/* 809A98E4  4B 9B 84 7D */	bl __construct_array
/* 809A98E8  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 809A98EC  3C 80 80 9B */	lis r4, __ct__4cXyzFv@ha /* 0x809A9B28@ha */
/* 809A98F0  38 84 9B 28 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809A9B28@l */
/* 809A98F4  3C A0 80 9B */	lis r5, __dt__4cXyzFv@ha /* 0x809A94D4@ha */
/* 809A98F8  38 A5 94 D4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809A94D4@l */
/* 809A98FC  38 C0 00 0C */	li r6, 0xc
/* 809A9900  38 E0 00 03 */	li r7, 3
/* 809A9904  4B 9B 84 5D */	bl __construct_array
/* 809A9908  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 809A990C  3C 80 80 9B */	lis r4, __ct__4cXyzFv@ha /* 0x809A9B28@ha */
/* 809A9910  38 84 9B 28 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809A9B28@l */
/* 809A9914  3C A0 80 9B */	lis r5, __dt__4cXyzFv@ha /* 0x809A94D4@ha */
/* 809A9918  38 A5 94 D4 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809A94D4@l */
/* 809A991C  38 C0 00 0C */	li r6, 0xc
/* 809A9920  38 E0 00 03 */	li r7, 3
/* 809A9924  4B 9B 84 3D */	bl __construct_array
/* 809A9928  7F 43 D3 78 */	mr r3, r26
/* 809A992C  4B 79 D3 6D */	bl initialize__15daNpcT_JntAnm_cFv
/* 809A9930  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 809A9934  3C 80 80 9B */	lis r4, __ct__5csXyzFv@ha /* 0x809A9A28@ha */
/* 809A9938  38 84 9A 28 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809A9A28@l */
/* 809A993C  3C A0 80 9B */	lis r5, __dt__5csXyzFv@ha /* 0x809A9510@ha */
/* 809A9940  38 A5 95 10 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809A9510@l */
/* 809A9944  38 C0 00 06 */	li r6, 6
/* 809A9948  38 E0 00 02 */	li r7, 2
/* 809A994C  4B 9B 84 15 */	bl __construct_array
/* 809A9950  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 809A9954  38 80 00 00 */	li r4, 0
/* 809A9958  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 809A995C  7C A3 00 50 */	subf r5, r3, r0
/* 809A9960  4B 65 9A F9 */	bl memset
/* 809A9964  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809A9968  4B 79 BF 31 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809A996C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809A9970  4B 79 BF 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809A9974  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809A9978  4B 79 BD 5D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809A997C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 809A9980  4B 79 BD 55 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809A9984  7F 43 D3 78 */	mr r3, r26
/* 809A9988  4B 79 D3 11 */	bl initialize__15daNpcT_JntAnm_cFv
/* 809A998C  38 A0 00 00 */	li r5, 0
/* 809A9990  38 60 00 00 */	li r3, 0
/* 809A9994  7C A4 2B 78 */	mr r4, r5
/* 809A9998  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809A999C  38 00 00 02 */	li r0, 2
/* 809A99A0  7C 09 03 A6 */	mtctr r0
lbl_809A99A4:
/* 809A99A4  7C DF 22 14 */	add r6, r31, r4
/* 809A99A8  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 809A99AC  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 809A99B0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 809A99B4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809A99B8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809A99BC  38 63 00 04 */	addi r3, r3, 4
/* 809A99C0  38 84 00 06 */	addi r4, r4, 6
/* 809A99C4  42 00 FF E0 */	bdnz lbl_809A99A4
/* 809A99C8  38 00 00 00 */	li r0, 0
/* 809A99CC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809A99D0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809A99D4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809A99D8  38 00 FF FF */	li r0, -1
/* 809A99DC  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 809A99E0  38 00 00 01 */	li r0, 1
/* 809A99E4  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 809A99E8  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 809A99EC  4B 8B DF 69 */	bl cM_rndF__Ff
/* 809A99F0  FC 00 08 1E */	fctiwz f0, f1
/* 809A99F4  D8 01 00 08 */	stfd f0, 8(r1)
/* 809A99F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809A99FC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 809A9A00  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 809A9A04  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 809A9A08  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 809A9A0C  7F E3 FB 78 */	mr r3, r31
/* 809A9A10  39 61 00 40 */	addi r11, r1, 0x40
/* 809A9A14  4B 9B 87 F9 */	bl _restgpr_22
/* 809A9A18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809A9A1C  7C 08 03 A6 */	mtlr r0
/* 809A9A20  38 21 00 40 */	addi r1, r1, 0x40
/* 809A9A24  4E 80 00 20 */	blr 
