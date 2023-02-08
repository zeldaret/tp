lbl_80AC88D4:
/* 80AC88D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AC88D8  7C 08 02 A6 */	mflr r0
/* 80AC88DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AC88E0  39 61 00 40 */	addi r11, r1, 0x40
/* 80AC88E4  4B 89 98 DD */	bl _savegpr_22
/* 80AC88E8  7C 7F 1B 78 */	mr r31, r3
/* 80AC88EC  7C 96 23 78 */	mr r22, r4
/* 80AC88F0  7C B7 2B 78 */	mr r23, r5
/* 80AC88F4  7C DA 33 78 */	mr r26, r6
/* 80AC88F8  7C FB 3B 78 */	mr r27, r7
/* 80AC88FC  7D 1C 43 78 */	mr r28, r8
/* 80AC8900  7D 3D 4B 78 */	mr r29, r9
/* 80AC8904  7D 58 53 78 */	mr r24, r10
/* 80AC8908  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80AC890C  3C 80 80 AD */	lis r4, m__18daNpc_seiC_Param_c@ha /* 0x80AC921C@ha */
/* 80AC8910  3B C4 92 1C */	addi r30, r4, m__18daNpc_seiC_Param_c@l /* 0x80AC921C@l */
/* 80AC8914  4B 55 02 51 */	bl __ct__10fopAc_ac_cFv
/* 80AC8918  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AC891C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AC8920  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AC8924  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80AC8928  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80AC892C  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80AC8930  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80AC8934  38 7F 05 80 */	addi r3, r31, 0x580
/* 80AC8938  4B 7F 7A 91 */	bl __ct__10Z2CreatureFv
/* 80AC893C  3A DF 06 10 */	addi r22, r31, 0x610
/* 80AC8940  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC9430@ha */
/* 80AC8944  38 03 94 30 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC9430@l */
/* 80AC8948  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80AC894C  7E C3 B3 78 */	mr r3, r22
/* 80AC8950  38 80 00 00 */	li r4, 0
/* 80AC8954  4B 85 FA A9 */	bl init__12J3DFrameCtrlFs
/* 80AC8958  38 00 00 00 */	li r0, 0
/* 80AC895C  90 16 00 18 */	stw r0, 0x18(r22)
/* 80AC8960  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80AC8964  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC9430@ha */
/* 80AC8968  38 03 94 30 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC9430@l */
/* 80AC896C  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80AC8970  7E C3 B3 78 */	mr r3, r22
/* 80AC8974  38 80 00 00 */	li r4, 0
/* 80AC8978  4B 85 FA 85 */	bl init__12J3DFrameCtrlFs
/* 80AC897C  38 00 00 00 */	li r0, 0
/* 80AC8980  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC8984  3A DF 06 44 */	addi r22, r31, 0x644
/* 80AC8988  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC9430@ha */
/* 80AC898C  38 03 94 30 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC9430@l */
/* 80AC8990  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80AC8994  7E C3 B3 78 */	mr r3, r22
/* 80AC8998  38 80 00 00 */	li r4, 0
/* 80AC899C  4B 85 FA 61 */	bl init__12J3DFrameCtrlFs
/* 80AC89A0  38 00 00 00 */	li r0, 0
/* 80AC89A4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC89A8  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80AC89AC  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC9430@ha */
/* 80AC89B0  38 03 94 30 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC9430@l */
/* 80AC89B4  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80AC89B8  7E C3 B3 78 */	mr r3, r22
/* 80AC89BC  38 80 00 00 */	li r4, 0
/* 80AC89C0  4B 85 FA 3D */	bl init__12J3DFrameCtrlFs
/* 80AC89C4  38 00 00 00 */	li r0, 0
/* 80AC89C8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC89CC  3A DF 06 74 */	addi r22, r31, 0x674
/* 80AC89D0  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AC9430@ha */
/* 80AC89D4  38 03 94 30 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AC9430@l */
/* 80AC89D8  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80AC89DC  7E C3 B3 78 */	mr r3, r22
/* 80AC89E0  38 80 00 00 */	li r4, 0
/* 80AC89E4  4B 85 FA 19 */	bl init__12J3DFrameCtrlFs
/* 80AC89E8  38 00 00 00 */	li r0, 0
/* 80AC89EC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC89F0  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80AC89F4  7E C3 B3 78 */	mr r3, r22
/* 80AC89F8  4B 5A D6 A9 */	bl __ct__9dBgS_AcchFv
/* 80AC89FC  3C 60 80 AD */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AC943C@ha */
/* 80AC8A00  38 63 94 3C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AC943C@l */
/* 80AC8A04  90 76 00 10 */	stw r3, 0x10(r22)
/* 80AC8A08  38 03 00 0C */	addi r0, r3, 0xc
/* 80AC8A0C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AC8A10  38 03 00 18 */	addi r0, r3, 0x18
/* 80AC8A14  90 16 00 24 */	stw r0, 0x24(r22)
/* 80AC8A18  38 76 00 14 */	addi r3, r22, 0x14
/* 80AC8A1C  4B 5B 04 4D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80AC8A20  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AC8A24  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AC8A28  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80AC8A2C  38 7F 08 80 */	addi r3, r31, 0x880
/* 80AC8A30  4B 5B AD 31 */	bl __ct__10dCcD_GSttsFv
/* 80AC8A34  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AC8A38  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AC8A3C  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80AC8A40  3B 23 00 20 */	addi r25, r3, 0x20
/* 80AC8A44  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80AC8A48  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AC8A4C  4B 5A D4 61 */	bl __ct__12dBgS_AcchCirFv
/* 80AC8A50  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AC8A54  4B 79 F1 C9 */	bl __ct__11cBgS_GndChkFv
/* 80AC8A58  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AC8A5C  4B 78 14 A5 */	bl __ct__10dMsgFlow_cFv
/* 80AC8A60  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AC8A64  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AC8A68  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AC8A6C  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80AC8A70  4B 5B AC F1 */	bl __ct__10dCcD_GSttsFv
/* 80AC8A74  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AC8A78  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AC8A7C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AC8A80  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80AC8A84  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80AC8A88  4B 5A EA F5 */	bl __ct__11dBgS_GndChkFv
/* 80AC8A8C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80AC8A90  4B 5A F1 D9 */	bl __ct__11dBgS_LinChkFv
/* 80AC8A94  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AC9484@ha */
/* 80AC8A98  38 03 94 84 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AC9484@l */
/* 80AC8A9C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80AC8AA0  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80AC8AA4  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80AC8AA8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC8AAC  4B 67 CD ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC8AB0  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AC9484@ha */
/* 80AC8AB4  38 03 94 84 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AC9484@l */
/* 80AC8AB8  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80AC8ABC  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80AC8AC0  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80AC8AC4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC8AC8  4B 67 CD D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC8ACC  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC9490@ha */
/* 80AC8AD0  38 03 94 90 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC9490@l */
/* 80AC8AD4  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80AC8AD8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AC8ADC  4B 67 CB F9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC8AE0  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC9490@ha */
/* 80AC8AE4  38 03 94 90 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC9490@l */
/* 80AC8AE8  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80AC8AEC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AC8AF0  4B 67 CB E5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC8AF4  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80AC8AF8  3C 60 80 AD */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AC949C@ha */
/* 80AC8AFC  38 03 94 9C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AC949C@l */
/* 80AC8B00  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80AC8B04  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AC9490@ha */
/* 80AC8B08  38 03 94 90 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AC9490@l */
/* 80AC8B0C  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80AC8B10  7F 43 D3 78 */	mr r3, r26
/* 80AC8B14  4B 67 CB C1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC8B18  38 7A 00 30 */	addi r3, r26, 0x30
/* 80AC8B1C  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AC8DD8@ha */
/* 80AC8B20  38 84 8D D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC8DD8@l */
/* 80AC8B24  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC8B28  38 A5 88 5C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8B2C  38 C0 00 0C */	li r6, 0xc
/* 80AC8B30  38 E0 00 03 */	li r7, 3
/* 80AC8B34  4B 89 92 2D */	bl __construct_array
/* 80AC8B38  38 7A 00 54 */	addi r3, r26, 0x54
/* 80AC8B3C  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AC8DD8@ha */
/* 80AC8B40  38 84 8D D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC8DD8@l */
/* 80AC8B44  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC8B48  38 A5 88 5C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8B4C  38 C0 00 0C */	li r6, 0xc
/* 80AC8B50  38 E0 00 03 */	li r7, 3
/* 80AC8B54  4B 89 92 0D */	bl __construct_array
/* 80AC8B58  38 7A 00 78 */	addi r3, r26, 0x78
/* 80AC8B5C  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AC8DD8@ha */
/* 80AC8B60  38 84 8D D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC8DD8@l */
/* 80AC8B64  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC8B68  38 A5 88 5C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8B6C  38 C0 00 0C */	li r6, 0xc
/* 80AC8B70  38 E0 00 03 */	li r7, 3
/* 80AC8B74  4B 89 91 ED */	bl __construct_array
/* 80AC8B78  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80AC8B7C  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AC8DD8@ha */
/* 80AC8B80  38 84 8D D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC8DD8@l */
/* 80AC8B84  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC8B88  38 A5 88 5C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8B8C  38 C0 00 0C */	li r6, 0xc
/* 80AC8B90  38 E0 00 03 */	li r7, 3
/* 80AC8B94  4B 89 91 CD */	bl __construct_array
/* 80AC8B98  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80AC8B9C  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AC8DD8@ha */
/* 80AC8BA0  38 84 8D D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC8DD8@l */
/* 80AC8BA4  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC8BA8  38 A5 88 5C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8BAC  38 C0 00 0C */	li r6, 0xc
/* 80AC8BB0  38 E0 00 03 */	li r7, 3
/* 80AC8BB4  4B 89 91 AD */	bl __construct_array
/* 80AC8BB8  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80AC8BBC  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AC8DD8@ha */
/* 80AC8BC0  38 84 8D D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AC8DD8@l */
/* 80AC8BC4  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AC885C@ha */
/* 80AC8BC8  38 A5 88 5C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AC885C@l */
/* 80AC8BCC  38 C0 00 0C */	li r6, 0xc
/* 80AC8BD0  38 E0 00 03 */	li r7, 3
/* 80AC8BD4  4B 89 91 8D */	bl __construct_array
/* 80AC8BD8  7F 43 D3 78 */	mr r3, r26
/* 80AC8BDC  4B 67 E0 BD */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AC8BE0  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AC8BE4  3C 80 80 AD */	lis r4, __ct__5csXyzFv@ha /* 0x80AC8CD8@ha */
/* 80AC8BE8  38 84 8C D8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AC8CD8@l */
/* 80AC8BEC  3C A0 80 AD */	lis r5, __dt__5csXyzFv@ha /* 0x80AC8898@ha */
/* 80AC8BF0  38 A5 88 98 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AC8898@l */
/* 80AC8BF4  38 C0 00 06 */	li r6, 6
/* 80AC8BF8  38 E0 00 02 */	li r7, 2
/* 80AC8BFC  4B 89 91 65 */	bl __construct_array
/* 80AC8C00  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AC8C04  38 80 00 00 */	li r4, 0
/* 80AC8C08  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AC8C0C  7C A3 00 50 */	subf r5, r3, r0
/* 80AC8C10  4B 53 A8 49 */	bl memset
/* 80AC8C14  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AC8C18  4B 67 CC 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC8C1C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AC8C20  4B 67 CC 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AC8C24  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AC8C28  4B 67 CA AD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC8C2C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AC8C30  4B 67 CA A5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AC8C34  7F 43 D3 78 */	mr r3, r26
/* 80AC8C38  4B 67 E0 61 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AC8C3C  38 A0 00 00 */	li r5, 0
/* 80AC8C40  38 60 00 00 */	li r3, 0
/* 80AC8C44  7C A4 2B 78 */	mr r4, r5
/* 80AC8C48  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80AC8C4C  38 00 00 02 */	li r0, 2
/* 80AC8C50  7C 09 03 A6 */	mtctr r0
lbl_80AC8C54:
/* 80AC8C54  7C DF 22 14 */	add r6, r31, r4
/* 80AC8C58  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AC8C5C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AC8C60  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AC8C64  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AC8C68  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AC8C6C  38 63 00 04 */	addi r3, r3, 4
/* 80AC8C70  38 84 00 06 */	addi r4, r4, 6
/* 80AC8C74  42 00 FF E0 */	bdnz lbl_80AC8C54
/* 80AC8C78  38 00 00 00 */	li r0, 0
/* 80AC8C7C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AC8C80  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AC8C84  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AC8C88  38 00 FF FF */	li r0, -1
/* 80AC8C8C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AC8C90  38 00 00 01 */	li r0, 1
/* 80AC8C94  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AC8C98  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80AC8C9C  4B 79 EC B9 */	bl cM_rndF__Ff
/* 80AC8CA0  FC 00 08 1E */	fctiwz f0, f1
/* 80AC8CA4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AC8CA8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AC8CAC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AC8CB0  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80AC8CB4  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AC8CB8  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AC8CBC  7F E3 FB 78 */	mr r3, r31
/* 80AC8CC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80AC8CC4  4B 89 95 49 */	bl _restgpr_22
/* 80AC8CC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AC8CCC  7C 08 03 A6 */	mtlr r0
/* 80AC8CD0  38 21 00 40 */	addi r1, r1, 0x40
/* 80AC8CD4  4E 80 00 20 */	blr 
