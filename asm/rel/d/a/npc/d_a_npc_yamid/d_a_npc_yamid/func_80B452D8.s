lbl_80B452D8:
/* 80B452D8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B452DC  7C 08 02 A6 */	mflr r0
/* 80B452E0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B452E4  39 61 00 40 */	addi r11, r1, 0x40
/* 80B452E8  4B 81 CE D8 */	b _savegpr_22
/* 80B452EC  7C 7F 1B 78 */	mr r31, r3
/* 80B452F0  7C 96 23 78 */	mr r22, r4
/* 80B452F4  7C B7 2B 78 */	mr r23, r5
/* 80B452F8  7C DA 33 78 */	mr r26, r6
/* 80B452FC  7C FB 3B 78 */	mr r27, r7
/* 80B45300  7D 1C 43 78 */	mr r28, r8
/* 80B45304  7D 3D 4B 78 */	mr r29, r9
/* 80B45308  7D 58 53 78 */	mr r24, r10
/* 80B4530C  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80B45310  3C 80 80 B4 */	lis r4, m__19daNpc_yamiD_Param_c@ha
/* 80B45314  3B C4 60 4C */	addi r30, r4, m__19daNpc_yamiD_Param_c@l
/* 80B45318  4B 4D 38 4C */	b __ct__10fopAc_ac_cFv
/* 80B4531C  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80B45320  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80B45324  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B45328  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80B4532C  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80B45330  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80B45334  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80B45338  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B4533C  4B 77 B0 8C */	b __ct__10Z2CreatureFv
/* 80B45340  3A DF 06 10 */	addi r22, r31, 0x610
/* 80B45344  3C 60 80 B4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B45348  38 03 62 FC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B4534C  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80B45350  7E C3 B3 78 */	mr r3, r22
/* 80B45354  38 80 00 00 */	li r4, 0
/* 80B45358  4B 7E 30 A4 */	b init__12J3DFrameCtrlFs
/* 80B4535C  38 00 00 00 */	li r0, 0
/* 80B45360  90 16 00 18 */	stw r0, 0x18(r22)
/* 80B45364  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80B45368  3C 60 80 B4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B4536C  38 03 62 FC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B45370  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B45374  7E C3 B3 78 */	mr r3, r22
/* 80B45378  38 80 00 00 */	li r4, 0
/* 80B4537C  4B 7E 30 80 */	b init__12J3DFrameCtrlFs
/* 80B45380  38 00 00 00 */	li r0, 0
/* 80B45384  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B45388  3A DF 06 44 */	addi r22, r31, 0x644
/* 80B4538C  3C 60 80 B4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B45390  38 03 62 FC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B45394  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80B45398  7E C3 B3 78 */	mr r3, r22
/* 80B4539C  38 80 00 00 */	li r4, 0
/* 80B453A0  4B 7E 30 5C */	b init__12J3DFrameCtrlFs
/* 80B453A4  38 00 00 00 */	li r0, 0
/* 80B453A8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B453AC  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80B453B0  3C 60 80 B4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B453B4  38 03 62 FC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B453B8  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80B453BC  7E C3 B3 78 */	mr r3, r22
/* 80B453C0  38 80 00 00 */	li r4, 0
/* 80B453C4  4B 7E 30 38 */	b init__12J3DFrameCtrlFs
/* 80B453C8  38 00 00 00 */	li r0, 0
/* 80B453CC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B453D0  3A DF 06 74 */	addi r22, r31, 0x674
/* 80B453D4  3C 60 80 B4 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B453D8  38 03 62 FC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B453DC  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80B453E0  7E C3 B3 78 */	mr r3, r22
/* 80B453E4  38 80 00 00 */	li r4, 0
/* 80B453E8  4B 7E 30 14 */	b init__12J3DFrameCtrlFs
/* 80B453EC  38 00 00 00 */	li r0, 0
/* 80B453F0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B453F4  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80B453F8  7E C3 B3 78 */	mr r3, r22
/* 80B453FC  4B 53 0C A4 */	b __ct__9dBgS_AcchFv
/* 80B45400  3C 60 80 B4 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80B45404  38 63 63 08 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80B45408  90 76 00 10 */	stw r3, 0x10(r22)
/* 80B4540C  38 03 00 0C */	addi r0, r3, 0xc
/* 80B45410  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B45414  38 03 00 18 */	addi r0, r3, 0x18
/* 80B45418  90 16 00 24 */	stw r0, 0x24(r22)
/* 80B4541C  38 76 00 14 */	addi r3, r22, 0x14
/* 80B45420  4B 53 3A 48 */	b SetObj__16dBgS_PolyPassChkFv
/* 80B45424  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B45428  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B4542C  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80B45430  38 7F 08 80 */	addi r3, r31, 0x880
/* 80B45434  4B 53 E3 2C */	b __ct__10dCcD_GSttsFv
/* 80B45438  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B4543C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B45440  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80B45444  3B 23 00 20 */	addi r25, r3, 0x20
/* 80B45448  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80B4544C  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B45450  4B 53 0A 5C */	b __ct__12dBgS_AcchCirFv
/* 80B45454  38 7F 09 30 */	addi r3, r31, 0x930
/* 80B45458  4B 72 27 C4 */	b __ct__11cBgS_GndChkFv
/* 80B4545C  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B45460  4B 70 4A A0 */	b __ct__10dMsgFlow_cFv
/* 80B45464  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B45468  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B4546C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B45470  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80B45474  4B 53 E2 EC */	b __ct__10dCcD_GSttsFv
/* 80B45478  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B4547C  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80B45480  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B45484  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80B45488  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80B4548C  4B 53 20 F0 */	b __ct__11dBgS_GndChkFv
/* 80B45490  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80B45494  4B 53 27 D4 */	b __ct__11dBgS_LinChkFv
/* 80B45498  3C 60 80 B4 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B4549C  38 03 63 50 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B454A0  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80B454A4  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80B454A8  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80B454AC  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B454B0  4B 60 03 E8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B454B4  3C 60 80 B4 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B454B8  38 03 63 50 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B454BC  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80B454C0  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80B454C4  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80B454C8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B454CC  4B 60 03 CC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B454D0  3C 60 80 B4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B454D4  38 03 63 5C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B454D8  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80B454DC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B454E0  4B 60 01 F4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B454E4  3C 60 80 B4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B454E8  38 03 63 5C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B454EC  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80B454F0  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B454F4  4B 60 01 E0 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B454F8  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80B454FC  3C 60 80 B4 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B45500  38 03 63 68 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B45504  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80B45508  3C 60 80 B4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B4550C  38 03 63 5C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B45510  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80B45514  7F 43 D3 78 */	mr r3, r26
/* 80B45518  4B 60 01 BC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B4551C  38 7A 00 30 */	addi r3, r26, 0x30
/* 80B45520  3C 80 80 B4 */	lis r4, __ct__4cXyzFv@ha
/* 80B45524  38 84 57 DC */	addi r4, r4, __ct__4cXyzFv@l
/* 80B45528  3C A0 80 B4 */	lis r5, __dt__4cXyzFv@ha
/* 80B4552C  38 A5 51 88 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B45530  38 C0 00 0C */	li r6, 0xc
/* 80B45534  38 E0 00 03 */	li r7, 3
/* 80B45538  4B 81 C8 28 */	b __construct_array
/* 80B4553C  38 7A 00 54 */	addi r3, r26, 0x54
/* 80B45540  3C 80 80 B4 */	lis r4, __ct__4cXyzFv@ha
/* 80B45544  38 84 57 DC */	addi r4, r4, __ct__4cXyzFv@l
/* 80B45548  3C A0 80 B4 */	lis r5, __dt__4cXyzFv@ha
/* 80B4554C  38 A5 51 88 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B45550  38 C0 00 0C */	li r6, 0xc
/* 80B45554  38 E0 00 03 */	li r7, 3
/* 80B45558  4B 81 C8 08 */	b __construct_array
/* 80B4555C  38 7A 00 78 */	addi r3, r26, 0x78
/* 80B45560  3C 80 80 B4 */	lis r4, __ct__4cXyzFv@ha
/* 80B45564  38 84 57 DC */	addi r4, r4, __ct__4cXyzFv@l
/* 80B45568  3C A0 80 B4 */	lis r5, __dt__4cXyzFv@ha
/* 80B4556C  38 A5 51 88 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B45570  38 C0 00 0C */	li r6, 0xc
/* 80B45574  38 E0 00 03 */	li r7, 3
/* 80B45578  4B 81 C7 E8 */	b __construct_array
/* 80B4557C  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80B45580  3C 80 80 B4 */	lis r4, __ct__4cXyzFv@ha
/* 80B45584  38 84 57 DC */	addi r4, r4, __ct__4cXyzFv@l
/* 80B45588  3C A0 80 B4 */	lis r5, __dt__4cXyzFv@ha
/* 80B4558C  38 A5 51 88 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B45590  38 C0 00 0C */	li r6, 0xc
/* 80B45594  38 E0 00 03 */	li r7, 3
/* 80B45598  4B 81 C7 C8 */	b __construct_array
/* 80B4559C  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80B455A0  3C 80 80 B4 */	lis r4, __ct__4cXyzFv@ha
/* 80B455A4  38 84 57 DC */	addi r4, r4, __ct__4cXyzFv@l
/* 80B455A8  3C A0 80 B4 */	lis r5, __dt__4cXyzFv@ha
/* 80B455AC  38 A5 51 88 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B455B0  38 C0 00 0C */	li r6, 0xc
/* 80B455B4  38 E0 00 03 */	li r7, 3
/* 80B455B8  4B 81 C7 A8 */	b __construct_array
/* 80B455BC  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80B455C0  3C 80 80 B4 */	lis r4, __ct__4cXyzFv@ha
/* 80B455C4  38 84 57 DC */	addi r4, r4, __ct__4cXyzFv@l
/* 80B455C8  3C A0 80 B4 */	lis r5, __dt__4cXyzFv@ha
/* 80B455CC  38 A5 51 88 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B455D0  38 C0 00 0C */	li r6, 0xc
/* 80B455D4  38 E0 00 03 */	li r7, 3
/* 80B455D8  4B 81 C7 88 */	b __construct_array
/* 80B455DC  7F 43 D3 78 */	mr r3, r26
/* 80B455E0  4B 60 16 B8 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B455E4  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B455E8  3C 80 80 B4 */	lis r4, __ct__5csXyzFv@ha
/* 80B455EC  38 84 56 DC */	addi r4, r4, __ct__5csXyzFv@l
/* 80B455F0  3C A0 80 B4 */	lis r5, __dt__5csXyzFv@ha
/* 80B455F4  38 A5 51 C4 */	addi r5, r5, __dt__5csXyzFv@l
/* 80B455F8  38 C0 00 06 */	li r6, 6
/* 80B455FC  38 E0 00 02 */	li r7, 2
/* 80B45600  4B 81 C7 60 */	b __construct_array
/* 80B45604  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B45608  38 80 00 00 */	li r4, 0
/* 80B4560C  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B45610  7C A3 00 50 */	subf r5, r3, r0
/* 80B45614  4B 4B DE 44 */	b memset
/* 80B45618  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B4561C  4B 60 02 7C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B45620  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B45624  4B 60 02 74 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B45628  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B4562C  4B 60 00 A8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B45630  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B45634  4B 60 00 A0 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B45638  7F 43 D3 78 */	mr r3, r26
/* 80B4563C  4B 60 16 5C */	b initialize__15daNpcT_JntAnm_cFv
/* 80B45640  38 A0 00 00 */	li r5, 0
/* 80B45644  38 60 00 00 */	li r3, 0
/* 80B45648  7C A4 2B 78 */	mr r4, r5
/* 80B4564C  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B45650  38 00 00 02 */	li r0, 2
/* 80B45654  7C 09 03 A6 */	mtctr r0
lbl_80B45658:
/* 80B45658  7C DF 22 14 */	add r6, r31, r4
/* 80B4565C  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B45660  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B45664  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B45668  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B4566C  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B45670  38 63 00 04 */	addi r3, r3, 4
/* 80B45674  38 84 00 06 */	addi r4, r4, 6
/* 80B45678  42 00 FF E0 */	bdnz lbl_80B45658
/* 80B4567C  38 00 00 00 */	li r0, 0
/* 80B45680  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B45684  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B45688  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B4568C  38 00 FF FF */	li r0, -1
/* 80B45690  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B45694  38 00 00 01 */	li r0, 1
/* 80B45698  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B4569C  C0 3E 00 A8 */	lfs f1, 0xa8(r30)
/* 80B456A0  4B 72 22 B4 */	b cM_rndF__Ff
/* 80B456A4  FC 00 08 1E */	fctiwz f0, f1
/* 80B456A8  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B456AC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B456B0  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B456B4  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 80B456B8  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B456BC  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B456C0  7F E3 FB 78 */	mr r3, r31
/* 80B456C4  39 61 00 40 */	addi r11, r1, 0x40
/* 80B456C8  4B 81 CB 44 */	b _restgpr_22
/* 80B456CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B456D0  7C 08 03 A6 */	mtlr r0
/* 80B456D4  38 21 00 40 */	addi r1, r1, 0x40
/* 80B456D8  4E 80 00 20 */	blr 
