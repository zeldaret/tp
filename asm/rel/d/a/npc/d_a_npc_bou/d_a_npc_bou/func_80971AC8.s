lbl_80971AC8:
/* 80971AC8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80971ACC  7C 08 02 A6 */	mflr r0
/* 80971AD0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80971AD4  39 61 00 40 */	addi r11, r1, 0x40
/* 80971AD8  4B 9F 06 E8 */	b _savegpr_22
/* 80971ADC  7C 7F 1B 78 */	mr r31, r3
/* 80971AE0  7C 96 23 78 */	mr r22, r4
/* 80971AE4  7C B7 2B 78 */	mr r23, r5
/* 80971AE8  7C DA 33 78 */	mr r26, r6
/* 80971AEC  7C FB 3B 78 */	mr r27, r7
/* 80971AF0  7D 1C 43 78 */	mr r28, r8
/* 80971AF4  7D 3D 4B 78 */	mr r29, r9
/* 80971AF8  7D 58 53 78 */	mr r24, r10
/* 80971AFC  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80971B00  3C 80 80 97 */	lis r4, m__17daNpc_Bou_Param_c@ha
/* 80971B04  3B C4 28 60 */	addi r30, r4, m__17daNpc_Bou_Param_c@l
/* 80971B08  4B 6A 70 5C */	b __ct__10fopAc_ac_cFv
/* 80971B0C  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80971B10  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80971B14  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80971B18  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80971B1C  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80971B20  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80971B24  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80971B28  38 7F 05 80 */	addi r3, r31, 0x580
/* 80971B2C  4B 94 E8 9C */	b __ct__10Z2CreatureFv
/* 80971B30  3A DF 06 10 */	addi r22, r31, 0x610
/* 80971B34  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80971B38  38 03 32 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80971B3C  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80971B40  7E C3 B3 78 */	mr r3, r22
/* 80971B44  38 80 00 00 */	li r4, 0
/* 80971B48  4B 9B 68 B4 */	b init__12J3DFrameCtrlFs
/* 80971B4C  38 00 00 00 */	li r0, 0
/* 80971B50  90 16 00 18 */	stw r0, 0x18(r22)
/* 80971B54  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80971B58  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80971B5C  38 03 32 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80971B60  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80971B64  7E C3 B3 78 */	mr r3, r22
/* 80971B68  38 80 00 00 */	li r4, 0
/* 80971B6C  4B 9B 68 90 */	b init__12J3DFrameCtrlFs
/* 80971B70  38 00 00 00 */	li r0, 0
/* 80971B74  90 16 00 14 */	stw r0, 0x14(r22)
/* 80971B78  3A DF 06 44 */	addi r22, r31, 0x644
/* 80971B7C  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80971B80  38 03 32 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80971B84  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80971B88  7E C3 B3 78 */	mr r3, r22
/* 80971B8C  38 80 00 00 */	li r4, 0
/* 80971B90  4B 9B 68 6C */	b init__12J3DFrameCtrlFs
/* 80971B94  38 00 00 00 */	li r0, 0
/* 80971B98  90 16 00 14 */	stw r0, 0x14(r22)
/* 80971B9C  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80971BA0  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80971BA4  38 03 32 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80971BA8  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80971BAC  7E C3 B3 78 */	mr r3, r22
/* 80971BB0  38 80 00 00 */	li r4, 0
/* 80971BB4  4B 9B 68 48 */	b init__12J3DFrameCtrlFs
/* 80971BB8  38 00 00 00 */	li r0, 0
/* 80971BBC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80971BC0  3A DF 06 74 */	addi r22, r31, 0x674
/* 80971BC4  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80971BC8  38 03 32 D0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80971BCC  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80971BD0  7E C3 B3 78 */	mr r3, r22
/* 80971BD4  38 80 00 00 */	li r4, 0
/* 80971BD8  4B 9B 68 24 */	b init__12J3DFrameCtrlFs
/* 80971BDC  38 00 00 00 */	li r0, 0
/* 80971BE0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80971BE4  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80971BE8  7E C3 B3 78 */	mr r3, r22
/* 80971BEC  4B 70 44 B4 */	b __ct__9dBgS_AcchFv
/* 80971BF0  3C 60 80 97 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80971BF4  38 63 32 DC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80971BF8  90 76 00 10 */	stw r3, 0x10(r22)
/* 80971BFC  38 03 00 0C */	addi r0, r3, 0xc
/* 80971C00  90 16 00 14 */	stw r0, 0x14(r22)
/* 80971C04  38 03 00 18 */	addi r0, r3, 0x18
/* 80971C08  90 16 00 24 */	stw r0, 0x24(r22)
/* 80971C0C  38 76 00 14 */	addi r3, r22, 0x14
/* 80971C10  4B 70 72 58 */	b SetObj__16dBgS_PolyPassChkFv
/* 80971C14  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80971C18  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80971C1C  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80971C20  38 7F 08 80 */	addi r3, r31, 0x880
/* 80971C24  4B 71 1B 3C */	b __ct__10dCcD_GSttsFv
/* 80971C28  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80971C2C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80971C30  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80971C34  3B 23 00 20 */	addi r25, r3, 0x20
/* 80971C38  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80971C3C  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80971C40  4B 70 42 6C */	b __ct__12dBgS_AcchCirFv
/* 80971C44  38 7F 09 30 */	addi r3, r31, 0x930
/* 80971C48  4B 8F 5F D4 */	b __ct__11cBgS_GndChkFv
/* 80971C4C  38 7F 09 74 */	addi r3, r31, 0x974
/* 80971C50  4B 8D 82 B0 */	b __ct__10dMsgFlow_cFv
/* 80971C54  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80971C58  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80971C5C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80971C60  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80971C64  4B 71 1A FC */	b __ct__10dCcD_GSttsFv
/* 80971C68  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80971C6C  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80971C70  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80971C74  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80971C78  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80971C7C  4B 70 59 00 */	b __ct__11dBgS_GndChkFv
/* 80971C80  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80971C84  4B 70 5F E4 */	b __ct__11dBgS_LinChkFv
/* 80971C88  3C 60 80 97 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80971C8C  38 03 33 24 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80971C90  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80971C94  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80971C98  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80971C9C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80971CA0  4B 7D 3B F8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80971CA4  3C 60 80 97 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80971CA8  38 03 33 24 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80971CAC  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80971CB0  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80971CB4  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80971CB8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80971CBC  4B 7D 3B DC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80971CC0  3C 60 80 97 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80971CC4  38 03 33 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80971CC8  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80971CCC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80971CD0  4B 7D 3A 04 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80971CD4  3C 60 80 97 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80971CD8  38 03 33 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80971CDC  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80971CE0  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80971CE4  4B 7D 39 F0 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80971CE8  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80971CEC  3C 60 80 97 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80971CF0  38 03 33 3C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80971CF4  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80971CF8  3C 60 80 97 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80971CFC  38 03 33 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80971D00  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80971D04  7F 43 D3 78 */	mr r3, r26
/* 80971D08  4B 7D 39 CC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80971D0C  38 7A 00 30 */	addi r3, r26, 0x30
/* 80971D10  3C 80 80 97 */	lis r4, __ct__4cXyzFv@ha
/* 80971D14  38 84 1F CC */	addi r4, r4, __ct__4cXyzFv@l
/* 80971D18  3C A0 80 97 */	lis r5, __dt__4cXyzFv@ha
/* 80971D1C  38 A5 18 F4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80971D20  38 C0 00 0C */	li r6, 0xc
/* 80971D24  38 E0 00 03 */	li r7, 3
/* 80971D28  4B 9F 00 38 */	b __construct_array
/* 80971D2C  38 7A 00 54 */	addi r3, r26, 0x54
/* 80971D30  3C 80 80 97 */	lis r4, __ct__4cXyzFv@ha
/* 80971D34  38 84 1F CC */	addi r4, r4, __ct__4cXyzFv@l
/* 80971D38  3C A0 80 97 */	lis r5, __dt__4cXyzFv@ha
/* 80971D3C  38 A5 18 F4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80971D40  38 C0 00 0C */	li r6, 0xc
/* 80971D44  38 E0 00 03 */	li r7, 3
/* 80971D48  4B 9F 00 18 */	b __construct_array
/* 80971D4C  38 7A 00 78 */	addi r3, r26, 0x78
/* 80971D50  3C 80 80 97 */	lis r4, __ct__4cXyzFv@ha
/* 80971D54  38 84 1F CC */	addi r4, r4, __ct__4cXyzFv@l
/* 80971D58  3C A0 80 97 */	lis r5, __dt__4cXyzFv@ha
/* 80971D5C  38 A5 18 F4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80971D60  38 C0 00 0C */	li r6, 0xc
/* 80971D64  38 E0 00 03 */	li r7, 3
/* 80971D68  4B 9E FF F8 */	b __construct_array
/* 80971D6C  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80971D70  3C 80 80 97 */	lis r4, __ct__4cXyzFv@ha
/* 80971D74  38 84 1F CC */	addi r4, r4, __ct__4cXyzFv@l
/* 80971D78  3C A0 80 97 */	lis r5, __dt__4cXyzFv@ha
/* 80971D7C  38 A5 18 F4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80971D80  38 C0 00 0C */	li r6, 0xc
/* 80971D84  38 E0 00 03 */	li r7, 3
/* 80971D88  4B 9E FF D8 */	b __construct_array
/* 80971D8C  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80971D90  3C 80 80 97 */	lis r4, __ct__4cXyzFv@ha
/* 80971D94  38 84 1F CC */	addi r4, r4, __ct__4cXyzFv@l
/* 80971D98  3C A0 80 97 */	lis r5, __dt__4cXyzFv@ha
/* 80971D9C  38 A5 18 F4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80971DA0  38 C0 00 0C */	li r6, 0xc
/* 80971DA4  38 E0 00 03 */	li r7, 3
/* 80971DA8  4B 9E FF B8 */	b __construct_array
/* 80971DAC  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80971DB0  3C 80 80 97 */	lis r4, __ct__4cXyzFv@ha
/* 80971DB4  38 84 1F CC */	addi r4, r4, __ct__4cXyzFv@l
/* 80971DB8  3C A0 80 97 */	lis r5, __dt__4cXyzFv@ha
/* 80971DBC  38 A5 18 F4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80971DC0  38 C0 00 0C */	li r6, 0xc
/* 80971DC4  38 E0 00 03 */	li r7, 3
/* 80971DC8  4B 9E FF 98 */	b __construct_array
/* 80971DCC  7F 43 D3 78 */	mr r3, r26
/* 80971DD0  4B 7D 4E C8 */	b initialize__15daNpcT_JntAnm_cFv
/* 80971DD4  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80971DD8  3C 80 80 97 */	lis r4, __ct__5csXyzFv@ha
/* 80971DDC  38 84 1E CC */	addi r4, r4, __ct__5csXyzFv@l
/* 80971DE0  3C A0 80 97 */	lis r5, __dt__5csXyzFv@ha
/* 80971DE4  38 A5 19 30 */	addi r5, r5, __dt__5csXyzFv@l
/* 80971DE8  38 C0 00 06 */	li r6, 6
/* 80971DEC  38 E0 00 02 */	li r7, 2
/* 80971DF0  4B 9E FF 70 */	b __construct_array
/* 80971DF4  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80971DF8  38 80 00 00 */	li r4, 0
/* 80971DFC  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80971E00  7C A3 00 50 */	subf r5, r3, r0
/* 80971E04  4B 69 16 54 */	b memset
/* 80971E08  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80971E0C  4B 7D 3A 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80971E10  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80971E14  4B 7D 3A 84 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80971E18  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80971E1C  4B 7D 38 B8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80971E20  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80971E24  4B 7D 38 B0 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80971E28  7F 43 D3 78 */	mr r3, r26
/* 80971E2C  4B 7D 4E 6C */	b initialize__15daNpcT_JntAnm_cFv
/* 80971E30  38 A0 00 00 */	li r5, 0
/* 80971E34  38 60 00 00 */	li r3, 0
/* 80971E38  7C A4 2B 78 */	mr r4, r5
/* 80971E3C  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80971E40  38 00 00 02 */	li r0, 2
/* 80971E44  7C 09 03 A6 */	mtctr r0
lbl_80971E48:
/* 80971E48  7C DF 22 14 */	add r6, r31, r4
/* 80971E4C  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80971E50  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80971E54  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80971E58  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80971E5C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80971E60  38 63 00 04 */	addi r3, r3, 4
/* 80971E64  38 84 00 06 */	addi r4, r4, 6
/* 80971E68  42 00 FF E0 */	bdnz lbl_80971E48
/* 80971E6C  38 00 00 00 */	li r0, 0
/* 80971E70  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80971E74  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80971E78  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80971E7C  38 00 FF FF */	li r0, -1
/* 80971E80  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80971E84  38 00 00 01 */	li r0, 1
/* 80971E88  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80971E8C  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80971E90  4B 8F 5A C4 */	b cM_rndF__Ff
/* 80971E94  FC 00 08 1E */	fctiwz f0, f1
/* 80971E98  D8 01 00 08 */	stfd f0, 8(r1)
/* 80971E9C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80971EA0  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80971EA4  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80971EA8  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80971EAC  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80971EB0  7F E3 FB 78 */	mr r3, r31
/* 80971EB4  39 61 00 40 */	addi r11, r1, 0x40
/* 80971EB8  4B 9F 03 54 */	b _restgpr_22
/* 80971EBC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80971EC0  7C 08 03 A6 */	mtlr r0
/* 80971EC4  38 21 00 40 */	addi r1, r1, 0x40
/* 80971EC8  4E 80 00 20 */	blr 
