lbl_80B6AF60:
/* 80B6AF60  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B6AF64  7C 08 02 A6 */	mflr r0
/* 80B6AF68  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B6AF6C  39 61 00 40 */	addi r11, r1, 0x40
/* 80B6AF70  4B 7F 72 51 */	bl _savegpr_22
/* 80B6AF74  7C 7F 1B 78 */	mr r31, r3
/* 80B6AF78  7C 96 23 78 */	mr r22, r4
/* 80B6AF7C  7C B7 2B 78 */	mr r23, r5
/* 80B6AF80  7C DA 33 78 */	mr r26, r6
/* 80B6AF84  7C FB 3B 78 */	mr r27, r7
/* 80B6AF88  7D 1C 43 78 */	mr r28, r8
/* 80B6AF8C  7D 3D 4B 78 */	mr r29, r9
/* 80B6AF90  7D 58 53 78 */	mr r24, r10
/* 80B6AF94  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80B6AF98  3C 80 80 B7 */	lis r4, m__18daNpc_zanB_Param_c@ha /* 0x80B6BCC4@ha */
/* 80B6AF9C  3B C4 BC C4 */	addi r30, r4, m__18daNpc_zanB_Param_c@l /* 0x80B6BCC4@l */
/* 80B6AFA0  4B 4A DB C5 */	bl __ct__10fopAc_ac_cFv
/* 80B6AFA4  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80B6AFA8  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80B6AFAC  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B6AFB0  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80B6AFB4  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80B6AFB8  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80B6AFBC  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80B6AFC0  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B6AFC4  4B 75 54 05 */	bl __ct__10Z2CreatureFv
/* 80B6AFC8  3A DF 06 10 */	addi r22, r31, 0x610
/* 80B6AFCC  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6BF3C@ha */
/* 80B6AFD0  38 03 BF 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6BF3C@l */
/* 80B6AFD4  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80B6AFD8  7E C3 B3 78 */	mr r3, r22
/* 80B6AFDC  38 80 00 00 */	li r4, 0
/* 80B6AFE0  4B 7B D4 1D */	bl init__12J3DFrameCtrlFs
/* 80B6AFE4  38 00 00 00 */	li r0, 0
/* 80B6AFE8  90 16 00 18 */	stw r0, 0x18(r22)
/* 80B6AFEC  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80B6AFF0  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6BF3C@ha */
/* 80B6AFF4  38 03 BF 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6BF3C@l */
/* 80B6AFF8  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B6AFFC  7E C3 B3 78 */	mr r3, r22
/* 80B6B000  38 80 00 00 */	li r4, 0
/* 80B6B004  4B 7B D3 F9 */	bl init__12J3DFrameCtrlFs
/* 80B6B008  38 00 00 00 */	li r0, 0
/* 80B6B00C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B6B010  3A DF 06 44 */	addi r22, r31, 0x644
/* 80B6B014  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6BF3C@ha */
/* 80B6B018  38 03 BF 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6BF3C@l */
/* 80B6B01C  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80B6B020  7E C3 B3 78 */	mr r3, r22
/* 80B6B024  38 80 00 00 */	li r4, 0
/* 80B6B028  4B 7B D3 D5 */	bl init__12J3DFrameCtrlFs
/* 80B6B02C  38 00 00 00 */	li r0, 0
/* 80B6B030  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B6B034  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80B6B038  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6BF3C@ha */
/* 80B6B03C  38 03 BF 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6BF3C@l */
/* 80B6B040  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80B6B044  7E C3 B3 78 */	mr r3, r22
/* 80B6B048  38 80 00 00 */	li r4, 0
/* 80B6B04C  4B 7B D3 B1 */	bl init__12J3DFrameCtrlFs
/* 80B6B050  38 00 00 00 */	li r0, 0
/* 80B6B054  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B6B058  3A DF 06 74 */	addi r22, r31, 0x674
/* 80B6B05C  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B6BF3C@ha */
/* 80B6B060  38 03 BF 3C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B6BF3C@l */
/* 80B6B064  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80B6B068  7E C3 B3 78 */	mr r3, r22
/* 80B6B06C  38 80 00 00 */	li r4, 0
/* 80B6B070  4B 7B D3 8D */	bl init__12J3DFrameCtrlFs
/* 80B6B074  38 00 00 00 */	li r0, 0
/* 80B6B078  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B6B07C  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80B6B080  7E C3 B3 78 */	mr r3, r22
/* 80B6B084  4B 50 B0 1D */	bl __ct__9dBgS_AcchFv
/* 80B6B088  3C 60 80 B7 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B6BF48@ha */
/* 80B6B08C  38 63 BF 48 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B6BF48@l */
/* 80B6B090  90 76 00 10 */	stw r3, 0x10(r22)
/* 80B6B094  38 03 00 0C */	addi r0, r3, 0xc
/* 80B6B098  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B6B09C  38 03 00 18 */	addi r0, r3, 0x18
/* 80B6B0A0  90 16 00 24 */	stw r0, 0x24(r22)
/* 80B6B0A4  38 76 00 14 */	addi r3, r22, 0x14
/* 80B6B0A8  4B 50 DD C1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80B6B0AC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B6B0B0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B6B0B4  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80B6B0B8  38 7F 08 80 */	addi r3, r31, 0x880
/* 80B6B0BC  4B 51 86 A5 */	bl __ct__10dCcD_GSttsFv
/* 80B6B0C0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B6B0C4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B6B0C8  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80B6B0CC  3B 23 00 20 */	addi r25, r3, 0x20
/* 80B6B0D0  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80B6B0D4  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B6B0D8  4B 50 AD D5 */	bl __ct__12dBgS_AcchCirFv
/* 80B6B0DC  38 7F 09 30 */	addi r3, r31, 0x930
/* 80B6B0E0  4B 6F CB 3D */	bl __ct__11cBgS_GndChkFv
/* 80B6B0E4  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B6B0E8  4B 6D EE 19 */	bl __ct__10dMsgFlow_cFv
/* 80B6B0EC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B6B0F0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B6B0F4  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B6B0F8  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80B6B0FC  4B 51 86 65 */	bl __ct__10dCcD_GSttsFv
/* 80B6B100  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B6B104  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B6B108  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B6B10C  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80B6B110  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80B6B114  4B 50 C4 69 */	bl __ct__11dBgS_GndChkFv
/* 80B6B118  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80B6B11C  4B 50 CB 4D */	bl __ct__11dBgS_LinChkFv
/* 80B6B120  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B6BF90@ha */
/* 80B6B124  38 03 BF 90 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B6BF90@l */
/* 80B6B128  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80B6B12C  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80B6B130  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80B6B134  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B6B138  4B 5D A7 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6B13C  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B6BF90@ha */
/* 80B6B140  38 03 BF 90 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B6BF90@l */
/* 80B6B144  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80B6B148  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80B6B14C  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80B6B150  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B6B154  4B 5D A7 45 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6B158  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B6BF9C@ha */
/* 80B6B15C  38 03 BF 9C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B6BF9C@l */
/* 80B6B160  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80B6B164  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B6B168  4B 5D A5 6D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B6B16C  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B6BF9C@ha */
/* 80B6B170  38 03 BF 9C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B6BF9C@l */
/* 80B6B174  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80B6B178  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B6B17C  4B 5D A5 59 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B6B180  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80B6B184  3C 60 80 B7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B6BFA8@ha */
/* 80B6B188  38 03 BF A8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B6BFA8@l */
/* 80B6B18C  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80B6B190  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B6BF9C@ha */
/* 80B6B194  38 03 BF 9C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B6BF9C@l */
/* 80B6B198  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80B6B19C  7F 43 D3 78 */	mr r3, r26
/* 80B6B1A0  4B 5D A5 35 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B6B1A4  38 7A 00 30 */	addi r3, r26, 0x30
/* 80B6B1A8  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha /* 0x80B6B464@ha */
/* 80B6B1AC  38 84 B4 64 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B6B464@l */
/* 80B6B1B0  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha /* 0x80B6AEE8@ha */
/* 80B6B1B4  38 A5 AE E8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B6AEE8@l */
/* 80B6B1B8  38 C0 00 0C */	li r6, 0xc
/* 80B6B1BC  38 E0 00 03 */	li r7, 3
/* 80B6B1C0  4B 7F 6B A1 */	bl __construct_array
/* 80B6B1C4  38 7A 00 54 */	addi r3, r26, 0x54
/* 80B6B1C8  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha /* 0x80B6B464@ha */
/* 80B6B1CC  38 84 B4 64 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B6B464@l */
/* 80B6B1D0  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha /* 0x80B6AEE8@ha */
/* 80B6B1D4  38 A5 AE E8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B6AEE8@l */
/* 80B6B1D8  38 C0 00 0C */	li r6, 0xc
/* 80B6B1DC  38 E0 00 03 */	li r7, 3
/* 80B6B1E0  4B 7F 6B 81 */	bl __construct_array
/* 80B6B1E4  38 7A 00 78 */	addi r3, r26, 0x78
/* 80B6B1E8  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha /* 0x80B6B464@ha */
/* 80B6B1EC  38 84 B4 64 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B6B464@l */
/* 80B6B1F0  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha /* 0x80B6AEE8@ha */
/* 80B6B1F4  38 A5 AE E8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B6AEE8@l */
/* 80B6B1F8  38 C0 00 0C */	li r6, 0xc
/* 80B6B1FC  38 E0 00 03 */	li r7, 3
/* 80B6B200  4B 7F 6B 61 */	bl __construct_array
/* 80B6B204  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80B6B208  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha /* 0x80B6B464@ha */
/* 80B6B20C  38 84 B4 64 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B6B464@l */
/* 80B6B210  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha /* 0x80B6AEE8@ha */
/* 80B6B214  38 A5 AE E8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B6AEE8@l */
/* 80B6B218  38 C0 00 0C */	li r6, 0xc
/* 80B6B21C  38 E0 00 03 */	li r7, 3
/* 80B6B220  4B 7F 6B 41 */	bl __construct_array
/* 80B6B224  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80B6B228  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha /* 0x80B6B464@ha */
/* 80B6B22C  38 84 B4 64 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B6B464@l */
/* 80B6B230  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha /* 0x80B6AEE8@ha */
/* 80B6B234  38 A5 AE E8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B6AEE8@l */
/* 80B6B238  38 C0 00 0C */	li r6, 0xc
/* 80B6B23C  38 E0 00 03 */	li r7, 3
/* 80B6B240  4B 7F 6B 21 */	bl __construct_array
/* 80B6B244  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80B6B248  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha /* 0x80B6B464@ha */
/* 80B6B24C  38 84 B4 64 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B6B464@l */
/* 80B6B250  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha /* 0x80B6AEE8@ha */
/* 80B6B254  38 A5 AE E8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B6AEE8@l */
/* 80B6B258  38 C0 00 0C */	li r6, 0xc
/* 80B6B25C  38 E0 00 03 */	li r7, 3
/* 80B6B260  4B 7F 6B 01 */	bl __construct_array
/* 80B6B264  7F 43 D3 78 */	mr r3, r26
/* 80B6B268  4B 5D BA 31 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B6B26C  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B6B270  3C 80 80 B7 */	lis r4, __ct__5csXyzFv@ha /* 0x80B6B364@ha */
/* 80B6B274  38 84 B3 64 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B6B364@l */
/* 80B6B278  3C A0 80 B7 */	lis r5, __dt__5csXyzFv@ha /* 0x80B6AF24@ha */
/* 80B6B27C  38 A5 AF 24 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B6AF24@l */
/* 80B6B280  38 C0 00 06 */	li r6, 6
/* 80B6B284  38 E0 00 02 */	li r7, 2
/* 80B6B288  4B 7F 6A D9 */	bl __construct_array
/* 80B6B28C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B6B290  38 80 00 00 */	li r4, 0
/* 80B6B294  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B6B298  7C A3 00 50 */	subf r5, r3, r0
/* 80B6B29C  4B 49 81 BD */	bl memset
/* 80B6B2A0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B6B2A4  4B 5D A5 F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6B2A8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B6B2AC  4B 5D A5 ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6B2B0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B6B2B4  4B 5D A4 21 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B6B2B8  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B6B2BC  4B 5D A4 19 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B6B2C0  7F 43 D3 78 */	mr r3, r26
/* 80B6B2C4  4B 5D B9 D5 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B6B2C8  38 A0 00 00 */	li r5, 0
/* 80B6B2CC  38 60 00 00 */	li r3, 0
/* 80B6B2D0  7C A4 2B 78 */	mr r4, r5
/* 80B6B2D4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80B6B2D8  38 00 00 02 */	li r0, 2
/* 80B6B2DC  7C 09 03 A6 */	mtctr r0
lbl_80B6B2E0:
/* 80B6B2E0  7C DF 22 14 */	add r6, r31, r4
/* 80B6B2E4  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B6B2E8  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B6B2EC  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B6B2F0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B6B2F4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B6B2F8  38 63 00 04 */	addi r3, r3, 4
/* 80B6B2FC  38 84 00 06 */	addi r4, r4, 6
/* 80B6B300  42 00 FF E0 */	bdnz lbl_80B6B2E0
/* 80B6B304  38 00 00 00 */	li r0, 0
/* 80B6B308  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B6B30C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B6B310  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B6B314  38 00 FF FF */	li r0, -1
/* 80B6B318  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B6B31C  38 00 00 01 */	li r0, 1
/* 80B6B320  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B6B324  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B6B328  4B 6F C6 2D */	bl cM_rndF__Ff
/* 80B6B32C  FC 00 08 1E */	fctiwz f0, f1
/* 80B6B330  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B6B334  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B6B338  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B6B33C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B6B340  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B6B344  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B6B348  7F E3 FB 78 */	mr r3, r31
/* 80B6B34C  39 61 00 40 */	addi r11, r1, 0x40
/* 80B6B350  4B 7F 6E BD */	bl _restgpr_22
/* 80B6B354  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B6B358  7C 08 03 A6 */	mtlr r0
/* 80B6B35C  38 21 00 40 */	addi r1, r1, 0x40
/* 80B6B360  4E 80 00 20 */	blr 
