lbl_80A95CCC:
/* 80A95CCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A95CD0  7C 08 02 A6 */	mflr r0
/* 80A95CD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A95CD8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A95CDC  4B 8C C4 E4 */	b _savegpr_22
/* 80A95CE0  7C 7F 1B 78 */	mr r31, r3
/* 80A95CE4  7C 96 23 78 */	mr r22, r4
/* 80A95CE8  7C B7 2B 78 */	mr r23, r5
/* 80A95CEC  7C DA 33 78 */	mr r26, r6
/* 80A95CF0  7C FB 3B 78 */	mr r27, r7
/* 80A95CF4  7D 1C 43 78 */	mr r28, r8
/* 80A95CF8  7D 3D 4B 78 */	mr r29, r9
/* 80A95CFC  7D 58 53 78 */	mr r24, r10
/* 80A95D00  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80A95D04  3C 80 80 A9 */	lis r4, m__24daNpc_Pachi_Besu_Param_c@ha
/* 80A95D08  3B C4 6A 6C */	addi r30, r4, m__24daNpc_Pachi_Besu_Param_c@l
/* 80A95D0C  4B 58 2E 58 */	b __ct__10fopAc_ac_cFv
/* 80A95D10  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80A95D14  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80A95D18  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A95D1C  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80A95D20  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80A95D24  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80A95D28  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80A95D2C  38 7F 05 80 */	addi r3, r31, 0x580
/* 80A95D30  4B 82 A6 98 */	b __ct__10Z2CreatureFv
/* 80A95D34  3A DF 06 10 */	addi r22, r31, 0x610
/* 80A95D38  3C 60 80 A9 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A95D3C  38 03 79 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A95D40  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80A95D44  7E C3 B3 78 */	mr r3, r22
/* 80A95D48  38 80 00 00 */	li r4, 0
/* 80A95D4C  4B 89 26 B0 */	b init__12J3DFrameCtrlFs
/* 80A95D50  38 00 00 00 */	li r0, 0
/* 80A95D54  90 16 00 18 */	stw r0, 0x18(r22)
/* 80A95D58  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80A95D5C  3C 60 80 A9 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A95D60  38 03 79 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A95D64  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80A95D68  7E C3 B3 78 */	mr r3, r22
/* 80A95D6C  38 80 00 00 */	li r4, 0
/* 80A95D70  4B 89 26 8C */	b init__12J3DFrameCtrlFs
/* 80A95D74  38 00 00 00 */	li r0, 0
/* 80A95D78  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A95D7C  3A DF 06 44 */	addi r22, r31, 0x644
/* 80A95D80  3C 60 80 A9 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A95D84  38 03 79 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A95D88  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80A95D8C  7E C3 B3 78 */	mr r3, r22
/* 80A95D90  38 80 00 00 */	li r4, 0
/* 80A95D94  4B 89 26 68 */	b init__12J3DFrameCtrlFs
/* 80A95D98  38 00 00 00 */	li r0, 0
/* 80A95D9C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A95DA0  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80A95DA4  3C 60 80 A9 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A95DA8  38 03 79 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A95DAC  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80A95DB0  7E C3 B3 78 */	mr r3, r22
/* 80A95DB4  38 80 00 00 */	li r4, 0
/* 80A95DB8  4B 89 26 44 */	b init__12J3DFrameCtrlFs
/* 80A95DBC  38 00 00 00 */	li r0, 0
/* 80A95DC0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A95DC4  3A DF 06 74 */	addi r22, r31, 0x674
/* 80A95DC8  3C 60 80 A9 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A95DCC  38 03 79 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A95DD0  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80A95DD4  7E C3 B3 78 */	mr r3, r22
/* 80A95DD8  38 80 00 00 */	li r4, 0
/* 80A95DDC  4B 89 26 20 */	b init__12J3DFrameCtrlFs
/* 80A95DE0  38 00 00 00 */	li r0, 0
/* 80A95DE4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A95DE8  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80A95DEC  7E C3 B3 78 */	mr r3, r22
/* 80A95DF0  4B 5E 02 B0 */	b __ct__9dBgS_AcchFv
/* 80A95DF4  3C 60 80 A9 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A95DF8  38 63 79 68 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A95DFC  90 76 00 10 */	stw r3, 0x10(r22)
/* 80A95E00  38 03 00 0C */	addi r0, r3, 0xc
/* 80A95E04  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A95E08  38 03 00 18 */	addi r0, r3, 0x18
/* 80A95E0C  90 16 00 24 */	stw r0, 0x24(r22)
/* 80A95E10  38 76 00 14 */	addi r3, r22, 0x14
/* 80A95E14  4B 5E 30 54 */	b SetObj__16dBgS_PolyPassChkFv
/* 80A95E18  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A95E1C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A95E20  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80A95E24  38 7F 08 80 */	addi r3, r31, 0x880
/* 80A95E28  4B 5E D9 38 */	b __ct__10dCcD_GSttsFv
/* 80A95E2C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A95E30  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A95E34  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80A95E38  3B 23 00 20 */	addi r25, r3, 0x20
/* 80A95E3C  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80A95E40  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80A95E44  4B 5E 00 68 */	b __ct__12dBgS_AcchCirFv
/* 80A95E48  38 7F 09 30 */	addi r3, r31, 0x930
/* 80A95E4C  4B 7D 1D D0 */	b __ct__11cBgS_GndChkFv
/* 80A95E50  38 7F 09 74 */	addi r3, r31, 0x974
/* 80A95E54  4B 7B 40 AC */	b __ct__10dMsgFlow_cFv
/* 80A95E58  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A95E5C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A95E60  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A95E64  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80A95E68  4B 5E D8 F8 */	b __ct__10dCcD_GSttsFv
/* 80A95E6C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A95E70  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80A95E74  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A95E78  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80A95E7C  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80A95E80  4B 5E 16 FC */	b __ct__11dBgS_GndChkFv
/* 80A95E84  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80A95E88  4B 5E 1D E0 */	b __ct__11dBgS_LinChkFv
/* 80A95E8C  3C 60 80 A9 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A95E90  38 03 79 B0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A95E94  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80A95E98  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80A95E9C  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80A95EA0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A95EA4  4B 6A F9 F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A95EA8  3C 60 80 A9 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A95EAC  38 03 79 B0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A95EB0  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80A95EB4  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80A95EB8  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80A95EBC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A95EC0  4B 6A F9 D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A95EC4  3C 60 80 A9 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A95EC8  38 03 79 BC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A95ECC  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80A95ED0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A95ED4  4B 6A F8 00 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A95ED8  3C 60 80 A9 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A95EDC  38 03 79 BC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A95EE0  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80A95EE4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A95EE8  4B 6A F7 EC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A95EEC  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80A95EF0  3C 60 80 A9 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A95EF4  38 03 79 C8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A95EF8  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80A95EFC  3C 60 80 A9 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A95F00  38 03 79 BC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A95F04  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80A95F08  7F 43 D3 78 */	mr r3, r26
/* 80A95F0C  4B 6A F7 C8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A95F10  38 7A 00 30 */	addi r3, r26, 0x30
/* 80A95F14  3C 80 80 A9 */	lis r4, __ct__4cXyzFv@ha
/* 80A95F18  38 84 61 D0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A95F1C  3C A0 80 A9 */	lis r5, __dt__4cXyzFv@ha
/* 80A95F20  38 A5 5B 40 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A95F24  38 C0 00 0C */	li r6, 0xc
/* 80A95F28  38 E0 00 03 */	li r7, 3
/* 80A95F2C  4B 8C BE 34 */	b __construct_array
/* 80A95F30  38 7A 00 54 */	addi r3, r26, 0x54
/* 80A95F34  3C 80 80 A9 */	lis r4, __ct__4cXyzFv@ha
/* 80A95F38  38 84 61 D0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A95F3C  3C A0 80 A9 */	lis r5, __dt__4cXyzFv@ha
/* 80A95F40  38 A5 5B 40 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A95F44  38 C0 00 0C */	li r6, 0xc
/* 80A95F48  38 E0 00 03 */	li r7, 3
/* 80A95F4C  4B 8C BE 14 */	b __construct_array
/* 80A95F50  38 7A 00 78 */	addi r3, r26, 0x78
/* 80A95F54  3C 80 80 A9 */	lis r4, __ct__4cXyzFv@ha
/* 80A95F58  38 84 61 D0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A95F5C  3C A0 80 A9 */	lis r5, __dt__4cXyzFv@ha
/* 80A95F60  38 A5 5B 40 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A95F64  38 C0 00 0C */	li r6, 0xc
/* 80A95F68  38 E0 00 03 */	li r7, 3
/* 80A95F6C  4B 8C BD F4 */	b __construct_array
/* 80A95F70  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80A95F74  3C 80 80 A9 */	lis r4, __ct__4cXyzFv@ha
/* 80A95F78  38 84 61 D0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A95F7C  3C A0 80 A9 */	lis r5, __dt__4cXyzFv@ha
/* 80A95F80  38 A5 5B 40 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A95F84  38 C0 00 0C */	li r6, 0xc
/* 80A95F88  38 E0 00 03 */	li r7, 3
/* 80A95F8C  4B 8C BD D4 */	b __construct_array
/* 80A95F90  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80A95F94  3C 80 80 A9 */	lis r4, __ct__4cXyzFv@ha
/* 80A95F98  38 84 61 D0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A95F9C  3C A0 80 A9 */	lis r5, __dt__4cXyzFv@ha
/* 80A95FA0  38 A5 5B 40 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A95FA4  38 C0 00 0C */	li r6, 0xc
/* 80A95FA8  38 E0 00 03 */	li r7, 3
/* 80A95FAC  4B 8C BD B4 */	b __construct_array
/* 80A95FB0  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80A95FB4  3C 80 80 A9 */	lis r4, __ct__4cXyzFv@ha
/* 80A95FB8  38 84 61 D0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A95FBC  3C A0 80 A9 */	lis r5, __dt__4cXyzFv@ha
/* 80A95FC0  38 A5 5B 40 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A95FC4  38 C0 00 0C */	li r6, 0xc
/* 80A95FC8  38 E0 00 03 */	li r7, 3
/* 80A95FCC  4B 8C BD 94 */	b __construct_array
/* 80A95FD0  7F 43 D3 78 */	mr r3, r26
/* 80A95FD4  4B 6B 0C C4 */	b initialize__15daNpcT_JntAnm_cFv
/* 80A95FD8  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A95FDC  3C 80 80 A9 */	lis r4, __ct__5csXyzFv@ha
/* 80A95FE0  38 84 60 D0 */	addi r4, r4, __ct__5csXyzFv@l
/* 80A95FE4  3C A0 80 A9 */	lis r5, __dt__5csXyzFv@ha
/* 80A95FE8  38 A5 5B 7C */	addi r5, r5, __dt__5csXyzFv@l
/* 80A95FEC  38 C0 00 06 */	li r6, 6
/* 80A95FF0  38 E0 00 02 */	li r7, 2
/* 80A95FF4  4B 8C BD 6C */	b __construct_array
/* 80A95FF8  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A95FFC  38 80 00 00 */	li r4, 0
/* 80A96000  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A96004  7C A3 00 50 */	subf r5, r3, r0
/* 80A96008  4B 56 D4 50 */	b memset
/* 80A9600C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A96010  4B 6A F8 88 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A96014  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A96018  4B 6A F8 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A9601C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A96020  4B 6A F6 B4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A96024  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A96028  4B 6A F6 AC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A9602C  7F 43 D3 78 */	mr r3, r26
/* 80A96030  4B 6B 0C 68 */	b initialize__15daNpcT_JntAnm_cFv
/* 80A96034  38 A0 00 00 */	li r5, 0
/* 80A96038  38 60 00 00 */	li r3, 0
/* 80A9603C  7C A4 2B 78 */	mr r4, r5
/* 80A96040  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A96044  38 00 00 02 */	li r0, 2
/* 80A96048  7C 09 03 A6 */	mtctr r0
lbl_80A9604C:
/* 80A9604C  7C DF 22 14 */	add r6, r31, r4
/* 80A96050  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A96054  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A96058  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A9605C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A96060  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A96064  38 63 00 04 */	addi r3, r3, 4
/* 80A96068  38 84 00 06 */	addi r4, r4, 6
/* 80A9606C  42 00 FF E0 */	bdnz lbl_80A9604C
/* 80A96070  38 00 00 00 */	li r0, 0
/* 80A96074  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A96078  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A9607C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A96080  38 00 FF FF */	li r0, -1
/* 80A96084  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A96088  38 00 00 01 */	li r0, 1
/* 80A9608C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A96090  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80A96094  4B 7D 18 C0 */	b cM_rndF__Ff
/* 80A96098  FC 00 08 1E */	fctiwz f0, f1
/* 80A9609C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A960A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A960A4  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A960A8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80A960AC  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A960B0  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A960B4  7F E3 FB 78 */	mr r3, r31
/* 80A960B8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A960BC  4B 8C C1 50 */	b _restgpr_22
/* 80A960C0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A960C4  7C 08 03 A6 */	mtlr r0
/* 80A960C8  38 21 00 40 */	addi r1, r1, 0x40
/* 80A960CC  4E 80 00 20 */	blr 
