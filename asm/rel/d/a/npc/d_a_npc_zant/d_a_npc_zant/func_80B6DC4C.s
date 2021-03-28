lbl_80B6DC4C:
/* 80B6DC4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B6DC50  7C 08 02 A6 */	mflr r0
/* 80B6DC54  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B6DC58  39 61 00 40 */	addi r11, r1, 0x40
/* 80B6DC5C  4B 7F 45 64 */	b _savegpr_22
/* 80B6DC60  7C 7F 1B 78 */	mr r31, r3
/* 80B6DC64  7C 96 23 78 */	mr r22, r4
/* 80B6DC68  7C B7 2B 78 */	mr r23, r5
/* 80B6DC6C  7C DA 33 78 */	mr r26, r6
/* 80B6DC70  7C FB 3B 78 */	mr r27, r7
/* 80B6DC74  7D 1C 43 78 */	mr r28, r8
/* 80B6DC78  7D 3D 4B 78 */	mr r29, r9
/* 80B6DC7C  7D 58 53 78 */	mr r24, r10
/* 80B6DC80  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80B6DC84  3C 80 80 B7 */	lis r4, m__18daNpc_Zant_Param_c@ha
/* 80B6DC88  3B C4 E9 A8 */	addi r30, r4, m__18daNpc_Zant_Param_c@l
/* 80B6DC8C  4B 4A AE D8 */	b __ct__10fopAc_ac_cFv
/* 80B6DC90  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80B6DC94  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80B6DC98  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B6DC9C  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80B6DCA0  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80B6DCA4  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80B6DCA8  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80B6DCAC  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B6DCB0  4B 75 27 18 */	b __ct__10Z2CreatureFv
/* 80B6DCB4  3A DF 06 10 */	addi r22, r31, 0x610
/* 80B6DCB8  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B6DCBC  38 03 EB BC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B6DCC0  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80B6DCC4  7E C3 B3 78 */	mr r3, r22
/* 80B6DCC8  38 80 00 00 */	li r4, 0
/* 80B6DCCC  4B 7B A7 30 */	b init__12J3DFrameCtrlFs
/* 80B6DCD0  38 00 00 00 */	li r0, 0
/* 80B6DCD4  90 16 00 18 */	stw r0, 0x18(r22)
/* 80B6DCD8  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80B6DCDC  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B6DCE0  38 03 EB BC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B6DCE4  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B6DCE8  7E C3 B3 78 */	mr r3, r22
/* 80B6DCEC  38 80 00 00 */	li r4, 0
/* 80B6DCF0  4B 7B A7 0C */	b init__12J3DFrameCtrlFs
/* 80B6DCF4  38 00 00 00 */	li r0, 0
/* 80B6DCF8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B6DCFC  3A DF 06 44 */	addi r22, r31, 0x644
/* 80B6DD00  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B6DD04  38 03 EB BC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B6DD08  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80B6DD0C  7E C3 B3 78 */	mr r3, r22
/* 80B6DD10  38 80 00 00 */	li r4, 0
/* 80B6DD14  4B 7B A6 E8 */	b init__12J3DFrameCtrlFs
/* 80B6DD18  38 00 00 00 */	li r0, 0
/* 80B6DD1C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B6DD20  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80B6DD24  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B6DD28  38 03 EB BC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B6DD2C  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80B6DD30  7E C3 B3 78 */	mr r3, r22
/* 80B6DD34  38 80 00 00 */	li r4, 0
/* 80B6DD38  4B 7B A6 C4 */	b init__12J3DFrameCtrlFs
/* 80B6DD3C  38 00 00 00 */	li r0, 0
/* 80B6DD40  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B6DD44  3A DF 06 74 */	addi r22, r31, 0x674
/* 80B6DD48  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B6DD4C  38 03 EB BC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B6DD50  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80B6DD54  7E C3 B3 78 */	mr r3, r22
/* 80B6DD58  38 80 00 00 */	li r4, 0
/* 80B6DD5C  4B 7B A6 A0 */	b init__12J3DFrameCtrlFs
/* 80B6DD60  38 00 00 00 */	li r0, 0
/* 80B6DD64  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B6DD68  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80B6DD6C  7E C3 B3 78 */	mr r3, r22
/* 80B6DD70  4B 50 83 30 */	b __ct__9dBgS_AcchFv
/* 80B6DD74  3C 60 80 B7 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80B6DD78  38 63 EB C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80B6DD7C  90 76 00 10 */	stw r3, 0x10(r22)
/* 80B6DD80  38 03 00 0C */	addi r0, r3, 0xc
/* 80B6DD84  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B6DD88  38 03 00 18 */	addi r0, r3, 0x18
/* 80B6DD8C  90 16 00 24 */	stw r0, 0x24(r22)
/* 80B6DD90  38 76 00 14 */	addi r3, r22, 0x14
/* 80B6DD94  4B 50 B0 D4 */	b SetObj__16dBgS_PolyPassChkFv
/* 80B6DD98  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B6DD9C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B6DDA0  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80B6DDA4  38 7F 08 80 */	addi r3, r31, 0x880
/* 80B6DDA8  4B 51 59 B8 */	b __ct__10dCcD_GSttsFv
/* 80B6DDAC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B6DDB0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B6DDB4  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80B6DDB8  3B 23 00 20 */	addi r25, r3, 0x20
/* 80B6DDBC  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80B6DDC0  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B6DDC4  4B 50 80 E8 */	b __ct__12dBgS_AcchCirFv
/* 80B6DDC8  38 7F 09 30 */	addi r3, r31, 0x930
/* 80B6DDCC  4B 6F 9E 50 */	b __ct__11cBgS_GndChkFv
/* 80B6DDD0  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B6DDD4  4B 6D C1 2C */	b __ct__10dMsgFlow_cFv
/* 80B6DDD8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B6DDDC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B6DDE0  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B6DDE4  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80B6DDE8  4B 51 59 78 */	b __ct__10dCcD_GSttsFv
/* 80B6DDEC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B6DDF0  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80B6DDF4  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B6DDF8  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80B6DDFC  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80B6DE00  4B 50 97 7C */	b __ct__11dBgS_GndChkFv
/* 80B6DE04  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80B6DE08  4B 50 9E 60 */	b __ct__11dBgS_LinChkFv
/* 80B6DE0C  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B6DE10  38 03 EC 10 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B6DE14  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80B6DE18  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80B6DE1C  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80B6DE20  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B6DE24  4B 5D 7A 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6DE28  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B6DE2C  38 03 EC 10 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B6DE30  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80B6DE34  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80B6DE38  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80B6DE3C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B6DE40  4B 5D 7A 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6DE44  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B6DE48  38 03 EC 1C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B6DE4C  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80B6DE50  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B6DE54  4B 5D 78 80 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B6DE58  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B6DE5C  38 03 EC 1C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B6DE60  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80B6DE64  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B6DE68  4B 5D 78 6C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B6DE6C  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80B6DE70  3C 60 80 B7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B6DE74  38 03 EC 28 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B6DE78  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80B6DE7C  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B6DE80  38 03 EC 1C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B6DE84  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80B6DE88  7F 43 D3 78 */	mr r3, r26
/* 80B6DE8C  4B 5D 78 48 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B6DE90  38 7A 00 30 */	addi r3, r26, 0x30
/* 80B6DE94  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha
/* 80B6DE98  38 84 E1 50 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B6DE9C  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha
/* 80B6DEA0  38 A5 DB D4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B6DEA4  38 C0 00 0C */	li r6, 0xc
/* 80B6DEA8  38 E0 00 03 */	li r7, 3
/* 80B6DEAC  4B 7F 3E B4 */	b __construct_array
/* 80B6DEB0  38 7A 00 54 */	addi r3, r26, 0x54
/* 80B6DEB4  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha
/* 80B6DEB8  38 84 E1 50 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B6DEBC  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha
/* 80B6DEC0  38 A5 DB D4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B6DEC4  38 C0 00 0C */	li r6, 0xc
/* 80B6DEC8  38 E0 00 03 */	li r7, 3
/* 80B6DECC  4B 7F 3E 94 */	b __construct_array
/* 80B6DED0  38 7A 00 78 */	addi r3, r26, 0x78
/* 80B6DED4  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha
/* 80B6DED8  38 84 E1 50 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B6DEDC  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha
/* 80B6DEE0  38 A5 DB D4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B6DEE4  38 C0 00 0C */	li r6, 0xc
/* 80B6DEE8  38 E0 00 03 */	li r7, 3
/* 80B6DEEC  4B 7F 3E 74 */	b __construct_array
/* 80B6DEF0  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80B6DEF4  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha
/* 80B6DEF8  38 84 E1 50 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B6DEFC  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha
/* 80B6DF00  38 A5 DB D4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B6DF04  38 C0 00 0C */	li r6, 0xc
/* 80B6DF08  38 E0 00 03 */	li r7, 3
/* 80B6DF0C  4B 7F 3E 54 */	b __construct_array
/* 80B6DF10  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80B6DF14  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha
/* 80B6DF18  38 84 E1 50 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B6DF1C  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha
/* 80B6DF20  38 A5 DB D4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B6DF24  38 C0 00 0C */	li r6, 0xc
/* 80B6DF28  38 E0 00 03 */	li r7, 3
/* 80B6DF2C  4B 7F 3E 34 */	b __construct_array
/* 80B6DF30  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80B6DF34  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha
/* 80B6DF38  38 84 E1 50 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B6DF3C  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha
/* 80B6DF40  38 A5 DB D4 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B6DF44  38 C0 00 0C */	li r6, 0xc
/* 80B6DF48  38 E0 00 03 */	li r7, 3
/* 80B6DF4C  4B 7F 3E 14 */	b __construct_array
/* 80B6DF50  7F 43 D3 78 */	mr r3, r26
/* 80B6DF54  4B 5D 8D 44 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B6DF58  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B6DF5C  3C 80 80 B7 */	lis r4, __ct__5csXyzFv@ha
/* 80B6DF60  38 84 E0 50 */	addi r4, r4, __ct__5csXyzFv@l
/* 80B6DF64  3C A0 80 B7 */	lis r5, __dt__5csXyzFv@ha
/* 80B6DF68  38 A5 DC 10 */	addi r5, r5, __dt__5csXyzFv@l
/* 80B6DF6C  38 C0 00 06 */	li r6, 6
/* 80B6DF70  38 E0 00 02 */	li r7, 2
/* 80B6DF74  4B 7F 3D EC */	b __construct_array
/* 80B6DF78  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B6DF7C  38 80 00 00 */	li r4, 0
/* 80B6DF80  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B6DF84  7C A3 00 50 */	subf r5, r3, r0
/* 80B6DF88  4B 49 54 D0 */	b memset
/* 80B6DF8C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B6DF90  4B 5D 79 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6DF94  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B6DF98  4B 5D 79 00 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6DF9C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B6DFA0  4B 5D 77 34 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B6DFA4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B6DFA8  4B 5D 77 2C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B6DFAC  7F 43 D3 78 */	mr r3, r26
/* 80B6DFB0  4B 5D 8C E8 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B6DFB4  38 A0 00 00 */	li r5, 0
/* 80B6DFB8  38 60 00 00 */	li r3, 0
/* 80B6DFBC  7C A4 2B 78 */	mr r4, r5
/* 80B6DFC0  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80B6DFC4  38 00 00 02 */	li r0, 2
/* 80B6DFC8  7C 09 03 A6 */	mtctr r0
lbl_80B6DFCC:
/* 80B6DFCC  7C DF 22 14 */	add r6, r31, r4
/* 80B6DFD0  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B6DFD4  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B6DFD8  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B6DFDC  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B6DFE0  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B6DFE4  38 63 00 04 */	addi r3, r3, 4
/* 80B6DFE8  38 84 00 06 */	addi r4, r4, 6
/* 80B6DFEC  42 00 FF E0 */	bdnz lbl_80B6DFCC
/* 80B6DFF0  38 00 00 00 */	li r0, 0
/* 80B6DFF4  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B6DFF8  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B6DFFC  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B6E000  38 00 FF FF */	li r0, -1
/* 80B6E004  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B6E008  38 00 00 01 */	li r0, 1
/* 80B6E00C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B6E010  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80B6E014  4B 6F 99 40 */	b cM_rndF__Ff
/* 80B6E018  FC 00 08 1E */	fctiwz f0, f1
/* 80B6E01C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B6E020  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B6E024  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B6E028  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80B6E02C  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B6E030  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B6E034  7F E3 FB 78 */	mr r3, r31
/* 80B6E038  39 61 00 40 */	addi r11, r1, 0x40
/* 80B6E03C  4B 7F 41 D0 */	b _restgpr_22
/* 80B6E040  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B6E044  7C 08 03 A6 */	mtlr r0
/* 80B6E048  38 21 00 40 */	addi r1, r1, 0x40
/* 80B6E04C  4E 80 00 20 */	blr 
