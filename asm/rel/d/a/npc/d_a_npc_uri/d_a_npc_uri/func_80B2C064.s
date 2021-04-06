lbl_80B2C064:
/* 80B2C064  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B2C068  7C 08 02 A6 */	mflr r0
/* 80B2C06C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B2C070  39 61 00 40 */	addi r11, r1, 0x40
/* 80B2C074  4B 83 61 4D */	bl _savegpr_22
/* 80B2C078  7C 7F 1B 78 */	mr r31, r3
/* 80B2C07C  7C 96 23 78 */	mr r22, r4
/* 80B2C080  7C B7 2B 78 */	mr r23, r5
/* 80B2C084  7C DA 33 78 */	mr r26, r6
/* 80B2C088  7C FB 3B 78 */	mr r27, r7
/* 80B2C08C  7D 1C 43 78 */	mr r28, r8
/* 80B2C090  7D 3D 4B 78 */	mr r29, r9
/* 80B2C094  7D 58 53 78 */	mr r24, r10
/* 80B2C098  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80B2C09C  3C 80 80 B3 */	lis r4, m__17daNpc_Uri_Param_c@ha /* 0x80B2CE14@ha */
/* 80B2C0A0  3B C4 CE 14 */	addi r30, r4, m__17daNpc_Uri_Param_c@l /* 0x80B2CE14@l */
/* 80B2C0A4  4B 4E CA C1 */	bl __ct__10fopAc_ac_cFv
/* 80B2C0A8  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80B2C0AC  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80B2C0B0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B2C0B4  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80B2C0B8  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80B2C0BC  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80B2C0C0  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80B2C0C4  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B2C0C8  4B 79 43 01 */	bl __ct__10Z2CreatureFv
/* 80B2C0CC  3A DF 06 10 */	addi r22, r31, 0x610
/* 80B2C0D0  3C 60 80 B3 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B2DBA0@ha */
/* 80B2C0D4  38 03 DB A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B2DBA0@l */
/* 80B2C0D8  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80B2C0DC  7E C3 B3 78 */	mr r3, r22
/* 80B2C0E0  38 80 00 00 */	li r4, 0
/* 80B2C0E4  4B 7F C3 19 */	bl init__12J3DFrameCtrlFs
/* 80B2C0E8  38 00 00 00 */	li r0, 0
/* 80B2C0EC  90 16 00 18 */	stw r0, 0x18(r22)
/* 80B2C0F0  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80B2C0F4  3C 60 80 B3 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B2DBA0@ha */
/* 80B2C0F8  38 03 DB A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B2DBA0@l */
/* 80B2C0FC  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B2C100  7E C3 B3 78 */	mr r3, r22
/* 80B2C104  38 80 00 00 */	li r4, 0
/* 80B2C108  4B 7F C2 F5 */	bl init__12J3DFrameCtrlFs
/* 80B2C10C  38 00 00 00 */	li r0, 0
/* 80B2C110  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B2C114  3A DF 06 44 */	addi r22, r31, 0x644
/* 80B2C118  3C 60 80 B3 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B2DBA0@ha */
/* 80B2C11C  38 03 DB A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B2DBA0@l */
/* 80B2C120  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80B2C124  7E C3 B3 78 */	mr r3, r22
/* 80B2C128  38 80 00 00 */	li r4, 0
/* 80B2C12C  4B 7F C2 D1 */	bl init__12J3DFrameCtrlFs
/* 80B2C130  38 00 00 00 */	li r0, 0
/* 80B2C134  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B2C138  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80B2C13C  3C 60 80 B3 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B2DBA0@ha */
/* 80B2C140  38 03 DB A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B2DBA0@l */
/* 80B2C144  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80B2C148  7E C3 B3 78 */	mr r3, r22
/* 80B2C14C  38 80 00 00 */	li r4, 0
/* 80B2C150  4B 7F C2 AD */	bl init__12J3DFrameCtrlFs
/* 80B2C154  38 00 00 00 */	li r0, 0
/* 80B2C158  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B2C15C  3A DF 06 74 */	addi r22, r31, 0x674
/* 80B2C160  3C 60 80 B3 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B2DBA0@ha */
/* 80B2C164  38 03 DB A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B2DBA0@l */
/* 80B2C168  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80B2C16C  7E C3 B3 78 */	mr r3, r22
/* 80B2C170  38 80 00 00 */	li r4, 0
/* 80B2C174  4B 7F C2 89 */	bl init__12J3DFrameCtrlFs
/* 80B2C178  38 00 00 00 */	li r0, 0
/* 80B2C17C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B2C180  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80B2C184  7E C3 B3 78 */	mr r3, r22
/* 80B2C188  4B 54 9F 19 */	bl __ct__9dBgS_AcchFv
/* 80B2C18C  3C 60 80 B3 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B2DBAC@ha */
/* 80B2C190  38 63 DB AC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B2DBAC@l */
/* 80B2C194  90 76 00 10 */	stw r3, 0x10(r22)
/* 80B2C198  38 03 00 0C */	addi r0, r3, 0xc
/* 80B2C19C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B2C1A0  38 03 00 18 */	addi r0, r3, 0x18
/* 80B2C1A4  90 16 00 24 */	stw r0, 0x24(r22)
/* 80B2C1A8  38 76 00 14 */	addi r3, r22, 0x14
/* 80B2C1AC  4B 54 CC BD */	bl SetObj__16dBgS_PolyPassChkFv
/* 80B2C1B0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B2C1B4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B2C1B8  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80B2C1BC  38 7F 08 80 */	addi r3, r31, 0x880
/* 80B2C1C0  4B 55 75 A1 */	bl __ct__10dCcD_GSttsFv
/* 80B2C1C4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B2C1C8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B2C1CC  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80B2C1D0  3B 23 00 20 */	addi r25, r3, 0x20
/* 80B2C1D4  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80B2C1D8  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B2C1DC  4B 54 9C D1 */	bl __ct__12dBgS_AcchCirFv
/* 80B2C1E0  38 7F 09 30 */	addi r3, r31, 0x930
/* 80B2C1E4  4B 73 BA 39 */	bl __ct__11cBgS_GndChkFv
/* 80B2C1E8  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B2C1EC  4B 71 DD 15 */	bl __ct__10dMsgFlow_cFv
/* 80B2C1F0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B2C1F4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B2C1F8  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B2C1FC  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80B2C200  4B 55 75 61 */	bl __ct__10dCcD_GSttsFv
/* 80B2C204  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B2C208  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B2C20C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B2C210  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80B2C214  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80B2C218  4B 54 B3 65 */	bl __ct__11dBgS_GndChkFv
/* 80B2C21C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80B2C220  4B 54 BA 49 */	bl __ct__11dBgS_LinChkFv
/* 80B2C224  3C 60 80 B3 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B2DBF4@ha */
/* 80B2C228  38 03 DB F4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B2DBF4@l */
/* 80B2C22C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80B2C230  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80B2C234  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80B2C238  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B2C23C  4B 61 96 5D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2C240  3C 60 80 B3 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B2DBF4@ha */
/* 80B2C244  38 03 DB F4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B2DBF4@l */
/* 80B2C248  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80B2C24C  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80B2C250  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80B2C254  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B2C258  4B 61 96 41 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2C25C  3C 60 80 B3 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B2DC00@ha */
/* 80B2C260  38 03 DC 00 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B2DC00@l */
/* 80B2C264  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80B2C268  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B2C26C  4B 61 94 69 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B2C270  3C 60 80 B3 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B2DC00@ha */
/* 80B2C274  38 03 DC 00 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B2DC00@l */
/* 80B2C278  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80B2C27C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B2C280  4B 61 94 55 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B2C284  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80B2C288  3C 60 80 B3 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B2DC0C@ha */
/* 80B2C28C  38 03 DC 0C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B2DC0C@l */
/* 80B2C290  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80B2C294  3C 60 80 B3 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B2DC00@ha */
/* 80B2C298  38 03 DC 00 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B2DC00@l */
/* 80B2C29C  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80B2C2A0  7F 43 D3 78 */	mr r3, r26
/* 80B2C2A4  4B 61 94 31 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B2C2A8  38 7A 00 30 */	addi r3, r26, 0x30
/* 80B2C2AC  3C 80 80 B3 */	lis r4, __ct__4cXyzFv@ha /* 0x80B2C568@ha */
/* 80B2C2B0  38 84 C5 68 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B2C568@l */
/* 80B2C2B4  3C A0 80 B3 */	lis r5, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2C2B8  38 A5 BE 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2C2BC  38 C0 00 0C */	li r6, 0xc
/* 80B2C2C0  38 E0 00 03 */	li r7, 3
/* 80B2C2C4  4B 83 5A 9D */	bl __construct_array
/* 80B2C2C8  38 7A 00 54 */	addi r3, r26, 0x54
/* 80B2C2CC  3C 80 80 B3 */	lis r4, __ct__4cXyzFv@ha /* 0x80B2C568@ha */
/* 80B2C2D0  38 84 C5 68 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B2C568@l */
/* 80B2C2D4  3C A0 80 B3 */	lis r5, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2C2D8  38 A5 BE 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2C2DC  38 C0 00 0C */	li r6, 0xc
/* 80B2C2E0  38 E0 00 03 */	li r7, 3
/* 80B2C2E4  4B 83 5A 7D */	bl __construct_array
/* 80B2C2E8  38 7A 00 78 */	addi r3, r26, 0x78
/* 80B2C2EC  3C 80 80 B3 */	lis r4, __ct__4cXyzFv@ha /* 0x80B2C568@ha */
/* 80B2C2F0  38 84 C5 68 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B2C568@l */
/* 80B2C2F4  3C A0 80 B3 */	lis r5, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2C2F8  38 A5 BE 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2C2FC  38 C0 00 0C */	li r6, 0xc
/* 80B2C300  38 E0 00 03 */	li r7, 3
/* 80B2C304  4B 83 5A 5D */	bl __construct_array
/* 80B2C308  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80B2C30C  3C 80 80 B3 */	lis r4, __ct__4cXyzFv@ha /* 0x80B2C568@ha */
/* 80B2C310  38 84 C5 68 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B2C568@l */
/* 80B2C314  3C A0 80 B3 */	lis r5, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2C318  38 A5 BE 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2C31C  38 C0 00 0C */	li r6, 0xc
/* 80B2C320  38 E0 00 03 */	li r7, 3
/* 80B2C324  4B 83 5A 3D */	bl __construct_array
/* 80B2C328  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80B2C32C  3C 80 80 B3 */	lis r4, __ct__4cXyzFv@ha /* 0x80B2C568@ha */
/* 80B2C330  38 84 C5 68 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B2C568@l */
/* 80B2C334  3C A0 80 B3 */	lis r5, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2C338  38 A5 BE 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2C33C  38 C0 00 0C */	li r6, 0xc
/* 80B2C340  38 E0 00 03 */	li r7, 3
/* 80B2C344  4B 83 5A 1D */	bl __construct_array
/* 80B2C348  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80B2C34C  3C 80 80 B3 */	lis r4, __ct__4cXyzFv@ha /* 0x80B2C568@ha */
/* 80B2C350  38 84 C5 68 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B2C568@l */
/* 80B2C354  3C A0 80 B3 */	lis r5, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2C358  38 A5 BE 90 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2C35C  38 C0 00 0C */	li r6, 0xc
/* 80B2C360  38 E0 00 03 */	li r7, 3
/* 80B2C364  4B 83 59 FD */	bl __construct_array
/* 80B2C368  7F 43 D3 78 */	mr r3, r26
/* 80B2C36C  4B 61 A9 2D */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B2C370  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B2C374  3C 80 80 B3 */	lis r4, __ct__5csXyzFv@ha /* 0x80B2C468@ha */
/* 80B2C378  38 84 C4 68 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B2C468@l */
/* 80B2C37C  3C A0 80 B3 */	lis r5, __dt__5csXyzFv@ha /* 0x80B2BECC@ha */
/* 80B2C380  38 A5 BE CC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B2BECC@l */
/* 80B2C384  38 C0 00 06 */	li r6, 6
/* 80B2C388  38 E0 00 02 */	li r7, 2
/* 80B2C38C  4B 83 59 D5 */	bl __construct_array
/* 80B2C390  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B2C394  38 80 00 00 */	li r4, 0
/* 80B2C398  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B2C39C  7C A3 00 50 */	subf r5, r3, r0
/* 80B2C3A0  4B 4D 70 B9 */	bl memset
/* 80B2C3A4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B2C3A8  4B 61 94 F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2C3AC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B2C3B0  4B 61 94 E9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B2C3B4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B2C3B8  4B 61 93 1D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B2C3BC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B2C3C0  4B 61 93 15 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B2C3C4  7F 43 D3 78 */	mr r3, r26
/* 80B2C3C8  4B 61 A8 D1 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B2C3CC  38 A0 00 00 */	li r5, 0
/* 80B2C3D0  38 60 00 00 */	li r3, 0
/* 80B2C3D4  7C A4 2B 78 */	mr r4, r5
/* 80B2C3D8  C0 1E 00 D8 */	lfs f0, 0xd8(r30)
/* 80B2C3DC  38 00 00 02 */	li r0, 2
/* 80B2C3E0  7C 09 03 A6 */	mtctr r0
lbl_80B2C3E4:
/* 80B2C3E4  7C DF 22 14 */	add r6, r31, r4
/* 80B2C3E8  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B2C3EC  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B2C3F0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B2C3F4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B2C3F8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B2C3FC  38 63 00 04 */	addi r3, r3, 4
/* 80B2C400  38 84 00 06 */	addi r4, r4, 6
/* 80B2C404  42 00 FF E0 */	bdnz lbl_80B2C3E4
/* 80B2C408  38 00 00 00 */	li r0, 0
/* 80B2C40C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B2C410  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B2C414  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B2C418  38 00 FF FF */	li r0, -1
/* 80B2C41C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B2C420  38 00 00 01 */	li r0, 1
/* 80B2C424  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B2C428  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 80B2C42C  4B 73 B5 29 */	bl cM_rndF__Ff
/* 80B2C430  FC 00 08 1E */	fctiwz f0, f1
/* 80B2C434  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B2C438  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B2C43C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B2C440  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80B2C444  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B2C448  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B2C44C  7F E3 FB 78 */	mr r3, r31
/* 80B2C450  39 61 00 40 */	addi r11, r1, 0x40
/* 80B2C454  4B 83 5D B9 */	bl _restgpr_22
/* 80B2C458  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B2C45C  7C 08 03 A6 */	mtlr r0
/* 80B2C460  38 21 00 40 */	addi r1, r1, 0x40
/* 80B2C464  4E 80 00 20 */	blr 
