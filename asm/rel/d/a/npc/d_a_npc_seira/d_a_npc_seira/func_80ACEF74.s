lbl_80ACEF74:
/* 80ACEF74  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80ACEF78  7C 08 02 A6 */	mflr r0
/* 80ACEF7C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80ACEF80  39 61 00 40 */	addi r11, r1, 0x40
/* 80ACEF84  4B 89 32 3C */	b _savegpr_22
/* 80ACEF88  7C 7F 1B 78 */	mr r31, r3
/* 80ACEF8C  7C 96 23 78 */	mr r22, r4
/* 80ACEF90  7C B7 2B 78 */	mr r23, r5
/* 80ACEF94  7C DA 33 78 */	mr r26, r6
/* 80ACEF98  7C FB 3B 78 */	mr r27, r7
/* 80ACEF9C  7D 1C 43 78 */	mr r28, r8
/* 80ACEFA0  7D 3D 4B 78 */	mr r29, r9
/* 80ACEFA4  7D 58 53 78 */	mr r24, r10
/* 80ACEFA8  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80ACEFAC  3C 80 80 AD */	lis r4, m__19daNpc_Seira_Param_c@ha
/* 80ACEFB0  3B C4 FD F0 */	addi r30, r4, m__19daNpc_Seira_Param_c@l
/* 80ACEFB4  4B 54 9B B0 */	b __ct__10fopAc_ac_cFv
/* 80ACEFB8  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80ACEFBC  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80ACEFC0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80ACEFC4  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80ACEFC8  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80ACEFCC  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80ACEFD0  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80ACEFD4  38 7F 05 80 */	addi r3, r31, 0x580
/* 80ACEFD8  4B 7F 13 F0 */	b __ct__10Z2CreatureFv
/* 80ACEFDC  3A DF 06 10 */	addi r22, r31, 0x610
/* 80ACEFE0  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACEFE4  38 03 09 84 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACEFE8  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80ACEFEC  7E C3 B3 78 */	mr r3, r22
/* 80ACEFF0  38 80 00 00 */	li r4, 0
/* 80ACEFF4  4B 85 94 08 */	b init__12J3DFrameCtrlFs
/* 80ACEFF8  38 00 00 00 */	li r0, 0
/* 80ACEFFC  90 16 00 18 */	stw r0, 0x18(r22)
/* 80ACF000  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80ACF004  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACF008  38 03 09 84 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACF00C  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80ACF010  7E C3 B3 78 */	mr r3, r22
/* 80ACF014  38 80 00 00 */	li r4, 0
/* 80ACF018  4B 85 93 E4 */	b init__12J3DFrameCtrlFs
/* 80ACF01C  38 00 00 00 */	li r0, 0
/* 80ACF020  90 16 00 14 */	stw r0, 0x14(r22)
/* 80ACF024  3A DF 06 44 */	addi r22, r31, 0x644
/* 80ACF028  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACF02C  38 03 09 84 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACF030  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80ACF034  7E C3 B3 78 */	mr r3, r22
/* 80ACF038  38 80 00 00 */	li r4, 0
/* 80ACF03C  4B 85 93 C0 */	b init__12J3DFrameCtrlFs
/* 80ACF040  38 00 00 00 */	li r0, 0
/* 80ACF044  90 16 00 14 */	stw r0, 0x14(r22)
/* 80ACF048  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80ACF04C  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACF050  38 03 09 84 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACF054  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80ACF058  7E C3 B3 78 */	mr r3, r22
/* 80ACF05C  38 80 00 00 */	li r4, 0
/* 80ACF060  4B 85 93 9C */	b init__12J3DFrameCtrlFs
/* 80ACF064  38 00 00 00 */	li r0, 0
/* 80ACF068  90 16 00 14 */	stw r0, 0x14(r22)
/* 80ACF06C  3A DF 06 74 */	addi r22, r31, 0x674
/* 80ACF070  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACF074  38 03 09 84 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACF078  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80ACF07C  7E C3 B3 78 */	mr r3, r22
/* 80ACF080  38 80 00 00 */	li r4, 0
/* 80ACF084  4B 85 93 78 */	b init__12J3DFrameCtrlFs
/* 80ACF088  38 00 00 00 */	li r0, 0
/* 80ACF08C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80ACF090  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80ACF094  7E C3 B3 78 */	mr r3, r22
/* 80ACF098  4B 5A 70 08 */	b __ct__9dBgS_AcchFv
/* 80ACF09C  3C 60 80 AD */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80ACF0A0  38 63 09 90 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80ACF0A4  90 76 00 10 */	stw r3, 0x10(r22)
/* 80ACF0A8  38 03 00 0C */	addi r0, r3, 0xc
/* 80ACF0AC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80ACF0B0  38 03 00 18 */	addi r0, r3, 0x18
/* 80ACF0B4  90 16 00 24 */	stw r0, 0x24(r22)
/* 80ACF0B8  38 76 00 14 */	addi r3, r22, 0x14
/* 80ACF0BC  4B 5A 9D AC */	b SetObj__16dBgS_PolyPassChkFv
/* 80ACF0C0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80ACF0C4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80ACF0C8  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80ACF0CC  38 7F 08 80 */	addi r3, r31, 0x880
/* 80ACF0D0  4B 5B 46 90 */	b __ct__10dCcD_GSttsFv
/* 80ACF0D4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80ACF0D8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80ACF0DC  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80ACF0E0  3B 23 00 20 */	addi r25, r3, 0x20
/* 80ACF0E4  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80ACF0E8  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80ACF0EC  4B 5A 6D C0 */	b __ct__12dBgS_AcchCirFv
/* 80ACF0F0  38 7F 09 30 */	addi r3, r31, 0x930
/* 80ACF0F4  4B 79 8B 28 */	b __ct__11cBgS_GndChkFv
/* 80ACF0F8  38 7F 09 74 */	addi r3, r31, 0x974
/* 80ACF0FC  4B 77 AE 04 */	b __ct__10dMsgFlow_cFv
/* 80ACF100  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80ACF104  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80ACF108  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80ACF10C  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80ACF110  4B 5B 46 50 */	b __ct__10dCcD_GSttsFv
/* 80ACF114  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80ACF118  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80ACF11C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80ACF120  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80ACF124  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80ACF128  4B 5A 84 54 */	b __ct__11dBgS_GndChkFv
/* 80ACF12C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80ACF130  4B 5A 8B 38 */	b __ct__11dBgS_LinChkFv
/* 80ACF134  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80ACF138  38 03 09 D8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80ACF13C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80ACF140  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80ACF144  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80ACF148  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACF14C  4B 67 67 4C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACF150  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80ACF154  38 03 09 D8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80ACF158  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80ACF15C  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80ACF160  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80ACF164  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACF168  4B 67 67 30 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACF16C  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80ACF170  38 03 09 F0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80ACF174  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80ACF178  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80ACF17C  4B 67 65 58 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80ACF180  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80ACF184  38 03 09 F0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80ACF188  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80ACF18C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80ACF190  4B 67 65 44 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80ACF194  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80ACF198  3C 60 80 AD */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80ACF19C  38 03 09 E4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80ACF1A0  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80ACF1A4  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80ACF1A8  38 03 09 F0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80ACF1AC  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80ACF1B0  7F 43 D3 78 */	mr r3, r26
/* 80ACF1B4  4B 67 65 20 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80ACF1B8  38 7A 00 30 */	addi r3, r26, 0x30
/* 80ACF1BC  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha
/* 80ACF1C0  38 84 F4 78 */	addi r4, r4, __ct__4cXyzFv@l
/* 80ACF1C4  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha
/* 80ACF1C8  38 A5 EE FC */	addi r5, r5, __dt__4cXyzFv@l
/* 80ACF1CC  38 C0 00 0C */	li r6, 0xc
/* 80ACF1D0  38 E0 00 03 */	li r7, 3
/* 80ACF1D4  4B 89 2B 8C */	b __construct_array
/* 80ACF1D8  38 7A 00 54 */	addi r3, r26, 0x54
/* 80ACF1DC  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha
/* 80ACF1E0  38 84 F4 78 */	addi r4, r4, __ct__4cXyzFv@l
/* 80ACF1E4  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha
/* 80ACF1E8  38 A5 EE FC */	addi r5, r5, __dt__4cXyzFv@l
/* 80ACF1EC  38 C0 00 0C */	li r6, 0xc
/* 80ACF1F0  38 E0 00 03 */	li r7, 3
/* 80ACF1F4  4B 89 2B 6C */	b __construct_array
/* 80ACF1F8  38 7A 00 78 */	addi r3, r26, 0x78
/* 80ACF1FC  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha
/* 80ACF200  38 84 F4 78 */	addi r4, r4, __ct__4cXyzFv@l
/* 80ACF204  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha
/* 80ACF208  38 A5 EE FC */	addi r5, r5, __dt__4cXyzFv@l
/* 80ACF20C  38 C0 00 0C */	li r6, 0xc
/* 80ACF210  38 E0 00 03 */	li r7, 3
/* 80ACF214  4B 89 2B 4C */	b __construct_array
/* 80ACF218  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80ACF21C  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha
/* 80ACF220  38 84 F4 78 */	addi r4, r4, __ct__4cXyzFv@l
/* 80ACF224  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha
/* 80ACF228  38 A5 EE FC */	addi r5, r5, __dt__4cXyzFv@l
/* 80ACF22C  38 C0 00 0C */	li r6, 0xc
/* 80ACF230  38 E0 00 03 */	li r7, 3
/* 80ACF234  4B 89 2B 2C */	b __construct_array
/* 80ACF238  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80ACF23C  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha
/* 80ACF240  38 84 F4 78 */	addi r4, r4, __ct__4cXyzFv@l
/* 80ACF244  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha
/* 80ACF248  38 A5 EE FC */	addi r5, r5, __dt__4cXyzFv@l
/* 80ACF24C  38 C0 00 0C */	li r6, 0xc
/* 80ACF250  38 E0 00 03 */	li r7, 3
/* 80ACF254  4B 89 2B 0C */	b __construct_array
/* 80ACF258  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80ACF25C  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha
/* 80ACF260  38 84 F4 78 */	addi r4, r4, __ct__4cXyzFv@l
/* 80ACF264  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha
/* 80ACF268  38 A5 EE FC */	addi r5, r5, __dt__4cXyzFv@l
/* 80ACF26C  38 C0 00 0C */	li r6, 0xc
/* 80ACF270  38 E0 00 03 */	li r7, 3
/* 80ACF274  4B 89 2A EC */	b __construct_array
/* 80ACF278  7F 43 D3 78 */	mr r3, r26
/* 80ACF27C  4B 67 7A 1C */	b initialize__15daNpcT_JntAnm_cFv
/* 80ACF280  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80ACF284  3C 80 80 AD */	lis r4, __ct__5csXyzFv@ha
/* 80ACF288  38 84 F3 78 */	addi r4, r4, __ct__5csXyzFv@l
/* 80ACF28C  3C A0 80 AD */	lis r5, __dt__5csXyzFv@ha
/* 80ACF290  38 A5 EF 38 */	addi r5, r5, __dt__5csXyzFv@l
/* 80ACF294  38 C0 00 06 */	li r6, 6
/* 80ACF298  38 E0 00 02 */	li r7, 2
/* 80ACF29C  4B 89 2A C4 */	b __construct_array
/* 80ACF2A0  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80ACF2A4  38 80 00 00 */	li r4, 0
/* 80ACF2A8  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80ACF2AC  7C A3 00 50 */	subf r5, r3, r0
/* 80ACF2B0  4B 53 41 A8 */	b memset
/* 80ACF2B4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACF2B8  4B 67 65 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACF2BC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACF2C0  4B 67 65 D8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACF2C4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80ACF2C8  4B 67 64 0C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80ACF2CC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80ACF2D0  4B 67 64 04 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80ACF2D4  7F 43 D3 78 */	mr r3, r26
/* 80ACF2D8  4B 67 79 C0 */	b initialize__15daNpcT_JntAnm_cFv
/* 80ACF2DC  38 A0 00 00 */	li r5, 0
/* 80ACF2E0  38 60 00 00 */	li r3, 0
/* 80ACF2E4  7C A4 2B 78 */	mr r4, r5
/* 80ACF2E8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80ACF2EC  38 00 00 02 */	li r0, 2
/* 80ACF2F0  7C 09 03 A6 */	mtctr r0
lbl_80ACF2F4:
/* 80ACF2F4  7C DF 22 14 */	add r6, r31, r4
/* 80ACF2F8  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80ACF2FC  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80ACF300  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80ACF304  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80ACF308  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80ACF30C  38 63 00 04 */	addi r3, r3, 4
/* 80ACF310  38 84 00 06 */	addi r4, r4, 6
/* 80ACF314  42 00 FF E0 */	bdnz lbl_80ACF2F4
/* 80ACF318  38 00 00 00 */	li r0, 0
/* 80ACF31C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80ACF320  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80ACF324  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80ACF328  38 00 FF FF */	li r0, -1
/* 80ACF32C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80ACF330  38 00 00 01 */	li r0, 1
/* 80ACF334  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80ACF338  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 80ACF33C  4B 79 86 18 */	b cM_rndF__Ff
/* 80ACF340  FC 00 08 1E */	fctiwz f0, f1
/* 80ACF344  D8 01 00 08 */	stfd f0, 8(r1)
/* 80ACF348  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80ACF34C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80ACF350  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80ACF354  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80ACF358  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80ACF35C  7F E3 FB 78 */	mr r3, r31
/* 80ACF360  39 61 00 40 */	addi r11, r1, 0x40
/* 80ACF364  4B 89 2E A8 */	b _restgpr_22
/* 80ACF368  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80ACF36C  7C 08 03 A6 */	mtlr r0
/* 80ACF370  38 21 00 40 */	addi r1, r1, 0x40
/* 80ACF374  4E 80 00 20 */	blr 
