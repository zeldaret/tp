lbl_80A47C34:
/* 80A47C34  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A47C38  7C 08 02 A6 */	mflr r0
/* 80A47C3C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A47C40  39 61 00 40 */	addi r11, r1, 0x40
/* 80A47C44  4B 91 A5 7C */	b _savegpr_22
/* 80A47C48  7C 7F 1B 78 */	mr r31, r3
/* 80A47C4C  7C 96 23 78 */	mr r22, r4
/* 80A47C50  7C B7 2B 78 */	mr r23, r5
/* 80A47C54  7C DA 33 78 */	mr r26, r6
/* 80A47C58  7C FB 3B 78 */	mr r27, r7
/* 80A47C5C  7D 1C 43 78 */	mr r28, r8
/* 80A47C60  7D 3D 4B 78 */	mr r29, r9
/* 80A47C64  7D 58 53 78 */	mr r24, r10
/* 80A47C68  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80A47C6C  3C 80 80 A5 */	lis r4, m__20daNpc_Kolinb_Param_c@ha
/* 80A47C70  3B C4 87 10 */	addi r30, r4, m__20daNpc_Kolinb_Param_c@l
/* 80A47C74  4B 5D 0E F0 */	b __ct__10fopAc_ac_cFv
/* 80A47C78  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80A47C7C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80A47C80  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A47C84  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80A47C88  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80A47C8C  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80A47C90  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80A47C94  38 7F 05 80 */	addi r3, r31, 0x580
/* 80A47C98  4B 87 87 30 */	b __ct__10Z2CreatureFv
/* 80A47C9C  3A DF 06 10 */	addi r22, r31, 0x610
/* 80A47CA0  3C 60 80 A5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A47CA4  38 03 8D 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A47CA8  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80A47CAC  7E C3 B3 78 */	mr r3, r22
/* 80A47CB0  38 80 00 00 */	li r4, 0
/* 80A47CB4  4B 8E 07 48 */	b init__12J3DFrameCtrlFs
/* 80A47CB8  38 00 00 00 */	li r0, 0
/* 80A47CBC  90 16 00 18 */	stw r0, 0x18(r22)
/* 80A47CC0  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80A47CC4  3C 60 80 A5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A47CC8  38 03 8D 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A47CCC  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80A47CD0  7E C3 B3 78 */	mr r3, r22
/* 80A47CD4  38 80 00 00 */	li r4, 0
/* 80A47CD8  4B 8E 07 24 */	b init__12J3DFrameCtrlFs
/* 80A47CDC  38 00 00 00 */	li r0, 0
/* 80A47CE0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A47CE4  3A DF 06 44 */	addi r22, r31, 0x644
/* 80A47CE8  3C 60 80 A5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A47CEC  38 03 8D 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A47CF0  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80A47CF4  7E C3 B3 78 */	mr r3, r22
/* 80A47CF8  38 80 00 00 */	li r4, 0
/* 80A47CFC  4B 8E 07 00 */	b init__12J3DFrameCtrlFs
/* 80A47D00  38 00 00 00 */	li r0, 0
/* 80A47D04  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A47D08  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80A47D0C  3C 60 80 A5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A47D10  38 03 8D 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A47D14  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80A47D18  7E C3 B3 78 */	mr r3, r22
/* 80A47D1C  38 80 00 00 */	li r4, 0
/* 80A47D20  4B 8E 06 DC */	b init__12J3DFrameCtrlFs
/* 80A47D24  38 00 00 00 */	li r0, 0
/* 80A47D28  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A47D2C  3A DF 06 74 */	addi r22, r31, 0x674
/* 80A47D30  3C 60 80 A5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A47D34  38 03 8D 14 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A47D38  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80A47D3C  7E C3 B3 78 */	mr r3, r22
/* 80A47D40  38 80 00 00 */	li r4, 0
/* 80A47D44  4B 8E 06 B8 */	b init__12J3DFrameCtrlFs
/* 80A47D48  38 00 00 00 */	li r0, 0
/* 80A47D4C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A47D50  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80A47D54  7E C3 B3 78 */	mr r3, r22
/* 80A47D58  4B 62 E3 48 */	b __ct__9dBgS_AcchFv
/* 80A47D5C  3C 60 80 A5 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A47D60  38 63 8D 20 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A47D64  90 76 00 10 */	stw r3, 0x10(r22)
/* 80A47D68  38 03 00 0C */	addi r0, r3, 0xc
/* 80A47D6C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A47D70  38 03 00 18 */	addi r0, r3, 0x18
/* 80A47D74  90 16 00 24 */	stw r0, 0x24(r22)
/* 80A47D78  38 76 00 14 */	addi r3, r22, 0x14
/* 80A47D7C  4B 63 10 EC */	b SetObj__16dBgS_PolyPassChkFv
/* 80A47D80  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A47D84  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A47D88  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80A47D8C  38 7F 08 80 */	addi r3, r31, 0x880
/* 80A47D90  4B 63 B9 D0 */	b __ct__10dCcD_GSttsFv
/* 80A47D94  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A47D98  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A47D9C  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80A47DA0  3B 23 00 20 */	addi r25, r3, 0x20
/* 80A47DA4  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80A47DA8  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80A47DAC  4B 62 E1 00 */	b __ct__12dBgS_AcchCirFv
/* 80A47DB0  38 7F 09 30 */	addi r3, r31, 0x930
/* 80A47DB4  4B 81 FE 68 */	b __ct__11cBgS_GndChkFv
/* 80A47DB8  38 7F 09 74 */	addi r3, r31, 0x974
/* 80A47DBC  4B 80 21 44 */	b __ct__10dMsgFlow_cFv
/* 80A47DC0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A47DC4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A47DC8  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A47DCC  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80A47DD0  4B 63 B9 90 */	b __ct__10dCcD_GSttsFv
/* 80A47DD4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A47DD8  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80A47DDC  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A47DE0  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80A47DE4  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80A47DE8  4B 62 F7 94 */	b __ct__11dBgS_GndChkFv
/* 80A47DEC  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80A47DF0  4B 62 FE 78 */	b __ct__11dBgS_LinChkFv
/* 80A47DF4  3C 60 80 A5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A47DF8  38 03 8D 68 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A47DFC  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80A47E00  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80A47E04  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80A47E08  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A47E0C  4B 6F DA 8C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A47E10  3C 60 80 A5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A47E14  38 03 8D 68 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A47E18  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80A47E1C  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80A47E20  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80A47E24  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A47E28  4B 6F DA 70 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A47E2C  3C 60 80 A5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A47E30  38 03 8D 74 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A47E34  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80A47E38  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A47E3C  4B 6F D8 98 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A47E40  3C 60 80 A5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A47E44  38 03 8D 74 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A47E48  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80A47E4C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A47E50  4B 6F D8 84 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A47E54  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80A47E58  3C 60 80 A5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A47E5C  38 03 8D 80 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A47E60  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80A47E64  3C 60 80 A5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A47E68  38 03 8D 74 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A47E6C  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80A47E70  7F 43 D3 78 */	mr r3, r26
/* 80A47E74  4B 6F D8 60 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A47E78  38 7A 00 30 */	addi r3, r26, 0x30
/* 80A47E7C  3C 80 80 A5 */	lis r4, __ct__4cXyzFv@ha
/* 80A47E80  38 84 81 38 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A47E84  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha
/* 80A47E88  38 A5 7A E4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A47E8C  38 C0 00 0C */	li r6, 0xc
/* 80A47E90  38 E0 00 03 */	li r7, 3
/* 80A47E94  4B 91 9E CC */	b __construct_array
/* 80A47E98  38 7A 00 54 */	addi r3, r26, 0x54
/* 80A47E9C  3C 80 80 A5 */	lis r4, __ct__4cXyzFv@ha
/* 80A47EA0  38 84 81 38 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A47EA4  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha
/* 80A47EA8  38 A5 7A E4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A47EAC  38 C0 00 0C */	li r6, 0xc
/* 80A47EB0  38 E0 00 03 */	li r7, 3
/* 80A47EB4  4B 91 9E AC */	b __construct_array
/* 80A47EB8  38 7A 00 78 */	addi r3, r26, 0x78
/* 80A47EBC  3C 80 80 A5 */	lis r4, __ct__4cXyzFv@ha
/* 80A47EC0  38 84 81 38 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A47EC4  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha
/* 80A47EC8  38 A5 7A E4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A47ECC  38 C0 00 0C */	li r6, 0xc
/* 80A47ED0  38 E0 00 03 */	li r7, 3
/* 80A47ED4  4B 91 9E 8C */	b __construct_array
/* 80A47ED8  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80A47EDC  3C 80 80 A5 */	lis r4, __ct__4cXyzFv@ha
/* 80A47EE0  38 84 81 38 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A47EE4  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha
/* 80A47EE8  38 A5 7A E4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A47EEC  38 C0 00 0C */	li r6, 0xc
/* 80A47EF0  38 E0 00 03 */	li r7, 3
/* 80A47EF4  4B 91 9E 6C */	b __construct_array
/* 80A47EF8  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80A47EFC  3C 80 80 A5 */	lis r4, __ct__4cXyzFv@ha
/* 80A47F00  38 84 81 38 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A47F04  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha
/* 80A47F08  38 A5 7A E4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A47F0C  38 C0 00 0C */	li r6, 0xc
/* 80A47F10  38 E0 00 03 */	li r7, 3
/* 80A47F14  4B 91 9E 4C */	b __construct_array
/* 80A47F18  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80A47F1C  3C 80 80 A5 */	lis r4, __ct__4cXyzFv@ha
/* 80A47F20  38 84 81 38 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A47F24  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha
/* 80A47F28  38 A5 7A E4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A47F2C  38 C0 00 0C */	li r6, 0xc
/* 80A47F30  38 E0 00 03 */	li r7, 3
/* 80A47F34  4B 91 9E 2C */	b __construct_array
/* 80A47F38  7F 43 D3 78 */	mr r3, r26
/* 80A47F3C  4B 6F ED 5C */	b initialize__15daNpcT_JntAnm_cFv
/* 80A47F40  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A47F44  3C 80 80 A5 */	lis r4, __ct__5csXyzFv@ha
/* 80A47F48  38 84 80 38 */	addi r4, r4, __ct__5csXyzFv@l
/* 80A47F4C  3C A0 80 A4 */	lis r5, __dt__5csXyzFv@ha
/* 80A47F50  38 A5 7B 20 */	addi r5, r5, __dt__5csXyzFv@l
/* 80A47F54  38 C0 00 06 */	li r6, 6
/* 80A47F58  38 E0 00 02 */	li r7, 2
/* 80A47F5C  4B 91 9E 04 */	b __construct_array
/* 80A47F60  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A47F64  38 80 00 00 */	li r4, 0
/* 80A47F68  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A47F6C  7C A3 00 50 */	subf r5, r3, r0
/* 80A47F70  4B 5B B4 E8 */	b memset
/* 80A47F74  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A47F78  4B 6F D9 20 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A47F7C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A47F80  4B 6F D9 18 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A47F84  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A47F88  4B 6F D7 4C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A47F8C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A47F90  4B 6F D7 44 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A47F94  7F 43 D3 78 */	mr r3, r26
/* 80A47F98  4B 6F ED 00 */	b initialize__15daNpcT_JntAnm_cFv
/* 80A47F9C  38 A0 00 00 */	li r5, 0
/* 80A47FA0  38 60 00 00 */	li r3, 0
/* 80A47FA4  7C A4 2B 78 */	mr r4, r5
/* 80A47FA8  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80A47FAC  38 00 00 02 */	li r0, 2
/* 80A47FB0  7C 09 03 A6 */	mtctr r0
lbl_80A47FB4:
/* 80A47FB4  7C DF 22 14 */	add r6, r31, r4
/* 80A47FB8  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A47FBC  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A47FC0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A47FC4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A47FC8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A47FCC  38 63 00 04 */	addi r3, r3, 4
/* 80A47FD0  38 84 00 06 */	addi r4, r4, 6
/* 80A47FD4  42 00 FF E0 */	bdnz lbl_80A47FB4
/* 80A47FD8  38 00 00 00 */	li r0, 0
/* 80A47FDC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A47FE0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A47FE4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A47FE8  38 00 FF FF */	li r0, -1
/* 80A47FEC  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A47FF0  38 00 00 01 */	li r0, 1
/* 80A47FF4  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A47FF8  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80A47FFC  4B 81 F9 58 */	b cM_rndF__Ff
/* 80A48000  FC 00 08 1E */	fctiwz f0, f1
/* 80A48004  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A48008  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A4800C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A48010  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80A48014  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A48018  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A4801C  7F E3 FB 78 */	mr r3, r31
/* 80A48020  39 61 00 40 */	addi r11, r1, 0x40
/* 80A48024  4B 91 A1 E8 */	b _restgpr_22
/* 80A48028  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A4802C  7C 08 03 A6 */	mtlr r0
/* 80A48030  38 21 00 40 */	addi r1, r1, 0x40
/* 80A48034  4E 80 00 20 */	blr 
