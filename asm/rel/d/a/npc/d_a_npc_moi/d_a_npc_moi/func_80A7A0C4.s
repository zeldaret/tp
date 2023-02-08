lbl_80A7A0C4:
/* 80A7A0C4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A7A0C8  7C 08 02 A6 */	mflr r0
/* 80A7A0CC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A7A0D0  39 61 00 40 */	addi r11, r1, 0x40
/* 80A7A0D4  4B 8E 80 ED */	bl _savegpr_22
/* 80A7A0D8  7C 7F 1B 78 */	mr r31, r3
/* 80A7A0DC  7C 96 23 78 */	mr r22, r4
/* 80A7A0E0  7C B7 2B 78 */	mr r23, r5
/* 80A7A0E4  7C DA 33 78 */	mr r26, r6
/* 80A7A0E8  7C FB 3B 78 */	mr r27, r7
/* 80A7A0EC  7D 1C 43 78 */	mr r28, r8
/* 80A7A0F0  7D 3D 4B 78 */	mr r29, r9
/* 80A7A0F4  7D 58 53 78 */	mr r24, r10
/* 80A7A0F8  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80A7A0FC  3C 80 80 A8 */	lis r4, m__17daNpc_Moi_Param_c@ha /* 0x80A7AEF0@ha */
/* 80A7A100  3B C4 AE F0 */	addi r30, r4, m__17daNpc_Moi_Param_c@l /* 0x80A7AEF0@l */
/* 80A7A104  4B 59 EA 61 */	bl __ct__10fopAc_ac_cFv
/* 80A7A108  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80A7A10C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80A7A110  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A7A114  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80A7A118  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80A7A11C  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80A7A120  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80A7A124  38 7F 05 80 */	addi r3, r31, 0x580
/* 80A7A128  4B 84 62 A1 */	bl __ct__10Z2CreatureFv
/* 80A7A12C  3A DF 06 10 */	addi r22, r31, 0x610
/* 80A7A130  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A7BE28@ha */
/* 80A7A134  38 03 BE 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A7BE28@l */
/* 80A7A138  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80A7A13C  7E C3 B3 78 */	mr r3, r22
/* 80A7A140  38 80 00 00 */	li r4, 0
/* 80A7A144  4B 8A E2 B9 */	bl init__12J3DFrameCtrlFs
/* 80A7A148  38 00 00 00 */	li r0, 0
/* 80A7A14C  90 16 00 18 */	stw r0, 0x18(r22)
/* 80A7A150  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80A7A154  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A7BE28@ha */
/* 80A7A158  38 03 BE 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A7BE28@l */
/* 80A7A15C  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80A7A160  7E C3 B3 78 */	mr r3, r22
/* 80A7A164  38 80 00 00 */	li r4, 0
/* 80A7A168  4B 8A E2 95 */	bl init__12J3DFrameCtrlFs
/* 80A7A16C  38 00 00 00 */	li r0, 0
/* 80A7A170  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A7A174  3A DF 06 44 */	addi r22, r31, 0x644
/* 80A7A178  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A7BE28@ha */
/* 80A7A17C  38 03 BE 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A7BE28@l */
/* 80A7A180  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80A7A184  7E C3 B3 78 */	mr r3, r22
/* 80A7A188  38 80 00 00 */	li r4, 0
/* 80A7A18C  4B 8A E2 71 */	bl init__12J3DFrameCtrlFs
/* 80A7A190  38 00 00 00 */	li r0, 0
/* 80A7A194  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A7A198  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80A7A19C  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A7BE28@ha */
/* 80A7A1A0  38 03 BE 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A7BE28@l */
/* 80A7A1A4  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80A7A1A8  7E C3 B3 78 */	mr r3, r22
/* 80A7A1AC  38 80 00 00 */	li r4, 0
/* 80A7A1B0  4B 8A E2 4D */	bl init__12J3DFrameCtrlFs
/* 80A7A1B4  38 00 00 00 */	li r0, 0
/* 80A7A1B8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A7A1BC  3A DF 06 74 */	addi r22, r31, 0x674
/* 80A7A1C0  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A7BE28@ha */
/* 80A7A1C4  38 03 BE 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A7BE28@l */
/* 80A7A1C8  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80A7A1CC  7E C3 B3 78 */	mr r3, r22
/* 80A7A1D0  38 80 00 00 */	li r4, 0
/* 80A7A1D4  4B 8A E2 29 */	bl init__12J3DFrameCtrlFs
/* 80A7A1D8  38 00 00 00 */	li r0, 0
/* 80A7A1DC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A7A1E0  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80A7A1E4  7E C3 B3 78 */	mr r3, r22
/* 80A7A1E8  4B 5F BE B9 */	bl __ct__9dBgS_AcchFv
/* 80A7A1EC  3C 60 80 A8 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A7BE34@ha */
/* 80A7A1F0  38 63 BE 34 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A7BE34@l */
/* 80A7A1F4  90 76 00 10 */	stw r3, 0x10(r22)
/* 80A7A1F8  38 03 00 0C */	addi r0, r3, 0xc
/* 80A7A1FC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A7A200  38 03 00 18 */	addi r0, r3, 0x18
/* 80A7A204  90 16 00 24 */	stw r0, 0x24(r22)
/* 80A7A208  38 76 00 14 */	addi r3, r22, 0x14
/* 80A7A20C  4B 5F EC 5D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80A7A210  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A7A214  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A7A218  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80A7A21C  38 7F 08 80 */	addi r3, r31, 0x880
/* 80A7A220  4B 60 95 41 */	bl __ct__10dCcD_GSttsFv
/* 80A7A224  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A7A228  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A7A22C  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80A7A230  3B 23 00 20 */	addi r25, r3, 0x20
/* 80A7A234  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80A7A238  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80A7A23C  4B 5F BC 71 */	bl __ct__12dBgS_AcchCirFv
/* 80A7A240  38 7F 09 30 */	addi r3, r31, 0x930
/* 80A7A244  4B 7E D9 D9 */	bl __ct__11cBgS_GndChkFv
/* 80A7A248  38 7F 09 74 */	addi r3, r31, 0x974
/* 80A7A24C  4B 7C FC B5 */	bl __ct__10dMsgFlow_cFv
/* 80A7A250  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A7A254  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A7A258  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A7A25C  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80A7A260  4B 60 95 01 */	bl __ct__10dCcD_GSttsFv
/* 80A7A264  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A7A268  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A7A26C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A7A270  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80A7A274  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80A7A278  4B 5F D3 05 */	bl __ct__11dBgS_GndChkFv
/* 80A7A27C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80A7A280  4B 5F D9 E9 */	bl __ct__11dBgS_LinChkFv
/* 80A7A284  3C 60 80 A8 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A7BE7C@ha */
/* 80A7A288  38 03 BE 7C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A7BE7C@l */
/* 80A7A28C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80A7A290  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80A7A294  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80A7A298  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A7A29C  4B 6C B5 FD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A7A2A0  3C 60 80 A8 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A7BE7C@ha */
/* 80A7A2A4  38 03 BE 7C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A7BE7C@l */
/* 80A7A2A8  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80A7A2AC  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80A7A2B0  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80A7A2B4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A7A2B8  4B 6C B5 E1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A7A2BC  3C 60 80 A8 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A7BE88@ha */
/* 80A7A2C0  38 03 BE 88 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A7BE88@l */
/* 80A7A2C4  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80A7A2C8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A7A2CC  4B 6C B4 09 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A7A2D0  3C 60 80 A8 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A7BE88@ha */
/* 80A7A2D4  38 03 BE 88 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A7BE88@l */
/* 80A7A2D8  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80A7A2DC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A7A2E0  4B 6C B3 F5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A7A2E4  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80A7A2E8  3C 60 80 A8 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A7BE94@ha */
/* 80A7A2EC  38 03 BE 94 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A7BE94@l */
/* 80A7A2F0  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80A7A2F4  3C 60 80 A8 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A7BE88@ha */
/* 80A7A2F8  38 03 BE 88 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A7BE88@l */
/* 80A7A2FC  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80A7A300  7F 43 D3 78 */	mr r3, r26
/* 80A7A304  4B 6C B3 D1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A7A308  38 7A 00 30 */	addi r3, r26, 0x30
/* 80A7A30C  3C 80 80 A8 */	lis r4, __ct__4cXyzFv@ha /* 0x80A7A5C4@ha */
/* 80A7A310  38 84 A5 C4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A7A5C4@l */
/* 80A7A314  3C A0 80 A8 */	lis r5, __dt__4cXyzFv@ha /* 0x80A79D58@ha */
/* 80A7A318  38 A5 9D 58 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A79D58@l */
/* 80A7A31C  38 C0 00 0C */	li r6, 0xc
/* 80A7A320  38 E0 00 03 */	li r7, 3
/* 80A7A324  4B 8E 7A 3D */	bl __construct_array
/* 80A7A328  38 7A 00 54 */	addi r3, r26, 0x54
/* 80A7A32C  3C 80 80 A8 */	lis r4, __ct__4cXyzFv@ha /* 0x80A7A5C4@ha */
/* 80A7A330  38 84 A5 C4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A7A5C4@l */
/* 80A7A334  3C A0 80 A8 */	lis r5, __dt__4cXyzFv@ha /* 0x80A79D58@ha */
/* 80A7A338  38 A5 9D 58 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A79D58@l */
/* 80A7A33C  38 C0 00 0C */	li r6, 0xc
/* 80A7A340  38 E0 00 03 */	li r7, 3
/* 80A7A344  4B 8E 7A 1D */	bl __construct_array
/* 80A7A348  38 7A 00 78 */	addi r3, r26, 0x78
/* 80A7A34C  3C 80 80 A8 */	lis r4, __ct__4cXyzFv@ha /* 0x80A7A5C4@ha */
/* 80A7A350  38 84 A5 C4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A7A5C4@l */
/* 80A7A354  3C A0 80 A8 */	lis r5, __dt__4cXyzFv@ha /* 0x80A79D58@ha */
/* 80A7A358  38 A5 9D 58 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A79D58@l */
/* 80A7A35C  38 C0 00 0C */	li r6, 0xc
/* 80A7A360  38 E0 00 03 */	li r7, 3
/* 80A7A364  4B 8E 79 FD */	bl __construct_array
/* 80A7A368  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80A7A36C  3C 80 80 A8 */	lis r4, __ct__4cXyzFv@ha /* 0x80A7A5C4@ha */
/* 80A7A370  38 84 A5 C4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A7A5C4@l */
/* 80A7A374  3C A0 80 A8 */	lis r5, __dt__4cXyzFv@ha /* 0x80A79D58@ha */
/* 80A7A378  38 A5 9D 58 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A79D58@l */
/* 80A7A37C  38 C0 00 0C */	li r6, 0xc
/* 80A7A380  38 E0 00 03 */	li r7, 3
/* 80A7A384  4B 8E 79 DD */	bl __construct_array
/* 80A7A388  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80A7A38C  3C 80 80 A8 */	lis r4, __ct__4cXyzFv@ha /* 0x80A7A5C4@ha */
/* 80A7A390  38 84 A5 C4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A7A5C4@l */
/* 80A7A394  3C A0 80 A8 */	lis r5, __dt__4cXyzFv@ha /* 0x80A79D58@ha */
/* 80A7A398  38 A5 9D 58 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A79D58@l */
/* 80A7A39C  38 C0 00 0C */	li r6, 0xc
/* 80A7A3A0  38 E0 00 03 */	li r7, 3
/* 80A7A3A4  4B 8E 79 BD */	bl __construct_array
/* 80A7A3A8  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80A7A3AC  3C 80 80 A8 */	lis r4, __ct__4cXyzFv@ha /* 0x80A7A5C4@ha */
/* 80A7A3B0  38 84 A5 C4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A7A5C4@l */
/* 80A7A3B4  3C A0 80 A8 */	lis r5, __dt__4cXyzFv@ha /* 0x80A79D58@ha */
/* 80A7A3B8  38 A5 9D 58 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A79D58@l */
/* 80A7A3BC  38 C0 00 0C */	li r6, 0xc
/* 80A7A3C0  38 E0 00 03 */	li r7, 3
/* 80A7A3C4  4B 8E 79 9D */	bl __construct_array
/* 80A7A3C8  7F 43 D3 78 */	mr r3, r26
/* 80A7A3CC  4B 6C C8 CD */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A7A3D0  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A7A3D4  3C 80 80 A8 */	lis r4, __ct__5csXyzFv@ha /* 0x80A7AE08@ha */
/* 80A7A3D8  38 84 AE 08 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A7AE08@l */
/* 80A7A3DC  3C A0 80 A8 */	lis r5, __dt__5csXyzFv@ha /* 0x80A79EA8@ha */
/* 80A7A3E0  38 A5 9E A8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A79EA8@l */
/* 80A7A3E4  38 C0 00 06 */	li r6, 6
/* 80A7A3E8  38 E0 00 02 */	li r7, 2
/* 80A7A3EC  4B 8E 79 75 */	bl __construct_array
/* 80A7A3F0  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A7A3F4  38 80 00 00 */	li r4, 0
/* 80A7A3F8  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A7A3FC  7C A3 00 50 */	subf r5, r3, r0
/* 80A7A400  4B 58 90 59 */	bl memset
/* 80A7A404  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A7A408  4B 6C B4 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A7A40C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A7A410  4B 6C B4 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A7A414  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A7A418  4B 6C B2 BD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A7A41C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A7A420  4B 6C B2 B5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A7A424  7F 43 D3 78 */	mr r3, r26
/* 80A7A428  4B 6C C8 71 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A7A42C  38 A0 00 00 */	li r5, 0
/* 80A7A430  38 60 00 00 */	li r3, 0
/* 80A7A434  7C A4 2B 78 */	mr r4, r5
/* 80A7A438  C0 1E 00 E8 */	lfs f0, 0xe8(r30)
/* 80A7A43C  38 00 00 02 */	li r0, 2
/* 80A7A440  7C 09 03 A6 */	mtctr r0
lbl_80A7A444:
/* 80A7A444  7C DF 22 14 */	add r6, r31, r4
/* 80A7A448  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A7A44C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A7A450  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A7A454  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A7A458  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A7A45C  38 63 00 04 */	addi r3, r3, 4
/* 80A7A460  38 84 00 06 */	addi r4, r4, 6
/* 80A7A464  42 00 FF E0 */	bdnz lbl_80A7A444
/* 80A7A468  38 00 00 00 */	li r0, 0
/* 80A7A46C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A7A470  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A7A474  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A7A478  38 00 FF FF */	li r0, -1
/* 80A7A47C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A7A480  38 00 00 01 */	li r0, 1
/* 80A7A484  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A7A488  C0 3E 00 F0 */	lfs f1, 0xf0(r30)
/* 80A7A48C  4B 7E D4 C9 */	bl cM_rndF__Ff
/* 80A7A490  FC 00 08 1E */	fctiwz f0, f1
/* 80A7A494  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A7A498  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A7A49C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A7A4A0  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 80A7A4A4  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A7A4A8  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A7A4AC  7F E3 FB 78 */	mr r3, r31
/* 80A7A4B0  39 61 00 40 */	addi r11, r1, 0x40
/* 80A7A4B4  4B 8E 7D 59 */	bl _restgpr_22
/* 80A7A4B8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A7A4BC  7C 08 03 A6 */	mtlr r0
/* 80A7A4C0  38 21 00 40 */	addi r1, r1, 0x40
/* 80A7A4C4  4E 80 00 20 */	blr 
