lbl_80994A70:
/* 80994A70  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80994A74  7C 08 02 A6 */	mflr r0
/* 80994A78  90 01 00 44 */	stw r0, 0x44(r1)
/* 80994A7C  39 61 00 40 */	addi r11, r1, 0x40
/* 80994A80  4B 9C D7 40 */	b _savegpr_22
/* 80994A84  7C 7F 1B 78 */	mr r31, r3
/* 80994A88  7C 96 23 78 */	mr r22, r4
/* 80994A8C  7C B7 2B 78 */	mr r23, r5
/* 80994A90  7C DA 33 78 */	mr r26, r6
/* 80994A94  7C FB 3B 78 */	mr r27, r7
/* 80994A98  7D 1C 43 78 */	mr r28, r8
/* 80994A9C  7D 3D 4B 78 */	mr r29, r9
/* 80994AA0  7D 58 53 78 */	mr r24, r10
/* 80994AA4  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80994AA8  3C 80 80 99 */	lis r4, m__20daNpc_clerkA_Param_c@ha
/* 80994AAC  3B C4 58 70 */	addi r30, r4, m__20daNpc_clerkA_Param_c@l
/* 80994AB0  4B 68 40 B4 */	b __ct__10fopAc_ac_cFv
/* 80994AB4  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80994AB8  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80994ABC  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80994AC0  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80994AC4  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80994AC8  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80994ACC  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80994AD0  38 7F 05 80 */	addi r3, r31, 0x580
/* 80994AD4  4B 92 B8 F4 */	b __ct__10Z2CreatureFv
/* 80994AD8  3A DF 06 10 */	addi r22, r31, 0x610
/* 80994ADC  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80994AE0  38 03 5C AC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80994AE4  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80994AE8  7E C3 B3 78 */	mr r3, r22
/* 80994AEC  38 80 00 00 */	li r4, 0
/* 80994AF0  4B 99 39 0C */	b init__12J3DFrameCtrlFs
/* 80994AF4  38 00 00 00 */	li r0, 0
/* 80994AF8  90 16 00 18 */	stw r0, 0x18(r22)
/* 80994AFC  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80994B00  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80994B04  38 03 5C AC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80994B08  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80994B0C  7E C3 B3 78 */	mr r3, r22
/* 80994B10  38 80 00 00 */	li r4, 0
/* 80994B14  4B 99 38 E8 */	b init__12J3DFrameCtrlFs
/* 80994B18  38 00 00 00 */	li r0, 0
/* 80994B1C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80994B20  3A DF 06 44 */	addi r22, r31, 0x644
/* 80994B24  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80994B28  38 03 5C AC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80994B2C  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80994B30  7E C3 B3 78 */	mr r3, r22
/* 80994B34  38 80 00 00 */	li r4, 0
/* 80994B38  4B 99 38 C4 */	b init__12J3DFrameCtrlFs
/* 80994B3C  38 00 00 00 */	li r0, 0
/* 80994B40  90 16 00 14 */	stw r0, 0x14(r22)
/* 80994B44  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80994B48  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80994B4C  38 03 5C AC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80994B50  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80994B54  7E C3 B3 78 */	mr r3, r22
/* 80994B58  38 80 00 00 */	li r4, 0
/* 80994B5C  4B 99 38 A0 */	b init__12J3DFrameCtrlFs
/* 80994B60  38 00 00 00 */	li r0, 0
/* 80994B64  90 16 00 14 */	stw r0, 0x14(r22)
/* 80994B68  3A DF 06 74 */	addi r22, r31, 0x674
/* 80994B6C  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80994B70  38 03 5C AC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80994B74  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80994B78  7E C3 B3 78 */	mr r3, r22
/* 80994B7C  38 80 00 00 */	li r4, 0
/* 80994B80  4B 99 38 7C */	b init__12J3DFrameCtrlFs
/* 80994B84  38 00 00 00 */	li r0, 0
/* 80994B88  90 16 00 14 */	stw r0, 0x14(r22)
/* 80994B8C  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80994B90  7E C3 B3 78 */	mr r3, r22
/* 80994B94  4B 6E 15 0C */	b __ct__9dBgS_AcchFv
/* 80994B98  3C 60 80 99 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80994B9C  38 63 5C B8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80994BA0  90 76 00 10 */	stw r3, 0x10(r22)
/* 80994BA4  38 03 00 0C */	addi r0, r3, 0xc
/* 80994BA8  90 16 00 14 */	stw r0, 0x14(r22)
/* 80994BAC  38 03 00 18 */	addi r0, r3, 0x18
/* 80994BB0  90 16 00 24 */	stw r0, 0x24(r22)
/* 80994BB4  38 76 00 14 */	addi r3, r22, 0x14
/* 80994BB8  4B 6E 42 B0 */	b SetObj__16dBgS_PolyPassChkFv
/* 80994BBC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80994BC0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80994BC4  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80994BC8  38 7F 08 80 */	addi r3, r31, 0x880
/* 80994BCC  4B 6E EB 94 */	b __ct__10dCcD_GSttsFv
/* 80994BD0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80994BD4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80994BD8  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80994BDC  3B 23 00 20 */	addi r25, r3, 0x20
/* 80994BE0  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80994BE4  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80994BE8  4B 6E 12 C4 */	b __ct__12dBgS_AcchCirFv
/* 80994BEC  38 7F 09 30 */	addi r3, r31, 0x930
/* 80994BF0  4B 8D 30 2C */	b __ct__11cBgS_GndChkFv
/* 80994BF4  38 7F 09 74 */	addi r3, r31, 0x974
/* 80994BF8  4B 8B 53 08 */	b __ct__10dMsgFlow_cFv
/* 80994BFC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80994C00  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80994C04  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80994C08  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80994C0C  4B 6E EB 54 */	b __ct__10dCcD_GSttsFv
/* 80994C10  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80994C14  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80994C18  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80994C1C  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80994C20  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80994C24  4B 6E 29 58 */	b __ct__11dBgS_GndChkFv
/* 80994C28  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80994C2C  4B 6E 30 3C */	b __ct__11dBgS_LinChkFv
/* 80994C30  3C 60 80 99 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80994C34  38 03 5D 00 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80994C38  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80994C3C  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80994C40  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80994C44  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80994C48  4B 7B 0C 50 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80994C4C  3C 60 80 99 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80994C50  38 03 5D 00 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80994C54  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80994C58  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80994C5C  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80994C60  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80994C64  4B 7B 0C 34 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80994C68  3C 60 80 99 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80994C6C  38 03 5D 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80994C70  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80994C74  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80994C78  4B 7B 0A 5C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80994C7C  3C 60 80 99 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80994C80  38 03 5D 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80994C84  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80994C88  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80994C8C  4B 7B 0A 48 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80994C90  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80994C94  3C 60 80 99 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80994C98  38 03 5D 0C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80994C9C  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80994CA0  3C 60 80 99 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80994CA4  38 03 5D 18 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80994CA8  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80994CAC  7F 43 D3 78 */	mr r3, r26
/* 80994CB0  4B 7B 0A 24 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80994CB4  38 7A 00 30 */	addi r3, r26, 0x30
/* 80994CB8  3C 80 80 99 */	lis r4, __ct__4cXyzFv@ha
/* 80994CBC  38 84 4F 74 */	addi r4, r4, __ct__4cXyzFv@l
/* 80994CC0  3C A0 80 99 */	lis r5, __dt__4cXyzFv@ha
/* 80994CC4  38 A5 49 F8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80994CC8  38 C0 00 0C */	li r6, 0xc
/* 80994CCC  38 E0 00 03 */	li r7, 3
/* 80994CD0  4B 9C D0 90 */	b __construct_array
/* 80994CD4  38 7A 00 54 */	addi r3, r26, 0x54
/* 80994CD8  3C 80 80 99 */	lis r4, __ct__4cXyzFv@ha
/* 80994CDC  38 84 4F 74 */	addi r4, r4, __ct__4cXyzFv@l
/* 80994CE0  3C A0 80 99 */	lis r5, __dt__4cXyzFv@ha
/* 80994CE4  38 A5 49 F8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80994CE8  38 C0 00 0C */	li r6, 0xc
/* 80994CEC  38 E0 00 03 */	li r7, 3
/* 80994CF0  4B 9C D0 70 */	b __construct_array
/* 80994CF4  38 7A 00 78 */	addi r3, r26, 0x78
/* 80994CF8  3C 80 80 99 */	lis r4, __ct__4cXyzFv@ha
/* 80994CFC  38 84 4F 74 */	addi r4, r4, __ct__4cXyzFv@l
/* 80994D00  3C A0 80 99 */	lis r5, __dt__4cXyzFv@ha
/* 80994D04  38 A5 49 F8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80994D08  38 C0 00 0C */	li r6, 0xc
/* 80994D0C  38 E0 00 03 */	li r7, 3
/* 80994D10  4B 9C D0 50 */	b __construct_array
/* 80994D14  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80994D18  3C 80 80 99 */	lis r4, __ct__4cXyzFv@ha
/* 80994D1C  38 84 4F 74 */	addi r4, r4, __ct__4cXyzFv@l
/* 80994D20  3C A0 80 99 */	lis r5, __dt__4cXyzFv@ha
/* 80994D24  38 A5 49 F8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80994D28  38 C0 00 0C */	li r6, 0xc
/* 80994D2C  38 E0 00 03 */	li r7, 3
/* 80994D30  4B 9C D0 30 */	b __construct_array
/* 80994D34  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80994D38  3C 80 80 99 */	lis r4, __ct__4cXyzFv@ha
/* 80994D3C  38 84 4F 74 */	addi r4, r4, __ct__4cXyzFv@l
/* 80994D40  3C A0 80 99 */	lis r5, __dt__4cXyzFv@ha
/* 80994D44  38 A5 49 F8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80994D48  38 C0 00 0C */	li r6, 0xc
/* 80994D4C  38 E0 00 03 */	li r7, 3
/* 80994D50  4B 9C D0 10 */	b __construct_array
/* 80994D54  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80994D58  3C 80 80 99 */	lis r4, __ct__4cXyzFv@ha
/* 80994D5C  38 84 4F 74 */	addi r4, r4, __ct__4cXyzFv@l
/* 80994D60  3C A0 80 99 */	lis r5, __dt__4cXyzFv@ha
/* 80994D64  38 A5 49 F8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80994D68  38 C0 00 0C */	li r6, 0xc
/* 80994D6C  38 E0 00 03 */	li r7, 3
/* 80994D70  4B 9C CF F0 */	b __construct_array
/* 80994D74  7F 43 D3 78 */	mr r3, r26
/* 80994D78  4B 7B 1F 20 */	b initialize__15daNpcT_JntAnm_cFv
/* 80994D7C  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80994D80  3C 80 80 99 */	lis r4, __ct__5csXyzFv@ha
/* 80994D84  38 84 4E 74 */	addi r4, r4, __ct__5csXyzFv@l
/* 80994D88  3C A0 80 99 */	lis r5, __dt__5csXyzFv@ha
/* 80994D8C  38 A5 4A 34 */	addi r5, r5, __dt__5csXyzFv@l
/* 80994D90  38 C0 00 06 */	li r6, 6
/* 80994D94  38 E0 00 02 */	li r7, 2
/* 80994D98  4B 9C CF C8 */	b __construct_array
/* 80994D9C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80994DA0  38 80 00 00 */	li r4, 0
/* 80994DA4  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80994DA8  7C A3 00 50 */	subf r5, r3, r0
/* 80994DAC  4B 66 E6 AC */	b memset
/* 80994DB0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80994DB4  4B 7B 0A E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80994DB8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80994DBC  4B 7B 0A DC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80994DC0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80994DC4  4B 7B 09 10 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80994DC8  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80994DCC  4B 7B 09 08 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80994DD0  7F 43 D3 78 */	mr r3, r26
/* 80994DD4  4B 7B 1E C4 */	b initialize__15daNpcT_JntAnm_cFv
/* 80994DD8  38 A0 00 00 */	li r5, 0
/* 80994DDC  38 60 00 00 */	li r3, 0
/* 80994DE0  7C A4 2B 78 */	mr r4, r5
/* 80994DE4  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80994DE8  38 00 00 02 */	li r0, 2
/* 80994DEC  7C 09 03 A6 */	mtctr r0
lbl_80994DF0:
/* 80994DF0  7C DF 22 14 */	add r6, r31, r4
/* 80994DF4  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80994DF8  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80994DFC  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80994E00  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80994E04  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80994E08  38 63 00 04 */	addi r3, r3, 4
/* 80994E0C  38 84 00 06 */	addi r4, r4, 6
/* 80994E10  42 00 FF E0 */	bdnz lbl_80994DF0
/* 80994E14  38 00 00 00 */	li r0, 0
/* 80994E18  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80994E1C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80994E20  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80994E24  38 00 FF FF */	li r0, -1
/* 80994E28  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80994E2C  38 00 00 01 */	li r0, 1
/* 80994E30  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80994E34  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80994E38  4B 8D 2B 1C */	b cM_rndF__Ff
/* 80994E3C  FC 00 08 1E */	fctiwz f0, f1
/* 80994E40  D8 01 00 08 */	stfd f0, 8(r1)
/* 80994E44  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80994E48  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80994E4C  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80994E50  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80994E54  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80994E58  7F E3 FB 78 */	mr r3, r31
/* 80994E5C  39 61 00 40 */	addi r11, r1, 0x40
/* 80994E60  4B 9C D3 AC */	b _restgpr_22
/* 80994E64  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80994E68  7C 08 03 A6 */	mtlr r0
/* 80994E6C  38 21 00 40 */	addi r1, r1, 0x40
/* 80994E70  4E 80 00 20 */	blr 
