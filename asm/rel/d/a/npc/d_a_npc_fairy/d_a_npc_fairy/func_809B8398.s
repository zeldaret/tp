lbl_809B8398:
/* 809B8398  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809B839C  7C 08 02 A6 */	mflr r0
/* 809B83A0  90 01 00 44 */	stw r0, 0x44(r1)
/* 809B83A4  39 61 00 40 */	addi r11, r1, 0x40
/* 809B83A8  4B 9A 9E 18 */	b _savegpr_22
/* 809B83AC  7C 7F 1B 78 */	mr r31, r3
/* 809B83B0  7C 96 23 78 */	mr r22, r4
/* 809B83B4  7C B7 2B 78 */	mr r23, r5
/* 809B83B8  7C DA 33 78 */	mr r26, r6
/* 809B83BC  7C FB 3B 78 */	mr r27, r7
/* 809B83C0  7D 1C 43 78 */	mr r28, r8
/* 809B83C4  7D 3D 4B 78 */	mr r29, r9
/* 809B83C8  7D 58 53 78 */	mr r24, r10
/* 809B83CC  83 21 00 48 */	lwz r25, 0x48(r1)
/* 809B83D0  3C 80 80 9C */	lis r4, m__19daNpc_Fairy_Param_c@ha
/* 809B83D4  3B C4 92 E4 */	addi r30, r4, m__19daNpc_Fairy_Param_c@l
/* 809B83D8  4B 66 07 8C */	b __ct__10fopAc_ac_cFv
/* 809B83DC  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 809B83E0  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 809B83E4  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 809B83E8  92 DF 05 68 */	stw r22, 0x568(r31)
/* 809B83EC  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 809B83F0  93 1F 05 70 */	stw r24, 0x570(r31)
/* 809B83F4  93 3F 05 74 */	stw r25, 0x574(r31)
/* 809B83F8  38 7F 05 80 */	addi r3, r31, 0x580
/* 809B83FC  4B 90 7F CC */	b __ct__10Z2CreatureFv
/* 809B8400  3A DF 06 10 */	addi r22, r31, 0x610
/* 809B8404  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809B8408  38 03 A3 34 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809B840C  90 1F 06 10 */	stw r0, 0x610(r31)
/* 809B8410  7E C3 B3 78 */	mr r3, r22
/* 809B8414  38 80 00 00 */	li r4, 0
/* 809B8418  4B 96 FF E4 */	b init__12J3DFrameCtrlFs
/* 809B841C  38 00 00 00 */	li r0, 0
/* 809B8420  90 16 00 18 */	stw r0, 0x18(r22)
/* 809B8424  3A DF 06 2C */	addi r22, r31, 0x62c
/* 809B8428  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809B842C  38 03 A3 34 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809B8430  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 809B8434  7E C3 B3 78 */	mr r3, r22
/* 809B8438  38 80 00 00 */	li r4, 0
/* 809B843C  4B 96 FF C0 */	b init__12J3DFrameCtrlFs
/* 809B8440  38 00 00 00 */	li r0, 0
/* 809B8444  90 16 00 14 */	stw r0, 0x14(r22)
/* 809B8448  3A DF 06 44 */	addi r22, r31, 0x644
/* 809B844C  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809B8450  38 03 A3 34 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809B8454  90 1F 06 44 */	stw r0, 0x644(r31)
/* 809B8458  7E C3 B3 78 */	mr r3, r22
/* 809B845C  38 80 00 00 */	li r4, 0
/* 809B8460  4B 96 FF 9C */	b init__12J3DFrameCtrlFs
/* 809B8464  38 00 00 00 */	li r0, 0
/* 809B8468  90 16 00 14 */	stw r0, 0x14(r22)
/* 809B846C  3A DF 06 5C */	addi r22, r31, 0x65c
/* 809B8470  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809B8474  38 03 A3 34 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809B8478  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 809B847C  7E C3 B3 78 */	mr r3, r22
/* 809B8480  38 80 00 00 */	li r4, 0
/* 809B8484  4B 96 FF 78 */	b init__12J3DFrameCtrlFs
/* 809B8488  38 00 00 00 */	li r0, 0
/* 809B848C  90 16 00 14 */	stw r0, 0x14(r22)
/* 809B8490  3A DF 06 74 */	addi r22, r31, 0x674
/* 809B8494  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809B8498  38 03 A3 34 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809B849C  90 1F 06 74 */	stw r0, 0x674(r31)
/* 809B84A0  7E C3 B3 78 */	mr r3, r22
/* 809B84A4  38 80 00 00 */	li r4, 0
/* 809B84A8  4B 96 FF 54 */	b init__12J3DFrameCtrlFs
/* 809B84AC  38 00 00 00 */	li r0, 0
/* 809B84B0  90 16 00 14 */	stw r0, 0x14(r22)
/* 809B84B4  3A DF 06 8C */	addi r22, r31, 0x68c
/* 809B84B8  7E C3 B3 78 */	mr r3, r22
/* 809B84BC  4B 6B DB E4 */	b __ct__9dBgS_AcchFv
/* 809B84C0  3C 60 80 9C */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 809B84C4  38 63 A2 B0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 809B84C8  90 76 00 10 */	stw r3, 0x10(r22)
/* 809B84CC  38 03 00 0C */	addi r0, r3, 0xc
/* 809B84D0  90 16 00 14 */	stw r0, 0x14(r22)
/* 809B84D4  38 03 00 18 */	addi r0, r3, 0x18
/* 809B84D8  90 16 00 24 */	stw r0, 0x24(r22)
/* 809B84DC  38 76 00 14 */	addi r3, r22, 0x14
/* 809B84E0  4B 6C 09 88 */	b SetObj__16dBgS_PolyPassChkFv
/* 809B84E4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809B84E8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809B84EC  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 809B84F0  38 7F 08 80 */	addi r3, r31, 0x880
/* 809B84F4  4B 6C B2 6C */	b __ct__10dCcD_GSttsFv
/* 809B84F8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809B84FC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809B8500  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 809B8504  3B 23 00 20 */	addi r25, r3, 0x20
/* 809B8508  93 3F 08 80 */	stw r25, 0x880(r31)
/* 809B850C  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 809B8510  4B 6B D9 9C */	b __ct__12dBgS_AcchCirFv
/* 809B8514  38 7F 09 30 */	addi r3, r31, 0x930
/* 809B8518  4B 8A F7 04 */	b __ct__11cBgS_GndChkFv
/* 809B851C  38 7F 09 74 */	addi r3, r31, 0x974
/* 809B8520  4B 89 19 E0 */	b __ct__10dMsgFlow_cFv
/* 809B8524  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809B8528  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809B852C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 809B8530  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 809B8534  4B 6C B2 2C */	b __ct__10dCcD_GSttsFv
/* 809B8538  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809B853C  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 809B8540  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 809B8544  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 809B8548  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 809B854C  4B 6B F0 30 */	b __ct__11dBgS_GndChkFv
/* 809B8550  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 809B8554  4B 6B F7 14 */	b __ct__11dBgS_LinChkFv
/* 809B8558  3C 60 80 9C */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 809B855C  38 03 A2 F8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 809B8560  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 809B8564  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 809B8568  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 809B856C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809B8570  4B 78 D3 28 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B8574  3C 60 80 9C */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 809B8578  38 03 A2 F8 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 809B857C  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 809B8580  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 809B8584  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 809B8588  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809B858C  4B 78 D3 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B8590  3C 60 80 9C */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809B8594  38 03 A3 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809B8598  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 809B859C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809B85A0  4B 78 D1 34 */	b initialize__18daNpcT_ActorMngr_cFv
/* 809B85A4  3C 60 80 9C */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809B85A8  38 03 A3 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809B85AC  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 809B85B0  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 809B85B4  4B 78 D1 20 */	b initialize__18daNpcT_ActorMngr_cFv
/* 809B85B8  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 809B85BC  3C 60 80 9C */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 809B85C0  38 03 A3 10 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 809B85C4  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 809B85C8  3C 60 80 9C */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809B85CC  38 03 A3 04 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809B85D0  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 809B85D4  7F 43 D3 78 */	mr r3, r26
/* 809B85D8  4B 78 D0 FC */	b initialize__18daNpcT_ActorMngr_cFv
/* 809B85DC  38 7A 00 30 */	addi r3, r26, 0x30
/* 809B85E0  3C 80 80 9C */	lis r4, __ct__4cXyzFv@ha
/* 809B85E4  38 84 88 9C */	addi r4, r4, __ct__4cXyzFv@l
/* 809B85E8  3C A0 80 9B */	lis r5, __dt__4cXyzFv@ha
/* 809B85EC  38 A5 22 50 */	addi r5, r5, __dt__4cXyzFv@l
/* 809B85F0  38 C0 00 0C */	li r6, 0xc
/* 809B85F4  38 E0 00 03 */	li r7, 3
/* 809B85F8  4B 9A 97 68 */	b __construct_array
/* 809B85FC  38 7A 00 54 */	addi r3, r26, 0x54
/* 809B8600  3C 80 80 9C */	lis r4, __ct__4cXyzFv@ha
/* 809B8604  38 84 88 9C */	addi r4, r4, __ct__4cXyzFv@l
/* 809B8608  3C A0 80 9B */	lis r5, __dt__4cXyzFv@ha
/* 809B860C  38 A5 22 50 */	addi r5, r5, __dt__4cXyzFv@l
/* 809B8610  38 C0 00 0C */	li r6, 0xc
/* 809B8614  38 E0 00 03 */	li r7, 3
/* 809B8618  4B 9A 97 48 */	b __construct_array
/* 809B861C  38 7A 00 78 */	addi r3, r26, 0x78
/* 809B8620  3C 80 80 9C */	lis r4, __ct__4cXyzFv@ha
/* 809B8624  38 84 88 9C */	addi r4, r4, __ct__4cXyzFv@l
/* 809B8628  3C A0 80 9B */	lis r5, __dt__4cXyzFv@ha
/* 809B862C  38 A5 22 50 */	addi r5, r5, __dt__4cXyzFv@l
/* 809B8630  38 C0 00 0C */	li r6, 0xc
/* 809B8634  38 E0 00 03 */	li r7, 3
/* 809B8638  4B 9A 97 28 */	b __construct_array
/* 809B863C  38 7A 00 9C */	addi r3, r26, 0x9c
/* 809B8640  3C 80 80 9C */	lis r4, __ct__4cXyzFv@ha
/* 809B8644  38 84 88 9C */	addi r4, r4, __ct__4cXyzFv@l
/* 809B8648  3C A0 80 9B */	lis r5, __dt__4cXyzFv@ha
/* 809B864C  38 A5 22 50 */	addi r5, r5, __dt__4cXyzFv@l
/* 809B8650  38 C0 00 0C */	li r6, 0xc
/* 809B8654  38 E0 00 03 */	li r7, 3
/* 809B8658  4B 9A 97 08 */	b __construct_array
/* 809B865C  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 809B8660  3C 80 80 9C */	lis r4, __ct__4cXyzFv@ha
/* 809B8664  38 84 88 9C */	addi r4, r4, __ct__4cXyzFv@l
/* 809B8668  3C A0 80 9B */	lis r5, __dt__4cXyzFv@ha
/* 809B866C  38 A5 22 50 */	addi r5, r5, __dt__4cXyzFv@l
/* 809B8670  38 C0 00 0C */	li r6, 0xc
/* 809B8674  38 E0 00 03 */	li r7, 3
/* 809B8678  4B 9A 96 E8 */	b __construct_array
/* 809B867C  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 809B8680  3C 80 80 9C */	lis r4, __ct__4cXyzFv@ha
/* 809B8684  38 84 88 9C */	addi r4, r4, __ct__4cXyzFv@l
/* 809B8688  3C A0 80 9B */	lis r5, __dt__4cXyzFv@ha
/* 809B868C  38 A5 22 50 */	addi r5, r5, __dt__4cXyzFv@l
/* 809B8690  38 C0 00 0C */	li r6, 0xc
/* 809B8694  38 E0 00 03 */	li r7, 3
/* 809B8698  4B 9A 96 C8 */	b __construct_array
/* 809B869C  7F 43 D3 78 */	mr r3, r26
/* 809B86A0  4B 78 E5 F8 */	b initialize__15daNpcT_JntAnm_cFv
/* 809B86A4  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 809B86A8  3C 80 80 9C */	lis r4, __ct__5csXyzFv@ha
/* 809B86AC  38 84 87 9C */	addi r4, r4, __ct__5csXyzFv@l
/* 809B86B0  3C A0 80 9C */	lis r5, __dt__5csXyzFv@ha
/* 809B86B4  38 A5 83 5C */	addi r5, r5, __dt__5csXyzFv@l
/* 809B86B8  38 C0 00 06 */	li r6, 6
/* 809B86BC  38 E0 00 02 */	li r7, 2
/* 809B86C0  4B 9A 96 A0 */	b __construct_array
/* 809B86C4  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 809B86C8  38 80 00 00 */	li r4, 0
/* 809B86CC  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 809B86D0  7C A3 00 50 */	subf r5, r3, r0
/* 809B86D4  4B 64 AD 84 */	b memset
/* 809B86D8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809B86DC  4B 78 D1 BC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B86E0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809B86E4  4B 78 D1 B4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 809B86E8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809B86EC  4B 78 CF E8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 809B86F0  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 809B86F4  4B 78 CF E0 */	b initialize__18daNpcT_ActorMngr_cFv
/* 809B86F8  7F 43 D3 78 */	mr r3, r26
/* 809B86FC  4B 78 E5 9C */	b initialize__15daNpcT_JntAnm_cFv
/* 809B8700  38 A0 00 00 */	li r5, 0
/* 809B8704  38 60 00 00 */	li r3, 0
/* 809B8708  7C A4 2B 78 */	mr r4, r5
/* 809B870C  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 809B8710  38 00 00 02 */	li r0, 2
/* 809B8714  7C 09 03 A6 */	mtctr r0
lbl_809B8718:
/* 809B8718  7C DF 22 14 */	add r6, r31, r4
/* 809B871C  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 809B8720  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 809B8724  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 809B8728  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809B872C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809B8730  38 63 00 04 */	addi r3, r3, 4
/* 809B8734  38 84 00 06 */	addi r4, r4, 6
/* 809B8738  42 00 FF E0 */	bdnz lbl_809B8718
/* 809B873C  38 00 00 00 */	li r0, 0
/* 809B8740  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809B8744  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809B8748  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809B874C  38 00 FF FF */	li r0, -1
/* 809B8750  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 809B8754  38 00 00 01 */	li r0, 1
/* 809B8758  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 809B875C  C0 3E 01 1C */	lfs f1, 0x11c(r30)
/* 809B8760  4B 8A F1 F4 */	b cM_rndF__Ff
/* 809B8764  FC 00 08 1E */	fctiwz f0, f1
/* 809B8768  D8 01 00 08 */	stfd f0, 8(r1)
/* 809B876C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809B8770  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 809B8774  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 809B8778  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 809B877C  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 809B8780  7F E3 FB 78 */	mr r3, r31
/* 809B8784  39 61 00 40 */	addi r11, r1, 0x40
/* 809B8788  4B 9A 9A 84 */	b _restgpr_22
/* 809B878C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809B8790  7C 08 03 A6 */	mtlr r0
/* 809B8794  38 21 00 40 */	addi r1, r1, 0x40
/* 809B8798  4E 80 00 20 */	blr 
