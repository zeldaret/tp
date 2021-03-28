lbl_80A6F010:
/* 80A6F010  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A6F014  7C 08 02 A6 */	mflr r0
/* 80A6F018  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A6F01C  39 61 00 40 */	addi r11, r1, 0x40
/* 80A6F020  4B 8F 31 A0 */	b _savegpr_22
/* 80A6F024  7C 7F 1B 78 */	mr r31, r3
/* 80A6F028  7C 96 23 78 */	mr r22, r4
/* 80A6F02C  7C B7 2B 78 */	mr r23, r5
/* 80A6F030  7C DA 33 78 */	mr r26, r6
/* 80A6F034  7C FB 3B 78 */	mr r27, r7
/* 80A6F038  7D 1C 43 78 */	mr r28, r8
/* 80A6F03C  7D 3D 4B 78 */	mr r29, r9
/* 80A6F040  7D 58 53 78 */	mr r24, r10
/* 80A6F044  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80A6F048  3C 80 80 A7 */	lis r4, m__17daNpc_Lud_Param_c@ha
/* 80A6F04C  3B C4 FD 7C */	addi r30, r4, m__17daNpc_Lud_Param_c@l
/* 80A6F050  4B 5A 9B 14 */	b __ct__10fopAc_ac_cFv
/* 80A6F054  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80A6F058  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80A6F05C  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A6F060  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80A6F064  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80A6F068  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80A6F06C  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80A6F070  38 7F 05 80 */	addi r3, r31, 0x580
/* 80A6F074  4B 85 13 54 */	b __ct__10Z2CreatureFv
/* 80A6F078  3A DF 06 10 */	addi r22, r31, 0x610
/* 80A6F07C  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A6F080  38 03 09 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A6F084  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80A6F088  7E C3 B3 78 */	mr r3, r22
/* 80A6F08C  38 80 00 00 */	li r4, 0
/* 80A6F090  4B 8B 93 6C */	b init__12J3DFrameCtrlFs
/* 80A6F094  38 00 00 00 */	li r0, 0
/* 80A6F098  90 16 00 18 */	stw r0, 0x18(r22)
/* 80A6F09C  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80A6F0A0  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A6F0A4  38 03 09 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A6F0A8  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80A6F0AC  7E C3 B3 78 */	mr r3, r22
/* 80A6F0B0  38 80 00 00 */	li r4, 0
/* 80A6F0B4  4B 8B 93 48 */	b init__12J3DFrameCtrlFs
/* 80A6F0B8  38 00 00 00 */	li r0, 0
/* 80A6F0BC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A6F0C0  3A DF 06 44 */	addi r22, r31, 0x644
/* 80A6F0C4  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A6F0C8  38 03 09 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A6F0CC  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80A6F0D0  7E C3 B3 78 */	mr r3, r22
/* 80A6F0D4  38 80 00 00 */	li r4, 0
/* 80A6F0D8  4B 8B 93 24 */	b init__12J3DFrameCtrlFs
/* 80A6F0DC  38 00 00 00 */	li r0, 0
/* 80A6F0E0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A6F0E4  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80A6F0E8  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A6F0EC  38 03 09 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A6F0F0  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80A6F0F4  7E C3 B3 78 */	mr r3, r22
/* 80A6F0F8  38 80 00 00 */	li r4, 0
/* 80A6F0FC  4B 8B 93 00 */	b init__12J3DFrameCtrlFs
/* 80A6F100  38 00 00 00 */	li r0, 0
/* 80A6F104  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A6F108  3A DF 06 74 */	addi r22, r31, 0x674
/* 80A6F10C  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A6F110  38 03 09 EC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A6F114  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80A6F118  7E C3 B3 78 */	mr r3, r22
/* 80A6F11C  38 80 00 00 */	li r4, 0
/* 80A6F120  4B 8B 92 DC */	b init__12J3DFrameCtrlFs
/* 80A6F124  38 00 00 00 */	li r0, 0
/* 80A6F128  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A6F12C  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80A6F130  7E C3 B3 78 */	mr r3, r22
/* 80A6F134  4B 60 6F 6C */	b __ct__9dBgS_AcchFv
/* 80A6F138  3C 60 80 A7 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A6F13C  38 63 09 F8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A6F140  90 76 00 10 */	stw r3, 0x10(r22)
/* 80A6F144  38 03 00 0C */	addi r0, r3, 0xc
/* 80A6F148  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A6F14C  38 03 00 18 */	addi r0, r3, 0x18
/* 80A6F150  90 16 00 24 */	stw r0, 0x24(r22)
/* 80A6F154  38 76 00 14 */	addi r3, r22, 0x14
/* 80A6F158  4B 60 9D 10 */	b SetObj__16dBgS_PolyPassChkFv
/* 80A6F15C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A6F160  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A6F164  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80A6F168  38 7F 08 80 */	addi r3, r31, 0x880
/* 80A6F16C  4B 61 45 F4 */	b __ct__10dCcD_GSttsFv
/* 80A6F170  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A6F174  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A6F178  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80A6F17C  3B 23 00 20 */	addi r25, r3, 0x20
/* 80A6F180  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80A6F184  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80A6F188  4B 60 6D 24 */	b __ct__12dBgS_AcchCirFv
/* 80A6F18C  38 7F 09 30 */	addi r3, r31, 0x930
/* 80A6F190  4B 7F 8A 8C */	b __ct__11cBgS_GndChkFv
/* 80A6F194  38 7F 09 74 */	addi r3, r31, 0x974
/* 80A6F198  4B 7D AD 68 */	b __ct__10dMsgFlow_cFv
/* 80A6F19C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A6F1A0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A6F1A4  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A6F1A8  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80A6F1AC  4B 61 45 B4 */	b __ct__10dCcD_GSttsFv
/* 80A6F1B0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A6F1B4  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80A6F1B8  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A6F1BC  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80A6F1C0  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80A6F1C4  4B 60 83 B8 */	b __ct__11dBgS_GndChkFv
/* 80A6F1C8  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80A6F1CC  4B 60 8A 9C */	b __ct__11dBgS_LinChkFv
/* 80A6F1D0  3C 60 80 A7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A6F1D4  38 03 0A 40 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A6F1D8  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80A6F1DC  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80A6F1E0  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80A6F1E4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A6F1E8  4B 6D 66 B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6F1EC  3C 60 80 A7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A6F1F0  38 03 0A 40 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A6F1F4  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80A6F1F8  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80A6F1FC  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80A6F200  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A6F204  4B 6D 66 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6F208  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A6F20C  38 03 0A 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A6F210  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80A6F214  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A6F218  4B 6D 64 BC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A6F21C  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A6F220  38 03 0A 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A6F224  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80A6F228  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A6F22C  4B 6D 64 A8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A6F230  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80A6F234  3C 60 80 A7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80A6F238  38 03 0A 58 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80A6F23C  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80A6F240  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80A6F244  38 03 0A 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80A6F248  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80A6F24C  7F 43 D3 78 */	mr r3, r26
/* 80A6F250  4B 6D 64 84 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A6F254  38 7A 00 30 */	addi r3, r26, 0x30
/* 80A6F258  3C 80 80 A7 */	lis r4, __ct__4cXyzFv@ha
/* 80A6F25C  38 84 F5 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A6F260  3C A0 80 A7 */	lis r5, __dt__4cXyzFv@ha
/* 80A6F264  38 A5 EE 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A6F268  38 C0 00 0C */	li r6, 0xc
/* 80A6F26C  38 E0 00 03 */	li r7, 3
/* 80A6F270  4B 8F 2A F0 */	b __construct_array
/* 80A6F274  38 7A 00 54 */	addi r3, r26, 0x54
/* 80A6F278  3C 80 80 A7 */	lis r4, __ct__4cXyzFv@ha
/* 80A6F27C  38 84 F5 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A6F280  3C A0 80 A7 */	lis r5, __dt__4cXyzFv@ha
/* 80A6F284  38 A5 EE 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A6F288  38 C0 00 0C */	li r6, 0xc
/* 80A6F28C  38 E0 00 03 */	li r7, 3
/* 80A6F290  4B 8F 2A D0 */	b __construct_array
/* 80A6F294  38 7A 00 78 */	addi r3, r26, 0x78
/* 80A6F298  3C 80 80 A7 */	lis r4, __ct__4cXyzFv@ha
/* 80A6F29C  38 84 F5 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A6F2A0  3C A0 80 A7 */	lis r5, __dt__4cXyzFv@ha
/* 80A6F2A4  38 A5 EE 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A6F2A8  38 C0 00 0C */	li r6, 0xc
/* 80A6F2AC  38 E0 00 03 */	li r7, 3
/* 80A6F2B0  4B 8F 2A B0 */	b __construct_array
/* 80A6F2B4  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80A6F2B8  3C 80 80 A7 */	lis r4, __ct__4cXyzFv@ha
/* 80A6F2BC  38 84 F5 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A6F2C0  3C A0 80 A7 */	lis r5, __dt__4cXyzFv@ha
/* 80A6F2C4  38 A5 EE 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A6F2C8  38 C0 00 0C */	li r6, 0xc
/* 80A6F2CC  38 E0 00 03 */	li r7, 3
/* 80A6F2D0  4B 8F 2A 90 */	b __construct_array
/* 80A6F2D4  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80A6F2D8  3C 80 80 A7 */	lis r4, __ct__4cXyzFv@ha
/* 80A6F2DC  38 84 F5 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A6F2E0  3C A0 80 A7 */	lis r5, __dt__4cXyzFv@ha
/* 80A6F2E4  38 A5 EE 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A6F2E8  38 C0 00 0C */	li r6, 0xc
/* 80A6F2EC  38 E0 00 03 */	li r7, 3
/* 80A6F2F0  4B 8F 2A 70 */	b __construct_array
/* 80A6F2F4  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80A6F2F8  3C 80 80 A7 */	lis r4, __ct__4cXyzFv@ha
/* 80A6F2FC  38 84 F5 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A6F300  3C A0 80 A7 */	lis r5, __dt__4cXyzFv@ha
/* 80A6F304  38 A5 EE 84 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A6F308  38 C0 00 0C */	li r6, 0xc
/* 80A6F30C  38 E0 00 03 */	li r7, 3
/* 80A6F310  4B 8F 2A 50 */	b __construct_array
/* 80A6F314  7F 43 D3 78 */	mr r3, r26
/* 80A6F318  4B 6D 79 80 */	b initialize__15daNpcT_JntAnm_cFv
/* 80A6F31C  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A6F320  3C 80 80 A7 */	lis r4, __ct__5csXyzFv@ha
/* 80A6F324  38 84 F4 14 */	addi r4, r4, __ct__5csXyzFv@l
/* 80A6F328  3C A0 80 A7 */	lis r5, __dt__5csXyzFv@ha
/* 80A6F32C  38 A5 EE C0 */	addi r5, r5, __dt__5csXyzFv@l
/* 80A6F330  38 C0 00 06 */	li r6, 6
/* 80A6F334  38 E0 00 02 */	li r7, 2
/* 80A6F338  4B 8F 2A 28 */	b __construct_array
/* 80A6F33C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A6F340  38 80 00 00 */	li r4, 0
/* 80A6F344  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A6F348  7C A3 00 50 */	subf r5, r3, r0
/* 80A6F34C  4B 59 41 0C */	b memset
/* 80A6F350  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A6F354  4B 6D 65 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6F358  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A6F35C  4B 6D 65 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A6F360  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A6F364  4B 6D 63 70 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A6F368  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A6F36C  4B 6D 63 68 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A6F370  7F 43 D3 78 */	mr r3, r26
/* 80A6F374  4B 6D 79 24 */	b initialize__15daNpcT_JntAnm_cFv
/* 80A6F378  38 A0 00 00 */	li r5, 0
/* 80A6F37C  38 60 00 00 */	li r3, 0
/* 80A6F380  7C A4 2B 78 */	mr r4, r5
/* 80A6F384  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80A6F388  38 00 00 02 */	li r0, 2
/* 80A6F38C  7C 09 03 A6 */	mtctr r0
lbl_80A6F390:
/* 80A6F390  7C DF 22 14 */	add r6, r31, r4
/* 80A6F394  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A6F398  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A6F39C  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A6F3A0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A6F3A4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A6F3A8  38 63 00 04 */	addi r3, r3, 4
/* 80A6F3AC  38 84 00 06 */	addi r4, r4, 6
/* 80A6F3B0  42 00 FF E0 */	bdnz lbl_80A6F390
/* 80A6F3B4  38 00 00 00 */	li r0, 0
/* 80A6F3B8  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A6F3BC  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A6F3C0  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A6F3C4  38 00 FF FF */	li r0, -1
/* 80A6F3C8  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A6F3CC  38 00 00 01 */	li r0, 1
/* 80A6F3D0  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A6F3D4  C0 3E 00 CC */	lfs f1, 0xcc(r30)
/* 80A6F3D8  4B 7F 85 7C */	b cM_rndF__Ff
/* 80A6F3DC  FC 00 08 1E */	fctiwz f0, f1
/* 80A6F3E0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A6F3E4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A6F3E8  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A6F3EC  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 80A6F3F0  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A6F3F4  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A6F3F8  7F E3 FB 78 */	mr r3, r31
/* 80A6F3FC  39 61 00 40 */	addi r11, r1, 0x40
/* 80A6F400  4B 8F 2E 0C */	b _restgpr_22
/* 80A6F404  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A6F408  7C 08 03 A6 */	mtlr r0
/* 80A6F40C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A6F410  4E 80 00 20 */	blr 
