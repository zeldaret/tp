lbl_809568D4:
/* 809568D4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809568D8  7C 08 02 A6 */	mflr r0
/* 809568DC  90 01 00 44 */	stw r0, 0x44(r1)
/* 809568E0  39 61 00 40 */	addi r11, r1, 0x40
/* 809568E4  4B A0 B8 DD */	bl _savegpr_22
/* 809568E8  7C 7F 1B 78 */	mr r31, r3
/* 809568EC  7C 96 23 78 */	mr r22, r4
/* 809568F0  7C B7 2B 78 */	mr r23, r5
/* 809568F4  7C DA 33 78 */	mr r26, r6
/* 809568F8  7C FB 3B 78 */	mr r27, r7
/* 809568FC  7D 1C 43 78 */	mr r28, r8
/* 80956900  7D 3D 4B 78 */	mr r29, r9
/* 80956904  7D 58 53 78 */	mr r24, r10
/* 80956908  83 21 00 48 */	lwz r25, 0x48(r1)
/* 8095690C  3C 80 80 95 */	lis r4, m__17daNpc_Aru_Param_c@ha /* 0x809576D0@ha */
/* 80956910  3B C4 76 D0 */	addi r30, r4, m__17daNpc_Aru_Param_c@l /* 0x809576D0@l */
/* 80956914  4B 6C 22 51 */	bl __ct__10fopAc_ac_cFv
/* 80956918  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 8095691C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80956920  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80956924  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80956928  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 8095692C  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80956930  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80956934  38 7F 05 80 */	addi r3, r31, 0x580
/* 80956938  4B 96 9A 91 */	bl __ct__10Z2CreatureFv
/* 8095693C  3A DF 06 10 */	addi r22, r31, 0x610
/* 80956940  3C 60 80 95 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80957FB4@ha */
/* 80956944  38 03 7F B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80957FB4@l */
/* 80956948  90 1F 06 10 */	stw r0, 0x610(r31)
/* 8095694C  7E C3 B3 78 */	mr r3, r22
/* 80956950  38 80 00 00 */	li r4, 0
/* 80956954  4B 9D 1A A9 */	bl init__12J3DFrameCtrlFs
/* 80956958  38 00 00 00 */	li r0, 0
/* 8095695C  90 16 00 18 */	stw r0, 0x18(r22)
/* 80956960  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80956964  3C 60 80 95 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80957FB4@ha */
/* 80956968  38 03 7F B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80957FB4@l */
/* 8095696C  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80956970  7E C3 B3 78 */	mr r3, r22
/* 80956974  38 80 00 00 */	li r4, 0
/* 80956978  4B 9D 1A 85 */	bl init__12J3DFrameCtrlFs
/* 8095697C  38 00 00 00 */	li r0, 0
/* 80956980  90 16 00 14 */	stw r0, 0x14(r22)
/* 80956984  3A DF 06 44 */	addi r22, r31, 0x644
/* 80956988  3C 60 80 95 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80957FB4@ha */
/* 8095698C  38 03 7F B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80957FB4@l */
/* 80956990  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80956994  7E C3 B3 78 */	mr r3, r22
/* 80956998  38 80 00 00 */	li r4, 0
/* 8095699C  4B 9D 1A 61 */	bl init__12J3DFrameCtrlFs
/* 809569A0  38 00 00 00 */	li r0, 0
/* 809569A4  90 16 00 14 */	stw r0, 0x14(r22)
/* 809569A8  3A DF 06 5C */	addi r22, r31, 0x65c
/* 809569AC  3C 60 80 95 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80957FB4@ha */
/* 809569B0  38 03 7F B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80957FB4@l */
/* 809569B4  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 809569B8  7E C3 B3 78 */	mr r3, r22
/* 809569BC  38 80 00 00 */	li r4, 0
/* 809569C0  4B 9D 1A 3D */	bl init__12J3DFrameCtrlFs
/* 809569C4  38 00 00 00 */	li r0, 0
/* 809569C8  90 16 00 14 */	stw r0, 0x14(r22)
/* 809569CC  3A DF 06 74 */	addi r22, r31, 0x674
/* 809569D0  3C 60 80 95 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80957FB4@ha */
/* 809569D4  38 03 7F B4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80957FB4@l */
/* 809569D8  90 1F 06 74 */	stw r0, 0x674(r31)
/* 809569DC  7E C3 B3 78 */	mr r3, r22
/* 809569E0  38 80 00 00 */	li r4, 0
/* 809569E4  4B 9D 1A 19 */	bl init__12J3DFrameCtrlFs
/* 809569E8  38 00 00 00 */	li r0, 0
/* 809569EC  90 16 00 14 */	stw r0, 0x14(r22)
/* 809569F0  3A DF 06 8C */	addi r22, r31, 0x68c
/* 809569F4  7E C3 B3 78 */	mr r3, r22
/* 809569F8  4B 71 F6 A9 */	bl __ct__9dBgS_AcchFv
/* 809569FC  3C 60 80 95 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80957FC0@ha */
/* 80956A00  38 63 7F C0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80957FC0@l */
/* 80956A04  90 76 00 10 */	stw r3, 0x10(r22)
/* 80956A08  38 03 00 0C */	addi r0, r3, 0xc
/* 80956A0C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80956A10  38 03 00 18 */	addi r0, r3, 0x18
/* 80956A14  90 16 00 24 */	stw r0, 0x24(r22)
/* 80956A18  38 76 00 14 */	addi r3, r22, 0x14
/* 80956A1C  4B 72 24 4D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80956A20  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80956A24  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80956A28  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80956A2C  38 7F 08 80 */	addi r3, r31, 0x880
/* 80956A30  4B 72 CD 31 */	bl __ct__10dCcD_GSttsFv
/* 80956A34  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80956A38  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80956A3C  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80956A40  3B 23 00 20 */	addi r25, r3, 0x20
/* 80956A44  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80956A48  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80956A4C  4B 71 F4 61 */	bl __ct__12dBgS_AcchCirFv
/* 80956A50  38 7F 09 30 */	addi r3, r31, 0x930
/* 80956A54  4B 91 11 C9 */	bl __ct__11cBgS_GndChkFv
/* 80956A58  38 7F 09 74 */	addi r3, r31, 0x974
/* 80956A5C  4B 8F 34 A5 */	bl __ct__10dMsgFlow_cFv
/* 80956A60  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80956A64  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80956A68  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80956A6C  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80956A70  4B 72 CC F1 */	bl __ct__10dCcD_GSttsFv
/* 80956A74  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80956A78  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80956A7C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80956A80  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80956A84  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80956A88  4B 72 0A F5 */	bl __ct__11dBgS_GndChkFv
/* 80956A8C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80956A90  4B 72 11 D9 */	bl __ct__11dBgS_LinChkFv
/* 80956A94  3C 60 80 96 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80958008@ha */
/* 80956A98  38 03 80 08 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80958008@l */
/* 80956A9C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80956AA0  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80956AA4  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80956AA8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80956AAC  4B 7E ED ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80956AB0  3C 60 80 96 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80958008@ha */
/* 80956AB4  38 03 80 08 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80958008@l */
/* 80956AB8  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80956ABC  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80956AC0  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80956AC4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80956AC8  4B 7E ED D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80956ACC  3C 60 80 96 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80958014@ha */
/* 80956AD0  38 03 80 14 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80958014@l */
/* 80956AD4  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80956AD8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80956ADC  4B 7E EB F9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80956AE0  3C 60 80 96 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80958014@ha */
/* 80956AE4  38 03 80 14 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80958014@l */
/* 80956AE8  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80956AEC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80956AF0  4B 7E EB E5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80956AF4  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80956AF8  3C 60 80 96 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80958020@ha */
/* 80956AFC  38 03 80 20 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80958020@l */
/* 80956B00  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80956B04  3C 60 80 96 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80958014@ha */
/* 80956B08  38 03 80 14 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80958014@l */
/* 80956B0C  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80956B10  7F 43 D3 78 */	mr r3, r26
/* 80956B14  4B 7E EB C1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80956B18  38 7A 00 30 */	addi r3, r26, 0x30
/* 80956B1C  3C 80 80 95 */	lis r4, __ct__4cXyzFv@ha /* 0x80956DD8@ha */
/* 80956B20  38 84 6D D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80956DD8@l */
/* 80956B24  3C A0 80 95 */	lis r5, __dt__4cXyzFv@ha /* 0x80956748@ha */
/* 80956B28  38 A5 67 48 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80956748@l */
/* 80956B2C  38 C0 00 0C */	li r6, 0xc
/* 80956B30  38 E0 00 03 */	li r7, 3
/* 80956B34  4B A0 B2 2D */	bl __construct_array
/* 80956B38  38 7A 00 54 */	addi r3, r26, 0x54
/* 80956B3C  3C 80 80 95 */	lis r4, __ct__4cXyzFv@ha /* 0x80956DD8@ha */
/* 80956B40  38 84 6D D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80956DD8@l */
/* 80956B44  3C A0 80 95 */	lis r5, __dt__4cXyzFv@ha /* 0x80956748@ha */
/* 80956B48  38 A5 67 48 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80956748@l */
/* 80956B4C  38 C0 00 0C */	li r6, 0xc
/* 80956B50  38 E0 00 03 */	li r7, 3
/* 80956B54  4B A0 B2 0D */	bl __construct_array
/* 80956B58  38 7A 00 78 */	addi r3, r26, 0x78
/* 80956B5C  3C 80 80 95 */	lis r4, __ct__4cXyzFv@ha /* 0x80956DD8@ha */
/* 80956B60  38 84 6D D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80956DD8@l */
/* 80956B64  3C A0 80 95 */	lis r5, __dt__4cXyzFv@ha /* 0x80956748@ha */
/* 80956B68  38 A5 67 48 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80956748@l */
/* 80956B6C  38 C0 00 0C */	li r6, 0xc
/* 80956B70  38 E0 00 03 */	li r7, 3
/* 80956B74  4B A0 B1 ED */	bl __construct_array
/* 80956B78  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80956B7C  3C 80 80 95 */	lis r4, __ct__4cXyzFv@ha /* 0x80956DD8@ha */
/* 80956B80  38 84 6D D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80956DD8@l */
/* 80956B84  3C A0 80 95 */	lis r5, __dt__4cXyzFv@ha /* 0x80956748@ha */
/* 80956B88  38 A5 67 48 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80956748@l */
/* 80956B8C  38 C0 00 0C */	li r6, 0xc
/* 80956B90  38 E0 00 03 */	li r7, 3
/* 80956B94  4B A0 B1 CD */	bl __construct_array
/* 80956B98  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80956B9C  3C 80 80 95 */	lis r4, __ct__4cXyzFv@ha /* 0x80956DD8@ha */
/* 80956BA0  38 84 6D D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80956DD8@l */
/* 80956BA4  3C A0 80 95 */	lis r5, __dt__4cXyzFv@ha /* 0x80956748@ha */
/* 80956BA8  38 A5 67 48 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80956748@l */
/* 80956BAC  38 C0 00 0C */	li r6, 0xc
/* 80956BB0  38 E0 00 03 */	li r7, 3
/* 80956BB4  4B A0 B1 AD */	bl __construct_array
/* 80956BB8  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80956BBC  3C 80 80 95 */	lis r4, __ct__4cXyzFv@ha /* 0x80956DD8@ha */
/* 80956BC0  38 84 6D D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80956DD8@l */
/* 80956BC4  3C A0 80 95 */	lis r5, __dt__4cXyzFv@ha /* 0x80956748@ha */
/* 80956BC8  38 A5 67 48 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80956748@l */
/* 80956BCC  38 C0 00 0C */	li r6, 0xc
/* 80956BD0  38 E0 00 03 */	li r7, 3
/* 80956BD4  4B A0 B1 8D */	bl __construct_array
/* 80956BD8  7F 43 D3 78 */	mr r3, r26
/* 80956BDC  4B 7F 00 BD */	bl initialize__15daNpcT_JntAnm_cFv
/* 80956BE0  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80956BE4  3C 80 80 95 */	lis r4, __ct__5csXyzFv@ha /* 0x80956CD8@ha */
/* 80956BE8  38 84 6C D8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80956CD8@l */
/* 80956BEC  3C A0 80 95 */	lis r5, __dt__5csXyzFv@ha /* 0x80956784@ha */
/* 80956BF0  38 A5 67 84 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80956784@l */
/* 80956BF4  38 C0 00 06 */	li r6, 6
/* 80956BF8  38 E0 00 02 */	li r7, 2
/* 80956BFC  4B A0 B1 65 */	bl __construct_array
/* 80956C00  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80956C04  38 80 00 00 */	li r4, 0
/* 80956C08  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80956C0C  7C A3 00 50 */	subf r5, r3, r0
/* 80956C10  4B 6A C8 49 */	bl memset
/* 80956C14  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80956C18  4B 7E EC 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80956C1C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80956C20  4B 7E EC 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80956C24  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80956C28  4B 7E EA AD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80956C2C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80956C30  4B 7E EA A5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80956C34  7F 43 D3 78 */	mr r3, r26
/* 80956C38  4B 7F 00 61 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80956C3C  38 A0 00 00 */	li r5, 0
/* 80956C40  38 60 00 00 */	li r3, 0
/* 80956C44  7C A4 2B 78 */	mr r4, r5
/* 80956C48  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80956C4C  38 00 00 02 */	li r0, 2
/* 80956C50  7C 09 03 A6 */	mtctr r0
lbl_80956C54:
/* 80956C54  7C DF 22 14 */	add r6, r31, r4
/* 80956C58  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80956C5C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80956C60  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80956C64  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80956C68  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80956C6C  38 63 00 04 */	addi r3, r3, 4
/* 80956C70  38 84 00 06 */	addi r4, r4, 6
/* 80956C74  42 00 FF E0 */	bdnz lbl_80956C54
/* 80956C78  38 00 00 00 */	li r0, 0
/* 80956C7C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80956C80  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80956C84  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80956C88  38 00 FF FF */	li r0, -1
/* 80956C8C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80956C90  38 00 00 01 */	li r0, 1
/* 80956C94  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80956C98  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80956C9C  4B 91 0C B9 */	bl cM_rndF__Ff
/* 80956CA0  FC 00 08 1E */	fctiwz f0, f1
/* 80956CA4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80956CA8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80956CAC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80956CB0  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80956CB4  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80956CB8  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80956CBC  7F E3 FB 78 */	mr r3, r31
/* 80956CC0  39 61 00 40 */	addi r11, r1, 0x40
/* 80956CC4  4B A0 B5 49 */	bl _restgpr_22
/* 80956CC8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80956CCC  7C 08 03 A6 */	mtlr r0
/* 80956CD0  38 21 00 40 */	addi r1, r1, 0x40
/* 80956CD4  4E 80 00 20 */	blr 
