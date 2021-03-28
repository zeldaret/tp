lbl_8054DF14:
/* 8054DF14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8054DF18  7C 08 02 A6 */	mflr r0
/* 8054DF1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 8054DF20  39 61 00 40 */	addi r11, r1, 0x40
/* 8054DF24  4B E1 42 9C */	b _savegpr_22
/* 8054DF28  7C 7F 1B 78 */	mr r31, r3
/* 8054DF2C  7C 96 23 78 */	mr r22, r4
/* 8054DF30  7C B7 2B 78 */	mr r23, r5
/* 8054DF34  7C DA 33 78 */	mr r26, r6
/* 8054DF38  7C FB 3B 78 */	mr r27, r7
/* 8054DF3C  7D 1C 43 78 */	mr r28, r8
/* 8054DF40  7D 3D 4B 78 */	mr r29, r9
/* 8054DF44  7D 58 53 78 */	mr r24, r10
/* 8054DF48  83 21 00 48 */	lwz r25, 0x48(r1)
/* 8054DF4C  3C 80 80 55 */	lis r4, m__21daNpc_Kakashi_Param_c@ha
/* 8054DF50  3B C4 EA C4 */	addi r30, r4, m__21daNpc_Kakashi_Param_c@l
/* 8054DF54  4B AC AC 10 */	b __ct__10fopAc_ac_cFv
/* 8054DF58  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 8054DF5C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 8054DF60  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 8054DF64  92 DF 05 68 */	stw r22, 0x568(r31)
/* 8054DF68  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 8054DF6C  93 1F 05 70 */	stw r24, 0x570(r31)
/* 8054DF70  93 3F 05 74 */	stw r25, 0x574(r31)
/* 8054DF74  38 7F 05 80 */	addi r3, r31, 0x580
/* 8054DF78  4B D7 24 50 */	b __ct__10Z2CreatureFv
/* 8054DF7C  3A DF 06 10 */	addi r22, r31, 0x610
/* 8054DF80  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8054DF84  38 03 F0 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8054DF88  90 1F 06 10 */	stw r0, 0x610(r31)
/* 8054DF8C  7E C3 B3 78 */	mr r3, r22
/* 8054DF90  38 80 00 00 */	li r4, 0
/* 8054DF94  4B DD A4 68 */	b init__12J3DFrameCtrlFs
/* 8054DF98  38 00 00 00 */	li r0, 0
/* 8054DF9C  90 16 00 18 */	stw r0, 0x18(r22)
/* 8054DFA0  3A DF 06 2C */	addi r22, r31, 0x62c
/* 8054DFA4  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8054DFA8  38 03 F0 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8054DFAC  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 8054DFB0  7E C3 B3 78 */	mr r3, r22
/* 8054DFB4  38 80 00 00 */	li r4, 0
/* 8054DFB8  4B DD A4 44 */	b init__12J3DFrameCtrlFs
/* 8054DFBC  38 00 00 00 */	li r0, 0
/* 8054DFC0  90 16 00 14 */	stw r0, 0x14(r22)
/* 8054DFC4  3A DF 06 44 */	addi r22, r31, 0x644
/* 8054DFC8  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8054DFCC  38 03 F0 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8054DFD0  90 1F 06 44 */	stw r0, 0x644(r31)
/* 8054DFD4  7E C3 B3 78 */	mr r3, r22
/* 8054DFD8  38 80 00 00 */	li r4, 0
/* 8054DFDC  4B DD A4 20 */	b init__12J3DFrameCtrlFs
/* 8054DFE0  38 00 00 00 */	li r0, 0
/* 8054DFE4  90 16 00 14 */	stw r0, 0x14(r22)
/* 8054DFE8  3A DF 06 5C */	addi r22, r31, 0x65c
/* 8054DFEC  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8054DFF0  38 03 F0 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8054DFF4  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 8054DFF8  7E C3 B3 78 */	mr r3, r22
/* 8054DFFC  38 80 00 00 */	li r4, 0
/* 8054E000  4B DD A3 FC */	b init__12J3DFrameCtrlFs
/* 8054E004  38 00 00 00 */	li r0, 0
/* 8054E008  90 16 00 14 */	stw r0, 0x14(r22)
/* 8054E00C  3A DF 06 74 */	addi r22, r31, 0x674
/* 8054E010  3C 60 80 55 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8054E014  38 03 F0 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8054E018  90 1F 06 74 */	stw r0, 0x674(r31)
/* 8054E01C  7E C3 B3 78 */	mr r3, r22
/* 8054E020  38 80 00 00 */	li r4, 0
/* 8054E024  4B DD A3 D8 */	b init__12J3DFrameCtrlFs
/* 8054E028  38 00 00 00 */	li r0, 0
/* 8054E02C  90 16 00 14 */	stw r0, 0x14(r22)
/* 8054E030  3A DF 06 8C */	addi r22, r31, 0x68c
/* 8054E034  7E C3 B3 78 */	mr r3, r22
/* 8054E038  4B B2 80 68 */	b __ct__9dBgS_AcchFv
/* 8054E03C  3C 60 80 55 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8054E040  38 63 F0 44 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8054E044  90 76 00 10 */	stw r3, 0x10(r22)
/* 8054E048  38 03 00 0C */	addi r0, r3, 0xc
/* 8054E04C  90 16 00 14 */	stw r0, 0x14(r22)
/* 8054E050  38 03 00 18 */	addi r0, r3, 0x18
/* 8054E054  90 16 00 24 */	stw r0, 0x24(r22)
/* 8054E058  38 76 00 14 */	addi r3, r22, 0x14
/* 8054E05C  4B B2 AE 0C */	b SetObj__16dBgS_PolyPassChkFv
/* 8054E060  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8054E064  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8054E068  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 8054E06C  38 7F 08 80 */	addi r3, r31, 0x880
/* 8054E070  4B B3 56 F0 */	b __ct__10dCcD_GSttsFv
/* 8054E074  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8054E078  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8054E07C  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 8054E080  3B 23 00 20 */	addi r25, r3, 0x20
/* 8054E084  93 3F 08 80 */	stw r25, 0x880(r31)
/* 8054E088  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 8054E08C  4B B2 7E 20 */	b __ct__12dBgS_AcchCirFv
/* 8054E090  38 7F 09 30 */	addi r3, r31, 0x930
/* 8054E094  4B D1 9B 88 */	b __ct__11cBgS_GndChkFv
/* 8054E098  38 7F 09 74 */	addi r3, r31, 0x974
/* 8054E09C  4B CF BE 64 */	b __ct__10dMsgFlow_cFv
/* 8054E0A0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8054E0A4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8054E0A8  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 8054E0AC  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 8054E0B0  4B B3 56 B0 */	b __ct__10dCcD_GSttsFv
/* 8054E0B4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8054E0B8  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 8054E0BC  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 8054E0C0  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 8054E0C4  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 8054E0C8  4B B2 94 B4 */	b __ct__11dBgS_GndChkFv
/* 8054E0CC  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 8054E0D0  4B B2 9B 98 */	b __ct__11dBgS_LinChkFv
/* 8054E0D4  3C 60 80 55 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 8054E0D8  38 03 F0 8C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 8054E0DC  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 8054E0E0  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 8054E0E4  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 8054E0E8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8054E0EC  4B BF 77 AC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8054E0F0  3C 60 80 55 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 8054E0F4  38 03 F0 8C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 8054E0F8  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 8054E0FC  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 8054E100  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 8054E104  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8054E108  4B BF 77 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8054E10C  3C 60 80 55 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8054E110  38 03 F0 98 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8054E114  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 8054E118  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8054E11C  4B BF 75 B8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 8054E120  3C 60 80 55 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8054E124  38 03 F0 98 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8054E128  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 8054E12C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 8054E130  4B BF 75 A4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 8054E134  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 8054E138  3C 60 80 55 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 8054E13C  38 03 F0 A4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 8054E140  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 8054E144  3C 60 80 55 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8054E148  38 03 F0 98 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8054E14C  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 8054E150  7F 43 D3 78 */	mr r3, r26
/* 8054E154  4B BF 75 80 */	b initialize__18daNpcT_ActorMngr_cFv
/* 8054E158  38 7A 00 30 */	addi r3, r26, 0x30
/* 8054E15C  3C 80 80 55 */	lis r4, __ct__4cXyzFv@ha
/* 8054E160  38 84 E4 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 8054E164  3C A0 80 55 */	lis r5, __dt__4cXyzFv@ha
/* 8054E168  38 A5 DD D0 */	addi r5, r5, __dt__4cXyzFv@l
/* 8054E16C  38 C0 00 0C */	li r6, 0xc
/* 8054E170  38 E0 00 03 */	li r7, 3
/* 8054E174  4B E1 3B EC */	b __construct_array
/* 8054E178  38 7A 00 54 */	addi r3, r26, 0x54
/* 8054E17C  3C 80 80 55 */	lis r4, __ct__4cXyzFv@ha
/* 8054E180  38 84 E4 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 8054E184  3C A0 80 55 */	lis r5, __dt__4cXyzFv@ha
/* 8054E188  38 A5 DD D0 */	addi r5, r5, __dt__4cXyzFv@l
/* 8054E18C  38 C0 00 0C */	li r6, 0xc
/* 8054E190  38 E0 00 03 */	li r7, 3
/* 8054E194  4B E1 3B CC */	b __construct_array
/* 8054E198  38 7A 00 78 */	addi r3, r26, 0x78
/* 8054E19C  3C 80 80 55 */	lis r4, __ct__4cXyzFv@ha
/* 8054E1A0  38 84 E4 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 8054E1A4  3C A0 80 55 */	lis r5, __dt__4cXyzFv@ha
/* 8054E1A8  38 A5 DD D0 */	addi r5, r5, __dt__4cXyzFv@l
/* 8054E1AC  38 C0 00 0C */	li r6, 0xc
/* 8054E1B0  38 E0 00 03 */	li r7, 3
/* 8054E1B4  4B E1 3B AC */	b __construct_array
/* 8054E1B8  38 7A 00 9C */	addi r3, r26, 0x9c
/* 8054E1BC  3C 80 80 55 */	lis r4, __ct__4cXyzFv@ha
/* 8054E1C0  38 84 E4 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 8054E1C4  3C A0 80 55 */	lis r5, __dt__4cXyzFv@ha
/* 8054E1C8  38 A5 DD D0 */	addi r5, r5, __dt__4cXyzFv@l
/* 8054E1CC  38 C0 00 0C */	li r6, 0xc
/* 8054E1D0  38 E0 00 03 */	li r7, 3
/* 8054E1D4  4B E1 3B 8C */	b __construct_array
/* 8054E1D8  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 8054E1DC  3C 80 80 55 */	lis r4, __ct__4cXyzFv@ha
/* 8054E1E0  38 84 E4 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 8054E1E4  3C A0 80 55 */	lis r5, __dt__4cXyzFv@ha
/* 8054E1E8  38 A5 DD D0 */	addi r5, r5, __dt__4cXyzFv@l
/* 8054E1EC  38 C0 00 0C */	li r6, 0xc
/* 8054E1F0  38 E0 00 03 */	li r7, 3
/* 8054E1F4  4B E1 3B 6C */	b __construct_array
/* 8054E1F8  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 8054E1FC  3C 80 80 55 */	lis r4, __ct__4cXyzFv@ha
/* 8054E200  38 84 E4 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 8054E204  3C A0 80 55 */	lis r5, __dt__4cXyzFv@ha
/* 8054E208  38 A5 DD D0 */	addi r5, r5, __dt__4cXyzFv@l
/* 8054E20C  38 C0 00 0C */	li r6, 0xc
/* 8054E210  38 E0 00 03 */	li r7, 3
/* 8054E214  4B E1 3B 4C */	b __construct_array
/* 8054E218  7F 43 D3 78 */	mr r3, r26
/* 8054E21C  4B BF 8A 7C */	b initialize__15daNpcT_JntAnm_cFv
/* 8054E220  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 8054E224  3C 80 80 55 */	lis r4, __ct__5csXyzFv@ha
/* 8054E228  38 84 E8 F8 */	addi r4, r4, __ct__5csXyzFv@l
/* 8054E22C  3C A0 80 55 */	lis r5, __dt__5csXyzFv@ha
/* 8054E230  38 A5 DE D8 */	addi r5, r5, __dt__5csXyzFv@l
/* 8054E234  38 C0 00 06 */	li r6, 6
/* 8054E238  38 E0 00 02 */	li r7, 2
/* 8054E23C  4B E1 3B 24 */	b __construct_array
/* 8054E240  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 8054E244  38 80 00 00 */	li r4, 0
/* 8054E248  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 8054E24C  7C A3 00 50 */	subf r5, r3, r0
/* 8054E250  4B AB 52 08 */	b memset
/* 8054E254  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8054E258  4B BF 76 40 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8054E25C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8054E260  4B BF 76 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8054E264  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8054E268  4B BF 74 6C */	b initialize__18daNpcT_ActorMngr_cFv
/* 8054E26C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 8054E270  4B BF 74 64 */	b initialize__18daNpcT_ActorMngr_cFv
/* 8054E274  7F 43 D3 78 */	mr r3, r26
/* 8054E278  4B BF 8A 20 */	b initialize__15daNpcT_JntAnm_cFv
/* 8054E27C  38 A0 00 00 */	li r5, 0
/* 8054E280  38 60 00 00 */	li r3, 0
/* 8054E284  7C A4 2B 78 */	mr r4, r5
/* 8054E288  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8054E28C  38 00 00 02 */	li r0, 2
/* 8054E290  7C 09 03 A6 */	mtctr r0
lbl_8054E294:
/* 8054E294  7C DF 22 14 */	add r6, r31, r4
/* 8054E298  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 8054E29C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 8054E2A0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 8054E2A4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 8054E2A8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8054E2AC  38 63 00 04 */	addi r3, r3, 4
/* 8054E2B0  38 84 00 06 */	addi r4, r4, 6
/* 8054E2B4  42 00 FF E0 */	bdnz lbl_8054E294
/* 8054E2B8  38 00 00 00 */	li r0, 0
/* 8054E2BC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 8054E2C0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 8054E2C4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 8054E2C8  38 00 FF FF */	li r0, -1
/* 8054E2CC  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 8054E2D0  38 00 00 01 */	li r0, 1
/* 8054E2D4  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 8054E2D8  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 8054E2DC  4B D1 96 78 */	b cM_rndF__Ff
/* 8054E2E0  FC 00 08 1E */	fctiwz f0, f1
/* 8054E2E4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8054E2E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8054E2EC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 8054E2F0  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 8054E2F4  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 8054E2F8  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 8054E2FC  7F E3 FB 78 */	mr r3, r31
/* 8054E300  39 61 00 40 */	addi r11, r1, 0x40
/* 8054E304  4B E1 3F 08 */	b _restgpr_22
/* 8054E308  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8054E30C  7C 08 03 A6 */	mtlr r0
/* 8054E310  38 21 00 40 */	addi r1, r1, 0x40
/* 8054E314  4E 80 00 20 */	blr 
