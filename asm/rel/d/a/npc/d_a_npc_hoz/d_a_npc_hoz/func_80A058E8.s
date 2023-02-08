lbl_80A058E8:
/* 80A058E8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A058EC  7C 08 02 A6 */	mflr r0
/* 80A058F0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A058F4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A058F8  4B 95 C8 C9 */	bl _savegpr_22
/* 80A058FC  7C 7F 1B 78 */	mr r31, r3
/* 80A05900  7C 96 23 78 */	mr r22, r4
/* 80A05904  7C B7 2B 78 */	mr r23, r5
/* 80A05908  7C DA 33 78 */	mr r26, r6
/* 80A0590C  7C FB 3B 78 */	mr r27, r7
/* 80A05910  7D 1C 43 78 */	mr r28, r8
/* 80A05914  7D 3D 4B 78 */	mr r29, r9
/* 80A05918  7D 58 53 78 */	mr r24, r10
/* 80A0591C  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80A05920  3C 80 80 A0 */	lis r4, m__17daNpc_Hoz_Param_c@ha /* 0x80A06650@ha */
/* 80A05924  3B C4 66 50 */	addi r30, r4, m__17daNpc_Hoz_Param_c@l /* 0x80A06650@l */
/* 80A05928  4B 61 32 3D */	bl __ct__10fopAc_ac_cFv
/* 80A0592C  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80A05930  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80A05934  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A05938  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80A0593C  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80A05940  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80A05944  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80A05948  38 7F 05 80 */	addi r3, r31, 0x580
/* 80A0594C  4B 8B AA 7D */	bl __ct__10Z2CreatureFv
/* 80A05950  3A DF 06 10 */	addi r22, r31, 0x610
/* 80A05954  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A07780@ha */
/* 80A05958  38 03 77 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A07780@l */
/* 80A0595C  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80A05960  7E C3 B3 78 */	mr r3, r22
/* 80A05964  38 80 00 00 */	li r4, 0
/* 80A05968  4B 92 2A 95 */	bl init__12J3DFrameCtrlFs
/* 80A0596C  38 00 00 00 */	li r0, 0
/* 80A05970  90 16 00 18 */	stw r0, 0x18(r22)
/* 80A05974  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80A05978  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A07780@ha */
/* 80A0597C  38 03 77 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A07780@l */
/* 80A05980  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80A05984  7E C3 B3 78 */	mr r3, r22
/* 80A05988  38 80 00 00 */	li r4, 0
/* 80A0598C  4B 92 2A 71 */	bl init__12J3DFrameCtrlFs
/* 80A05990  38 00 00 00 */	li r0, 0
/* 80A05994  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A05998  3A DF 06 44 */	addi r22, r31, 0x644
/* 80A0599C  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A07780@ha */
/* 80A059A0  38 03 77 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A07780@l */
/* 80A059A4  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80A059A8  7E C3 B3 78 */	mr r3, r22
/* 80A059AC  38 80 00 00 */	li r4, 0
/* 80A059B0  4B 92 2A 4D */	bl init__12J3DFrameCtrlFs
/* 80A059B4  38 00 00 00 */	li r0, 0
/* 80A059B8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A059BC  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80A059C0  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A07780@ha */
/* 80A059C4  38 03 77 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A07780@l */
/* 80A059C8  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80A059CC  7E C3 B3 78 */	mr r3, r22
/* 80A059D0  38 80 00 00 */	li r4, 0
/* 80A059D4  4B 92 2A 29 */	bl init__12J3DFrameCtrlFs
/* 80A059D8  38 00 00 00 */	li r0, 0
/* 80A059DC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A059E0  3A DF 06 74 */	addi r22, r31, 0x674
/* 80A059E4  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A07780@ha */
/* 80A059E8  38 03 77 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A07780@l */
/* 80A059EC  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80A059F0  7E C3 B3 78 */	mr r3, r22
/* 80A059F4  38 80 00 00 */	li r4, 0
/* 80A059F8  4B 92 2A 05 */	bl init__12J3DFrameCtrlFs
/* 80A059FC  38 00 00 00 */	li r0, 0
/* 80A05A00  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A05A04  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80A05A08  7E C3 B3 78 */	mr r3, r22
/* 80A05A0C  4B 67 06 95 */	bl __ct__9dBgS_AcchFv
/* 80A05A10  3C 60 80 A0 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A0778C@ha */
/* 80A05A14  38 63 77 8C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A0778C@l */
/* 80A05A18  90 76 00 10 */	stw r3, 0x10(r22)
/* 80A05A1C  38 03 00 0C */	addi r0, r3, 0xc
/* 80A05A20  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A05A24  38 03 00 18 */	addi r0, r3, 0x18
/* 80A05A28  90 16 00 24 */	stw r0, 0x24(r22)
/* 80A05A2C  38 76 00 14 */	addi r3, r22, 0x14
/* 80A05A30  4B 67 34 39 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80A05A34  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A05A38  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A05A3C  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80A05A40  38 7F 08 80 */	addi r3, r31, 0x880
/* 80A05A44  4B 67 DD 1D */	bl __ct__10dCcD_GSttsFv
/* 80A05A48  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A05A4C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A05A50  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80A05A54  3B 23 00 20 */	addi r25, r3, 0x20
/* 80A05A58  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80A05A5C  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80A05A60  4B 67 04 4D */	bl __ct__12dBgS_AcchCirFv
/* 80A05A64  38 7F 09 30 */	addi r3, r31, 0x930
/* 80A05A68  4B 86 21 B5 */	bl __ct__11cBgS_GndChkFv
/* 80A05A6C  38 7F 09 74 */	addi r3, r31, 0x974
/* 80A05A70  4B 84 44 91 */	bl __ct__10dMsgFlow_cFv
/* 80A05A74  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A05A78  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A05A7C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A05A80  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80A05A84  4B 67 DC DD */	bl __ct__10dCcD_GSttsFv
/* 80A05A88  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A05A8C  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A05A90  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A05A94  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80A05A98  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80A05A9C  4B 67 1A E1 */	bl __ct__11dBgS_GndChkFv
/* 80A05AA0  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80A05AA4  4B 67 21 C5 */	bl __ct__11dBgS_LinChkFv
/* 80A05AA8  3C 60 80 A0 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A077D4@ha */
/* 80A05AAC  38 03 77 D4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A077D4@l */
/* 80A05AB0  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80A05AB4  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80A05AB8  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80A05ABC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A05AC0  4B 73 FD D9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A05AC4  3C 60 80 A0 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A077D4@ha */
/* 80A05AC8  38 03 77 D4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A077D4@l */
/* 80A05ACC  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80A05AD0  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80A05AD4  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80A05AD8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A05ADC  4B 73 FD BD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A05AE0  3C 60 80 A0 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A07804@ha */
/* 80A05AE4  38 03 78 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A07804@l */
/* 80A05AE8  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80A05AEC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A05AF0  4B 73 FB E5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A05AF4  3C 60 80 A0 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A07804@ha */
/* 80A05AF8  38 03 78 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A07804@l */
/* 80A05AFC  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80A05B00  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A05B04  4B 73 FB D1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A05B08  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80A05B0C  3C 60 80 A0 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A077E0@ha */
/* 80A05B10  38 03 77 E0 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A077E0@l */
/* 80A05B14  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80A05B18  3C 60 80 A0 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A07804@ha */
/* 80A05B1C  38 03 78 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A07804@l */
/* 80A05B20  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80A05B24  7F 43 D3 78 */	mr r3, r26
/* 80A05B28  4B 73 FB AD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A05B2C  38 7A 00 30 */	addi r3, r26, 0x30
/* 80A05B30  3C 80 80 A0 */	lis r4, __ct__4cXyzFv@ha /* 0x80A05DEC@ha */
/* 80A05B34  38 84 5D EC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A05DEC@l */
/* 80A05B38  3C A0 80 A0 */	lis r5, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A05B3C  38 A5 57 98 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A05B40  38 C0 00 0C */	li r6, 0xc
/* 80A05B44  38 E0 00 03 */	li r7, 3
/* 80A05B48  4B 95 C2 19 */	bl __construct_array
/* 80A05B4C  38 7A 00 54 */	addi r3, r26, 0x54
/* 80A05B50  3C 80 80 A0 */	lis r4, __ct__4cXyzFv@ha /* 0x80A05DEC@ha */
/* 80A05B54  38 84 5D EC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A05DEC@l */
/* 80A05B58  3C A0 80 A0 */	lis r5, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A05B5C  38 A5 57 98 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A05B60  38 C0 00 0C */	li r6, 0xc
/* 80A05B64  38 E0 00 03 */	li r7, 3
/* 80A05B68  4B 95 C1 F9 */	bl __construct_array
/* 80A05B6C  38 7A 00 78 */	addi r3, r26, 0x78
/* 80A05B70  3C 80 80 A0 */	lis r4, __ct__4cXyzFv@ha /* 0x80A05DEC@ha */
/* 80A05B74  38 84 5D EC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A05DEC@l */
/* 80A05B78  3C A0 80 A0 */	lis r5, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A05B7C  38 A5 57 98 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A05B80  38 C0 00 0C */	li r6, 0xc
/* 80A05B84  38 E0 00 03 */	li r7, 3
/* 80A05B88  4B 95 C1 D9 */	bl __construct_array
/* 80A05B8C  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80A05B90  3C 80 80 A0 */	lis r4, __ct__4cXyzFv@ha /* 0x80A05DEC@ha */
/* 80A05B94  38 84 5D EC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A05DEC@l */
/* 80A05B98  3C A0 80 A0 */	lis r5, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A05B9C  38 A5 57 98 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A05BA0  38 C0 00 0C */	li r6, 0xc
/* 80A05BA4  38 E0 00 03 */	li r7, 3
/* 80A05BA8  4B 95 C1 B9 */	bl __construct_array
/* 80A05BAC  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80A05BB0  3C 80 80 A0 */	lis r4, __ct__4cXyzFv@ha /* 0x80A05DEC@ha */
/* 80A05BB4  38 84 5D EC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A05DEC@l */
/* 80A05BB8  3C A0 80 A0 */	lis r5, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A05BBC  38 A5 57 98 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A05BC0  38 C0 00 0C */	li r6, 0xc
/* 80A05BC4  38 E0 00 03 */	li r7, 3
/* 80A05BC8  4B 95 C1 99 */	bl __construct_array
/* 80A05BCC  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80A05BD0  3C 80 80 A0 */	lis r4, __ct__4cXyzFv@ha /* 0x80A05DEC@ha */
/* 80A05BD4  38 84 5D EC */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A05DEC@l */
/* 80A05BD8  3C A0 80 A0 */	lis r5, __dt__4cXyzFv@ha /* 0x80A05798@ha */
/* 80A05BDC  38 A5 57 98 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A05798@l */
/* 80A05BE0  38 C0 00 0C */	li r6, 0xc
/* 80A05BE4  38 E0 00 03 */	li r7, 3
/* 80A05BE8  4B 95 C1 79 */	bl __construct_array
/* 80A05BEC  7F 43 D3 78 */	mr r3, r26
/* 80A05BF0  4B 74 10 A9 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A05BF4  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A05BF8  3C 80 80 A0 */	lis r4, __ct__5csXyzFv@ha /* 0x80A05CEC@ha */
/* 80A05BFC  38 84 5C EC */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A05CEC@l */
/* 80A05C00  3C A0 80 A0 */	lis r5, __dt__5csXyzFv@ha /* 0x80A057D4@ha */
/* 80A05C04  38 A5 57 D4 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A057D4@l */
/* 80A05C08  38 C0 00 06 */	li r6, 6
/* 80A05C0C  38 E0 00 02 */	li r7, 2
/* 80A05C10  4B 95 C1 51 */	bl __construct_array
/* 80A05C14  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A05C18  38 80 00 00 */	li r4, 0
/* 80A05C1C  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A05C20  7C A3 00 50 */	subf r5, r3, r0
/* 80A05C24  4B 5F D8 35 */	bl memset
/* 80A05C28  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A05C2C  4B 73 FC 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A05C30  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A05C34  4B 73 FC 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A05C38  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A05C3C  4B 73 FA 99 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A05C40  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A05C44  4B 73 FA 91 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A05C48  7F 43 D3 78 */	mr r3, r26
/* 80A05C4C  4B 74 10 4D */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A05C50  38 A0 00 00 */	li r5, 0
/* 80A05C54  38 60 00 00 */	li r3, 0
/* 80A05C58  7C A4 2B 78 */	mr r4, r5
/* 80A05C5C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80A05C60  38 00 00 02 */	li r0, 2
/* 80A05C64  7C 09 03 A6 */	mtctr r0
lbl_80A05C68:
/* 80A05C68  7C DF 22 14 */	add r6, r31, r4
/* 80A05C6C  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A05C70  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A05C74  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A05C78  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A05C7C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A05C80  38 63 00 04 */	addi r3, r3, 4
/* 80A05C84  38 84 00 06 */	addi r4, r4, 6
/* 80A05C88  42 00 FF E0 */	bdnz lbl_80A05C68
/* 80A05C8C  38 00 00 00 */	li r0, 0
/* 80A05C90  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A05C94  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A05C98  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A05C9C  38 00 FF FF */	li r0, -1
/* 80A05CA0  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A05CA4  38 00 00 01 */	li r0, 1
/* 80A05CA8  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A05CAC  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80A05CB0  4B 86 1C A5 */	bl cM_rndF__Ff
/* 80A05CB4  FC 00 08 1E */	fctiwz f0, f1
/* 80A05CB8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A05CBC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A05CC0  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A05CC4  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 80A05CC8  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A05CCC  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A05CD0  7F E3 FB 78 */	mr r3, r31
/* 80A05CD4  39 61 00 40 */	addi r11, r1, 0x40
/* 80A05CD8  4B 95 C5 35 */	bl _restgpr_22
/* 80A05CDC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A05CE0  7C 08 03 A6 */	mtlr r0
/* 80A05CE4  38 21 00 40 */	addi r1, r1, 0x40
/* 80A05CE8  4E 80 00 20 */	blr 
