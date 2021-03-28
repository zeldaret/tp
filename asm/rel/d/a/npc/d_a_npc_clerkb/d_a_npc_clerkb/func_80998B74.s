lbl_80998B74:
/* 80998B74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80998B78  7C 08 02 A6 */	mflr r0
/* 80998B7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80998B80  39 61 00 40 */	addi r11, r1, 0x40
/* 80998B84  4B 9C 96 3C */	b _savegpr_22
/* 80998B88  7C 7F 1B 78 */	mr r31, r3
/* 80998B8C  7C 96 23 78 */	mr r22, r4
/* 80998B90  7C B7 2B 78 */	mr r23, r5
/* 80998B94  7C DA 33 78 */	mr r26, r6
/* 80998B98  7C FB 3B 78 */	mr r27, r7
/* 80998B9C  7D 1C 43 78 */	mr r28, r8
/* 80998BA0  7D 3D 4B 78 */	mr r29, r9
/* 80998BA4  7D 58 53 78 */	mr r24, r10
/* 80998BA8  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80998BAC  3C 80 80 9A */	lis r4, m__20daNpc_clerkB_Param_c@ha
/* 80998BB0  3B C4 99 78 */	addi r30, r4, m__20daNpc_clerkB_Param_c@l
/* 80998BB4  4B 67 FF B0 */	b __ct__10fopAc_ac_cFv
/* 80998BB8  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80998BBC  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80998BC0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80998BC4  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80998BC8  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80998BCC  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80998BD0  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80998BD4  38 7F 05 80 */	addi r3, r31, 0x580
/* 80998BD8  4B 92 77 F0 */	b __ct__10Z2CreatureFv
/* 80998BDC  3A DF 06 10 */	addi r22, r31, 0x610
/* 80998BE0  3C 60 80 9A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80998BE4  38 03 9F 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80998BE8  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80998BEC  7E C3 B3 78 */	mr r3, r22
/* 80998BF0  38 80 00 00 */	li r4, 0
/* 80998BF4  4B 98 F8 08 */	b init__12J3DFrameCtrlFs
/* 80998BF8  38 00 00 00 */	li r0, 0
/* 80998BFC  90 16 00 18 */	stw r0, 0x18(r22)
/* 80998C00  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80998C04  3C 60 80 9A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80998C08  38 03 9F 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80998C0C  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80998C10  7E C3 B3 78 */	mr r3, r22
/* 80998C14  38 80 00 00 */	li r4, 0
/* 80998C18  4B 98 F7 E4 */	b init__12J3DFrameCtrlFs
/* 80998C1C  38 00 00 00 */	li r0, 0
/* 80998C20  90 16 00 14 */	stw r0, 0x14(r22)
/* 80998C24  3A DF 06 44 */	addi r22, r31, 0x644
/* 80998C28  3C 60 80 9A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80998C2C  38 03 9F 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80998C30  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80998C34  7E C3 B3 78 */	mr r3, r22
/* 80998C38  38 80 00 00 */	li r4, 0
/* 80998C3C  4B 98 F7 C0 */	b init__12J3DFrameCtrlFs
/* 80998C40  38 00 00 00 */	li r0, 0
/* 80998C44  90 16 00 14 */	stw r0, 0x14(r22)
/* 80998C48  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80998C4C  3C 60 80 9A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80998C50  38 03 9F 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80998C54  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80998C58  7E C3 B3 78 */	mr r3, r22
/* 80998C5C  38 80 00 00 */	li r4, 0
/* 80998C60  4B 98 F7 9C */	b init__12J3DFrameCtrlFs
/* 80998C64  38 00 00 00 */	li r0, 0
/* 80998C68  90 16 00 14 */	stw r0, 0x14(r22)
/* 80998C6C  3A DF 06 74 */	addi r22, r31, 0x674
/* 80998C70  3C 60 80 9A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80998C74  38 03 9F 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80998C78  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80998C7C  7E C3 B3 78 */	mr r3, r22
/* 80998C80  38 80 00 00 */	li r4, 0
/* 80998C84  4B 98 F7 78 */	b init__12J3DFrameCtrlFs
/* 80998C88  38 00 00 00 */	li r0, 0
/* 80998C8C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80998C90  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80998C94  7E C3 B3 78 */	mr r3, r22
/* 80998C98  4B 6D D4 08 */	b __ct__9dBgS_AcchFv
/* 80998C9C  3C 60 80 9A */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80998CA0  38 63 9E D0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80998CA4  90 76 00 10 */	stw r3, 0x10(r22)
/* 80998CA8  38 03 00 0C */	addi r0, r3, 0xc
/* 80998CAC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80998CB0  38 03 00 18 */	addi r0, r3, 0x18
/* 80998CB4  90 16 00 24 */	stw r0, 0x24(r22)
/* 80998CB8  38 76 00 14 */	addi r3, r22, 0x14
/* 80998CBC  4B 6E 01 AC */	b SetObj__16dBgS_PolyPassChkFv
/* 80998CC0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80998CC4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80998CC8  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80998CCC  38 7F 08 80 */	addi r3, r31, 0x880
/* 80998CD0  4B 6E AA 90 */	b __ct__10dCcD_GSttsFv
/* 80998CD4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80998CD8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80998CDC  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80998CE0  3B 23 00 20 */	addi r25, r3, 0x20
/* 80998CE4  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80998CE8  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80998CEC  4B 6D D1 C0 */	b __ct__12dBgS_AcchCirFv
/* 80998CF0  38 7F 09 30 */	addi r3, r31, 0x930
/* 80998CF4  4B 8C EF 28 */	b __ct__11cBgS_GndChkFv
/* 80998CF8  38 7F 09 74 */	addi r3, r31, 0x974
/* 80998CFC  4B 8B 12 04 */	b __ct__10dMsgFlow_cFv
/* 80998D00  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80998D04  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80998D08  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80998D0C  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80998D10  4B 6E AA 50 */	b __ct__10dCcD_GSttsFv
/* 80998D14  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80998D18  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80998D1C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80998D20  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80998D24  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80998D28  4B 6D E8 54 */	b __ct__11dBgS_GndChkFv
/* 80998D2C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80998D30  4B 6D EF 38 */	b __ct__11dBgS_LinChkFv
/* 80998D34  3C 60 80 9A */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80998D38  38 03 9F 18 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80998D3C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80998D40  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80998D44  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80998D48  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80998D4C  4B 7A CB 4C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80998D50  3C 60 80 9A */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80998D54  38 03 9F 18 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80998D58  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80998D5C  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80998D60  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80998D64  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80998D68  4B 7A CB 30 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80998D6C  3C 60 80 9A */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80998D70  38 03 9F 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80998D74  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80998D78  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80998D7C  4B 7A C9 58 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80998D80  3C 60 80 9A */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80998D84  38 03 9F 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80998D88  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80998D8C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80998D90  4B 7A C9 44 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80998D94  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80998D98  3C 60 80 9A */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80998D9C  38 03 9F 24 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80998DA0  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80998DA4  3C 60 80 9A */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80998DA8  38 03 9F 30 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80998DAC  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80998DB0  7F 43 D3 78 */	mr r3, r26
/* 80998DB4  4B 7A C9 20 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80998DB8  38 7A 00 30 */	addi r3, r26, 0x30
/* 80998DBC  3C 80 80 9A */	lis r4, __ct__4cXyzFv@ha
/* 80998DC0  38 84 90 78 */	addi r4, r4, __ct__4cXyzFv@l
/* 80998DC4  3C A0 80 9A */	lis r5, __dt__4cXyzFv@ha
/* 80998DC8  38 A5 8A F0 */	addi r5, r5, __dt__4cXyzFv@l
/* 80998DCC  38 C0 00 0C */	li r6, 0xc
/* 80998DD0  38 E0 00 03 */	li r7, 3
/* 80998DD4  4B 9C 8F 8C */	b __construct_array
/* 80998DD8  38 7A 00 54 */	addi r3, r26, 0x54
/* 80998DDC  3C 80 80 9A */	lis r4, __ct__4cXyzFv@ha
/* 80998DE0  38 84 90 78 */	addi r4, r4, __ct__4cXyzFv@l
/* 80998DE4  3C A0 80 9A */	lis r5, __dt__4cXyzFv@ha
/* 80998DE8  38 A5 8A F0 */	addi r5, r5, __dt__4cXyzFv@l
/* 80998DEC  38 C0 00 0C */	li r6, 0xc
/* 80998DF0  38 E0 00 03 */	li r7, 3
/* 80998DF4  4B 9C 8F 6C */	b __construct_array
/* 80998DF8  38 7A 00 78 */	addi r3, r26, 0x78
/* 80998DFC  3C 80 80 9A */	lis r4, __ct__4cXyzFv@ha
/* 80998E00  38 84 90 78 */	addi r4, r4, __ct__4cXyzFv@l
/* 80998E04  3C A0 80 9A */	lis r5, __dt__4cXyzFv@ha
/* 80998E08  38 A5 8A F0 */	addi r5, r5, __dt__4cXyzFv@l
/* 80998E0C  38 C0 00 0C */	li r6, 0xc
/* 80998E10  38 E0 00 03 */	li r7, 3
/* 80998E14  4B 9C 8F 4C */	b __construct_array
/* 80998E18  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80998E1C  3C 80 80 9A */	lis r4, __ct__4cXyzFv@ha
/* 80998E20  38 84 90 78 */	addi r4, r4, __ct__4cXyzFv@l
/* 80998E24  3C A0 80 9A */	lis r5, __dt__4cXyzFv@ha
/* 80998E28  38 A5 8A F0 */	addi r5, r5, __dt__4cXyzFv@l
/* 80998E2C  38 C0 00 0C */	li r6, 0xc
/* 80998E30  38 E0 00 03 */	li r7, 3
/* 80998E34  4B 9C 8F 2C */	b __construct_array
/* 80998E38  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80998E3C  3C 80 80 9A */	lis r4, __ct__4cXyzFv@ha
/* 80998E40  38 84 90 78 */	addi r4, r4, __ct__4cXyzFv@l
/* 80998E44  3C A0 80 9A */	lis r5, __dt__4cXyzFv@ha
/* 80998E48  38 A5 8A F0 */	addi r5, r5, __dt__4cXyzFv@l
/* 80998E4C  38 C0 00 0C */	li r6, 0xc
/* 80998E50  38 E0 00 03 */	li r7, 3
/* 80998E54  4B 9C 8F 0C */	b __construct_array
/* 80998E58  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80998E5C  3C 80 80 9A */	lis r4, __ct__4cXyzFv@ha
/* 80998E60  38 84 90 78 */	addi r4, r4, __ct__4cXyzFv@l
/* 80998E64  3C A0 80 9A */	lis r5, __dt__4cXyzFv@ha
/* 80998E68  38 A5 8A F0 */	addi r5, r5, __dt__4cXyzFv@l
/* 80998E6C  38 C0 00 0C */	li r6, 0xc
/* 80998E70  38 E0 00 03 */	li r7, 3
/* 80998E74  4B 9C 8E EC */	b __construct_array
/* 80998E78  7F 43 D3 78 */	mr r3, r26
/* 80998E7C  4B 7A DE 1C */	b initialize__15daNpcT_JntAnm_cFv
/* 80998E80  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80998E84  3C 80 80 9A */	lis r4, __ct__5csXyzFv@ha
/* 80998E88  38 84 8F 78 */	addi r4, r4, __ct__5csXyzFv@l
/* 80998E8C  3C A0 80 9A */	lis r5, __dt__5csXyzFv@ha
/* 80998E90  38 A5 97 70 */	addi r5, r5, __dt__5csXyzFv@l
/* 80998E94  38 C0 00 06 */	li r6, 6
/* 80998E98  38 E0 00 02 */	li r7, 2
/* 80998E9C  4B 9C 8E C4 */	b __construct_array
/* 80998EA0  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80998EA4  38 80 00 00 */	li r4, 0
/* 80998EA8  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80998EAC  7C A3 00 50 */	subf r5, r3, r0
/* 80998EB0  4B 66 A5 A8 */	b memset
/* 80998EB4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80998EB8  4B 7A C9 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80998EBC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80998EC0  4B 7A C9 D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80998EC4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80998EC8  4B 7A C8 0C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80998ECC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80998ED0  4B 7A C8 04 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80998ED4  7F 43 D3 78 */	mr r3, r26
/* 80998ED8  4B 7A DD C0 */	b initialize__15daNpcT_JntAnm_cFv
/* 80998EDC  38 A0 00 00 */	li r5, 0
/* 80998EE0  38 60 00 00 */	li r3, 0
/* 80998EE4  7C A4 2B 78 */	mr r4, r5
/* 80998EE8  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80998EEC  38 00 00 02 */	li r0, 2
/* 80998EF0  7C 09 03 A6 */	mtctr r0
lbl_80998EF4:
/* 80998EF4  7C DF 22 14 */	add r6, r31, r4
/* 80998EF8  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80998EFC  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80998F00  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80998F04  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80998F08  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80998F0C  38 63 00 04 */	addi r3, r3, 4
/* 80998F10  38 84 00 06 */	addi r4, r4, 6
/* 80998F14  42 00 FF E0 */	bdnz lbl_80998EF4
/* 80998F18  38 00 00 00 */	li r0, 0
/* 80998F1C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80998F20  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80998F24  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80998F28  38 00 FF FF */	li r0, -1
/* 80998F2C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80998F30  38 00 00 01 */	li r0, 1
/* 80998F34  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80998F38  C0 3E 00 C0 */	lfs f1, 0xc0(r30)
/* 80998F3C  4B 8C EA 18 */	b cM_rndF__Ff
/* 80998F40  FC 00 08 1E */	fctiwz f0, f1
/* 80998F44  D8 01 00 08 */	stfd f0, 8(r1)
/* 80998F48  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80998F4C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80998F50  C0 1E 00 C4 */	lfs f0, 0xc4(r30)
/* 80998F54  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80998F58  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80998F5C  7F E3 FB 78 */	mr r3, r31
/* 80998F60  39 61 00 40 */	addi r11, r1, 0x40
/* 80998F64  4B 9C 92 A8 */	b _restgpr_22
/* 80998F68  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80998F6C  7C 08 03 A6 */	mtlr r0
/* 80998F70  38 21 00 40 */	addi r1, r1, 0x40
/* 80998F74  4E 80 00 20 */	blr 
