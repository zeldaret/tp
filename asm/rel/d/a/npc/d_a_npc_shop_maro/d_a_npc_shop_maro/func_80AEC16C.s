lbl_80AEC16C:
/* 80AEC16C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AEC170  7C 08 02 A6 */	mflr r0
/* 80AEC174  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AEC178  39 61 00 40 */	addi r11, r1, 0x40
/* 80AEC17C  4B 87 60 44 */	b _savegpr_22
/* 80AEC180  7C 7F 1B 78 */	mr r31, r3
/* 80AEC184  7C 96 23 78 */	mr r22, r4
/* 80AEC188  7C B7 2B 78 */	mr r23, r5
/* 80AEC18C  7C DA 33 78 */	mr r26, r6
/* 80AEC190  7C FB 3B 78 */	mr r27, r7
/* 80AEC194  7D 1C 43 78 */	mr r28, r8
/* 80AEC198  7D 3D 4B 78 */	mr r29, r9
/* 80AEC19C  7D 58 53 78 */	mr r24, r10
/* 80AEC1A0  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80AEC1A4  3C 80 80 AF */	lis r4, lit_4009@ha
/* 80AEC1A8  3B C4 C9 18 */	addi r30, r4, lit_4009@l
/* 80AEC1AC  4B 52 C9 B8 */	b __ct__10fopAc_ac_cFv
/* 80AEC1B0  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80AEC1B4  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80AEC1B8  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AEC1BC  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80AEC1C0  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80AEC1C4  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80AEC1C8  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80AEC1CC  38 7F 05 80 */	addi r3, r31, 0x580
/* 80AEC1D0  4B 7D 41 F8 */	b __ct__10Z2CreatureFv
/* 80AEC1D4  3A DF 06 10 */	addi r22, r31, 0x610
/* 80AEC1D8  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AEC1DC  38 03 C9 88 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AEC1E0  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80AEC1E4  7E C3 B3 78 */	mr r3, r22
/* 80AEC1E8  38 80 00 00 */	li r4, 0
/* 80AEC1EC  4B 83 C2 10 */	b init__12J3DFrameCtrlFs
/* 80AEC1F0  38 00 00 00 */	li r0, 0
/* 80AEC1F4  90 16 00 18 */	stw r0, 0x18(r22)
/* 80AEC1F8  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80AEC1FC  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AEC200  38 03 C9 88 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AEC204  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80AEC208  7E C3 B3 78 */	mr r3, r22
/* 80AEC20C  38 80 00 00 */	li r4, 0
/* 80AEC210  4B 83 C1 EC */	b init__12J3DFrameCtrlFs
/* 80AEC214  38 00 00 00 */	li r0, 0
/* 80AEC218  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AEC21C  3A DF 06 44 */	addi r22, r31, 0x644
/* 80AEC220  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AEC224  38 03 C9 88 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AEC228  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80AEC22C  7E C3 B3 78 */	mr r3, r22
/* 80AEC230  38 80 00 00 */	li r4, 0
/* 80AEC234  4B 83 C1 C8 */	b init__12J3DFrameCtrlFs
/* 80AEC238  38 00 00 00 */	li r0, 0
/* 80AEC23C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AEC240  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80AEC244  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AEC248  38 03 C9 88 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AEC24C  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80AEC250  7E C3 B3 78 */	mr r3, r22
/* 80AEC254  38 80 00 00 */	li r4, 0
/* 80AEC258  4B 83 C1 A4 */	b init__12J3DFrameCtrlFs
/* 80AEC25C  38 00 00 00 */	li r0, 0
/* 80AEC260  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AEC264  3A DF 06 74 */	addi r22, r31, 0x674
/* 80AEC268  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AEC26C  38 03 C9 88 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AEC270  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80AEC274  7E C3 B3 78 */	mr r3, r22
/* 80AEC278  38 80 00 00 */	li r4, 0
/* 80AEC27C  4B 83 C1 80 */	b init__12J3DFrameCtrlFs
/* 80AEC280  38 00 00 00 */	li r0, 0
/* 80AEC284  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AEC288  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80AEC28C  7E C3 B3 78 */	mr r3, r22
/* 80AEC290  4B 58 9E 10 */	b __ct__9dBgS_AcchFv
/* 80AEC294  3C 60 80 AF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AEC298  38 63 C9 94 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AEC29C  90 76 00 10 */	stw r3, 0x10(r22)
/* 80AEC2A0  38 03 00 0C */	addi r0, r3, 0xc
/* 80AEC2A4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AEC2A8  38 03 00 18 */	addi r0, r3, 0x18
/* 80AEC2AC  90 16 00 24 */	stw r0, 0x24(r22)
/* 80AEC2B0  38 76 00 14 */	addi r3, r22, 0x14
/* 80AEC2B4  4B 58 CB B4 */	b SetObj__16dBgS_PolyPassChkFv
/* 80AEC2B8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AEC2BC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AEC2C0  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80AEC2C4  38 7F 08 80 */	addi r3, r31, 0x880
/* 80AEC2C8  4B 59 74 98 */	b __ct__10dCcD_GSttsFv
/* 80AEC2CC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AEC2D0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AEC2D4  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80AEC2D8  3B 23 00 20 */	addi r25, r3, 0x20
/* 80AEC2DC  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80AEC2E0  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AEC2E4  4B 58 9B C8 */	b __ct__12dBgS_AcchCirFv
/* 80AEC2E8  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AEC2EC  4B 77 B9 30 */	b __ct__11cBgS_GndChkFv
/* 80AEC2F0  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AEC2F4  4B 75 DC 0C */	b __ct__10dMsgFlow_cFv
/* 80AEC2F8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AEC2FC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AEC300  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AEC304  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80AEC308  4B 59 74 58 */	b __ct__10dCcD_GSttsFv
/* 80AEC30C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AEC310  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80AEC314  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AEC318  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80AEC31C  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80AEC320  4B 58 B2 5C */	b __ct__11dBgS_GndChkFv
/* 80AEC324  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80AEC328  4B 58 B9 40 */	b __ct__11dBgS_LinChkFv
/* 80AEC32C  3C 60 80 AF */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AEC330  38 03 C9 B8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AEC334  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80AEC338  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80AEC33C  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80AEC340  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AEC344  4B 65 95 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AEC348  3C 60 80 AF */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80AEC34C  38 03 C9 B8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80AEC350  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80AEC354  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80AEC358  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80AEC35C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AEC360  4B 65 95 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AEC364  3C 60 80 AF */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AEC368  38 03 C9 C4 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AEC36C  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80AEC370  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AEC374  4B 65 93 60 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AEC378  3C 60 80 AF */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AEC37C  38 03 C9 C4 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AEC380  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80AEC384  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AEC388  4B 65 93 4C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AEC38C  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80AEC390  3C 60 80 AF */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80AEC394  38 03 C9 D0 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80AEC398  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80AEC39C  3C 60 80 AF */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80AEC3A0  38 03 C9 C4 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80AEC3A4  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80AEC3A8  7F 43 D3 78 */	mr r3, r26
/* 80AEC3AC  4B 65 93 28 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AEC3B0  38 7A 00 30 */	addi r3, r26, 0x30
/* 80AEC3B4  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha
/* 80AEC3B8  38 84 C6 70 */	addi r4, r4, __ct__4cXyzFv@l
/* 80AEC3BC  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha
/* 80AEC3C0  38 A5 C0 DC */	addi r5, r5, __dt__4cXyzFv@l
/* 80AEC3C4  38 C0 00 0C */	li r6, 0xc
/* 80AEC3C8  38 E0 00 03 */	li r7, 3
/* 80AEC3CC  4B 87 59 94 */	b __construct_array
/* 80AEC3D0  38 7A 00 54 */	addi r3, r26, 0x54
/* 80AEC3D4  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha
/* 80AEC3D8  38 84 C6 70 */	addi r4, r4, __ct__4cXyzFv@l
/* 80AEC3DC  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha
/* 80AEC3E0  38 A5 C0 DC */	addi r5, r5, __dt__4cXyzFv@l
/* 80AEC3E4  38 C0 00 0C */	li r6, 0xc
/* 80AEC3E8  38 E0 00 03 */	li r7, 3
/* 80AEC3EC  4B 87 59 74 */	b __construct_array
/* 80AEC3F0  38 7A 00 78 */	addi r3, r26, 0x78
/* 80AEC3F4  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha
/* 80AEC3F8  38 84 C6 70 */	addi r4, r4, __ct__4cXyzFv@l
/* 80AEC3FC  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha
/* 80AEC400  38 A5 C0 DC */	addi r5, r5, __dt__4cXyzFv@l
/* 80AEC404  38 C0 00 0C */	li r6, 0xc
/* 80AEC408  38 E0 00 03 */	li r7, 3
/* 80AEC40C  4B 87 59 54 */	b __construct_array
/* 80AEC410  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80AEC414  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha
/* 80AEC418  38 84 C6 70 */	addi r4, r4, __ct__4cXyzFv@l
/* 80AEC41C  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha
/* 80AEC420  38 A5 C0 DC */	addi r5, r5, __dt__4cXyzFv@l
/* 80AEC424  38 C0 00 0C */	li r6, 0xc
/* 80AEC428  38 E0 00 03 */	li r7, 3
/* 80AEC42C  4B 87 59 34 */	b __construct_array
/* 80AEC430  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80AEC434  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha
/* 80AEC438  38 84 C6 70 */	addi r4, r4, __ct__4cXyzFv@l
/* 80AEC43C  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha
/* 80AEC440  38 A5 C0 DC */	addi r5, r5, __dt__4cXyzFv@l
/* 80AEC444  38 C0 00 0C */	li r6, 0xc
/* 80AEC448  38 E0 00 03 */	li r7, 3
/* 80AEC44C  4B 87 59 14 */	b __construct_array
/* 80AEC450  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80AEC454  3C 80 80 AF */	lis r4, __ct__4cXyzFv@ha
/* 80AEC458  38 84 C6 70 */	addi r4, r4, __ct__4cXyzFv@l
/* 80AEC45C  3C A0 80 AF */	lis r5, __dt__4cXyzFv@ha
/* 80AEC460  38 A5 C0 DC */	addi r5, r5, __dt__4cXyzFv@l
/* 80AEC464  38 C0 00 0C */	li r6, 0xc
/* 80AEC468  38 E0 00 03 */	li r7, 3
/* 80AEC46C  4B 87 58 F4 */	b __construct_array
/* 80AEC470  7F 43 D3 78 */	mr r3, r26
/* 80AEC474  4B 65 A8 24 */	b initialize__15daNpcT_JntAnm_cFv
/* 80AEC478  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AEC47C  3C 80 80 AF */	lis r4, __ct__5csXyzFv@ha
/* 80AEC480  38 84 C5 70 */	addi r4, r4, __ct__5csXyzFv@l
/* 80AEC484  3C A0 80 AF */	lis r5, __dt__5csXyzFv@ha
/* 80AEC488  38 A5 C1 30 */	addi r5, r5, __dt__5csXyzFv@l
/* 80AEC48C  38 C0 00 06 */	li r6, 6
/* 80AEC490  38 E0 00 02 */	li r7, 2
/* 80AEC494  4B 87 58 CC */	b __construct_array
/* 80AEC498  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AEC49C  38 80 00 00 */	li r4, 0
/* 80AEC4A0  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AEC4A4  7C A3 00 50 */	subf r5, r3, r0
/* 80AEC4A8  4B 51 6F B0 */	b memset
/* 80AEC4AC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AEC4B0  4B 65 93 E8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AEC4B4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AEC4B8  4B 65 93 E0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AEC4BC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AEC4C0  4B 65 92 14 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AEC4C4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AEC4C8  4B 65 92 0C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80AEC4CC  7F 43 D3 78 */	mr r3, r26
/* 80AEC4D0  4B 65 A7 C8 */	b initialize__15daNpcT_JntAnm_cFv
/* 80AEC4D4  38 A0 00 00 */	li r5, 0
/* 80AEC4D8  38 60 00 00 */	li r3, 0
/* 80AEC4DC  7C A4 2B 78 */	mr r4, r5
/* 80AEC4E0  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80AEC4E4  38 00 00 02 */	li r0, 2
/* 80AEC4E8  7C 09 03 A6 */	mtctr r0
lbl_80AEC4EC:
/* 80AEC4EC  7C DF 22 14 */	add r6, r31, r4
/* 80AEC4F0  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AEC4F4  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AEC4F8  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AEC4FC  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AEC500  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AEC504  38 63 00 04 */	addi r3, r3, 4
/* 80AEC508  38 84 00 06 */	addi r4, r4, 6
/* 80AEC50C  42 00 FF E0 */	bdnz lbl_80AEC4EC
/* 80AEC510  38 00 00 00 */	li r0, 0
/* 80AEC514  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AEC518  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AEC51C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AEC520  38 00 FF FF */	li r0, -1
/* 80AEC524  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AEC528  38 00 00 01 */	li r0, 1
/* 80AEC52C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AEC530  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80AEC534  4B 77 B4 20 */	b cM_rndF__Ff
/* 80AEC538  FC 00 08 1E */	fctiwz f0, f1
/* 80AEC53C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AEC540  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AEC544  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AEC548  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80AEC54C  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AEC550  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AEC554  7F E3 FB 78 */	mr r3, r31
/* 80AEC558  39 61 00 40 */	addi r11, r1, 0x40
/* 80AEC55C  4B 87 5C B0 */	b _restgpr_22
/* 80AEC560  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AEC564  7C 08 03 A6 */	mtlr r0
/* 80AEC568  38 21 00 40 */	addi r1, r1, 0x40
/* 80AEC56C  4E 80 00 20 */	blr 
