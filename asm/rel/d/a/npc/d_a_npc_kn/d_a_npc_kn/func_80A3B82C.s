lbl_80A3B82C:
/* 80A3B82C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80A3B830  7C 08 02 A6 */	mflr r0
/* 80A3B834  90 01 00 34 */	stw r0, 0x34(r1)
/* 80A3B838  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3B83C  4B 92 69 89 */	bl _savegpr_23
/* 80A3B840  7C 7F 1B 78 */	mr r31, r3
/* 80A3B844  7C 97 23 78 */	mr r23, r4
/* 80A3B848  7C B8 2B 78 */	mr r24, r5
/* 80A3B84C  7C DB 33 78 */	mr r27, r6
/* 80A3B850  7C FC 3B 78 */	mr r28, r7
/* 80A3B854  7D 1D 43 78 */	mr r29, r8
/* 80A3B858  7D 3E 4B 78 */	mr r30, r9
/* 80A3B85C  7D 59 53 78 */	mr r25, r10
/* 80A3B860  83 41 00 38 */	lwz r26, 0x38(r1)
/* 80A3B864  4B 5D D3 01 */	bl __ct__10fopAc_ac_cFv
/* 80A3B868  3C 60 80 A4 */	lis r3, __vt__10daNpc_Kn_c@ha /* 0x80A43240@ha */
/* 80A3B86C  38 03 32 40 */	addi r0, r3, __vt__10daNpc_Kn_c@l /* 0x80A43240@l */
/* 80A3B870  90 1F 0E 40 */	stw r0, 0xe40(r31)
/* 80A3B874  92 FF 05 AC */	stw r23, 0x5ac(r31)
/* 80A3B878  93 1F 05 B0 */	stw r24, 0x5b0(r31)
/* 80A3B87C  93 3F 05 B4 */	stw r25, 0x5b4(r31)
/* 80A3B880  93 5F 05 B8 */	stw r26, 0x5b8(r31)
/* 80A3B884  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80A3B888  4B 88 4B 41 */	bl __ct__10Z2CreatureFv
/* 80A3B88C  3A FF 06 54 */	addi r23, r31, 0x654
/* 80A3B890  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A43228@ha */
/* 80A3B894  38 03 32 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A43228@l */
/* 80A3B898  90 1F 06 54 */	stw r0, 0x654(r31)
/* 80A3B89C  7E E3 BB 78 */	mr r3, r23
/* 80A3B8A0  38 80 00 00 */	li r4, 0
/* 80A3B8A4  4B 8E CB 59 */	bl init__12J3DFrameCtrlFs
/* 80A3B8A8  38 00 00 00 */	li r0, 0
/* 80A3B8AC  90 17 00 18 */	stw r0, 0x18(r23)
/* 80A3B8B0  3A FF 06 70 */	addi r23, r31, 0x670
/* 80A3B8B4  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A43228@ha */
/* 80A3B8B8  38 03 32 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A43228@l */
/* 80A3B8BC  90 1F 06 70 */	stw r0, 0x670(r31)
/* 80A3B8C0  7E E3 BB 78 */	mr r3, r23
/* 80A3B8C4  38 80 00 00 */	li r4, 0
/* 80A3B8C8  4B 8E CB 35 */	bl init__12J3DFrameCtrlFs
/* 80A3B8CC  38 00 00 00 */	li r0, 0
/* 80A3B8D0  90 17 00 14 */	stw r0, 0x14(r23)
/* 80A3B8D4  3A FF 06 88 */	addi r23, r31, 0x688
/* 80A3B8D8  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A43228@ha */
/* 80A3B8DC  38 03 32 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A43228@l */
/* 80A3B8E0  90 1F 06 88 */	stw r0, 0x688(r31)
/* 80A3B8E4  7E E3 BB 78 */	mr r3, r23
/* 80A3B8E8  38 80 00 00 */	li r4, 0
/* 80A3B8EC  4B 8E CB 11 */	bl init__12J3DFrameCtrlFs
/* 80A3B8F0  38 00 00 00 */	li r0, 0
/* 80A3B8F4  90 17 00 14 */	stw r0, 0x14(r23)
/* 80A3B8F8  3A FF 06 A0 */	addi r23, r31, 0x6a0
/* 80A3B8FC  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A43228@ha */
/* 80A3B900  38 03 32 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A43228@l */
/* 80A3B904  90 1F 06 A0 */	stw r0, 0x6a0(r31)
/* 80A3B908  7E E3 BB 78 */	mr r3, r23
/* 80A3B90C  38 80 00 00 */	li r4, 0
/* 80A3B910  4B 8E CA ED */	bl init__12J3DFrameCtrlFs
/* 80A3B914  38 00 00 00 */	li r0, 0
/* 80A3B918  90 17 00 14 */	stw r0, 0x14(r23)
/* 80A3B91C  3A FF 06 B8 */	addi r23, r31, 0x6b8
/* 80A3B920  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A43228@ha */
/* 80A3B924  38 03 32 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A43228@l */
/* 80A3B928  90 1F 06 B8 */	stw r0, 0x6b8(r31)
/* 80A3B92C  7E E3 BB 78 */	mr r3, r23
/* 80A3B930  38 80 00 00 */	li r4, 0
/* 80A3B934  4B 8E CA C9 */	bl init__12J3DFrameCtrlFs
/* 80A3B938  38 00 00 00 */	li r0, 0
/* 80A3B93C  90 17 00 14 */	stw r0, 0x14(r23)
/* 80A3B940  3A FF 06 D0 */	addi r23, r31, 0x6d0
/* 80A3B944  7E E3 BB 78 */	mr r3, r23
/* 80A3B948  4B 63 A7 59 */	bl __ct__9dBgS_AcchFv
/* 80A3B94C  3C 60 80 A4 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A431A4@ha */
/* 80A3B950  38 63 31 A4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A431A4@l */
/* 80A3B954  90 77 00 10 */	stw r3, 0x10(r23)
/* 80A3B958  38 03 00 0C */	addi r0, r3, 0xc
/* 80A3B95C  90 17 00 14 */	stw r0, 0x14(r23)
/* 80A3B960  38 03 00 18 */	addi r0, r3, 0x18
/* 80A3B964  90 17 00 24 */	stw r0, 0x24(r23)
/* 80A3B968  38 77 00 14 */	addi r3, r23, 0x14
/* 80A3B96C  4B 63 D4 FD */	bl SetObj__16dBgS_PolyPassChkFv
/* 80A3B970  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A3B974  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A3B978  90 1F 08 C0 */	stw r0, 0x8c0(r31)
/* 80A3B97C  38 7F 08 C4 */	addi r3, r31, 0x8c4
/* 80A3B980  4B 64 7D E1 */	bl __ct__10dCcD_GSttsFv
/* 80A3B984  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A3B988  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A3B98C  90 7F 08 C0 */	stw r3, 0x8c0(r31)
/* 80A3B990  3B 43 00 20 */	addi r26, r3, 0x20
/* 80A3B994  93 5F 08 C4 */	stw r26, 0x8c4(r31)
/* 80A3B998  38 7F 08 E4 */	addi r3, r31, 0x8e4
/* 80A3B99C  4B 63 A5 11 */	bl __ct__12dBgS_AcchCirFv
/* 80A3B9A0  38 7F 09 64 */	addi r3, r31, 0x964
/* 80A3B9A4  4B 82 C2 79 */	bl __ct__11cBgS_GndChkFv
/* 80A3B9A8  38 7F 09 A8 */	addi r3, r31, 0x9a8
/* 80A3B9AC  4B 80 E5 55 */	bl __ct__10dMsgFlow_cFv
/* 80A3B9B0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A3B9B4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A3B9B8  90 1F 0A 8C */	stw r0, 0xa8c(r31)
/* 80A3B9BC  38 7F 0A 90 */	addi r3, r31, 0xa90
/* 80A3B9C0  4B 64 7D A1 */	bl __ct__10dCcD_GSttsFv
/* 80A3B9C4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A3B9C8  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A3B9CC  90 1F 0A 8C */	stw r0, 0xa8c(r31)
/* 80A3B9D0  93 5F 0A 90 */	stw r26, 0xa90(r31)
/* 80A3B9D4  38 7F 0A C0 */	addi r3, r31, 0xac0
/* 80A3B9D8  4B 63 BB A5 */	bl __ct__11dBgS_GndChkFv
/* 80A3B9DC  38 7F 0B 14 */	addi r3, r31, 0xb14
/* 80A3B9E0  4B 63 C2 89 */	bl __ct__11dBgS_LinChkFv
/* 80A3B9E4  3C 60 80 A4 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A431EC@ha */
/* 80A3B9E8  38 03 31 EC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A431EC@l */
/* 80A3B9EC  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80A3B9F0  93 7F 0B 84 */	stw r27, 0xb84(r31)
/* 80A3B9F4  93 9F 0B 88 */	stw r28, 0xb88(r31)
/* 80A3B9F8  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A3B9FC  4B 70 9E 9D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3BA00  3C 60 80 A4 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A431EC@ha */
/* 80A3BA04  38 03 31 EC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A431EC@l */
/* 80A3BA08  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80A3BA0C  93 BF 0B A8 */	stw r29, 0xba8(r31)
/* 80A3BA10  93 DF 0B AC */	stw r30, 0xbac(r31)
/* 80A3BA14  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A3BA18  4B 70 9E 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3BA1C  3C 60 80 A4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A431F8@ha */
/* 80A3BA20  38 03 31 F8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A431F8@l */
/* 80A3BA24  90 1F 0B D0 */	stw r0, 0xbd0(r31)
/* 80A3BA28  38 7F 0B CC */	addi r3, r31, 0xbcc
/* 80A3BA2C  4B 70 9C A9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A3BA30  3C 60 80 A4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A431F8@ha */
/* 80A3BA34  38 03 31 F8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A431F8@l */
/* 80A3BA38  90 1F 0B D8 */	stw r0, 0xbd8(r31)
/* 80A3BA3C  38 7F 0B D4 */	addi r3, r31, 0xbd4
/* 80A3BA40  4B 70 9C 95 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A3BA44  3B 7F 0B DC */	addi r27, r31, 0xbdc
/* 80A3BA48  3C 60 80 A4 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A43204@ha */
/* 80A3BA4C  38 03 32 04 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A43204@l */
/* 80A3BA50  90 1F 0D 38 */	stw r0, 0xd38(r31)
/* 80A3BA54  3C 60 80 A4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A431F8@ha */
/* 80A3BA58  38 03 31 F8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A431F8@l */
/* 80A3BA5C  90 1F 0B E0 */	stw r0, 0xbe0(r31)
/* 80A3BA60  7F 63 DB 78 */	mr r3, r27
/* 80A3BA64  4B 70 9C 71 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A3BA68  38 7B 00 30 */	addi r3, r27, 0x30
/* 80A3BA6C  3C 80 80 A4 */	lis r4, __ct__4cXyzFv@ha /* 0x80A3C45C@ha */
/* 80A3BA70  38 84 C4 5C */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A3C45C@l */
/* 80A3BA74  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha /* 0x80A3B760@ha */
/* 80A3BA78  38 A5 B7 60 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A3B760@l */
/* 80A3BA7C  38 C0 00 0C */	li r6, 0xc
/* 80A3BA80  38 E0 00 03 */	li r7, 3
/* 80A3BA84  4B 92 62 DD */	bl __construct_array
/* 80A3BA88  38 7B 00 54 */	addi r3, r27, 0x54
/* 80A3BA8C  3C 80 80 A4 */	lis r4, __ct__4cXyzFv@ha /* 0x80A3C45C@ha */
/* 80A3BA90  38 84 C4 5C */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A3C45C@l */
/* 80A3BA94  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha /* 0x80A3B760@ha */
/* 80A3BA98  38 A5 B7 60 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A3B760@l */
/* 80A3BA9C  38 C0 00 0C */	li r6, 0xc
/* 80A3BAA0  38 E0 00 03 */	li r7, 3
/* 80A3BAA4  4B 92 62 BD */	bl __construct_array
/* 80A3BAA8  38 7B 00 78 */	addi r3, r27, 0x78
/* 80A3BAAC  3C 80 80 A4 */	lis r4, __ct__4cXyzFv@ha /* 0x80A3C45C@ha */
/* 80A3BAB0  38 84 C4 5C */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A3C45C@l */
/* 80A3BAB4  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha /* 0x80A3B760@ha */
/* 80A3BAB8  38 A5 B7 60 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A3B760@l */
/* 80A3BABC  38 C0 00 0C */	li r6, 0xc
/* 80A3BAC0  38 E0 00 03 */	li r7, 3
/* 80A3BAC4  4B 92 62 9D */	bl __construct_array
/* 80A3BAC8  38 7B 00 9C */	addi r3, r27, 0x9c
/* 80A3BACC  3C 80 80 A4 */	lis r4, __ct__4cXyzFv@ha /* 0x80A3C45C@ha */
/* 80A3BAD0  38 84 C4 5C */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A3C45C@l */
/* 80A3BAD4  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha /* 0x80A3B760@ha */
/* 80A3BAD8  38 A5 B7 60 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A3B760@l */
/* 80A3BADC  38 C0 00 0C */	li r6, 0xc
/* 80A3BAE0  38 E0 00 03 */	li r7, 3
/* 80A3BAE4  4B 92 62 7D */	bl __construct_array
/* 80A3BAE8  38 7B 00 C0 */	addi r3, r27, 0xc0
/* 80A3BAEC  3C 80 80 A4 */	lis r4, __ct__4cXyzFv@ha /* 0x80A3C45C@ha */
/* 80A3BAF0  38 84 C4 5C */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A3C45C@l */
/* 80A3BAF4  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha /* 0x80A3B760@ha */
/* 80A3BAF8  38 A5 B7 60 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A3B760@l */
/* 80A3BAFC  38 C0 00 0C */	li r6, 0xc
/* 80A3BB00  38 E0 00 03 */	li r7, 3
/* 80A3BB04  4B 92 62 5D */	bl __construct_array
/* 80A3BB08  38 7B 00 E4 */	addi r3, r27, 0xe4
/* 80A3BB0C  3C 80 80 A4 */	lis r4, __ct__4cXyzFv@ha /* 0x80A3C45C@ha */
/* 80A3BB10  38 84 C4 5C */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A3C45C@l */
/* 80A3BB14  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha /* 0x80A3B760@ha */
/* 80A3BB18  38 A5 B7 60 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A3B760@l */
/* 80A3BB1C  38 C0 00 0C */	li r6, 0xc
/* 80A3BB20  38 E0 00 03 */	li r7, 3
/* 80A3BB24  4B 92 62 3D */	bl __construct_array
/* 80A3BB28  7F 63 DB 78 */	mr r3, r27
/* 80A3BB2C  4B 70 B1 6D */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A3BB30  38 7F 0D 3C */	addi r3, r31, 0xd3c
/* 80A3BB34  3C 80 80 A4 */	lis r4, __ct__5csXyzFv@ha /* 0x80A3C35C@ha */
/* 80A3BB38  38 84 C3 5C */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A3C35C@l */
/* 80A3BB3C  3C A0 80 A4 */	lis r5, __dt__5csXyzFv@ha /* 0x80A3B724@ha */
/* 80A3BB40  38 A5 B7 24 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A3B724@l */
/* 80A3BB44  38 C0 00 06 */	li r6, 6
/* 80A3BB48  38 E0 00 02 */	li r7, 2
/* 80A3BB4C  4B 92 62 15 */	bl __construct_array
/* 80A3BB50  3B 7F 0E 50 */	addi r27, r31, 0xe50
/* 80A3BB54  7F 63 DB 78 */	mr r3, r27
/* 80A3BB58  3C 80 80 3A */	lis r4, j3dDefaultLightInfo@ha /* 0x803A1EC8@ha */
/* 80A3BB5C  38 84 1E C8 */	addi r4, r4, j3dDefaultLightInfo@l /* 0x803A1EC8@l */
/* 80A3BB60  4B 8E 9B 65 */	bl __as__12J3DLightInfoFRC12J3DLightInfo
/* 80A3BB64  38 7B 00 74 */	addi r3, r27, 0x74
/* 80A3BB68  3C 80 80 A4 */	lis r4, __ct__11J3DLightObjFv@ha /* 0x80A3C324@ha */
/* 80A3BB6C  38 84 C3 24 */	addi r4, r4, __ct__11J3DLightObjFv@l /* 0x80A3C324@l */
/* 80A3BB70  38 A0 00 00 */	li r5, 0
/* 80A3BB74  38 C0 00 74 */	li r6, 0x74
/* 80A3BB78  38 E0 00 06 */	li r7, 6
/* 80A3BB7C  4B 92 61 E5 */	bl __construct_array
/* 80A3BB80  3A FF 11 DC */	addi r23, r31, 0x11dc
/* 80A3BB84  7E E3 BB 78 */	mr r3, r23
/* 80A3BB88  4B 64 7E A1 */	bl __ct__12dCcD_GObjInfFv
/* 80A3BB8C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80A3BB90  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80A3BB94  90 17 01 20 */	stw r0, 0x120(r23)
/* 80A3BB98  3C 60 80 A4 */	lis r3, __vt__8cM3dGAab@ha /* 0x80A43210@ha */
/* 80A3BB9C  38 03 32 10 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80A43210@l */
/* 80A3BBA0  90 17 01 1C */	stw r0, 0x11c(r23)
/* 80A3BBA4  3C 60 80 A4 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80A4321C@ha */
/* 80A3BBA8  38 03 32 1C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80A4321C@l */
/* 80A3BBAC  90 17 01 38 */	stw r0, 0x138(r23)
/* 80A3BBB0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80A3BBB4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80A3BBB8  90 77 01 20 */	stw r3, 0x120(r23)
/* 80A3BBBC  38 03 00 58 */	addi r0, r3, 0x58
/* 80A3BBC0  90 17 01 38 */	stw r0, 0x138(r23)
/* 80A3BBC4  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80A3BBC8  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80A3BBCC  90 77 00 3C */	stw r3, 0x3c(r23)
/* 80A3BBD0  38 03 00 2C */	addi r0, r3, 0x2c
/* 80A3BBD4  90 17 01 20 */	stw r0, 0x120(r23)
/* 80A3BBD8  38 03 00 84 */	addi r0, r3, 0x84
/* 80A3BBDC  90 17 01 38 */	stw r0, 0x138(r23)
/* 80A3BBE0  38 7F 13 18 */	addi r3, r31, 0x1318
/* 80A3BBE4  3C 80 80 A4 */	lis r4, __ct__8dCcD_SphFv@ha /* 0x80A3C1C8@ha */
/* 80A3BBE8  38 84 C1 C8 */	addi r4, r4, __ct__8dCcD_SphFv@l /* 0x80A3C1C8@l */
/* 80A3BBEC  3C A0 80 A3 */	lis r5, __dt__8dCcD_SphFv@ha /* 0x80A2AECC@ha */
/* 80A3BBF0  38 A5 AE CC */	addi r5, r5, __dt__8dCcD_SphFv@l /* 0x80A2AECC@l */
/* 80A3BBF4  38 C0 01 38 */	li r6, 0x138
/* 80A3BBF8  38 E0 00 02 */	li r7, 2
/* 80A3BBFC  4B 92 61 65 */	bl __construct_array
/* 80A3BC00  3A FF 15 88 */	addi r23, r31, 0x1588
/* 80A3BC04  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A43228@ha */
/* 80A3BC08  38 03 32 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A43228@l */
/* 80A3BC0C  90 1F 15 88 */	stw r0, 0x1588(r31)
/* 80A3BC10  7E E3 BB 78 */	mr r3, r23
/* 80A3BC14  38 80 00 00 */	li r4, 0
/* 80A3BC18  4B 8E C7 E5 */	bl init__12J3DFrameCtrlFs
/* 80A3BC1C  38 00 00 00 */	li r0, 0
/* 80A3BC20  90 17 00 18 */	stw r0, 0x18(r23)
/* 80A3BC24  38 7F 15 E0 */	addi r3, r31, 0x15e0
/* 80A3BC28  3C 80 80 A4 */	lis r4, __ct__Q210daNpc_Kn_c20daNpc_Kn_prtclMngr_cFv@ha /* 0x80A3C1C4@ha */
/* 80A3BC2C  38 84 C1 C4 */	addi r4, r4, __ct__Q210daNpc_Kn_c20daNpc_Kn_prtclMngr_cFv@l /* 0x80A3C1C4@l */
/* 80A3BC30  3C A0 80 A3 */	lis r5, __dt__Q210daNpc_Kn_c20daNpc_Kn_prtclMngr_cFv@ha /* 0x80A2AF98@ha */
/* 80A3BC34  38 A5 AF 98 */	addi r5, r5, __dt__Q210daNpc_Kn_c20daNpc_Kn_prtclMngr_cFv@l /* 0x80A2AF98@l */
/* 80A3BC38  38 C0 00 5C */	li r6, 0x5c
/* 80A3BC3C  38 E0 00 03 */	li r7, 3
/* 80A3BC40  4B 92 61 21 */	bl __construct_array
/* 80A3BC44  38 7F 17 2C */	addi r3, r31, 0x172c
/* 80A3BC48  3C 80 80 A4 */	lis r4, __vt__13daNpcT_Path_c@ha /* 0x80A43234@ha */
/* 80A3BC4C  38 04 32 34 */	addi r0, r4, __vt__13daNpcT_Path_c@l /* 0x80A43234@l */
/* 80A3BC50  90 1F 17 50 */	stw r0, 0x1750(r31)
/* 80A3BC54  4B 70 9F ED */	bl initialize__13daNpcT_Path_cFv
/* 80A3BC58  38 7F 0D 58 */	addi r3, r31, 0xd58
/* 80A3BC5C  38 80 00 00 */	li r4, 0
/* 80A3BC60  38 1F 0E 3C */	addi r0, r31, 0xe3c
/* 80A3BC64  7C A3 00 50 */	subf r5, r3, r0
/* 80A3BC68  4B 5C 77 F1 */	bl memset
/* 80A3BC6C  38 7F 0B 84 */	addi r3, r31, 0xb84
/* 80A3BC70  4B 70 9C 29 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3BC74  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80A3BC78  4B 70 9C 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A3BC7C  38 7F 0B CC */	addi r3, r31, 0xbcc
/* 80A3BC80  4B 70 9A 55 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A3BC84  38 7F 0B D4 */	addi r3, r31, 0xbd4
/* 80A3BC88  4B 70 9A 4D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A3BC8C  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80A3BC90  4B 70 B0 09 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A3BC94  38 C0 00 00 */	li r6, 0
/* 80A3BC98  38 60 00 00 */	li r3, 0
/* 80A3BC9C  7C C4 33 78 */	mr r4, r6
/* 80A3BCA0  3C A0 80 A4 */	lis r5, lit_4204@ha /* 0x80A40900@ha */
/* 80A3BCA4  C0 05 09 00 */	lfs f0, lit_4204@l(r5)  /* 0x80A40900@l */
/* 80A3BCA8  38 00 00 02 */	li r0, 2
/* 80A3BCAC  7C 09 03 A6 */	mtctr r0
lbl_80A3BCB0:
/* 80A3BCB0  7C BF 22 14 */	add r5, r31, r4
/* 80A3BCB4  B0 C5 0D 3C */	sth r6, 0xd3c(r5)
/* 80A3BCB8  B0 C5 0D 3E */	sth r6, 0xd3e(r5)
/* 80A3BCBC  B0 C5 0D 40 */	sth r6, 0xd40(r5)
/* 80A3BCC0  38 03 0D 48 */	addi r0, r3, 0xd48
/* 80A3BCC4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A3BCC8  38 63 00 04 */	addi r3, r3, 4
/* 80A3BCCC  38 84 00 06 */	addi r4, r4, 6
/* 80A3BCD0  42 00 FF E0 */	bdnz lbl_80A3BCB0
/* 80A3BCD4  38 60 00 00 */	li r3, 0
/* 80A3BCD8  B0 7F 0D 50 */	sth r3, 0xd50(r31)
/* 80A3BCDC  B0 7F 0D 52 */	sth r3, 0xd52(r31)
/* 80A3BCE0  98 7F 0D 54 */	stb r3, 0xd54(r31)
/* 80A3BCE4  38 00 FF FF */	li r0, -1
/* 80A3BCE8  90 1F 0D C4 */	stw r0, 0xdc4(r31)
/* 80A3BCEC  38 00 00 01 */	li r0, 1
/* 80A3BCF0  98 1F 0E 2D */	stb r0, 0xe2d(r31)
/* 80A3BCF4  90 7F 15 A4 */	stw r3, 0x15a4(r31)
/* 80A3BCF8  7F E3 FB 78 */	mr r3, r31
/* 80A3BCFC  39 61 00 30 */	addi r11, r1, 0x30
/* 80A3BD00  4B 92 65 11 */	bl _restgpr_23
/* 80A3BD04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A3BD08  7C 08 03 A6 */	mtlr r0
/* 80A3BD0C  38 21 00 30 */	addi r1, r1, 0x30
/* 80A3BD10  4E 80 00 20 */	blr 
