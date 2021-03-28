lbl_8053D8B0:
/* 8053D8B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8053D8B4  7C 08 02 A6 */	mflr r0
/* 8053D8B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 8053D8BC  39 61 00 40 */	addi r11, r1, 0x40
/* 8053D8C0  4B E2 49 00 */	b _savegpr_22
/* 8053D8C4  7C 7F 1B 78 */	mr r31, r3
/* 8053D8C8  7C 96 23 78 */	mr r22, r4
/* 8053D8CC  7C B7 2B 78 */	mr r23, r5
/* 8053D8D0  7C DA 33 78 */	mr r26, r6
/* 8053D8D4  7C FB 3B 78 */	mr r27, r7
/* 8053D8D8  7D 1C 43 78 */	mr r28, r8
/* 8053D8DC  7D 3D 4B 78 */	mr r29, r9
/* 8053D8E0  7D 58 53 78 */	mr r24, r10
/* 8053D8E4  83 21 00 48 */	lwz r25, 0x48(r1)
/* 8053D8E8  3C 80 80 54 */	lis r4, m__18daNpc_Besu_Param_c@ha
/* 8053D8EC  3B C4 E7 54 */	addi r30, r4, m__18daNpc_Besu_Param_c@l
/* 8053D8F0  4B AD B2 74 */	b __ct__10fopAc_ac_cFv
/* 8053D8F4  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 8053D8F8  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 8053D8FC  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 8053D900  92 DF 05 68 */	stw r22, 0x568(r31)
/* 8053D904  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 8053D908  93 1F 05 70 */	stw r24, 0x570(r31)
/* 8053D90C  93 3F 05 74 */	stw r25, 0x574(r31)
/* 8053D910  38 7F 05 80 */	addi r3, r31, 0x580
/* 8053D914  4B D8 2A B4 */	b __ct__10Z2CreatureFv
/* 8053D918  3A DF 06 10 */	addi r22, r31, 0x610
/* 8053D91C  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8053D920  38 03 FD 08 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8053D924  90 1F 06 10 */	stw r0, 0x610(r31)
/* 8053D928  7E C3 B3 78 */	mr r3, r22
/* 8053D92C  38 80 00 00 */	li r4, 0
/* 8053D930  4B DE AA CC */	b init__12J3DFrameCtrlFs
/* 8053D934  38 00 00 00 */	li r0, 0
/* 8053D938  90 16 00 18 */	stw r0, 0x18(r22)
/* 8053D93C  3A DF 06 2C */	addi r22, r31, 0x62c
/* 8053D940  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8053D944  38 03 FD 08 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8053D948  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 8053D94C  7E C3 B3 78 */	mr r3, r22
/* 8053D950  38 80 00 00 */	li r4, 0
/* 8053D954  4B DE AA A8 */	b init__12J3DFrameCtrlFs
/* 8053D958  38 00 00 00 */	li r0, 0
/* 8053D95C  90 16 00 14 */	stw r0, 0x14(r22)
/* 8053D960  3A DF 06 44 */	addi r22, r31, 0x644
/* 8053D964  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8053D968  38 03 FD 08 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8053D96C  90 1F 06 44 */	stw r0, 0x644(r31)
/* 8053D970  7E C3 B3 78 */	mr r3, r22
/* 8053D974  38 80 00 00 */	li r4, 0
/* 8053D978  4B DE AA 84 */	b init__12J3DFrameCtrlFs
/* 8053D97C  38 00 00 00 */	li r0, 0
/* 8053D980  90 16 00 14 */	stw r0, 0x14(r22)
/* 8053D984  3A DF 06 5C */	addi r22, r31, 0x65c
/* 8053D988  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8053D98C  38 03 FD 08 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8053D990  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 8053D994  7E C3 B3 78 */	mr r3, r22
/* 8053D998  38 80 00 00 */	li r4, 0
/* 8053D99C  4B DE AA 60 */	b init__12J3DFrameCtrlFs
/* 8053D9A0  38 00 00 00 */	li r0, 0
/* 8053D9A4  90 16 00 14 */	stw r0, 0x14(r22)
/* 8053D9A8  3A DF 06 74 */	addi r22, r31, 0x674
/* 8053D9AC  3C 60 80 54 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8053D9B0  38 03 FD 08 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8053D9B4  90 1F 06 74 */	stw r0, 0x674(r31)
/* 8053D9B8  7E C3 B3 78 */	mr r3, r22
/* 8053D9BC  38 80 00 00 */	li r4, 0
/* 8053D9C0  4B DE AA 3C */	b init__12J3DFrameCtrlFs
/* 8053D9C4  38 00 00 00 */	li r0, 0
/* 8053D9C8  90 16 00 14 */	stw r0, 0x14(r22)
/* 8053D9CC  3A DF 06 8C */	addi r22, r31, 0x68c
/* 8053D9D0  7E C3 B3 78 */	mr r3, r22
/* 8053D9D4  4B B3 86 CC */	b __ct__9dBgS_AcchFv
/* 8053D9D8  3C 60 80 54 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8053D9DC  38 63 FD 14 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8053D9E0  90 76 00 10 */	stw r3, 0x10(r22)
/* 8053D9E4  38 03 00 0C */	addi r0, r3, 0xc
/* 8053D9E8  90 16 00 14 */	stw r0, 0x14(r22)
/* 8053D9EC  38 03 00 18 */	addi r0, r3, 0x18
/* 8053D9F0  90 16 00 24 */	stw r0, 0x24(r22)
/* 8053D9F4  38 76 00 14 */	addi r3, r22, 0x14
/* 8053D9F8  4B B3 B4 70 */	b SetObj__16dBgS_PolyPassChkFv
/* 8053D9FC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8053DA00  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8053DA04  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 8053DA08  38 7F 08 80 */	addi r3, r31, 0x880
/* 8053DA0C  4B B4 5D 54 */	b __ct__10dCcD_GSttsFv
/* 8053DA10  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8053DA14  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8053DA18  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 8053DA1C  3B 23 00 20 */	addi r25, r3, 0x20
/* 8053DA20  93 3F 08 80 */	stw r25, 0x880(r31)
/* 8053DA24  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 8053DA28  4B B3 84 84 */	b __ct__12dBgS_AcchCirFv
/* 8053DA2C  38 7F 09 30 */	addi r3, r31, 0x930
/* 8053DA30  4B D2 A1 EC */	b __ct__11cBgS_GndChkFv
/* 8053DA34  38 7F 09 74 */	addi r3, r31, 0x974
/* 8053DA38  4B D0 C4 C8 */	b __ct__10dMsgFlow_cFv
/* 8053DA3C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8053DA40  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8053DA44  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 8053DA48  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 8053DA4C  4B B4 5D 14 */	b __ct__10dCcD_GSttsFv
/* 8053DA50  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8053DA54  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 8053DA58  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 8053DA5C  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 8053DA60  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 8053DA64  4B B3 9B 18 */	b __ct__11dBgS_GndChkFv
/* 8053DA68  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 8053DA6C  4B B3 A1 FC */	b __ct__11dBgS_LinChkFv
/* 8053DA70  3C 60 80 54 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 8053DA74  38 03 FD 5C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 8053DA78  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 8053DA7C  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 8053DA80  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 8053DA84  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8053DA88  4B C0 7E 10 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053DA8C  3C 60 80 54 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 8053DA90  38 03 FD 5C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 8053DA94  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 8053DA98  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 8053DA9C  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 8053DAA0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8053DAA4  4B C0 7D F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053DAA8  3C 60 80 54 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8053DAAC  38 03 FD 68 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8053DAB0  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 8053DAB4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8053DAB8  4B C0 7C 1C */	b initialize__18daNpcT_ActorMngr_cFv
/* 8053DABC  3C 60 80 54 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8053DAC0  38 03 FD 68 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8053DAC4  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 8053DAC8  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 8053DACC  4B C0 7C 08 */	b initialize__18daNpcT_ActorMngr_cFv
/* 8053DAD0  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 8053DAD4  3C 60 80 54 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 8053DAD8  38 03 FD 74 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 8053DADC  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 8053DAE0  3C 60 80 54 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8053DAE4  38 03 FD 68 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8053DAE8  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 8053DAEC  7F 43 D3 78 */	mr r3, r26
/* 8053DAF0  4B C0 7B E4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 8053DAF4  38 7A 00 30 */	addi r3, r26, 0x30
/* 8053DAF8  3C 80 80 54 */	lis r4, __ct__4cXyzFv@ha
/* 8053DAFC  38 84 DD B4 */	addi r4, r4, __ct__4cXyzFv@l
/* 8053DB00  3C A0 80 54 */	lis r5, __dt__4cXyzFv@ha
/* 8053DB04  38 A5 D7 24 */	addi r5, r5, __dt__4cXyzFv@l
/* 8053DB08  38 C0 00 0C */	li r6, 0xc
/* 8053DB0C  38 E0 00 03 */	li r7, 3
/* 8053DB10  4B E2 42 50 */	b __construct_array
/* 8053DB14  38 7A 00 54 */	addi r3, r26, 0x54
/* 8053DB18  3C 80 80 54 */	lis r4, __ct__4cXyzFv@ha
/* 8053DB1C  38 84 DD B4 */	addi r4, r4, __ct__4cXyzFv@l
/* 8053DB20  3C A0 80 54 */	lis r5, __dt__4cXyzFv@ha
/* 8053DB24  38 A5 D7 24 */	addi r5, r5, __dt__4cXyzFv@l
/* 8053DB28  38 C0 00 0C */	li r6, 0xc
/* 8053DB2C  38 E0 00 03 */	li r7, 3
/* 8053DB30  4B E2 42 30 */	b __construct_array
/* 8053DB34  38 7A 00 78 */	addi r3, r26, 0x78
/* 8053DB38  3C 80 80 54 */	lis r4, __ct__4cXyzFv@ha
/* 8053DB3C  38 84 DD B4 */	addi r4, r4, __ct__4cXyzFv@l
/* 8053DB40  3C A0 80 54 */	lis r5, __dt__4cXyzFv@ha
/* 8053DB44  38 A5 D7 24 */	addi r5, r5, __dt__4cXyzFv@l
/* 8053DB48  38 C0 00 0C */	li r6, 0xc
/* 8053DB4C  38 E0 00 03 */	li r7, 3
/* 8053DB50  4B E2 42 10 */	b __construct_array
/* 8053DB54  38 7A 00 9C */	addi r3, r26, 0x9c
/* 8053DB58  3C 80 80 54 */	lis r4, __ct__4cXyzFv@ha
/* 8053DB5C  38 84 DD B4 */	addi r4, r4, __ct__4cXyzFv@l
/* 8053DB60  3C A0 80 54 */	lis r5, __dt__4cXyzFv@ha
/* 8053DB64  38 A5 D7 24 */	addi r5, r5, __dt__4cXyzFv@l
/* 8053DB68  38 C0 00 0C */	li r6, 0xc
/* 8053DB6C  38 E0 00 03 */	li r7, 3
/* 8053DB70  4B E2 41 F0 */	b __construct_array
/* 8053DB74  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 8053DB78  3C 80 80 54 */	lis r4, __ct__4cXyzFv@ha
/* 8053DB7C  38 84 DD B4 */	addi r4, r4, __ct__4cXyzFv@l
/* 8053DB80  3C A0 80 54 */	lis r5, __dt__4cXyzFv@ha
/* 8053DB84  38 A5 D7 24 */	addi r5, r5, __dt__4cXyzFv@l
/* 8053DB88  38 C0 00 0C */	li r6, 0xc
/* 8053DB8C  38 E0 00 03 */	li r7, 3
/* 8053DB90  4B E2 41 D0 */	b __construct_array
/* 8053DB94  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 8053DB98  3C 80 80 54 */	lis r4, __ct__4cXyzFv@ha
/* 8053DB9C  38 84 DD B4 */	addi r4, r4, __ct__4cXyzFv@l
/* 8053DBA0  3C A0 80 54 */	lis r5, __dt__4cXyzFv@ha
/* 8053DBA4  38 A5 D7 24 */	addi r5, r5, __dt__4cXyzFv@l
/* 8053DBA8  38 C0 00 0C */	li r6, 0xc
/* 8053DBAC  38 E0 00 03 */	li r7, 3
/* 8053DBB0  4B E2 41 B0 */	b __construct_array
/* 8053DBB4  7F 43 D3 78 */	mr r3, r26
/* 8053DBB8  4B C0 90 E0 */	b initialize__15daNpcT_JntAnm_cFv
/* 8053DBBC  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 8053DBC0  3C 80 80 54 */	lis r4, __ct__5csXyzFv@ha
/* 8053DBC4  38 84 DC B4 */	addi r4, r4, __ct__5csXyzFv@l
/* 8053DBC8  3C A0 80 54 */	lis r5, __dt__5csXyzFv@ha
/* 8053DBCC  38 A5 D7 60 */	addi r5, r5, __dt__5csXyzFv@l
/* 8053DBD0  38 C0 00 06 */	li r6, 6
/* 8053DBD4  38 E0 00 02 */	li r7, 2
/* 8053DBD8  4B E2 41 88 */	b __construct_array
/* 8053DBDC  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 8053DBE0  38 80 00 00 */	li r4, 0
/* 8053DBE4  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 8053DBE8  7C A3 00 50 */	subf r5, r3, r0
/* 8053DBEC  4B AC 58 6C */	b memset
/* 8053DBF0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8053DBF4  4B C0 7C A4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053DBF8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8053DBFC  4B C0 7C 9C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8053DC00  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8053DC04  4B C0 7A D0 */	b initialize__18daNpcT_ActorMngr_cFv
/* 8053DC08  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 8053DC0C  4B C0 7A C8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 8053DC10  7F 43 D3 78 */	mr r3, r26
/* 8053DC14  4B C0 90 84 */	b initialize__15daNpcT_JntAnm_cFv
/* 8053DC18  38 A0 00 00 */	li r5, 0
/* 8053DC1C  38 60 00 00 */	li r3, 0
/* 8053DC20  7C A4 2B 78 */	mr r4, r5
/* 8053DC24  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 8053DC28  38 00 00 02 */	li r0, 2
/* 8053DC2C  7C 09 03 A6 */	mtctr r0
lbl_8053DC30:
/* 8053DC30  7C DF 22 14 */	add r6, r31, r4
/* 8053DC34  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 8053DC38  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 8053DC3C  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 8053DC40  38 03 0D 14 */	addi r0, r3, 0xd14
/* 8053DC44  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8053DC48  38 63 00 04 */	addi r3, r3, 4
/* 8053DC4C  38 84 00 06 */	addi r4, r4, 6
/* 8053DC50  42 00 FF E0 */	bdnz lbl_8053DC30
/* 8053DC54  38 00 00 00 */	li r0, 0
/* 8053DC58  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 8053DC5C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 8053DC60  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 8053DC64  38 00 FF FF */	li r0, -1
/* 8053DC68  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 8053DC6C  38 00 00 01 */	li r0, 1
/* 8053DC70  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 8053DC74  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 8053DC78  4B D2 9C DC */	b cM_rndF__Ff
/* 8053DC7C  FC 00 08 1E */	fctiwz f0, f1
/* 8053DC80  D8 01 00 08 */	stfd f0, 8(r1)
/* 8053DC84  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8053DC88  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 8053DC8C  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8053DC90  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 8053DC94  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 8053DC98  7F E3 FB 78 */	mr r3, r31
/* 8053DC9C  39 61 00 40 */	addi r11, r1, 0x40
/* 8053DCA0  4B E2 45 6C */	b _restgpr_22
/* 8053DCA4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8053DCA8  7C 08 03 A6 */	mtlr r0
/* 8053DCAC  38 21 00 40 */	addi r1, r1, 0x40
/* 8053DCB0  4E 80 00 20 */	blr 
