lbl_80B4C09C:
/* 80B4C09C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B4C0A0  7C 08 02 A6 */	mflr r0
/* 80B4C0A4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B4C0A8  39 61 00 40 */	addi r11, r1, 0x40
/* 80B4C0AC  4B 81 61 14 */	b _savegpr_22
/* 80B4C0B0  7C 7F 1B 78 */	mr r31, r3
/* 80B4C0B4  7C 96 23 78 */	mr r22, r4
/* 80B4C0B8  7C B7 2B 78 */	mr r23, r5
/* 80B4C0BC  7C DA 33 78 */	mr r26, r6
/* 80B4C0C0  7C FB 3B 78 */	mr r27, r7
/* 80B4C0C4  7D 1C 43 78 */	mr r28, r8
/* 80B4C0C8  7D 3D 4B 78 */	mr r29, r9
/* 80B4C0CC  7D 58 53 78 */	mr r24, r10
/* 80B4C0D0  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80B4C0D4  3C 80 80 B5 */	lis r4, m__19daNpc_yamiT_Param_c@ha
/* 80B4C0D8  3B C4 CD A4 */	addi r30, r4, m__19daNpc_yamiT_Param_c@l
/* 80B4C0DC  4B 4C CA 88 */	b __ct__10fopAc_ac_cFv
/* 80B4C0E0  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80B4C0E4  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80B4C0E8  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B4C0EC  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80B4C0F0  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80B4C0F4  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80B4C0F8  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80B4C0FC  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B4C100  4B 77 42 C8 */	b __ct__10Z2CreatureFv
/* 80B4C104  3A DF 06 10 */	addi r22, r31, 0x610
/* 80B4C108  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B4C10C  38 03 D0 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B4C110  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80B4C114  7E C3 B3 78 */	mr r3, r22
/* 80B4C118  38 80 00 00 */	li r4, 0
/* 80B4C11C  4B 7D C2 E0 */	b init__12J3DFrameCtrlFs
/* 80B4C120  38 00 00 00 */	li r0, 0
/* 80B4C124  90 16 00 18 */	stw r0, 0x18(r22)
/* 80B4C128  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80B4C12C  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B4C130  38 03 D0 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B4C134  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B4C138  7E C3 B3 78 */	mr r3, r22
/* 80B4C13C  38 80 00 00 */	li r4, 0
/* 80B4C140  4B 7D C2 BC */	b init__12J3DFrameCtrlFs
/* 80B4C144  38 00 00 00 */	li r0, 0
/* 80B4C148  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B4C14C  3A DF 06 44 */	addi r22, r31, 0x644
/* 80B4C150  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B4C154  38 03 D0 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B4C158  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80B4C15C  7E C3 B3 78 */	mr r3, r22
/* 80B4C160  38 80 00 00 */	li r4, 0
/* 80B4C164  4B 7D C2 98 */	b init__12J3DFrameCtrlFs
/* 80B4C168  38 00 00 00 */	li r0, 0
/* 80B4C16C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B4C170  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80B4C174  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B4C178  38 03 D0 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B4C17C  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80B4C180  7E C3 B3 78 */	mr r3, r22
/* 80B4C184  38 80 00 00 */	li r4, 0
/* 80B4C188  4B 7D C2 74 */	b init__12J3DFrameCtrlFs
/* 80B4C18C  38 00 00 00 */	li r0, 0
/* 80B4C190  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B4C194  3A DF 06 74 */	addi r22, r31, 0x674
/* 80B4C198  3C 60 80 B5 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B4C19C  38 03 D0 80 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B4C1A0  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80B4C1A4  7E C3 B3 78 */	mr r3, r22
/* 80B4C1A8  38 80 00 00 */	li r4, 0
/* 80B4C1AC  4B 7D C2 50 */	b init__12J3DFrameCtrlFs
/* 80B4C1B0  38 00 00 00 */	li r0, 0
/* 80B4C1B4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B4C1B8  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80B4C1BC  7E C3 B3 78 */	mr r3, r22
/* 80B4C1C0  4B 52 9E E0 */	b __ct__9dBgS_AcchFv
/* 80B4C1C4  3C 60 80 B5 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80B4C1C8  38 63 D0 8C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80B4C1CC  90 76 00 10 */	stw r3, 0x10(r22)
/* 80B4C1D0  38 03 00 0C */	addi r0, r3, 0xc
/* 80B4C1D4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B4C1D8  38 03 00 18 */	addi r0, r3, 0x18
/* 80B4C1DC  90 16 00 24 */	stw r0, 0x24(r22)
/* 80B4C1E0  38 76 00 14 */	addi r3, r22, 0x14
/* 80B4C1E4  4B 52 CC 84 */	b SetObj__16dBgS_PolyPassChkFv
/* 80B4C1E8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B4C1EC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B4C1F0  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80B4C1F4  38 7F 08 80 */	addi r3, r31, 0x880
/* 80B4C1F8  4B 53 75 68 */	b __ct__10dCcD_GSttsFv
/* 80B4C1FC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B4C200  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B4C204  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80B4C208  3B 23 00 20 */	addi r25, r3, 0x20
/* 80B4C20C  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80B4C210  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B4C214  4B 52 9C 98 */	b __ct__12dBgS_AcchCirFv
/* 80B4C218  38 7F 09 30 */	addi r3, r31, 0x930
/* 80B4C21C  4B 71 BA 00 */	b __ct__11cBgS_GndChkFv
/* 80B4C220  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B4C224  4B 6F DC DC */	b __ct__10dMsgFlow_cFv
/* 80B4C228  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B4C22C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B4C230  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B4C234  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80B4C238  4B 53 75 28 */	b __ct__10dCcD_GSttsFv
/* 80B4C23C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B4C240  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80B4C244  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B4C248  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80B4C24C  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80B4C250  4B 52 B3 2C */	b __ct__11dBgS_GndChkFv
/* 80B4C254  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80B4C258  4B 52 BA 10 */	b __ct__11dBgS_LinChkFv
/* 80B4C25C  3C 60 80 B5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B4C260  38 03 D0 D4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B4C264  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80B4C268  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80B4C26C  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80B4C270  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B4C274  4B 5F 96 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4C278  3C 60 80 B5 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B4C27C  38 03 D0 D4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B4C280  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80B4C284  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80B4C288  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80B4C28C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B4C290  4B 5F 96 08 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4C294  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B4C298  38 03 D0 E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B4C29C  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80B4C2A0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B4C2A4  4B 5F 94 30 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B4C2A8  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B4C2AC  38 03 D0 E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B4C2B0  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80B4C2B4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B4C2B8  4B 5F 94 1C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B4C2BC  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80B4C2C0  3C 60 80 B5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B4C2C4  38 03 D0 EC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B4C2C8  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80B4C2CC  3C 60 80 B5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B4C2D0  38 03 D0 E0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B4C2D4  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80B4C2D8  7F 43 D3 78 */	mr r3, r26
/* 80B4C2DC  4B 5F 93 F8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B4C2E0  38 7A 00 30 */	addi r3, r26, 0x30
/* 80B4C2E4  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha
/* 80B4C2E8  38 84 C5 A0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B4C2EC  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha
/* 80B4C2F0  38 A5 BF 4C */	addi r5, r5, __dt__4cXyzFv@l
/* 80B4C2F4  38 C0 00 0C */	li r6, 0xc
/* 80B4C2F8  38 E0 00 03 */	li r7, 3
/* 80B4C2FC  4B 81 5A 64 */	b __construct_array
/* 80B4C300  38 7A 00 54 */	addi r3, r26, 0x54
/* 80B4C304  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha
/* 80B4C308  38 84 C5 A0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B4C30C  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha
/* 80B4C310  38 A5 BF 4C */	addi r5, r5, __dt__4cXyzFv@l
/* 80B4C314  38 C0 00 0C */	li r6, 0xc
/* 80B4C318  38 E0 00 03 */	li r7, 3
/* 80B4C31C  4B 81 5A 44 */	b __construct_array
/* 80B4C320  38 7A 00 78 */	addi r3, r26, 0x78
/* 80B4C324  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha
/* 80B4C328  38 84 C5 A0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B4C32C  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha
/* 80B4C330  38 A5 BF 4C */	addi r5, r5, __dt__4cXyzFv@l
/* 80B4C334  38 C0 00 0C */	li r6, 0xc
/* 80B4C338  38 E0 00 03 */	li r7, 3
/* 80B4C33C  4B 81 5A 24 */	b __construct_array
/* 80B4C340  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80B4C344  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha
/* 80B4C348  38 84 C5 A0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B4C34C  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha
/* 80B4C350  38 A5 BF 4C */	addi r5, r5, __dt__4cXyzFv@l
/* 80B4C354  38 C0 00 0C */	li r6, 0xc
/* 80B4C358  38 E0 00 03 */	li r7, 3
/* 80B4C35C  4B 81 5A 04 */	b __construct_array
/* 80B4C360  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80B4C364  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha
/* 80B4C368  38 84 C5 A0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B4C36C  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha
/* 80B4C370  38 A5 BF 4C */	addi r5, r5, __dt__4cXyzFv@l
/* 80B4C374  38 C0 00 0C */	li r6, 0xc
/* 80B4C378  38 E0 00 03 */	li r7, 3
/* 80B4C37C  4B 81 59 E4 */	b __construct_array
/* 80B4C380  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80B4C384  3C 80 80 B5 */	lis r4, __ct__4cXyzFv@ha
/* 80B4C388  38 84 C5 A0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B4C38C  3C A0 80 B5 */	lis r5, __dt__4cXyzFv@ha
/* 80B4C390  38 A5 BF 4C */	addi r5, r5, __dt__4cXyzFv@l
/* 80B4C394  38 C0 00 0C */	li r6, 0xc
/* 80B4C398  38 E0 00 03 */	li r7, 3
/* 80B4C39C  4B 81 59 C4 */	b __construct_array
/* 80B4C3A0  7F 43 D3 78 */	mr r3, r26
/* 80B4C3A4  4B 5F A8 F4 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B4C3A8  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B4C3AC  3C 80 80 B5 */	lis r4, __ct__5csXyzFv@ha
/* 80B4C3B0  38 84 C4 A0 */	addi r4, r4, __ct__5csXyzFv@l
/* 80B4C3B4  3C A0 80 B5 */	lis r5, __dt__5csXyzFv@ha
/* 80B4C3B8  38 A5 BF 88 */	addi r5, r5, __dt__5csXyzFv@l
/* 80B4C3BC  38 C0 00 06 */	li r6, 6
/* 80B4C3C0  38 E0 00 02 */	li r7, 2
/* 80B4C3C4  4B 81 59 9C */	b __construct_array
/* 80B4C3C8  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B4C3CC  38 80 00 00 */	li r4, 0
/* 80B4C3D0  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B4C3D4  7C A3 00 50 */	subf r5, r3, r0
/* 80B4C3D8  4B 4B 70 80 */	b memset
/* 80B4C3DC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B4C3E0  4B 5F 94 B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4C3E4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B4C3E8  4B 5F 94 B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B4C3EC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B4C3F0  4B 5F 92 E4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B4C3F4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B4C3F8  4B 5F 92 DC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B4C3FC  7F 43 D3 78 */	mr r3, r26
/* 80B4C400  4B 5F A8 98 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B4C404  38 A0 00 00 */	li r5, 0
/* 80B4C408  38 60 00 00 */	li r3, 0
/* 80B4C40C  7C A4 2B 78 */	mr r4, r5
/* 80B4C410  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B4C414  38 00 00 02 */	li r0, 2
/* 80B4C418  7C 09 03 A6 */	mtctr r0
lbl_80B4C41C:
/* 80B4C41C  7C DF 22 14 */	add r6, r31, r4
/* 80B4C420  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B4C424  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B4C428  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B4C42C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B4C430  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B4C434  38 63 00 04 */	addi r3, r3, 4
/* 80B4C438  38 84 00 06 */	addi r4, r4, 6
/* 80B4C43C  42 00 FF E0 */	bdnz lbl_80B4C41C
/* 80B4C440  38 00 00 00 */	li r0, 0
/* 80B4C444  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B4C448  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B4C44C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B4C450  38 00 FF FF */	li r0, -1
/* 80B4C454  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B4C458  38 00 00 01 */	li r0, 1
/* 80B4C45C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B4C460  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80B4C464  4B 71 B4 F0 */	b cM_rndF__Ff
/* 80B4C468  FC 00 08 1E */	fctiwz f0, f1
/* 80B4C46C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B4C470  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B4C474  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B4C478  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80B4C47C  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B4C480  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B4C484  7F E3 FB 78 */	mr r3, r31
/* 80B4C488  39 61 00 40 */	addi r11, r1, 0x40
/* 80B4C48C  4B 81 5D 80 */	b _restgpr_22
/* 80B4C490  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B4C494  7C 08 03 A6 */	mtlr r0
/* 80B4C498  38 21 00 40 */	addi r1, r1, 0x40
/* 80B4C49C  4E 80 00 20 */	blr 
