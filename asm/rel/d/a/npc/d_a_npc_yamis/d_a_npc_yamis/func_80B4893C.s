lbl_80B4893C:
/* 80B4893C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B48940  7C 08 02 A6 */	mflr r0
/* 80B48944  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B48948  39 61 00 40 */	addi r11, r1, 0x40
/* 80B4894C  4B 81 98 74 */	b _savegpr_22
/* 80B48950  7C 7F 1B 78 */	mr r31, r3
/* 80B48954  7C 96 23 78 */	mr r22, r4
/* 80B48958  7C B7 2B 78 */	mr r23, r5
/* 80B4895C  7C DA 33 78 */	mr r26, r6
/* 80B48960  7C FB 3B 78 */	mr r27, r7
/* 80B48964  7D 1C 43 78 */	mr r28, r8
/* 80B48968  7D 3D 4B 78 */	mr r29, r9
/* 80B4896C  7D 58 53 78 */	mr r24, r10
/* 80B48970  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80B48974  3C 80 80 B5 */	lis r4, m__19daNpc_yamiS_Param_c@ha
/* 80B48978  3B C4 96 B0 */	addi r30, r4, m__19daNpc_yamiS_Param_c@l
/* 80B4897C  4B 4D 01 E8 */	b __ct__10fopAc_ac_cFv
/* 80B48980  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80B48984  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80B48988  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B4898C  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80B48990  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80B48994  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80B48998  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80B4899C  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B489A0  4B 77 7A 28 */	b __ct__10Z2CreatureFv
/* 80B489A4  3A DF 06 10 */	addi r22, r31, 0x610
/* 80B489A8  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B489AC  38 03 99 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B489B0  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80B489B4  7E C3 B3 78 */	mr r3, r22
/* 80B489B8  38 80 00 00 */	li r4, 0
/* 80B489BC  4B 7D FA 40 */	b init__12J3DFrameCtrlFs
/* 80B489C0  38 00 00 00 */	li r0, 0
/* 80B489C4  90 16 00 18 */	stw r0, 0x18(r22)
/* 80B489C8  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80B489CC  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B489D0  38 03 99 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B489D4  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B489D8  7E C3 B3 78 */	mr r3, r22
/* 80B489DC  38 80 00 00 */	li r4, 0
/* 80B489E0  4B 7D FA 1C */	b init__12J3DFrameCtrlFs
/* 80B489E4  38 00 00 00 */	li r0, 0
/* 80B489E8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B489EC  3A DF 06 44 */	addi r22, r31, 0x644
/* 80B489F0  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B489F4  38 03 99 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B489F8  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80B489FC  7E C3 B3 78 */	mr r3, r22
/* 80B48A00  38 80 00 00 */	li r4, 0
/* 80B48A04  4B 7D F9 F8 */	b init__12J3DFrameCtrlFs
/* 80B48A08  38 00 00 00 */	li r0, 0
/* 80B48A0C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B48A10  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80B48A14  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B48A18  38 03 99 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B48A1C  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80B48A20  7E C3 B3 78 */	mr r3, r22
/* 80B48A24  38 80 00 00 */	li r4, 0
/* 80B48A28  4B 7D F9 D4 */	b init__12J3DFrameCtrlFs
/* 80B48A2C  38 00 00 00 */	li r0, 0
/* 80B48A30  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B48A34  3A DF 06 74 */	addi r22, r31, 0x674
/* 80B48A38  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B48A3C  38 03 99 60 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B48A40  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80B48A44  7E C3 B3 78 */	mr r3, r22
/* 80B48A48  38 80 00 00 */	li r4, 0
/* 80B48A4C  4B 7D F9 B0 */	b init__12J3DFrameCtrlFs
/* 80B48A50  38 00 00 00 */	li r0, 0
/* 80B48A54  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B48A58  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80B48A5C  7E C3 B3 78 */	mr r3, r22
/* 80B48A60  4B 52 D6 40 */	b __ct__9dBgS_AcchFv
/* 80B48A64  3C 60 80 B5 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80B48A68  38 63 99 6C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80B48A6C  90 76 00 10 */	stw r3, 0x10(r22)
/* 80B48A70  38 03 00 0C */	addi r0, r3, 0xc
/* 80B48A74  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B48A78  38 03 00 18 */	addi r0, r3, 0x18
/* 80B48A7C  90 16 00 24 */	stw r0, 0x24(r22)
/* 80B48A80  38 76 00 14 */	addi r3, r22, 0x14
/* 80B48A84  4B 53 03 E4 */	b SetObj__16dBgS_PolyPassChkFv
/* 80B48A88  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B48A8C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B48A90  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80B48A94  38 7F 08 80 */	addi r3, r31, 0x880
/* 80B48A98  4B 53 AC C8 */	b __ct__10dCcD_GSttsFv
/* 80B48A9C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B48AA0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B48AA4  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80B48AA8  3B 23 00 20 */	addi r25, r3, 0x20
/* 80B48AAC  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80B48AB0  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B48AB4  4B 52 D3 F8 */	b __ct__12dBgS_AcchCirFv
/* 80B48AB8  38 7F 09 30 */	addi r3, r31, 0x930
/* 80B48ABC  4B 71 F1 60 */	b __ct__11cBgS_GndChkFv
/* 80B48AC0  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B48AC4  4B 70 14 3C */	b __ct__10dMsgFlow_cFv
/* 80B48AC8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B48ACC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B48AD0  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B48AD4  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80B48AD8  4B 53 AC 88 */	b __ct__10dCcD_GSttsFv
/* 80B48ADC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B48AE0  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80B48AE4  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B48AE8  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80B48AEC  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80B48AF0  4B 52 EA 8C */	b __ct__11dBgS_GndChkFv
/* 80B48AF4  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80B48AF8  4B 52 F1 70 */	b __ct__11dBgS_LinChkFv
/* 80B48AFC  3C 60 80 B5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B48B00  38 03 99 B4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B48B04  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80B48B08  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80B48B0C  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80B48B10  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B48B14  4B 5F CD 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B48B18  3C 60 80 B5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B48B1C  38 03 99 B4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B48B20  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80B48B24  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80B48B28  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80B48B2C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B48B30  4B 5F CD 68 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B48B34  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B48B38  38 03 99 C0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B48B3C  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80B48B40  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B48B44  4B 5F CB 90 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B48B48  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B48B4C  38 03 99 C0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B48B50  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80B48B54  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B48B58  4B 5F CB 7C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B48B5C  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80B48B60  3C 60 80 B5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B48B64  38 03 99 CC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B48B68  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80B48B6C  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B48B70  38 03 99 C0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B48B74  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80B48B78  7F 43 D3 78 */	mr r3, r26
/* 80B48B7C  4B 5F CB 58 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B48B80  38 7A 00 30 */	addi r3, r26, 0x30
/* 80B48B84  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha
/* 80B48B88  38 84 8E 40 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B48B8C  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha
/* 80B48B90  38 A5 87 EC */	addi r5, r5, __dt__4cXyzFv@l
/* 80B48B94  38 C0 00 0C */	li r6, 0xc
/* 80B48B98  38 E0 00 03 */	li r7, 3
/* 80B48B9C  4B 81 91 C4 */	b __construct_array
/* 80B48BA0  38 7A 00 54 */	addi r3, r26, 0x54
/* 80B48BA4  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha
/* 80B48BA8  38 84 8E 40 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B48BAC  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha
/* 80B48BB0  38 A5 87 EC */	addi r5, r5, __dt__4cXyzFv@l
/* 80B48BB4  38 C0 00 0C */	li r6, 0xc
/* 80B48BB8  38 E0 00 03 */	li r7, 3
/* 80B48BBC  4B 81 91 A4 */	b __construct_array
/* 80B48BC0  38 7A 00 78 */	addi r3, r26, 0x78
/* 80B48BC4  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha
/* 80B48BC8  38 84 8E 40 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B48BCC  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha
/* 80B48BD0  38 A5 87 EC */	addi r5, r5, __dt__4cXyzFv@l
/* 80B48BD4  38 C0 00 0C */	li r6, 0xc
/* 80B48BD8  38 E0 00 03 */	li r7, 3
/* 80B48BDC  4B 81 91 84 */	b __construct_array
/* 80B48BE0  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80B48BE4  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha
/* 80B48BE8  38 84 8E 40 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B48BEC  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha
/* 80B48BF0  38 A5 87 EC */	addi r5, r5, __dt__4cXyzFv@l
/* 80B48BF4  38 C0 00 0C */	li r6, 0xc
/* 80B48BF8  38 E0 00 03 */	li r7, 3
/* 80B48BFC  4B 81 91 64 */	b __construct_array
/* 80B48C00  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80B48C04  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha
/* 80B48C08  38 84 8E 40 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B48C0C  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha
/* 80B48C10  38 A5 87 EC */	addi r5, r5, __dt__4cXyzFv@l
/* 80B48C14  38 C0 00 0C */	li r6, 0xc
/* 80B48C18  38 E0 00 03 */	li r7, 3
/* 80B48C1C  4B 81 91 44 */	b __construct_array
/* 80B48C20  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80B48C24  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha
/* 80B48C28  38 84 8E 40 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B48C2C  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha
/* 80B48C30  38 A5 87 EC */	addi r5, r5, __dt__4cXyzFv@l
/* 80B48C34  38 C0 00 0C */	li r6, 0xc
/* 80B48C38  38 E0 00 03 */	li r7, 3
/* 80B48C3C  4B 81 91 24 */	b __construct_array
/* 80B48C40  7F 43 D3 78 */	mr r3, r26
/* 80B48C44  4B 5F E0 54 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B48C48  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B48C4C  3C 80 80 B5 */	lis r4, __ct__5csXyzFv@ha
/* 80B48C50  38 84 8D 40 */	addi r4, r4, __ct__5csXyzFv@l
/* 80B48C54  3C A0 80 B5 */	lis r5, __dt__5csXyzFv@ha
/* 80B48C58  38 A5 88 28 */	addi r5, r5, __dt__5csXyzFv@l
/* 80B48C5C  38 C0 00 06 */	li r6, 6
/* 80B48C60  38 E0 00 02 */	li r7, 2
/* 80B48C64  4B 81 90 FC */	b __construct_array
/* 80B48C68  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B48C6C  38 80 00 00 */	li r4, 0
/* 80B48C70  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B48C74  7C A3 00 50 */	subf r5, r3, r0
/* 80B48C78  4B 4B A7 E0 */	b memset
/* 80B48C7C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B48C80  4B 5F CC 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B48C84  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B48C88  4B 5F CC 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B48C8C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B48C90  4B 5F CA 44 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B48C94  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B48C98  4B 5F CA 3C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B48C9C  7F 43 D3 78 */	mr r3, r26
/* 80B48CA0  4B 5F DF F8 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B48CA4  38 A0 00 00 */	li r5, 0
/* 80B48CA8  38 60 00 00 */	li r3, 0
/* 80B48CAC  7C A4 2B 78 */	mr r4, r5
/* 80B48CB0  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B48CB4  38 00 00 02 */	li r0, 2
/* 80B48CB8  7C 09 03 A6 */	mtctr r0
lbl_80B48CBC:
/* 80B48CBC  7C DF 22 14 */	add r6, r31, r4
/* 80B48CC0  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B48CC4  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B48CC8  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B48CCC  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B48CD0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B48CD4  38 63 00 04 */	addi r3, r3, 4
/* 80B48CD8  38 84 00 06 */	addi r4, r4, 6
/* 80B48CDC  42 00 FF E0 */	bdnz lbl_80B48CBC
/* 80B48CE0  38 00 00 00 */	li r0, 0
/* 80B48CE4  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B48CE8  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B48CEC  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B48CF0  38 00 FF FF */	li r0, -1
/* 80B48CF4  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B48CF8  38 00 00 01 */	li r0, 1
/* 80B48CFC  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B48D00  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80B48D04  4B 71 EC 50 */	b cM_rndF__Ff
/* 80B48D08  FC 00 08 1E */	fctiwz f0, f1
/* 80B48D0C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B48D10  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B48D14  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B48D18  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80B48D1C  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B48D20  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B48D24  7F E3 FB 78 */	mr r3, r31
/* 80B48D28  39 61 00 40 */	addi r11, r1, 0x40
/* 80B48D2C  4B 81 94 E0 */	b _restgpr_22
/* 80B48D30  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B48D34  7C 08 03 A6 */	mtlr r0
/* 80B48D38  38 21 00 40 */	addi r1, r1, 0x40
/* 80B48D3C  4E 80 00 20 */	blr 
