lbl_80AA086C:
/* 80AA086C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AA0870  7C 08 02 A6 */	mflr r0
/* 80AA0874  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AA0878  39 61 00 40 */	addi r11, r1, 0x40
/* 80AA087C  4B 8C 19 45 */	bl _savegpr_22
/* 80AA0880  7C 7F 1B 78 */	mr r31, r3
/* 80AA0884  7C 96 23 78 */	mr r22, r4
/* 80AA0888  7C B7 2B 78 */	mr r23, r5
/* 80AA088C  7C DA 33 78 */	mr r26, r6
/* 80AA0890  7C FB 3B 78 */	mr r27, r7
/* 80AA0894  7D 1C 43 78 */	mr r28, r8
/* 80AA0898  7D 3D 4B 78 */	mr r29, r9
/* 80AA089C  7D 58 53 78 */	mr r24, r10
/* 80AA08A0  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80AA08A4  3C 80 80 AA */	lis r4, m__24daNpc_Pachi_Taro_Param_c@ha /* 0x80AA1604@ha */
/* 80AA08A8  3B C4 16 04 */	addi r30, r4, m__24daNpc_Pachi_Taro_Param_c@l /* 0x80AA1604@l */
/* 80AA08AC  4B 57 82 B9 */	bl __ct__10fopAc_ac_cFv
/* 80AA08B0  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AA08B4  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AA08B8  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AA08BC  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80AA08C0  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80AA08C4  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80AA08C8  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80AA08CC  38 7F 05 80 */	addi r3, r31, 0x580
/* 80AA08D0  4B 81 FA F9 */	bl __ct__10Z2CreatureFv
/* 80AA08D4  3A DF 06 10 */	addi r22, r31, 0x610
/* 80AA08D8  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AA2A20@ha */
/* 80AA08DC  38 03 2A 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AA2A20@l */
/* 80AA08E0  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80AA08E4  7E C3 B3 78 */	mr r3, r22
/* 80AA08E8  38 80 00 00 */	li r4, 0
/* 80AA08EC  4B 88 7B 11 */	bl init__12J3DFrameCtrlFs
/* 80AA08F0  38 00 00 00 */	li r0, 0
/* 80AA08F4  90 16 00 18 */	stw r0, 0x18(r22)
/* 80AA08F8  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80AA08FC  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AA2A20@ha */
/* 80AA0900  38 03 2A 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AA2A20@l */
/* 80AA0904  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80AA0908  7E C3 B3 78 */	mr r3, r22
/* 80AA090C  38 80 00 00 */	li r4, 0
/* 80AA0910  4B 88 7A ED */	bl init__12J3DFrameCtrlFs
/* 80AA0914  38 00 00 00 */	li r0, 0
/* 80AA0918  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AA091C  3A DF 06 44 */	addi r22, r31, 0x644
/* 80AA0920  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AA2A20@ha */
/* 80AA0924  38 03 2A 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AA2A20@l */
/* 80AA0928  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80AA092C  7E C3 B3 78 */	mr r3, r22
/* 80AA0930  38 80 00 00 */	li r4, 0
/* 80AA0934  4B 88 7A C9 */	bl init__12J3DFrameCtrlFs
/* 80AA0938  38 00 00 00 */	li r0, 0
/* 80AA093C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AA0940  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80AA0944  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AA2A20@ha */
/* 80AA0948  38 03 2A 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AA2A20@l */
/* 80AA094C  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80AA0950  7E C3 B3 78 */	mr r3, r22
/* 80AA0954  38 80 00 00 */	li r4, 0
/* 80AA0958  4B 88 7A A5 */	bl init__12J3DFrameCtrlFs
/* 80AA095C  38 00 00 00 */	li r0, 0
/* 80AA0960  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AA0964  3A DF 06 74 */	addi r22, r31, 0x674
/* 80AA0968  3C 60 80 AA */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AA2A20@ha */
/* 80AA096C  38 03 2A 20 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AA2A20@l */
/* 80AA0970  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80AA0974  7E C3 B3 78 */	mr r3, r22
/* 80AA0978  38 80 00 00 */	li r4, 0
/* 80AA097C  4B 88 7A 81 */	bl init__12J3DFrameCtrlFs
/* 80AA0980  38 00 00 00 */	li r0, 0
/* 80AA0984  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AA0988  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80AA098C  7E C3 B3 78 */	mr r3, r22
/* 80AA0990  4B 5D 57 11 */	bl __ct__9dBgS_AcchFv
/* 80AA0994  3C 60 80 AA */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AA2A2C@ha */
/* 80AA0998  38 63 2A 2C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AA2A2C@l */
/* 80AA099C  90 76 00 10 */	stw r3, 0x10(r22)
/* 80AA09A0  38 03 00 0C */	addi r0, r3, 0xc
/* 80AA09A4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AA09A8  38 03 00 18 */	addi r0, r3, 0x18
/* 80AA09AC  90 16 00 24 */	stw r0, 0x24(r22)
/* 80AA09B0  38 76 00 14 */	addi r3, r22, 0x14
/* 80AA09B4  4B 5D 84 B5 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80AA09B8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AA09BC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AA09C0  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80AA09C4  38 7F 08 80 */	addi r3, r31, 0x880
/* 80AA09C8  4B 5E 2D 99 */	bl __ct__10dCcD_GSttsFv
/* 80AA09CC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AA09D0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AA09D4  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80AA09D8  3B 23 00 20 */	addi r25, r3, 0x20
/* 80AA09DC  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80AA09E0  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AA09E4  4B 5D 54 C9 */	bl __ct__12dBgS_AcchCirFv
/* 80AA09E8  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AA09EC  4B 7C 72 31 */	bl __ct__11cBgS_GndChkFv
/* 80AA09F0  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AA09F4  4B 7A 95 0D */	bl __ct__10dMsgFlow_cFv
/* 80AA09F8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AA09FC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AA0A00  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AA0A04  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80AA0A08  4B 5E 2D 59 */	bl __ct__10dCcD_GSttsFv
/* 80AA0A0C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AA0A10  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AA0A14  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AA0A18  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80AA0A1C  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80AA0A20  4B 5D 6B 5D */	bl __ct__11dBgS_GndChkFv
/* 80AA0A24  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80AA0A28  4B 5D 72 41 */	bl __ct__11dBgS_LinChkFv
/* 80AA0A2C  3C 60 80 AA */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AA2A74@ha */
/* 80AA0A30  38 03 2A 74 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AA2A74@l */
/* 80AA0A34  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80AA0A38  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80AA0A3C  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80AA0A40  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AA0A44  4B 6A 4E 55 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AA0A48  3C 60 80 AA */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AA2A74@ha */
/* 80AA0A4C  38 03 2A 74 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AA2A74@l */
/* 80AA0A50  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80AA0A54  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80AA0A58  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80AA0A5C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AA0A60  4B 6A 4E 39 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AA0A64  3C 60 80 AA */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AA2A80@ha */
/* 80AA0A68  38 03 2A 80 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AA2A80@l */
/* 80AA0A6C  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80AA0A70  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AA0A74  4B 6A 4C 61 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AA0A78  3C 60 80 AA */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AA2A80@ha */
/* 80AA0A7C  38 03 2A 80 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AA2A80@l */
/* 80AA0A80  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80AA0A84  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AA0A88  4B 6A 4C 4D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AA0A8C  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80AA0A90  3C 60 80 AA */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AA2A8C@ha */
/* 80AA0A94  38 03 2A 8C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AA2A8C@l */
/* 80AA0A98  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80AA0A9C  3C 60 80 AA */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AA2A80@ha */
/* 80AA0AA0  38 03 2A 80 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AA2A80@l */
/* 80AA0AA4  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80AA0AA8  7F 43 D3 78 */	mr r3, r26
/* 80AA0AAC  4B 6A 4C 29 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AA0AB0  38 7A 00 30 */	addi r3, r26, 0x30
/* 80AA0AB4  3C 80 80 AA */	lis r4, __ct__4cXyzFv@ha /* 0x80AA0D70@ha */
/* 80AA0AB8  38 84 0D 70 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AA0D70@l */
/* 80AA0ABC  3C A0 80 AA */	lis r5, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0AC0  38 A5 06 E0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA0AC4  38 C0 00 0C */	li r6, 0xc
/* 80AA0AC8  38 E0 00 03 */	li r7, 3
/* 80AA0ACC  4B 8C 12 95 */	bl __construct_array
/* 80AA0AD0  38 7A 00 54 */	addi r3, r26, 0x54
/* 80AA0AD4  3C 80 80 AA */	lis r4, __ct__4cXyzFv@ha /* 0x80AA0D70@ha */
/* 80AA0AD8  38 84 0D 70 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AA0D70@l */
/* 80AA0ADC  3C A0 80 AA */	lis r5, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0AE0  38 A5 06 E0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA0AE4  38 C0 00 0C */	li r6, 0xc
/* 80AA0AE8  38 E0 00 03 */	li r7, 3
/* 80AA0AEC  4B 8C 12 75 */	bl __construct_array
/* 80AA0AF0  38 7A 00 78 */	addi r3, r26, 0x78
/* 80AA0AF4  3C 80 80 AA */	lis r4, __ct__4cXyzFv@ha /* 0x80AA0D70@ha */
/* 80AA0AF8  38 84 0D 70 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AA0D70@l */
/* 80AA0AFC  3C A0 80 AA */	lis r5, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0B00  38 A5 06 E0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA0B04  38 C0 00 0C */	li r6, 0xc
/* 80AA0B08  38 E0 00 03 */	li r7, 3
/* 80AA0B0C  4B 8C 12 55 */	bl __construct_array
/* 80AA0B10  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80AA0B14  3C 80 80 AA */	lis r4, __ct__4cXyzFv@ha /* 0x80AA0D70@ha */
/* 80AA0B18  38 84 0D 70 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AA0D70@l */
/* 80AA0B1C  3C A0 80 AA */	lis r5, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0B20  38 A5 06 E0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA0B24  38 C0 00 0C */	li r6, 0xc
/* 80AA0B28  38 E0 00 03 */	li r7, 3
/* 80AA0B2C  4B 8C 12 35 */	bl __construct_array
/* 80AA0B30  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80AA0B34  3C 80 80 AA */	lis r4, __ct__4cXyzFv@ha /* 0x80AA0D70@ha */
/* 80AA0B38  38 84 0D 70 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AA0D70@l */
/* 80AA0B3C  3C A0 80 AA */	lis r5, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0B40  38 A5 06 E0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA0B44  38 C0 00 0C */	li r6, 0xc
/* 80AA0B48  38 E0 00 03 */	li r7, 3
/* 80AA0B4C  4B 8C 12 15 */	bl __construct_array
/* 80AA0B50  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80AA0B54  3C 80 80 AA */	lis r4, __ct__4cXyzFv@ha /* 0x80AA0D70@ha */
/* 80AA0B58  38 84 0D 70 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AA0D70@l */
/* 80AA0B5C  3C A0 80 AA */	lis r5, __dt__4cXyzFv@ha /* 0x80AA06E0@ha */
/* 80AA0B60  38 A5 06 E0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AA06E0@l */
/* 80AA0B64  38 C0 00 0C */	li r6, 0xc
/* 80AA0B68  38 E0 00 03 */	li r7, 3
/* 80AA0B6C  4B 8C 11 F5 */	bl __construct_array
/* 80AA0B70  7F 43 D3 78 */	mr r3, r26
/* 80AA0B74  4B 6A 61 25 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AA0B78  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AA0B7C  3C 80 80 AA */	lis r4, __ct__5csXyzFv@ha /* 0x80AA0C70@ha */
/* 80AA0B80  38 84 0C 70 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AA0C70@l */
/* 80AA0B84  3C A0 80 AA */	lis r5, __dt__5csXyzFv@ha /* 0x80AA071C@ha */
/* 80AA0B88  38 A5 07 1C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AA071C@l */
/* 80AA0B8C  38 C0 00 06 */	li r6, 6
/* 80AA0B90  38 E0 00 02 */	li r7, 2
/* 80AA0B94  4B 8C 11 CD */	bl __construct_array
/* 80AA0B98  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AA0B9C  38 80 00 00 */	li r4, 0
/* 80AA0BA0  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AA0BA4  7C A3 00 50 */	subf r5, r3, r0
/* 80AA0BA8  4B 56 28 B1 */	bl memset
/* 80AA0BAC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AA0BB0  4B 6A 4C E9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AA0BB4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AA0BB8  4B 6A 4C E1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AA0BBC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AA0BC0  4B 6A 4B 15 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AA0BC4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AA0BC8  4B 6A 4B 0D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AA0BCC  7F 43 D3 78 */	mr r3, r26
/* 80AA0BD0  4B 6A 60 C9 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AA0BD4  38 A0 00 00 */	li r5, 0
/* 80AA0BD8  38 60 00 00 */	li r3, 0
/* 80AA0BDC  7C A4 2B 78 */	mr r4, r5
/* 80AA0BE0  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80AA0BE4  38 00 00 02 */	li r0, 2
/* 80AA0BE8  7C 09 03 A6 */	mtctr r0
lbl_80AA0BEC:
/* 80AA0BEC  7C DF 22 14 */	add r6, r31, r4
/* 80AA0BF0  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AA0BF4  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AA0BF8  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AA0BFC  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AA0C00  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AA0C04  38 63 00 04 */	addi r3, r3, 4
/* 80AA0C08  38 84 00 06 */	addi r4, r4, 6
/* 80AA0C0C  42 00 FF E0 */	bdnz lbl_80AA0BEC
/* 80AA0C10  38 00 00 00 */	li r0, 0
/* 80AA0C14  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AA0C18  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AA0C1C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AA0C20  38 00 FF FF */	li r0, -1
/* 80AA0C24  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AA0C28  38 00 00 01 */	li r0, 1
/* 80AA0C2C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AA0C30  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80AA0C34  4B 7C 6D 21 */	bl cM_rndF__Ff
/* 80AA0C38  FC 00 08 1E */	fctiwz f0, f1
/* 80AA0C3C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AA0C40  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AA0C44  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AA0C48  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80AA0C4C  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AA0C50  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AA0C54  7F E3 FB 78 */	mr r3, r31
/* 80AA0C58  39 61 00 40 */	addi r11, r1, 0x40
/* 80AA0C5C  4B 8C 15 B1 */	bl _restgpr_22
/* 80AA0C60  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AA0C64  7C 08 03 A6 */	mtlr r0
/* 80AA0C68  38 21 00 40 */	addi r1, r1, 0x40
/* 80AA0C6C  4E 80 00 20 */	blr 
