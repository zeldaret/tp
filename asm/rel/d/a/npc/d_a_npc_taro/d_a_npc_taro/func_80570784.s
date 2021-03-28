lbl_80570784:
/* 80570784  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80570788  7C 08 02 A6 */	mflr r0
/* 8057078C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80570790  39 61 00 40 */	addi r11, r1, 0x40
/* 80570794  4B DF 1A 2C */	b _savegpr_22
/* 80570798  7C 7F 1B 78 */	mr r31, r3
/* 8057079C  7C 96 23 78 */	mr r22, r4
/* 805707A0  7C B7 2B 78 */	mr r23, r5
/* 805707A4  7C DA 33 78 */	mr r26, r6
/* 805707A8  7C FB 3B 78 */	mr r27, r7
/* 805707AC  7D 1C 43 78 */	mr r28, r8
/* 805707B0  7D 3D 4B 78 */	mr r29, r9
/* 805707B4  7D 58 53 78 */	mr r24, r10
/* 805707B8  83 21 00 48 */	lwz r25, 0x48(r1)
/* 805707BC  3C 80 80 57 */	lis r4, m__18daNpc_Taro_Param_c@ha
/* 805707C0  3B C4 16 C8 */	addi r30, r4, m__18daNpc_Taro_Param_c@l
/* 805707C4  4B AA 83 A0 */	b __ct__10fopAc_ac_cFv
/* 805707C8  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 805707CC  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 805707D0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 805707D4  92 DF 05 68 */	stw r22, 0x568(r31)
/* 805707D8  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 805707DC  93 1F 05 70 */	stw r24, 0x570(r31)
/* 805707E0  93 3F 05 74 */	stw r25, 0x574(r31)
/* 805707E4  38 7F 05 80 */	addi r3, r31, 0x580
/* 805707E8  4B D4 FB E0 */	b __ct__10Z2CreatureFv
/* 805707EC  3A DF 06 10 */	addi r22, r31, 0x610
/* 805707F0  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 805707F4  38 03 33 F8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 805707F8  90 1F 06 10 */	stw r0, 0x610(r31)
/* 805707FC  7E C3 B3 78 */	mr r3, r22
/* 80570800  38 80 00 00 */	li r4, 0
/* 80570804  4B DB 7B F8 */	b init__12J3DFrameCtrlFs
/* 80570808  38 00 00 00 */	li r0, 0
/* 8057080C  90 16 00 18 */	stw r0, 0x18(r22)
/* 80570810  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80570814  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80570818  38 03 33 F8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8057081C  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80570820  7E C3 B3 78 */	mr r3, r22
/* 80570824  38 80 00 00 */	li r4, 0
/* 80570828  4B DB 7B D4 */	b init__12J3DFrameCtrlFs
/* 8057082C  38 00 00 00 */	li r0, 0
/* 80570830  90 16 00 14 */	stw r0, 0x14(r22)
/* 80570834  3A DF 06 44 */	addi r22, r31, 0x644
/* 80570838  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8057083C  38 03 33 F8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80570840  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80570844  7E C3 B3 78 */	mr r3, r22
/* 80570848  38 80 00 00 */	li r4, 0
/* 8057084C  4B DB 7B B0 */	b init__12J3DFrameCtrlFs
/* 80570850  38 00 00 00 */	li r0, 0
/* 80570854  90 16 00 14 */	stw r0, 0x14(r22)
/* 80570858  3A DF 06 5C */	addi r22, r31, 0x65c
/* 8057085C  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80570860  38 03 33 F8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80570864  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80570868  7E C3 B3 78 */	mr r3, r22
/* 8057086C  38 80 00 00 */	li r4, 0
/* 80570870  4B DB 7B 8C */	b init__12J3DFrameCtrlFs
/* 80570874  38 00 00 00 */	li r0, 0
/* 80570878  90 16 00 14 */	stw r0, 0x14(r22)
/* 8057087C  3A DF 06 74 */	addi r22, r31, 0x674
/* 80570880  3C 60 80 57 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80570884  38 03 33 F8 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80570888  90 1F 06 74 */	stw r0, 0x674(r31)
/* 8057088C  7E C3 B3 78 */	mr r3, r22
/* 80570890  38 80 00 00 */	li r4, 0
/* 80570894  4B DB 7B 68 */	b init__12J3DFrameCtrlFs
/* 80570898  38 00 00 00 */	li r0, 0
/* 8057089C  90 16 00 14 */	stw r0, 0x14(r22)
/* 805708A0  3A DF 06 8C */	addi r22, r31, 0x68c
/* 805708A4  7E C3 B3 78 */	mr r3, r22
/* 805708A8  4B B0 57 F8 */	b __ct__9dBgS_AcchFv
/* 805708AC  3C 60 80 57 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 805708B0  38 63 34 04 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 805708B4  90 76 00 10 */	stw r3, 0x10(r22)
/* 805708B8  38 03 00 0C */	addi r0, r3, 0xc
/* 805708BC  90 16 00 14 */	stw r0, 0x14(r22)
/* 805708C0  38 03 00 18 */	addi r0, r3, 0x18
/* 805708C4  90 16 00 24 */	stw r0, 0x24(r22)
/* 805708C8  38 76 00 14 */	addi r3, r22, 0x14
/* 805708CC  4B B0 85 9C */	b SetObj__16dBgS_PolyPassChkFv
/* 805708D0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 805708D4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 805708D8  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 805708DC  38 7F 08 80 */	addi r3, r31, 0x880
/* 805708E0  4B B1 2E 80 */	b __ct__10dCcD_GSttsFv
/* 805708E4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805708E8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 805708EC  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 805708F0  3B 23 00 20 */	addi r25, r3, 0x20
/* 805708F4  93 3F 08 80 */	stw r25, 0x880(r31)
/* 805708F8  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 805708FC  4B B0 55 B0 */	b __ct__12dBgS_AcchCirFv
/* 80570900  38 7F 09 30 */	addi r3, r31, 0x930
/* 80570904  4B CF 73 18 */	b __ct__11cBgS_GndChkFv
/* 80570908  38 7F 09 74 */	addi r3, r31, 0x974
/* 8057090C  4B CD 95 F4 */	b __ct__10dMsgFlow_cFv
/* 80570910  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80570914  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80570918  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 8057091C  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80570920  4B B1 2E 40 */	b __ct__10dCcD_GSttsFv
/* 80570924  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80570928  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 8057092C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80570930  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80570934  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80570938  4B B0 6C 44 */	b __ct__11dBgS_GndChkFv
/* 8057093C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80570940  4B B0 73 28 */	b __ct__11dBgS_LinChkFv
/* 80570944  3C 60 80 57 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80570948  38 03 34 4C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 8057094C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80570950  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80570954  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80570958  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8057095C  4B BD 4F 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80570960  3C 60 80 57 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80570964  38 03 34 4C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80570968  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 8057096C  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80570970  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80570974  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80570978  4B BD 4F 20 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8057097C  3C 60 80 57 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80570980  38 03 34 58 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80570984  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80570988  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8057098C  4B BD 4D 48 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80570990  3C 60 80 57 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80570994  38 03 34 58 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80570998  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 8057099C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 805709A0  4B BD 4D 34 */	b initialize__18daNpcT_ActorMngr_cFv
/* 805709A4  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 805709A8  3C 60 80 57 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 805709AC  38 03 34 64 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 805709B0  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 805709B4  3C 60 80 57 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 805709B8  38 03 34 58 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 805709BC  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 805709C0  7F 43 D3 78 */	mr r3, r26
/* 805709C4  4B BD 4D 10 */	b initialize__18daNpcT_ActorMngr_cFv
/* 805709C8  38 7A 00 30 */	addi r3, r26, 0x30
/* 805709CC  3C 80 80 57 */	lis r4, __ct__4cXyzFv@ha
/* 805709D0  38 84 0C 88 */	addi r4, r4, __ct__4cXyzFv@l
/* 805709D4  3C A0 80 57 */	lis r5, __dt__4cXyzFv@ha
/* 805709D8  38 A5 05 F8 */	addi r5, r5, __dt__4cXyzFv@l
/* 805709DC  38 C0 00 0C */	li r6, 0xc
/* 805709E0  38 E0 00 03 */	li r7, 3
/* 805709E4  4B DF 13 7C */	b __construct_array
/* 805709E8  38 7A 00 54 */	addi r3, r26, 0x54
/* 805709EC  3C 80 80 57 */	lis r4, __ct__4cXyzFv@ha
/* 805709F0  38 84 0C 88 */	addi r4, r4, __ct__4cXyzFv@l
/* 805709F4  3C A0 80 57 */	lis r5, __dt__4cXyzFv@ha
/* 805709F8  38 A5 05 F8 */	addi r5, r5, __dt__4cXyzFv@l
/* 805709FC  38 C0 00 0C */	li r6, 0xc
/* 80570A00  38 E0 00 03 */	li r7, 3
/* 80570A04  4B DF 13 5C */	b __construct_array
/* 80570A08  38 7A 00 78 */	addi r3, r26, 0x78
/* 80570A0C  3C 80 80 57 */	lis r4, __ct__4cXyzFv@ha
/* 80570A10  38 84 0C 88 */	addi r4, r4, __ct__4cXyzFv@l
/* 80570A14  3C A0 80 57 */	lis r5, __dt__4cXyzFv@ha
/* 80570A18  38 A5 05 F8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80570A1C  38 C0 00 0C */	li r6, 0xc
/* 80570A20  38 E0 00 03 */	li r7, 3
/* 80570A24  4B DF 13 3C */	b __construct_array
/* 80570A28  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80570A2C  3C 80 80 57 */	lis r4, __ct__4cXyzFv@ha
/* 80570A30  38 84 0C 88 */	addi r4, r4, __ct__4cXyzFv@l
/* 80570A34  3C A0 80 57 */	lis r5, __dt__4cXyzFv@ha
/* 80570A38  38 A5 05 F8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80570A3C  38 C0 00 0C */	li r6, 0xc
/* 80570A40  38 E0 00 03 */	li r7, 3
/* 80570A44  4B DF 13 1C */	b __construct_array
/* 80570A48  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80570A4C  3C 80 80 57 */	lis r4, __ct__4cXyzFv@ha
/* 80570A50  38 84 0C 88 */	addi r4, r4, __ct__4cXyzFv@l
/* 80570A54  3C A0 80 57 */	lis r5, __dt__4cXyzFv@ha
/* 80570A58  38 A5 05 F8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80570A5C  38 C0 00 0C */	li r6, 0xc
/* 80570A60  38 E0 00 03 */	li r7, 3
/* 80570A64  4B DF 12 FC */	b __construct_array
/* 80570A68  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80570A6C  3C 80 80 57 */	lis r4, __ct__4cXyzFv@ha
/* 80570A70  38 84 0C 88 */	addi r4, r4, __ct__4cXyzFv@l
/* 80570A74  3C A0 80 57 */	lis r5, __dt__4cXyzFv@ha
/* 80570A78  38 A5 05 F8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80570A7C  38 C0 00 0C */	li r6, 0xc
/* 80570A80  38 E0 00 03 */	li r7, 3
/* 80570A84  4B DF 12 DC */	b __construct_array
/* 80570A88  7F 43 D3 78 */	mr r3, r26
/* 80570A8C  4B BD 62 0C */	b initialize__15daNpcT_JntAnm_cFv
/* 80570A90  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80570A94  3C 80 80 57 */	lis r4, __ct__5csXyzFv@ha
/* 80570A98  38 84 0B 88 */	addi r4, r4, __ct__5csXyzFv@l
/* 80570A9C  3C A0 80 57 */	lis r5, __dt__5csXyzFv@ha
/* 80570AA0  38 A5 06 34 */	addi r5, r5, __dt__5csXyzFv@l
/* 80570AA4  38 C0 00 06 */	li r6, 6
/* 80570AA8  38 E0 00 02 */	li r7, 2
/* 80570AAC  4B DF 12 B4 */	b __construct_array
/* 80570AB0  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80570AB4  38 80 00 00 */	li r4, 0
/* 80570AB8  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80570ABC  7C A3 00 50 */	subf r5, r3, r0
/* 80570AC0  4B A9 29 98 */	b memset
/* 80570AC4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80570AC8  4B BD 4D D0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80570ACC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80570AD0  4B BD 4D C8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80570AD4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80570AD8  4B BD 4B FC */	b initialize__18daNpcT_ActorMngr_cFv
/* 80570ADC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80570AE0  4B BD 4B F4 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80570AE4  7F 43 D3 78 */	mr r3, r26
/* 80570AE8  4B BD 61 B0 */	b initialize__15daNpcT_JntAnm_cFv
/* 80570AEC  38 A0 00 00 */	li r5, 0
/* 80570AF0  38 60 00 00 */	li r3, 0
/* 80570AF4  7C A4 2B 78 */	mr r4, r5
/* 80570AF8  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80570AFC  38 00 00 02 */	li r0, 2
/* 80570B00  7C 09 03 A6 */	mtctr r0
lbl_80570B04:
/* 80570B04  7C DF 22 14 */	add r6, r31, r4
/* 80570B08  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80570B0C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80570B10  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80570B14  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80570B18  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80570B1C  38 63 00 04 */	addi r3, r3, 4
/* 80570B20  38 84 00 06 */	addi r4, r4, 6
/* 80570B24  42 00 FF E0 */	bdnz lbl_80570B04
/* 80570B28  38 00 00 00 */	li r0, 0
/* 80570B2C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80570B30  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80570B34  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80570B38  38 00 FF FF */	li r0, -1
/* 80570B3C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80570B40  38 00 00 01 */	li r0, 1
/* 80570B44  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80570B48  C0 3E 00 EC */	lfs f1, 0xec(r30)
/* 80570B4C  4B CF 6E 08 */	b cM_rndF__Ff
/* 80570B50  FC 00 08 1E */	fctiwz f0, f1
/* 80570B54  D8 01 00 08 */	stfd f0, 8(r1)
/* 80570B58  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80570B5C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80570B60  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80570B64  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80570B68  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80570B6C  7F E3 FB 78 */	mr r3, r31
/* 80570B70  39 61 00 40 */	addi r11, r1, 0x40
/* 80570B74  4B DF 16 98 */	b _restgpr_22
/* 80570B78  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80570B7C  7C 08 03 A6 */	mtlr r0
/* 80570B80  38 21 00 40 */	addi r1, r1, 0x40
/* 80570B84  4E 80 00 20 */	blr 
