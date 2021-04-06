lbl_80AC37E0:
/* 80AC37E0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AC37E4  7C 08 02 A6 */	mflr r0
/* 80AC37E8  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AC37EC  39 61 00 40 */	addi r11, r1, 0x40
/* 80AC37F0  4B 89 E9 D1 */	bl _savegpr_22
/* 80AC37F4  7C 7F 1B 78 */	mr r31, r3
/* 80AC37F8  7C 96 23 78 */	mr r22, r4
/* 80AC37FC  7C B7 2B 78 */	mr r23, r5
/* 80AC3800  7C DA 33 78 */	mr r26, r6
/* 80AC3804  7C FB 3B 78 */	mr r27, r7
/* 80AC3808  7D 1C 43 78 */	mr r28, r8
/* 80AC380C  7D 3D 4B 78 */	mr r29, r9
/* 80AC3810  7D 58 53 78 */	mr r24, r10
/* 80AC3814  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80AC3818  3C 80 80 AC */	lis r4, m__18daNpc_Saru_Param_c@ha /* 0x80AC44F8@ha */
/* 80AC381C  3B C4 44 F8 */	addi r30, r4, m__18daNpc_Saru_Param_c@l /* 0x80AC44F8@l */
/* 80AC3820  4B 55 53 45 */	bl __ct__10fopAc_ac_cFv
/* 80AC3824  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AC3828  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AC382C  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AC3830  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80AC3834  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80AC3838  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80AC383C  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80AC3840  38 7F 05 80 */	addi r3, r31, 0x580
/* 80AC3844  4B 7F CB 85 */	bl __ct__10Z2CreatureFv
/* 80AC3848  3A DF 06 10 */	addi r22, r31, 0x610
/* 80AC384C  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC4E74@ha */
/* 80AC3850  38 03 4E 74 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC4E74@l */
/* 80AC3854  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80AC3858  7E C3 B3 78 */	mr r3, r22
/* 80AC385C  38 80 00 00 */	li r4, 0
/* 80AC3860  4B 86 4B 9D */	bl init__12J3DFrameCtrlFs
/* 80AC3864  38 00 00 00 */	li r0, 0
/* 80AC3868  90 16 00 18 */	stw r0, 0x18(r22)
/* 80AC386C  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80AC3870  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC4E74@ha */
/* 80AC3874  38 03 4E 74 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC4E74@l */
/* 80AC3878  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80AC387C  7E C3 B3 78 */	mr r3, r22
/* 80AC3880  38 80 00 00 */	li r4, 0
/* 80AC3884  4B 86 4B 79 */	bl init__12J3DFrameCtrlFs
/* 80AC3888  38 00 00 00 */	li r0, 0
/* 80AC388C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC3890  3A DF 06 44 */	addi r22, r31, 0x644
/* 80AC3894  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC4E74@ha */
/* 80AC3898  38 03 4E 74 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC4E74@l */
/* 80AC389C  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80AC38A0  7E C3 B3 78 */	mr r3, r22
/* 80AC38A4  38 80 00 00 */	li r4, 0
/* 80AC38A8  4B 86 4B 55 */	bl init__12J3DFrameCtrlFs
/* 80AC38AC  38 00 00 00 */	li r0, 0
/* 80AC38B0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC38B4  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80AC38B8  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC4E74@ha */
/* 80AC38BC  38 03 4E 74 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC4E74@l */
/* 80AC38C0  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80AC38C4  7E C3 B3 78 */	mr r3, r22
/* 80AC38C8  38 80 00 00 */	li r4, 0
/* 80AC38CC  4B 86 4B 31 */	bl init__12J3DFrameCtrlFs
/* 80AC38D0  38 00 00 00 */	li r0, 0
/* 80AC38D4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC38D8  3A DF 06 74 */	addi r22, r31, 0x674
/* 80AC38DC  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC4E74@ha */
/* 80AC38E0  38 03 4E 74 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC4E74@l */
/* 80AC38E4  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80AC38E8  7E C3 B3 78 */	mr r3, r22
/* 80AC38EC  38 80 00 00 */	li r4, 0
/* 80AC38F0  4B 86 4B 0D */	bl init__12J3DFrameCtrlFs
/* 80AC38F4  38 00 00 00 */	li r0, 0
/* 80AC38F8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC38FC  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80AC3900  7E C3 B3 78 */	mr r3, r22
/* 80AC3904  4B 5B 27 9D */	bl __ct__9dBgS_AcchFv
/* 80AC3908  3C 60 80 AC */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AC4E80@ha */
/* 80AC390C  38 63 4E 80 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AC4E80@l */
/* 80AC3910  90 76 00 10 */	stw r3, 0x10(r22)
/* 80AC3914  38 03 00 0C */	addi r0, r3, 0xc
/* 80AC3918  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC391C  38 03 00 18 */	addi r0, r3, 0x18
/* 80AC3920  90 16 00 24 */	stw r0, 0x24(r22)
/* 80AC3924  38 76 00 14 */	addi r3, r22, 0x14
/* 80AC3928  4B 5B 55 41 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80AC392C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AC3930  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AC3934  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80AC3938  38 7F 08 80 */	addi r3, r31, 0x880
/* 80AC393C  4B 5B FE 25 */	bl __ct__10dCcD_GSttsFv
/* 80AC3940  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AC3944  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AC3948  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80AC394C  3B 23 00 20 */	addi r25, r3, 0x20
/* 80AC3950  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80AC3954  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AC3958  4B 5B 25 55 */	bl __ct__12dBgS_AcchCirFv
/* 80AC395C  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AC3960  4B 7A 42 BD */	bl __ct__11cBgS_GndChkFv
/* 80AC3964  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AC3968  4B 78 65 99 */	bl __ct__10dMsgFlow_cFv
/* 80AC396C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AC3970  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AC3974  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AC3978  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80AC397C  4B 5B FD E5 */	bl __ct__10dCcD_GSttsFv
/* 80AC3980  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AC3984  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AC3988  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AC398C  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80AC3990  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80AC3994  4B 5B 3B E9 */	bl __ct__11dBgS_GndChkFv
/* 80AC3998  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80AC399C  4B 5B 42 CD */	bl __ct__11dBgS_LinChkFv
/* 80AC39A0  3C 60 80 AC */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AC4EC8@ha */
/* 80AC39A4  38 03 4E C8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AC4EC8@l */
/* 80AC39A8  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80AC39AC  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80AC39B0  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80AC39B4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC39B8  4B 68 1E E1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC39BC  3C 60 80 AC */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AC4EC8@ha */
/* 80AC39C0  38 03 4E C8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AC4EC8@l */
/* 80AC39C4  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80AC39C8  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80AC39CC  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80AC39D0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC39D4  4B 68 1E C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC39D8  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC4ED4@ha */
/* 80AC39DC  38 03 4E D4 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC4ED4@l */
/* 80AC39E0  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80AC39E4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AC39E8  4B 68 1C ED */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC39EC  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC4ED4@ha */
/* 80AC39F0  38 03 4E D4 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC4ED4@l */
/* 80AC39F4  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80AC39F8  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AC39FC  4B 68 1C D9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC3A00  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80AC3A04  3C 60 80 AC */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AC4EE0@ha */
/* 80AC3A08  38 03 4E E0 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AC4EE0@l */
/* 80AC3A0C  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80AC3A10  3C 60 80 AC */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC4ED4@ha */
/* 80AC3A14  38 03 4E D4 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC4ED4@l */
/* 80AC3A18  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80AC3A1C  7F 43 D3 78 */	mr r3, r26
/* 80AC3A20  4B 68 1C B5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC3A24  38 7A 00 30 */	addi r3, r26, 0x30
/* 80AC3A28  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AC3CE4@ha */
/* 80AC3A2C  38 84 3C E4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC3CE4@l */
/* 80AC3A30  3C A0 80 AC */	lis r5, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3A34  38 A5 36 0C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3A38  38 C0 00 0C */	li r6, 0xc
/* 80AC3A3C  38 E0 00 03 */	li r7, 3
/* 80AC3A40  4B 89 E3 21 */	bl __construct_array
/* 80AC3A44  38 7A 00 54 */	addi r3, r26, 0x54
/* 80AC3A48  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AC3CE4@ha */
/* 80AC3A4C  38 84 3C E4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC3CE4@l */
/* 80AC3A50  3C A0 80 AC */	lis r5, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3A54  38 A5 36 0C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3A58  38 C0 00 0C */	li r6, 0xc
/* 80AC3A5C  38 E0 00 03 */	li r7, 3
/* 80AC3A60  4B 89 E3 01 */	bl __construct_array
/* 80AC3A64  38 7A 00 78 */	addi r3, r26, 0x78
/* 80AC3A68  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AC3CE4@ha */
/* 80AC3A6C  38 84 3C E4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC3CE4@l */
/* 80AC3A70  3C A0 80 AC */	lis r5, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3A74  38 A5 36 0C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3A78  38 C0 00 0C */	li r6, 0xc
/* 80AC3A7C  38 E0 00 03 */	li r7, 3
/* 80AC3A80  4B 89 E2 E1 */	bl __construct_array
/* 80AC3A84  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80AC3A88  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AC3CE4@ha */
/* 80AC3A8C  38 84 3C E4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC3CE4@l */
/* 80AC3A90  3C A0 80 AC */	lis r5, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3A94  38 A5 36 0C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3A98  38 C0 00 0C */	li r6, 0xc
/* 80AC3A9C  38 E0 00 03 */	li r7, 3
/* 80AC3AA0  4B 89 E2 C1 */	bl __construct_array
/* 80AC3AA4  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80AC3AA8  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AC3CE4@ha */
/* 80AC3AAC  38 84 3C E4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC3CE4@l */
/* 80AC3AB0  3C A0 80 AC */	lis r5, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3AB4  38 A5 36 0C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3AB8  38 C0 00 0C */	li r6, 0xc
/* 80AC3ABC  38 E0 00 03 */	li r7, 3
/* 80AC3AC0  4B 89 E2 A1 */	bl __construct_array
/* 80AC3AC4  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80AC3AC8  3C 80 80 AC */	lis r4, __ct__4cXyzFv@ha /* 0x80AC3CE4@ha */
/* 80AC3ACC  38 84 3C E4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC3CE4@l */
/* 80AC3AD0  3C A0 80 AC */	lis r5, __dt__4cXyzFv@ha /* 0x80AC360C@ha */
/* 80AC3AD4  38 A5 36 0C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC360C@l */
/* 80AC3AD8  38 C0 00 0C */	li r6, 0xc
/* 80AC3ADC  38 E0 00 03 */	li r7, 3
/* 80AC3AE0  4B 89 E2 81 */	bl __construct_array
/* 80AC3AE4  7F 43 D3 78 */	mr r3, r26
/* 80AC3AE8  4B 68 31 B1 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AC3AEC  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AC3AF0  3C 80 80 AC */	lis r4, __ct__5csXyzFv@ha /* 0x80AC3BE4@ha */
/* 80AC3AF4  38 84 3B E4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AC3BE4@l */
/* 80AC3AF8  3C A0 80 AC */	lis r5, __dt__5csXyzFv@ha /* 0x80AC3648@ha */
/* 80AC3AFC  38 A5 36 48 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AC3648@l */
/* 80AC3B00  38 C0 00 06 */	li r6, 6
/* 80AC3B04  38 E0 00 02 */	li r7, 2
/* 80AC3B08  4B 89 E2 59 */	bl __construct_array
/* 80AC3B0C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AC3B10  38 80 00 00 */	li r4, 0
/* 80AC3B14  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AC3B18  7C A3 00 50 */	subf r5, r3, r0
/* 80AC3B1C  4B 53 F9 3D */	bl memset
/* 80AC3B20  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC3B24  4B 68 1D 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC3B28  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC3B2C  4B 68 1D 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC3B30  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AC3B34  4B 68 1B A1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC3B38  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AC3B3C  4B 68 1B 99 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC3B40  7F 43 D3 78 */	mr r3, r26
/* 80AC3B44  4B 68 31 55 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AC3B48  38 A0 00 00 */	li r5, 0
/* 80AC3B4C  38 60 00 00 */	li r3, 0
/* 80AC3B50  7C A4 2B 78 */	mr r4, r5
/* 80AC3B54  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AC3B58  38 00 00 02 */	li r0, 2
/* 80AC3B5C  7C 09 03 A6 */	mtctr r0
lbl_80AC3B60:
/* 80AC3B60  7C DF 22 14 */	add r6, r31, r4
/* 80AC3B64  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AC3B68  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AC3B6C  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AC3B70  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AC3B74  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AC3B78  38 63 00 04 */	addi r3, r3, 4
/* 80AC3B7C  38 84 00 06 */	addi r4, r4, 6
/* 80AC3B80  42 00 FF E0 */	bdnz lbl_80AC3B60
/* 80AC3B84  38 00 00 00 */	li r0, 0
/* 80AC3B88  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AC3B8C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AC3B90  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AC3B94  38 00 FF FF */	li r0, -1
/* 80AC3B98  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AC3B9C  38 00 00 01 */	li r0, 1
/* 80AC3BA0  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AC3BA4  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 80AC3BA8  4B 7A 3D AD */	bl cM_rndF__Ff
/* 80AC3BAC  FC 00 08 1E */	fctiwz f0, f1
/* 80AC3BB0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AC3BB4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AC3BB8  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AC3BBC  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 80AC3BC0  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AC3BC4  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AC3BC8  7F E3 FB 78 */	mr r3, r31
/* 80AC3BCC  39 61 00 40 */	addi r11, r1, 0x40
/* 80AC3BD0  4B 89 E6 3D */	bl _restgpr_22
/* 80AC3BD4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AC3BD8  7C 08 03 A6 */	mtlr r0
/* 80AC3BDC  38 21 00 40 */	addi r1, r1, 0x40
/* 80AC3BE0  4E 80 00 20 */	blr 
