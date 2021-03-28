lbl_80966F14:
/* 80966F14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80966F18  7C 08 02 A6 */	mflr r0
/* 80966F1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80966F20  39 61 00 40 */	addi r11, r1, 0x40
/* 80966F24  4B 9F B2 9C */	b _savegpr_22
/* 80966F28  7C 7F 1B 78 */	mr r31, r3
/* 80966F2C  7C 96 23 78 */	mr r22, r4
/* 80966F30  7C B7 2B 78 */	mr r23, r5
/* 80966F34  7C DA 33 78 */	mr r26, r6
/* 80966F38  7C FB 3B 78 */	mr r27, r7
/* 80966F3C  7D 1C 43 78 */	mr r28, r8
/* 80966F40  7D 3D 4B 78 */	mr r29, r9
/* 80966F44  7D 58 53 78 */	mr r24, r10
/* 80966F48  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80966F4C  3C 80 80 96 */	lis r4, m__18daNpc_Bans_Param_c@ha
/* 80966F50  3B C4 7E 20 */	addi r30, r4, m__18daNpc_Bans_Param_c@l
/* 80966F54  4B 6B 1C 10 */	b __ct__10fopAc_ac_cFv
/* 80966F58  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80966F5C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80966F60  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80966F64  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80966F68  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80966F6C  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80966F70  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80966F74  38 7F 05 80 */	addi r3, r31, 0x580
/* 80966F78  4B 95 94 50 */	b __ct__10Z2CreatureFv
/* 80966F7C  3A DF 06 10 */	addi r22, r31, 0x610
/* 80966F80  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80966F84  38 03 86 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80966F88  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80966F8C  7E C3 B3 78 */	mr r3, r22
/* 80966F90  38 80 00 00 */	li r4, 0
/* 80966F94  4B 9C 14 68 */	b init__12J3DFrameCtrlFs
/* 80966F98  38 00 00 00 */	li r0, 0
/* 80966F9C  90 16 00 18 */	stw r0, 0x18(r22)
/* 80966FA0  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80966FA4  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80966FA8  38 03 86 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80966FAC  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80966FB0  7E C3 B3 78 */	mr r3, r22
/* 80966FB4  38 80 00 00 */	li r4, 0
/* 80966FB8  4B 9C 14 44 */	b init__12J3DFrameCtrlFs
/* 80966FBC  38 00 00 00 */	li r0, 0
/* 80966FC0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80966FC4  3A DF 06 44 */	addi r22, r31, 0x644
/* 80966FC8  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80966FCC  38 03 86 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80966FD0  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80966FD4  7E C3 B3 78 */	mr r3, r22
/* 80966FD8  38 80 00 00 */	li r4, 0
/* 80966FDC  4B 9C 14 20 */	b init__12J3DFrameCtrlFs
/* 80966FE0  38 00 00 00 */	li r0, 0
/* 80966FE4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80966FE8  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80966FEC  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80966FF0  38 03 86 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80966FF4  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80966FF8  7E C3 B3 78 */	mr r3, r22
/* 80966FFC  38 80 00 00 */	li r4, 0
/* 80967000  4B 9C 13 FC */	b init__12J3DFrameCtrlFs
/* 80967004  38 00 00 00 */	li r0, 0
/* 80967008  90 16 00 14 */	stw r0, 0x14(r22)
/* 8096700C  3A DF 06 74 */	addi r22, r31, 0x674
/* 80967010  3C 60 80 97 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80967014  38 03 86 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80967018  90 1F 06 74 */	stw r0, 0x674(r31)
/* 8096701C  7E C3 B3 78 */	mr r3, r22
/* 80967020  38 80 00 00 */	li r4, 0
/* 80967024  4B 9C 13 D8 */	b init__12J3DFrameCtrlFs
/* 80967028  38 00 00 00 */	li r0, 0
/* 8096702C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80967030  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80967034  7E C3 B3 78 */	mr r3, r22
/* 80967038  4B 70 F0 68 */	b __ct__9dBgS_AcchFv
/* 8096703C  3C 60 80 97 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80967040  38 63 86 EC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80967044  90 76 00 10 */	stw r3, 0x10(r22)
/* 80967048  38 03 00 0C */	addi r0, r3, 0xc
/* 8096704C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80967050  38 03 00 18 */	addi r0, r3, 0x18
/* 80967054  90 16 00 24 */	stw r0, 0x24(r22)
/* 80967058  38 76 00 14 */	addi r3, r22, 0x14
/* 8096705C  4B 71 1E 0C */	b SetObj__16dBgS_PolyPassChkFv
/* 80967060  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80967064  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80967068  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 8096706C  38 7F 08 80 */	addi r3, r31, 0x880
/* 80967070  4B 71 C6 F0 */	b __ct__10dCcD_GSttsFv
/* 80967074  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80967078  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8096707C  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80967080  3B 23 00 20 */	addi r25, r3, 0x20
/* 80967084  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80967088  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 8096708C  4B 70 EE 20 */	b __ct__12dBgS_AcchCirFv
/* 80967090  38 7F 09 30 */	addi r3, r31, 0x930
/* 80967094  4B 90 0B 88 */	b __ct__11cBgS_GndChkFv
/* 80967098  38 7F 09 74 */	addi r3, r31, 0x974
/* 8096709C  4B 8E 2E 64 */	b __ct__10dMsgFlow_cFv
/* 809670A0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809670A4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809670A8  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 809670AC  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 809670B0  4B 71 C6 B0 */	b __ct__10dCcD_GSttsFv
/* 809670B4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809670B8  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 809670BC  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 809670C0  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 809670C4  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 809670C8  4B 71 04 B4 */	b __ct__11dBgS_GndChkFv
/* 809670CC  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 809670D0  4B 71 0B 98 */	b __ct__11dBgS_LinChkFv
/* 809670D4  3C 60 80 97 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 809670D8  38 03 87 34 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 809670DC  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 809670E0  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 809670E4  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 809670E8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809670EC  4B 7D E7 AC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809670F0  3C 60 80 97 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 809670F4  38 03 87 34 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 809670F8  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 809670FC  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80967100  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80967104  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80967108  4B 7D E7 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096710C  3C 60 80 97 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80967110  38 03 87 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80967114  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80967118  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8096711C  4B 7D E5 B8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80967120  3C 60 80 97 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80967124  38 03 87 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80967128  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 8096712C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80967130  4B 7D E5 A4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80967134  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80967138  3C 60 80 97 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 8096713C  38 03 87 40 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80967140  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80967144  3C 60 80 97 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80967148  38 03 87 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8096714C  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80967150  7F 43 D3 78 */	mr r3, r26
/* 80967154  4B 7D E5 80 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80967158  38 7A 00 30 */	addi r3, r26, 0x30
/* 8096715C  3C 80 80 96 */	lis r4, __ct__4cXyzFv@ha
/* 80967160  38 84 74 18 */	addi r4, r4, __ct__4cXyzFv@l
/* 80967164  3C A0 80 96 */	lis r5, __dt__4cXyzFv@ha
/* 80967168  38 A5 6E 9C */	addi r5, r5, __dt__4cXyzFv@l
/* 8096716C  38 C0 00 0C */	li r6, 0xc
/* 80967170  38 E0 00 03 */	li r7, 3
/* 80967174  4B 9F AB EC */	b __construct_array
/* 80967178  38 7A 00 54 */	addi r3, r26, 0x54
/* 8096717C  3C 80 80 96 */	lis r4, __ct__4cXyzFv@ha
/* 80967180  38 84 74 18 */	addi r4, r4, __ct__4cXyzFv@l
/* 80967184  3C A0 80 96 */	lis r5, __dt__4cXyzFv@ha
/* 80967188  38 A5 6E 9C */	addi r5, r5, __dt__4cXyzFv@l
/* 8096718C  38 C0 00 0C */	li r6, 0xc
/* 80967190  38 E0 00 03 */	li r7, 3
/* 80967194  4B 9F AB CC */	b __construct_array
/* 80967198  38 7A 00 78 */	addi r3, r26, 0x78
/* 8096719C  3C 80 80 96 */	lis r4, __ct__4cXyzFv@ha
/* 809671A0  38 84 74 18 */	addi r4, r4, __ct__4cXyzFv@l
/* 809671A4  3C A0 80 96 */	lis r5, __dt__4cXyzFv@ha
/* 809671A8  38 A5 6E 9C */	addi r5, r5, __dt__4cXyzFv@l
/* 809671AC  38 C0 00 0C */	li r6, 0xc
/* 809671B0  38 E0 00 03 */	li r7, 3
/* 809671B4  4B 9F AB AC */	b __construct_array
/* 809671B8  38 7A 00 9C */	addi r3, r26, 0x9c
/* 809671BC  3C 80 80 96 */	lis r4, __ct__4cXyzFv@ha
/* 809671C0  38 84 74 18 */	addi r4, r4, __ct__4cXyzFv@l
/* 809671C4  3C A0 80 96 */	lis r5, __dt__4cXyzFv@ha
/* 809671C8  38 A5 6E 9C */	addi r5, r5, __dt__4cXyzFv@l
/* 809671CC  38 C0 00 0C */	li r6, 0xc
/* 809671D0  38 E0 00 03 */	li r7, 3
/* 809671D4  4B 9F AB 8C */	b __construct_array
/* 809671D8  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 809671DC  3C 80 80 96 */	lis r4, __ct__4cXyzFv@ha
/* 809671E0  38 84 74 18 */	addi r4, r4, __ct__4cXyzFv@l
/* 809671E4  3C A0 80 96 */	lis r5, __dt__4cXyzFv@ha
/* 809671E8  38 A5 6E 9C */	addi r5, r5, __dt__4cXyzFv@l
/* 809671EC  38 C0 00 0C */	li r6, 0xc
/* 809671F0  38 E0 00 03 */	li r7, 3
/* 809671F4  4B 9F AB 6C */	b __construct_array
/* 809671F8  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 809671FC  3C 80 80 96 */	lis r4, __ct__4cXyzFv@ha
/* 80967200  38 84 74 18 */	addi r4, r4, __ct__4cXyzFv@l
/* 80967204  3C A0 80 96 */	lis r5, __dt__4cXyzFv@ha
/* 80967208  38 A5 6E 9C */	addi r5, r5, __dt__4cXyzFv@l
/* 8096720C  38 C0 00 0C */	li r6, 0xc
/* 80967210  38 E0 00 03 */	li r7, 3
/* 80967214  4B 9F AB 4C */	b __construct_array
/* 80967218  7F 43 D3 78 */	mr r3, r26
/* 8096721C  4B 7D FA 7C */	b initialize__15daNpcT_JntAnm_cFv
/* 80967220  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80967224  3C 80 80 96 */	lis r4, __ct__5csXyzFv@ha
/* 80967228  38 84 73 18 */	addi r4, r4, __ct__5csXyzFv@l
/* 8096722C  3C A0 80 96 */	lis r5, __dt__5csXyzFv@ha
/* 80967230  38 A5 6E D8 */	addi r5, r5, __dt__5csXyzFv@l
/* 80967234  38 C0 00 06 */	li r6, 6
/* 80967238  38 E0 00 02 */	li r7, 2
/* 8096723C  4B 9F AB 24 */	b __construct_array
/* 80967240  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80967244  38 80 00 00 */	li r4, 0
/* 80967248  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 8096724C  7C A3 00 50 */	subf r5, r3, r0
/* 80967250  4B 69 C2 08 */	b memset
/* 80967254  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80967258  4B 7D E6 40 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8096725C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80967260  4B 7D E6 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80967264  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80967268  4B 7D E4 6C */	b initialize__18daNpcT_ActorMngr_cFv
/* 8096726C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80967270  4B 7D E4 64 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80967274  7F 43 D3 78 */	mr r3, r26
/* 80967278  4B 7D FA 20 */	b initialize__15daNpcT_JntAnm_cFv
/* 8096727C  38 A0 00 00 */	li r5, 0
/* 80967280  38 60 00 00 */	li r3, 0
/* 80967284  7C A4 2B 78 */	mr r4, r5
/* 80967288  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 8096728C  38 00 00 02 */	li r0, 2
/* 80967290  7C 09 03 A6 */	mtctr r0
lbl_80967294:
/* 80967294  7C DF 22 14 */	add r6, r31, r4
/* 80967298  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 8096729C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 809672A0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 809672A4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809672A8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809672AC  38 63 00 04 */	addi r3, r3, 4
/* 809672B0  38 84 00 06 */	addi r4, r4, 6
/* 809672B4  42 00 FF E0 */	bdnz lbl_80967294
/* 809672B8  38 00 00 00 */	li r0, 0
/* 809672BC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809672C0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809672C4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809672C8  38 00 FF FF */	li r0, -1
/* 809672CC  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 809672D0  38 00 00 01 */	li r0, 1
/* 809672D4  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 809672D8  C0 3E 00 D4 */	lfs f1, 0xd4(r30)
/* 809672DC  4B 90 06 78 */	b cM_rndF__Ff
/* 809672E0  FC 00 08 1E */	fctiwz f0, f1
/* 809672E4  D8 01 00 08 */	stfd f0, 8(r1)
/* 809672E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809672EC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 809672F0  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 809672F4  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 809672F8  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 809672FC  7F E3 FB 78 */	mr r3, r31
/* 80967300  39 61 00 40 */	addi r11, r1, 0x40
/* 80967304  4B 9F AF 08 */	b _restgpr_22
/* 80967308  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8096730C  7C 08 03 A6 */	mtlr r0
/* 80967310  38 21 00 40 */	addi r1, r1, 0x40
/* 80967314  4E 80 00 20 */	blr 
