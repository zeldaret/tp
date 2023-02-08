lbl_80AE5920:
/* 80AE5920  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AE5924  7C 08 02 A6 */	mflr r0
/* 80AE5928  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AE592C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AE5930  4B 87 C8 91 */	bl _savegpr_22
/* 80AE5934  7C 7F 1B 78 */	mr r31, r3
/* 80AE5938  7C 96 23 78 */	mr r22, r4
/* 80AE593C  7C B7 2B 78 */	mr r23, r5
/* 80AE5940  7C DA 33 78 */	mr r26, r6
/* 80AE5944  7C FB 3B 78 */	mr r27, r7
/* 80AE5948  7D 1C 43 78 */	mr r28, r8
/* 80AE594C  7D 3D 4B 78 */	mr r29, r9
/* 80AE5950  7D 58 53 78 */	mr r24, r10
/* 80AE5954  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80AE5958  3C 80 80 AE */	lis r4, m__17daNpc_Sha_Param_c@ha /* 0x80AE6BC8@ha */
/* 80AE595C  3B C4 6B C8 */	addi r30, r4, m__17daNpc_Sha_Param_c@l /* 0x80AE6BC8@l */
/* 80AE5960  4B 53 32 05 */	bl __ct__10fopAc_ac_cFv
/* 80AE5964  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AE5968  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AE596C  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AE5970  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80AE5974  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80AE5978  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80AE597C  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80AE5980  38 7F 05 80 */	addi r3, r31, 0x580
/* 80AE5984  4B 7D AA 45 */	bl __ct__10Z2CreatureFv
/* 80AE5988  3A DF 06 10 */	addi r22, r31, 0x610
/* 80AE598C  3C 60 80 AE */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AE76D0@ha */
/* 80AE5990  38 03 76 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AE76D0@l */
/* 80AE5994  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80AE5998  7E C3 B3 78 */	mr r3, r22
/* 80AE599C  38 80 00 00 */	li r4, 0
/* 80AE59A0  4B 84 2A 5D */	bl init__12J3DFrameCtrlFs
/* 80AE59A4  38 00 00 00 */	li r0, 0
/* 80AE59A8  90 16 00 18 */	stw r0, 0x18(r22)
/* 80AE59AC  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80AE59B0  3C 60 80 AE */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AE76D0@ha */
/* 80AE59B4  38 03 76 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AE76D0@l */
/* 80AE59B8  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80AE59BC  7E C3 B3 78 */	mr r3, r22
/* 80AE59C0  38 80 00 00 */	li r4, 0
/* 80AE59C4  4B 84 2A 39 */	bl init__12J3DFrameCtrlFs
/* 80AE59C8  38 00 00 00 */	li r0, 0
/* 80AE59CC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AE59D0  3A DF 06 44 */	addi r22, r31, 0x644
/* 80AE59D4  3C 60 80 AE */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AE76D0@ha */
/* 80AE59D8  38 03 76 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AE76D0@l */
/* 80AE59DC  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80AE59E0  7E C3 B3 78 */	mr r3, r22
/* 80AE59E4  38 80 00 00 */	li r4, 0
/* 80AE59E8  4B 84 2A 15 */	bl init__12J3DFrameCtrlFs
/* 80AE59EC  38 00 00 00 */	li r0, 0
/* 80AE59F0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AE59F4  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80AE59F8  3C 60 80 AE */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AE76D0@ha */
/* 80AE59FC  38 03 76 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AE76D0@l */
/* 80AE5A00  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80AE5A04  7E C3 B3 78 */	mr r3, r22
/* 80AE5A08  38 80 00 00 */	li r4, 0
/* 80AE5A0C  4B 84 29 F1 */	bl init__12J3DFrameCtrlFs
/* 80AE5A10  38 00 00 00 */	li r0, 0
/* 80AE5A14  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AE5A18  3A DF 06 74 */	addi r22, r31, 0x674
/* 80AE5A1C  3C 60 80 AE */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AE76D0@ha */
/* 80AE5A20  38 03 76 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AE76D0@l */
/* 80AE5A24  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80AE5A28  7E C3 B3 78 */	mr r3, r22
/* 80AE5A2C  38 80 00 00 */	li r4, 0
/* 80AE5A30  4B 84 29 CD */	bl init__12J3DFrameCtrlFs
/* 80AE5A34  38 00 00 00 */	li r0, 0
/* 80AE5A38  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AE5A3C  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80AE5A40  7E C3 B3 78 */	mr r3, r22
/* 80AE5A44  4B 59 06 5D */	bl __ct__9dBgS_AcchFv
/* 80AE5A48  3C 60 80 AE */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AE76DC@ha */
/* 80AE5A4C  38 63 76 DC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AE76DC@l */
/* 80AE5A50  90 76 00 10 */	stw r3, 0x10(r22)
/* 80AE5A54  38 03 00 0C */	addi r0, r3, 0xc
/* 80AE5A58  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AE5A5C  38 03 00 18 */	addi r0, r3, 0x18
/* 80AE5A60  90 16 00 24 */	stw r0, 0x24(r22)
/* 80AE5A64  38 76 00 14 */	addi r3, r22, 0x14
/* 80AE5A68  4B 59 34 01 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80AE5A6C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AE5A70  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AE5A74  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80AE5A78  38 7F 08 80 */	addi r3, r31, 0x880
/* 80AE5A7C  4B 59 DC E5 */	bl __ct__10dCcD_GSttsFv
/* 80AE5A80  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AE5A84  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AE5A88  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80AE5A8C  3B 23 00 20 */	addi r25, r3, 0x20
/* 80AE5A90  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80AE5A94  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AE5A98  4B 59 04 15 */	bl __ct__12dBgS_AcchCirFv
/* 80AE5A9C  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AE5AA0  4B 78 21 7D */	bl __ct__11cBgS_GndChkFv
/* 80AE5AA4  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AE5AA8  4B 76 44 59 */	bl __ct__10dMsgFlow_cFv
/* 80AE5AAC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AE5AB0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AE5AB4  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AE5AB8  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80AE5ABC  4B 59 DC A5 */	bl __ct__10dCcD_GSttsFv
/* 80AE5AC0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AE5AC4  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AE5AC8  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AE5ACC  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80AE5AD0  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80AE5AD4  4B 59 1A A9 */	bl __ct__11dBgS_GndChkFv
/* 80AE5AD8  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80AE5ADC  4B 59 21 8D */	bl __ct__11dBgS_LinChkFv
/* 80AE5AE0  3C 60 80 AE */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AE7724@ha */
/* 80AE5AE4  38 03 77 24 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AE7724@l */
/* 80AE5AE8  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80AE5AEC  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80AE5AF0  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80AE5AF4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AE5AF8  4B 65 FD A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AE5AFC  3C 60 80 AE */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AE7724@ha */
/* 80AE5B00  38 03 77 24 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AE7724@l */
/* 80AE5B04  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80AE5B08  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80AE5B0C  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80AE5B10  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AE5B14  4B 65 FD 85 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AE5B18  3C 60 80 AE */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AE7730@ha */
/* 80AE5B1C  38 03 77 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AE7730@l */
/* 80AE5B20  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80AE5B24  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AE5B28  4B 65 FB AD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AE5B2C  3C 60 80 AE */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AE7730@ha */
/* 80AE5B30  38 03 77 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AE7730@l */
/* 80AE5B34  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80AE5B38  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AE5B3C  4B 65 FB 99 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AE5B40  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80AE5B44  3C 60 80 AE */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AE773C@ha */
/* 80AE5B48  38 03 77 3C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AE773C@l */
/* 80AE5B4C  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80AE5B50  3C 60 80 AE */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AE7730@ha */
/* 80AE5B54  38 03 77 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AE7730@l */
/* 80AE5B58  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80AE5B5C  7F 43 D3 78 */	mr r3, r26
/* 80AE5B60  4B 65 FB 75 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AE5B64  38 7A 00 30 */	addi r3, r26, 0x30
/* 80AE5B68  3C 80 80 AE */	lis r4, __ct__4cXyzFv@ha /* 0x80AE5E24@ha */
/* 80AE5B6C  38 84 5E 24 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AE5E24@l */
/* 80AE5B70  3C A0 80 AE */	lis r5, __dt__4cXyzFv@ha /* 0x80AE58A8@ha */
/* 80AE5B74  38 A5 58 A8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AE58A8@l */
/* 80AE5B78  38 C0 00 0C */	li r6, 0xc
/* 80AE5B7C  38 E0 00 03 */	li r7, 3
/* 80AE5B80  4B 87 C1 E1 */	bl __construct_array
/* 80AE5B84  38 7A 00 54 */	addi r3, r26, 0x54
/* 80AE5B88  3C 80 80 AE */	lis r4, __ct__4cXyzFv@ha /* 0x80AE5E24@ha */
/* 80AE5B8C  38 84 5E 24 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AE5E24@l */
/* 80AE5B90  3C A0 80 AE */	lis r5, __dt__4cXyzFv@ha /* 0x80AE58A8@ha */
/* 80AE5B94  38 A5 58 A8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AE58A8@l */
/* 80AE5B98  38 C0 00 0C */	li r6, 0xc
/* 80AE5B9C  38 E0 00 03 */	li r7, 3
/* 80AE5BA0  4B 87 C1 C1 */	bl __construct_array
/* 80AE5BA4  38 7A 00 78 */	addi r3, r26, 0x78
/* 80AE5BA8  3C 80 80 AE */	lis r4, __ct__4cXyzFv@ha /* 0x80AE5E24@ha */
/* 80AE5BAC  38 84 5E 24 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AE5E24@l */
/* 80AE5BB0  3C A0 80 AE */	lis r5, __dt__4cXyzFv@ha /* 0x80AE58A8@ha */
/* 80AE5BB4  38 A5 58 A8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AE58A8@l */
/* 80AE5BB8  38 C0 00 0C */	li r6, 0xc
/* 80AE5BBC  38 E0 00 03 */	li r7, 3
/* 80AE5BC0  4B 87 C1 A1 */	bl __construct_array
/* 80AE5BC4  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80AE5BC8  3C 80 80 AE */	lis r4, __ct__4cXyzFv@ha /* 0x80AE5E24@ha */
/* 80AE5BCC  38 84 5E 24 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AE5E24@l */
/* 80AE5BD0  3C A0 80 AE */	lis r5, __dt__4cXyzFv@ha /* 0x80AE58A8@ha */
/* 80AE5BD4  38 A5 58 A8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AE58A8@l */
/* 80AE5BD8  38 C0 00 0C */	li r6, 0xc
/* 80AE5BDC  38 E0 00 03 */	li r7, 3
/* 80AE5BE0  4B 87 C1 81 */	bl __construct_array
/* 80AE5BE4  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80AE5BE8  3C 80 80 AE */	lis r4, __ct__4cXyzFv@ha /* 0x80AE5E24@ha */
/* 80AE5BEC  38 84 5E 24 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AE5E24@l */
/* 80AE5BF0  3C A0 80 AE */	lis r5, __dt__4cXyzFv@ha /* 0x80AE58A8@ha */
/* 80AE5BF4  38 A5 58 A8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AE58A8@l */
/* 80AE5BF8  38 C0 00 0C */	li r6, 0xc
/* 80AE5BFC  38 E0 00 03 */	li r7, 3
/* 80AE5C00  4B 87 C1 61 */	bl __construct_array
/* 80AE5C04  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80AE5C08  3C 80 80 AE */	lis r4, __ct__4cXyzFv@ha /* 0x80AE5E24@ha */
/* 80AE5C0C  38 84 5E 24 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AE5E24@l */
/* 80AE5C10  3C A0 80 AE */	lis r5, __dt__4cXyzFv@ha /* 0x80AE58A8@ha */
/* 80AE5C14  38 A5 58 A8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AE58A8@l */
/* 80AE5C18  38 C0 00 0C */	li r6, 0xc
/* 80AE5C1C  38 E0 00 03 */	li r7, 3
/* 80AE5C20  4B 87 C1 41 */	bl __construct_array
/* 80AE5C24  7F 43 D3 78 */	mr r3, r26
/* 80AE5C28  4B 66 10 71 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AE5C2C  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AE5C30  3C 80 80 AE */	lis r4, __ct__5csXyzFv@ha /* 0x80AE5D24@ha */
/* 80AE5C34  38 84 5D 24 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AE5D24@l */
/* 80AE5C38  3C A0 80 AE */	lis r5, __dt__5csXyzFv@ha /* 0x80AE58E4@ha */
/* 80AE5C3C  38 A5 58 E4 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AE58E4@l */
/* 80AE5C40  38 C0 00 06 */	li r6, 6
/* 80AE5C44  38 E0 00 02 */	li r7, 2
/* 80AE5C48  4B 87 C1 19 */	bl __construct_array
/* 80AE5C4C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AE5C50  38 80 00 00 */	li r4, 0
/* 80AE5C54  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AE5C58  7C A3 00 50 */	subf r5, r3, r0
/* 80AE5C5C  4B 51 D7 FD */	bl memset
/* 80AE5C60  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AE5C64  4B 65 FC 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AE5C68  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AE5C6C  4B 65 FC 2D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AE5C70  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AE5C74  4B 65 FA 61 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AE5C78  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AE5C7C  4B 65 FA 59 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AE5C80  7F 43 D3 78 */	mr r3, r26
/* 80AE5C84  4B 66 10 15 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AE5C88  38 A0 00 00 */	li r5, 0
/* 80AE5C8C  38 60 00 00 */	li r3, 0
/* 80AE5C90  7C A4 2B 78 */	mr r4, r5
/* 80AE5C94  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80AE5C98  38 00 00 02 */	li r0, 2
/* 80AE5C9C  7C 09 03 A6 */	mtctr r0
lbl_80AE5CA0:
/* 80AE5CA0  7C DF 22 14 */	add r6, r31, r4
/* 80AE5CA4  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AE5CA8  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AE5CAC  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AE5CB0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AE5CB4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AE5CB8  38 63 00 04 */	addi r3, r3, 4
/* 80AE5CBC  38 84 00 06 */	addi r4, r4, 6
/* 80AE5CC0  42 00 FF E0 */	bdnz lbl_80AE5CA0
/* 80AE5CC4  38 00 00 00 */	li r0, 0
/* 80AE5CC8  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AE5CCC  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AE5CD0  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AE5CD4  38 00 FF FF */	li r0, -1
/* 80AE5CD8  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AE5CDC  38 00 00 01 */	li r0, 1
/* 80AE5CE0  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AE5CE4  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80AE5CE8  4B 78 1C 6D */	bl cM_rndF__Ff
/* 80AE5CEC  FC 00 08 1E */	fctiwz f0, f1
/* 80AE5CF0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AE5CF4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AE5CF8  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AE5CFC  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AE5D00  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AE5D04  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AE5D08  7F E3 FB 78 */	mr r3, r31
/* 80AE5D0C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AE5D10  4B 87 C4 FD */	bl _restgpr_22
/* 80AE5D14  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AE5D18  7C 08 03 A6 */	mtlr r0
/* 80AE5D1C  38 21 00 40 */	addi r1, r1, 0x40
/* 80AE5D20  4E 80 00 20 */	blr 
