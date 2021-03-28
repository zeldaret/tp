lbl_80ACAA14:
/* 80ACAA14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80ACAA18  7C 08 02 A6 */	mflr r0
/* 80ACAA1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80ACAA20  39 61 00 40 */	addi r11, r1, 0x40
/* 80ACAA24  4B 89 77 9C */	b _savegpr_22
/* 80ACAA28  7C 7F 1B 78 */	mr r31, r3
/* 80ACAA2C  7C 96 23 78 */	mr r22, r4
/* 80ACAA30  7C B7 2B 78 */	mr r23, r5
/* 80ACAA34  7C DA 33 78 */	mr r26, r6
/* 80ACAA38  7C FB 3B 78 */	mr r27, r7
/* 80ACAA3C  7D 1C 43 78 */	mr r28, r8
/* 80ACAA40  7D 3D 4B 78 */	mr r29, r9
/* 80ACAA44  7D 58 53 78 */	mr r24, r10
/* 80ACAA48  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80ACAA4C  3C 80 80 AD */	lis r4, m__18daNpc_seiD_Param_c@ha
/* 80ACAA50  3B C4 B3 5C */	addi r30, r4, m__18daNpc_seiD_Param_c@l
/* 80ACAA54  4B 54 E1 10 */	b __ct__10fopAc_ac_cFv
/* 80ACAA58  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80ACAA5C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80ACAA60  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80ACAA64  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80ACAA68  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80ACAA6C  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80ACAA70  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80ACAA74  38 7F 05 80 */	addi r3, r31, 0x580
/* 80ACAA78  4B 7F 59 50 */	b __ct__10Z2CreatureFv
/* 80ACAA7C  3A DF 06 10 */	addi r22, r31, 0x610
/* 80ACAA80  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACAA84  38 03 B5 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACAA88  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80ACAA8C  7E C3 B3 78 */	mr r3, r22
/* 80ACAA90  38 80 00 00 */	li r4, 0
/* 80ACAA94  4B 85 D9 68 */	b init__12J3DFrameCtrlFs
/* 80ACAA98  38 00 00 00 */	li r0, 0
/* 80ACAA9C  90 16 00 18 */	stw r0, 0x18(r22)
/* 80ACAAA0  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80ACAAA4  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACAAA8  38 03 B5 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACAAAC  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80ACAAB0  7E C3 B3 78 */	mr r3, r22
/* 80ACAAB4  38 80 00 00 */	li r4, 0
/* 80ACAAB8  4B 85 D9 44 */	b init__12J3DFrameCtrlFs
/* 80ACAABC  38 00 00 00 */	li r0, 0
/* 80ACAAC0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80ACAAC4  3A DF 06 44 */	addi r22, r31, 0x644
/* 80ACAAC8  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACAACC  38 03 B5 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACAAD0  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80ACAAD4  7E C3 B3 78 */	mr r3, r22
/* 80ACAAD8  38 80 00 00 */	li r4, 0
/* 80ACAADC  4B 85 D9 20 */	b init__12J3DFrameCtrlFs
/* 80ACAAE0  38 00 00 00 */	li r0, 0
/* 80ACAAE4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80ACAAE8  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80ACAAEC  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACAAF0  38 03 B5 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACAAF4  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80ACAAF8  7E C3 B3 78 */	mr r3, r22
/* 80ACAAFC  38 80 00 00 */	li r4, 0
/* 80ACAB00  4B 85 D8 FC */	b init__12J3DFrameCtrlFs
/* 80ACAB04  38 00 00 00 */	li r0, 0
/* 80ACAB08  90 16 00 14 */	stw r0, 0x14(r22)
/* 80ACAB0C  3A DF 06 74 */	addi r22, r31, 0x674
/* 80ACAB10  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ACAB14  38 03 B5 70 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ACAB18  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80ACAB1C  7E C3 B3 78 */	mr r3, r22
/* 80ACAB20  38 80 00 00 */	li r4, 0
/* 80ACAB24  4B 85 D8 D8 */	b init__12J3DFrameCtrlFs
/* 80ACAB28  38 00 00 00 */	li r0, 0
/* 80ACAB2C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80ACAB30  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80ACAB34  7E C3 B3 78 */	mr r3, r22
/* 80ACAB38  4B 5A B5 68 */	b __ct__9dBgS_AcchFv
/* 80ACAB3C  3C 60 80 AD */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80ACAB40  38 63 B5 7C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80ACAB44  90 76 00 10 */	stw r3, 0x10(r22)
/* 80ACAB48  38 03 00 0C */	addi r0, r3, 0xc
/* 80ACAB4C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80ACAB50  38 03 00 18 */	addi r0, r3, 0x18
/* 80ACAB54  90 16 00 24 */	stw r0, 0x24(r22)
/* 80ACAB58  38 76 00 14 */	addi r3, r22, 0x14
/* 80ACAB5C  4B 5A E3 0C */	b SetObj__16dBgS_PolyPassChkFv
/* 80ACAB60  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80ACAB64  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80ACAB68  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80ACAB6C  38 7F 08 80 */	addi r3, r31, 0x880
/* 80ACAB70  4B 5B 8B F0 */	b __ct__10dCcD_GSttsFv
/* 80ACAB74  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80ACAB78  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80ACAB7C  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80ACAB80  3B 23 00 20 */	addi r25, r3, 0x20
/* 80ACAB84  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80ACAB88  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80ACAB8C  4B 5A B3 20 */	b __ct__12dBgS_AcchCirFv
/* 80ACAB90  38 7F 09 30 */	addi r3, r31, 0x930
/* 80ACAB94  4B 79 D0 88 */	b __ct__11cBgS_GndChkFv
/* 80ACAB98  38 7F 09 74 */	addi r3, r31, 0x974
/* 80ACAB9C  4B 77 F3 64 */	b __ct__10dMsgFlow_cFv
/* 80ACABA0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80ACABA4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80ACABA8  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80ACABAC  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80ACABB0  4B 5B 8B B0 */	b __ct__10dCcD_GSttsFv
/* 80ACABB4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80ACABB8  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80ACABBC  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80ACABC0  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80ACABC4  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80ACABC8  4B 5A C9 B4 */	b __ct__11dBgS_GndChkFv
/* 80ACABCC  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80ACABD0  4B 5A D0 98 */	b __ct__11dBgS_LinChkFv
/* 80ACABD4  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80ACABD8  38 03 B5 C4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80ACABDC  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80ACABE0  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80ACABE4  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80ACABE8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACABEC  4B 67 AC AC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACABF0  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80ACABF4  38 03 B5 C4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80ACABF8  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80ACABFC  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80ACAC00  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80ACAC04  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACAC08  4B 67 AC 90 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACAC0C  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80ACAC10  38 03 B5 D0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80ACAC14  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80ACAC18  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80ACAC1C  4B 67 AA B8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80ACAC20  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80ACAC24  38 03 B5 D0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80ACAC28  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80ACAC2C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80ACAC30  4B 67 AA A4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80ACAC34  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80ACAC38  3C 60 80 AD */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80ACAC3C  38 03 B5 DC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80ACAC40  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80ACAC44  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80ACAC48  38 03 B5 D0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80ACAC4C  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80ACAC50  7F 43 D3 78 */	mr r3, r26
/* 80ACAC54  4B 67 AA 80 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80ACAC58  38 7A 00 30 */	addi r3, r26, 0x30
/* 80ACAC5C  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha
/* 80ACAC60  38 84 AF 18 */	addi r4, r4, __ct__4cXyzFv@l
/* 80ACAC64  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha
/* 80ACAC68  38 A5 A9 9C */	addi r5, r5, __dt__4cXyzFv@l
/* 80ACAC6C  38 C0 00 0C */	li r6, 0xc
/* 80ACAC70  38 E0 00 03 */	li r7, 3
/* 80ACAC74  4B 89 70 EC */	b __construct_array
/* 80ACAC78  38 7A 00 54 */	addi r3, r26, 0x54
/* 80ACAC7C  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha
/* 80ACAC80  38 84 AF 18 */	addi r4, r4, __ct__4cXyzFv@l
/* 80ACAC84  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha
/* 80ACAC88  38 A5 A9 9C */	addi r5, r5, __dt__4cXyzFv@l
/* 80ACAC8C  38 C0 00 0C */	li r6, 0xc
/* 80ACAC90  38 E0 00 03 */	li r7, 3
/* 80ACAC94  4B 89 70 CC */	b __construct_array
/* 80ACAC98  38 7A 00 78 */	addi r3, r26, 0x78
/* 80ACAC9C  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha
/* 80ACACA0  38 84 AF 18 */	addi r4, r4, __ct__4cXyzFv@l
/* 80ACACA4  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha
/* 80ACACA8  38 A5 A9 9C */	addi r5, r5, __dt__4cXyzFv@l
/* 80ACACAC  38 C0 00 0C */	li r6, 0xc
/* 80ACACB0  38 E0 00 03 */	li r7, 3
/* 80ACACB4  4B 89 70 AC */	b __construct_array
/* 80ACACB8  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80ACACBC  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha
/* 80ACACC0  38 84 AF 18 */	addi r4, r4, __ct__4cXyzFv@l
/* 80ACACC4  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha
/* 80ACACC8  38 A5 A9 9C */	addi r5, r5, __dt__4cXyzFv@l
/* 80ACACCC  38 C0 00 0C */	li r6, 0xc
/* 80ACACD0  38 E0 00 03 */	li r7, 3
/* 80ACACD4  4B 89 70 8C */	b __construct_array
/* 80ACACD8  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80ACACDC  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha
/* 80ACACE0  38 84 AF 18 */	addi r4, r4, __ct__4cXyzFv@l
/* 80ACACE4  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha
/* 80ACACE8  38 A5 A9 9C */	addi r5, r5, __dt__4cXyzFv@l
/* 80ACACEC  38 C0 00 0C */	li r6, 0xc
/* 80ACACF0  38 E0 00 03 */	li r7, 3
/* 80ACACF4  4B 89 70 6C */	b __construct_array
/* 80ACACF8  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80ACACFC  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha
/* 80ACAD00  38 84 AF 18 */	addi r4, r4, __ct__4cXyzFv@l
/* 80ACAD04  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha
/* 80ACAD08  38 A5 A9 9C */	addi r5, r5, __dt__4cXyzFv@l
/* 80ACAD0C  38 C0 00 0C */	li r6, 0xc
/* 80ACAD10  38 E0 00 03 */	li r7, 3
/* 80ACAD14  4B 89 70 4C */	b __construct_array
/* 80ACAD18  7F 43 D3 78 */	mr r3, r26
/* 80ACAD1C  4B 67 BF 7C */	b initialize__15daNpcT_JntAnm_cFv
/* 80ACAD20  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80ACAD24  3C 80 80 AD */	lis r4, __ct__5csXyzFv@ha
/* 80ACAD28  38 84 AE 18 */	addi r4, r4, __ct__5csXyzFv@l
/* 80ACAD2C  3C A0 80 AD */	lis r5, __dt__5csXyzFv@ha
/* 80ACAD30  38 A5 A9 D8 */	addi r5, r5, __dt__5csXyzFv@l
/* 80ACAD34  38 C0 00 06 */	li r6, 6
/* 80ACAD38  38 E0 00 02 */	li r7, 2
/* 80ACAD3C  4B 89 70 24 */	b __construct_array
/* 80ACAD40  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80ACAD44  38 80 00 00 */	li r4, 0
/* 80ACAD48  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80ACAD4C  7C A3 00 50 */	subf r5, r3, r0
/* 80ACAD50  4B 53 87 08 */	b memset
/* 80ACAD54  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80ACAD58  4B 67 AB 40 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACAD5C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80ACAD60  4B 67 AB 38 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80ACAD64  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80ACAD68  4B 67 A9 6C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80ACAD6C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80ACAD70  4B 67 A9 64 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80ACAD74  7F 43 D3 78 */	mr r3, r26
/* 80ACAD78  4B 67 BF 20 */	b initialize__15daNpcT_JntAnm_cFv
/* 80ACAD7C  38 A0 00 00 */	li r5, 0
/* 80ACAD80  38 60 00 00 */	li r3, 0
/* 80ACAD84  7C A4 2B 78 */	mr r4, r5
/* 80ACAD88  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80ACAD8C  38 00 00 02 */	li r0, 2
/* 80ACAD90  7C 09 03 A6 */	mtctr r0
lbl_80ACAD94:
/* 80ACAD94  7C DF 22 14 */	add r6, r31, r4
/* 80ACAD98  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80ACAD9C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80ACADA0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80ACADA4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80ACADA8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80ACADAC  38 63 00 04 */	addi r3, r3, 4
/* 80ACADB0  38 84 00 06 */	addi r4, r4, 6
/* 80ACADB4  42 00 FF E0 */	bdnz lbl_80ACAD94
/* 80ACADB8  38 00 00 00 */	li r0, 0
/* 80ACADBC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80ACADC0  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80ACADC4  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80ACADC8  38 00 FF FF */	li r0, -1
/* 80ACADCC  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80ACADD0  38 00 00 01 */	li r0, 1
/* 80ACADD4  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80ACADD8  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80ACADDC  4B 79 CB 78 */	b cM_rndF__Ff
/* 80ACADE0  FC 00 08 1E */	fctiwz f0, f1
/* 80ACADE4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80ACADE8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80ACADEC  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80ACADF0  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80ACADF4  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80ACADF8  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80ACADFC  7F E3 FB 78 */	mr r3, r31
/* 80ACAE00  39 61 00 40 */	addi r11, r1, 0x40
/* 80ACAE04  4B 89 74 08 */	b _restgpr_22
/* 80ACAE08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80ACAE0C  7C 08 03 A6 */	mtlr r0
/* 80ACAE10  38 21 00 40 */	addi r1, r1, 0x40
/* 80ACAE14  4E 80 00 20 */	blr 
