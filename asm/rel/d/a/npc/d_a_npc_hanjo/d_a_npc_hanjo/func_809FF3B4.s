lbl_809FF3B4:
/* 809FF3B4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809FF3B8  7C 08 02 A6 */	mflr r0
/* 809FF3BC  90 01 00 44 */	stw r0, 0x44(r1)
/* 809FF3C0  39 61 00 40 */	addi r11, r1, 0x40
/* 809FF3C4  4B 96 2D FD */	bl _savegpr_22
/* 809FF3C8  7C 7F 1B 78 */	mr r31, r3
/* 809FF3CC  7C 96 23 78 */	mr r22, r4
/* 809FF3D0  7C B7 2B 78 */	mr r23, r5
/* 809FF3D4  7C DA 33 78 */	mr r26, r6
/* 809FF3D8  7C FB 3B 78 */	mr r27, r7
/* 809FF3DC  7D 1C 43 78 */	mr r28, r8
/* 809FF3E0  7D 3D 4B 78 */	mr r29, r9
/* 809FF3E4  7D 58 53 78 */	mr r24, r10
/* 809FF3E8  83 21 00 48 */	lwz r25, 0x48(r1)
/* 809FF3EC  3C 80 80 A0 */	lis r4, m__19daNpc_Hanjo_Param_c@ha /* 0x80A00600@ha */
/* 809FF3F0  3B C4 06 00 */	addi r30, r4, m__19daNpc_Hanjo_Param_c@l /* 0x80A00600@l */
/* 809FF3F4  4B 61 97 71 */	bl __ct__10fopAc_ac_cFv
/* 809FF3F8  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 809FF3FC  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 809FF400  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 809FF404  92 DF 05 68 */	stw r22, 0x568(r31)
/* 809FF408  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 809FF40C  93 1F 05 70 */	stw r24, 0x570(r31)
/* 809FF410  93 3F 05 74 */	stw r25, 0x574(r31)
/* 809FF414  38 7F 05 80 */	addi r3, r31, 0x580
/* 809FF418  4B 8C 0F B1 */	bl __ct__10Z2CreatureFv
/* 809FF41C  3A DF 06 10 */	addi r22, r31, 0x610
/* 809FF420  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A01110@ha */
/* 809FF424  38 03 11 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A01110@l */
/* 809FF428  90 1F 06 10 */	stw r0, 0x610(r31)
/* 809FF42C  7E C3 B3 78 */	mr r3, r22
/* 809FF430  38 80 00 00 */	li r4, 0
/* 809FF434  4B 92 8F C9 */	bl init__12J3DFrameCtrlFs
/* 809FF438  38 00 00 00 */	li r0, 0
/* 809FF43C  90 16 00 18 */	stw r0, 0x18(r22)
/* 809FF440  3A DF 06 2C */	addi r22, r31, 0x62c
/* 809FF444  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A01110@ha */
/* 809FF448  38 03 11 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A01110@l */
/* 809FF44C  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 809FF450  7E C3 B3 78 */	mr r3, r22
/* 809FF454  38 80 00 00 */	li r4, 0
/* 809FF458  4B 92 8F A5 */	bl init__12J3DFrameCtrlFs
/* 809FF45C  38 00 00 00 */	li r0, 0
/* 809FF460  90 16 00 14 */	stw r0, 0x14(r22)
/* 809FF464  3A DF 06 44 */	addi r22, r31, 0x644
/* 809FF468  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A01110@ha */
/* 809FF46C  38 03 11 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A01110@l */
/* 809FF470  90 1F 06 44 */	stw r0, 0x644(r31)
/* 809FF474  7E C3 B3 78 */	mr r3, r22
/* 809FF478  38 80 00 00 */	li r4, 0
/* 809FF47C  4B 92 8F 81 */	bl init__12J3DFrameCtrlFs
/* 809FF480  38 00 00 00 */	li r0, 0
/* 809FF484  90 16 00 14 */	stw r0, 0x14(r22)
/* 809FF488  3A DF 06 5C */	addi r22, r31, 0x65c
/* 809FF48C  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A01110@ha */
/* 809FF490  38 03 11 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A01110@l */
/* 809FF494  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 809FF498  7E C3 B3 78 */	mr r3, r22
/* 809FF49C  38 80 00 00 */	li r4, 0
/* 809FF4A0  4B 92 8F 5D */	bl init__12J3DFrameCtrlFs
/* 809FF4A4  38 00 00 00 */	li r0, 0
/* 809FF4A8  90 16 00 14 */	stw r0, 0x14(r22)
/* 809FF4AC  3A DF 06 74 */	addi r22, r31, 0x674
/* 809FF4B0  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A01110@ha */
/* 809FF4B4  38 03 11 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A01110@l */
/* 809FF4B8  90 1F 06 74 */	stw r0, 0x674(r31)
/* 809FF4BC  7E C3 B3 78 */	mr r3, r22
/* 809FF4C0  38 80 00 00 */	li r4, 0
/* 809FF4C4  4B 92 8F 39 */	bl init__12J3DFrameCtrlFs
/* 809FF4C8  38 00 00 00 */	li r0, 0
/* 809FF4CC  90 16 00 14 */	stw r0, 0x14(r22)
/* 809FF4D0  3A DF 06 8C */	addi r22, r31, 0x68c
/* 809FF4D4  7E C3 B3 78 */	mr r3, r22
/* 809FF4D8  4B 67 6B C9 */	bl __ct__9dBgS_AcchFv
/* 809FF4DC  3C 60 80 A0 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A0111C@ha */
/* 809FF4E0  38 63 11 1C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A0111C@l */
/* 809FF4E4  90 76 00 10 */	stw r3, 0x10(r22)
/* 809FF4E8  38 03 00 0C */	addi r0, r3, 0xc
/* 809FF4EC  90 16 00 14 */	stw r0, 0x14(r22)
/* 809FF4F0  38 03 00 18 */	addi r0, r3, 0x18
/* 809FF4F4  90 16 00 24 */	stw r0, 0x24(r22)
/* 809FF4F8  38 76 00 14 */	addi r3, r22, 0x14
/* 809FF4FC  4B 67 99 6D */	bl SetObj__16dBgS_PolyPassChkFv
/* 809FF500  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809FF504  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809FF508  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 809FF50C  38 7F 08 80 */	addi r3, r31, 0x880
/* 809FF510  4B 68 42 51 */	bl __ct__10dCcD_GSttsFv
/* 809FF514  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809FF518  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809FF51C  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 809FF520  3B 23 00 20 */	addi r25, r3, 0x20
/* 809FF524  93 3F 08 80 */	stw r25, 0x880(r31)
/* 809FF528  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 809FF52C  4B 67 69 81 */	bl __ct__12dBgS_AcchCirFv
/* 809FF530  38 7F 09 30 */	addi r3, r31, 0x930
/* 809FF534  4B 86 86 E9 */	bl __ct__11cBgS_GndChkFv
/* 809FF538  38 7F 09 74 */	addi r3, r31, 0x974
/* 809FF53C  4B 84 A9 C5 */	bl __ct__10dMsgFlow_cFv
/* 809FF540  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809FF544  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809FF548  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 809FF54C  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 809FF550  4B 68 42 11 */	bl __ct__10dCcD_GSttsFv
/* 809FF554  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809FF558  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809FF55C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 809FF560  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 809FF564  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 809FF568  4B 67 80 15 */	bl __ct__11dBgS_GndChkFv
/* 809FF56C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 809FF570  4B 67 86 F9 */	bl __ct__11dBgS_LinChkFv
/* 809FF574  3C 60 80 A0 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A01164@ha */
/* 809FF578  38 03 11 64 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A01164@l */
/* 809FF57C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 809FF580  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 809FF584  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 809FF588  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809FF58C  4B 74 63 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FF590  3C 60 80 A0 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A01164@ha */
/* 809FF594  38 03 11 64 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A01164@l */
/* 809FF598  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 809FF59C  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 809FF5A0  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 809FF5A4  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809FF5A8  4B 74 62 F1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FF5AC  3C 60 80 A0 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A01170@ha */
/* 809FF5B0  38 03 11 70 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A01170@l */
/* 809FF5B4  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 809FF5B8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809FF5BC  4B 74 61 19 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809FF5C0  3C 60 80 A0 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A01170@ha */
/* 809FF5C4  38 03 11 70 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A01170@l */
/* 809FF5C8  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 809FF5CC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 809FF5D0  4B 74 61 05 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809FF5D4  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 809FF5D8  3C 60 80 A0 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A0117C@ha */
/* 809FF5DC  38 03 11 7C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A0117C@l */
/* 809FF5E0  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 809FF5E4  3C 60 80 A0 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A01170@ha */
/* 809FF5E8  38 03 11 70 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A01170@l */
/* 809FF5EC  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 809FF5F0  7F 43 D3 78 */	mr r3, r26
/* 809FF5F4  4B 74 60 E1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809FF5F8  38 7A 00 30 */	addi r3, r26, 0x30
/* 809FF5FC  3C 80 80 A0 */	lis r4, __ct__4cXyzFv@ha /* 0x809FF8B8@ha */
/* 809FF600  38 84 F8 B8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809FF8B8@l */
/* 809FF604  3C A0 80 A0 */	lis r5, __dt__4cXyzFv@ha /* 0x809FF1E0@ha */
/* 809FF608  38 A5 F1 E0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809FF1E0@l */
/* 809FF60C  38 C0 00 0C */	li r6, 0xc
/* 809FF610  38 E0 00 03 */	li r7, 3
/* 809FF614  4B 96 27 4D */	bl __construct_array
/* 809FF618  38 7A 00 54 */	addi r3, r26, 0x54
/* 809FF61C  3C 80 80 A0 */	lis r4, __ct__4cXyzFv@ha /* 0x809FF8B8@ha */
/* 809FF620  38 84 F8 B8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809FF8B8@l */
/* 809FF624  3C A0 80 A0 */	lis r5, __dt__4cXyzFv@ha /* 0x809FF1E0@ha */
/* 809FF628  38 A5 F1 E0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809FF1E0@l */
/* 809FF62C  38 C0 00 0C */	li r6, 0xc
/* 809FF630  38 E0 00 03 */	li r7, 3
/* 809FF634  4B 96 27 2D */	bl __construct_array
/* 809FF638  38 7A 00 78 */	addi r3, r26, 0x78
/* 809FF63C  3C 80 80 A0 */	lis r4, __ct__4cXyzFv@ha /* 0x809FF8B8@ha */
/* 809FF640  38 84 F8 B8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809FF8B8@l */
/* 809FF644  3C A0 80 A0 */	lis r5, __dt__4cXyzFv@ha /* 0x809FF1E0@ha */
/* 809FF648  38 A5 F1 E0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809FF1E0@l */
/* 809FF64C  38 C0 00 0C */	li r6, 0xc
/* 809FF650  38 E0 00 03 */	li r7, 3
/* 809FF654  4B 96 27 0D */	bl __construct_array
/* 809FF658  38 7A 00 9C */	addi r3, r26, 0x9c
/* 809FF65C  3C 80 80 A0 */	lis r4, __ct__4cXyzFv@ha /* 0x809FF8B8@ha */
/* 809FF660  38 84 F8 B8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809FF8B8@l */
/* 809FF664  3C A0 80 A0 */	lis r5, __dt__4cXyzFv@ha /* 0x809FF1E0@ha */
/* 809FF668  38 A5 F1 E0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809FF1E0@l */
/* 809FF66C  38 C0 00 0C */	li r6, 0xc
/* 809FF670  38 E0 00 03 */	li r7, 3
/* 809FF674  4B 96 26 ED */	bl __construct_array
/* 809FF678  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 809FF67C  3C 80 80 A0 */	lis r4, __ct__4cXyzFv@ha /* 0x809FF8B8@ha */
/* 809FF680  38 84 F8 B8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809FF8B8@l */
/* 809FF684  3C A0 80 A0 */	lis r5, __dt__4cXyzFv@ha /* 0x809FF1E0@ha */
/* 809FF688  38 A5 F1 E0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809FF1E0@l */
/* 809FF68C  38 C0 00 0C */	li r6, 0xc
/* 809FF690  38 E0 00 03 */	li r7, 3
/* 809FF694  4B 96 26 CD */	bl __construct_array
/* 809FF698  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 809FF69C  3C 80 80 A0 */	lis r4, __ct__4cXyzFv@ha /* 0x809FF8B8@ha */
/* 809FF6A0  38 84 F8 B8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809FF8B8@l */
/* 809FF6A4  3C A0 80 A0 */	lis r5, __dt__4cXyzFv@ha /* 0x809FF1E0@ha */
/* 809FF6A8  38 A5 F1 E0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809FF1E0@l */
/* 809FF6AC  38 C0 00 0C */	li r6, 0xc
/* 809FF6B0  38 E0 00 03 */	li r7, 3
/* 809FF6B4  4B 96 26 AD */	bl __construct_array
/* 809FF6B8  7F 43 D3 78 */	mr r3, r26
/* 809FF6BC  4B 74 75 DD */	bl initialize__15daNpcT_JntAnm_cFv
/* 809FF6C0  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 809FF6C4  3C 80 80 A0 */	lis r4, __ct__5csXyzFv@ha /* 0x809FF7B8@ha */
/* 809FF6C8  38 84 F7 B8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809FF7B8@l */
/* 809FF6CC  3C A0 80 A0 */	lis r5, __dt__5csXyzFv@ha /* 0x809FF21C@ha */
/* 809FF6D0  38 A5 F2 1C */	addi r5, r5, __dt__5csXyzFv@l /* 0x809FF21C@l */
/* 809FF6D4  38 C0 00 06 */	li r6, 6
/* 809FF6D8  38 E0 00 02 */	li r7, 2
/* 809FF6DC  4B 96 26 85 */	bl __construct_array
/* 809FF6E0  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 809FF6E4  38 80 00 00 */	li r4, 0
/* 809FF6E8  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 809FF6EC  7C A3 00 50 */	subf r5, r3, r0
/* 809FF6F0  4B 60 3D 69 */	bl memset
/* 809FF6F4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809FF6F8  4B 74 61 A1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FF6FC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809FF700  4B 74 61 99 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809FF704  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809FF708  4B 74 5F CD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809FF70C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 809FF710  4B 74 5F C5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809FF714  7F 43 D3 78 */	mr r3, r26
/* 809FF718  4B 74 75 81 */	bl initialize__15daNpcT_JntAnm_cFv
/* 809FF71C  38 A0 00 00 */	li r5, 0
/* 809FF720  38 60 00 00 */	li r3, 0
/* 809FF724  7C A4 2B 78 */	mr r4, r5
/* 809FF728  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 809FF72C  38 00 00 02 */	li r0, 2
/* 809FF730  7C 09 03 A6 */	mtctr r0
lbl_809FF734:
/* 809FF734  7C DF 22 14 */	add r6, r31, r4
/* 809FF738  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 809FF73C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 809FF740  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 809FF744  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809FF748  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809FF74C  38 63 00 04 */	addi r3, r3, 4
/* 809FF750  38 84 00 06 */	addi r4, r4, 6
/* 809FF754  42 00 FF E0 */	bdnz lbl_809FF734
/* 809FF758  38 00 00 00 */	li r0, 0
/* 809FF75C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809FF760  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809FF764  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809FF768  38 00 FF FF */	li r0, -1
/* 809FF76C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 809FF770  38 00 00 01 */	li r0, 1
/* 809FF774  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 809FF778  C0 3E 01 08 */	lfs f1, 0x108(r30)
/* 809FF77C  4B 86 81 D9 */	bl cM_rndF__Ff
/* 809FF780  FC 00 08 1E */	fctiwz f0, f1
/* 809FF784  D8 01 00 08 */	stfd f0, 8(r1)
/* 809FF788  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809FF78C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 809FF790  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 809FF794  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 809FF798  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 809FF79C  7F E3 FB 78 */	mr r3, r31
/* 809FF7A0  39 61 00 40 */	addi r11, r1, 0x40
/* 809FF7A4  4B 96 2A 69 */	bl _restgpr_22
/* 809FF7A8  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809FF7AC  7C 08 03 A6 */	mtlr r0
/* 809FF7B0  38 21 00 40 */	addi r1, r1, 0x40
/* 809FF7B4  4E 80 00 20 */	blr 
