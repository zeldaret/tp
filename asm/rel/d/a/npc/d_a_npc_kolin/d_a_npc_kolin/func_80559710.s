lbl_80559710:
/* 80559710  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80559714  7C 08 02 A6 */	mflr r0
/* 80559718  90 01 00 44 */	stw r0, 0x44(r1)
/* 8055971C  39 61 00 40 */	addi r11, r1, 0x40
/* 80559720  4B E0 8A A0 */	b _savegpr_22
/* 80559724  7C 7F 1B 78 */	mr r31, r3
/* 80559728  7C 96 23 78 */	mr r22, r4
/* 8055972C  7C B7 2B 78 */	mr r23, r5
/* 80559730  7C DA 33 78 */	mr r26, r6
/* 80559734  7C FB 3B 78 */	mr r27, r7
/* 80559738  7D 1C 43 78 */	mr r28, r8
/* 8055973C  7D 3D 4B 78 */	mr r29, r9
/* 80559740  7D 58 53 78 */	mr r24, r10
/* 80559744  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80559748  3C 80 80 56 */	lis r4, m__19daNpc_Kolin_Param_c@ha
/* 8055974C  3B C4 A5 B4 */	addi r30, r4, m__19daNpc_Kolin_Param_c@l
/* 80559750  4B AB F4 14 */	b __ct__10fopAc_ac_cFv
/* 80559754  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80559758  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 8055975C  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80559760  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80559764  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80559768  93 1F 05 70 */	stw r24, 0x570(r31)
/* 8055976C  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80559770  38 7F 05 80 */	addi r3, r31, 0x580
/* 80559774  4B D6 6C 54 */	b __ct__10Z2CreatureFv
/* 80559778  3A DF 06 10 */	addi r22, r31, 0x610
/* 8055977C  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80559780  38 03 B2 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80559784  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80559788  7E C3 B3 78 */	mr r3, r22
/* 8055978C  38 80 00 00 */	li r4, 0
/* 80559790  4B DC EC 6C */	b init__12J3DFrameCtrlFs
/* 80559794  38 00 00 00 */	li r0, 0
/* 80559798  90 16 00 18 */	stw r0, 0x18(r22)
/* 8055979C  3A DF 06 2C */	addi r22, r31, 0x62c
/* 805597A0  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 805597A4  38 03 B2 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 805597A8  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 805597AC  7E C3 B3 78 */	mr r3, r22
/* 805597B0  38 80 00 00 */	li r4, 0
/* 805597B4  4B DC EC 48 */	b init__12J3DFrameCtrlFs
/* 805597B8  38 00 00 00 */	li r0, 0
/* 805597BC  90 16 00 14 */	stw r0, 0x14(r22)
/* 805597C0  3A DF 06 44 */	addi r22, r31, 0x644
/* 805597C4  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 805597C8  38 03 B2 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 805597CC  90 1F 06 44 */	stw r0, 0x644(r31)
/* 805597D0  7E C3 B3 78 */	mr r3, r22
/* 805597D4  38 80 00 00 */	li r4, 0
/* 805597D8  4B DC EC 24 */	b init__12J3DFrameCtrlFs
/* 805597DC  38 00 00 00 */	li r0, 0
/* 805597E0  90 16 00 14 */	stw r0, 0x14(r22)
/* 805597E4  3A DF 06 5C */	addi r22, r31, 0x65c
/* 805597E8  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 805597EC  38 03 B2 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 805597F0  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 805597F4  7E C3 B3 78 */	mr r3, r22
/* 805597F8  38 80 00 00 */	li r4, 0
/* 805597FC  4B DC EC 00 */	b init__12J3DFrameCtrlFs
/* 80559800  38 00 00 00 */	li r0, 0
/* 80559804  90 16 00 14 */	stw r0, 0x14(r22)
/* 80559808  3A DF 06 74 */	addi r22, r31, 0x674
/* 8055980C  3C 60 80 56 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80559810  38 03 B2 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80559814  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80559818  7E C3 B3 78 */	mr r3, r22
/* 8055981C  38 80 00 00 */	li r4, 0
/* 80559820  4B DC EB DC */	b init__12J3DFrameCtrlFs
/* 80559824  38 00 00 00 */	li r0, 0
/* 80559828  90 16 00 14 */	stw r0, 0x14(r22)
/* 8055982C  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80559830  7E C3 B3 78 */	mr r3, r22
/* 80559834  4B B1 C8 6C */	b __ct__9dBgS_AcchFv
/* 80559838  3C 60 80 56 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8055983C  38 63 B2 64 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80559840  90 76 00 10 */	stw r3, 0x10(r22)
/* 80559844  38 03 00 0C */	addi r0, r3, 0xc
/* 80559848  90 16 00 14 */	stw r0, 0x14(r22)
/* 8055984C  38 03 00 18 */	addi r0, r3, 0x18
/* 80559850  90 16 00 24 */	stw r0, 0x24(r22)
/* 80559854  38 76 00 14 */	addi r3, r22, 0x14
/* 80559858  4B B1 F6 10 */	b SetObj__16dBgS_PolyPassChkFv
/* 8055985C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80559860  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80559864  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80559868  38 7F 08 80 */	addi r3, r31, 0x880
/* 8055986C  4B B2 9E F4 */	b __ct__10dCcD_GSttsFv
/* 80559870  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80559874  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80559878  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 8055987C  3B 23 00 20 */	addi r25, r3, 0x20
/* 80559880  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80559884  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80559888  4B B1 C6 24 */	b __ct__12dBgS_AcchCirFv
/* 8055988C  38 7F 09 30 */	addi r3, r31, 0x930
/* 80559890  4B D0 E3 8C */	b __ct__11cBgS_GndChkFv
/* 80559894  38 7F 09 74 */	addi r3, r31, 0x974
/* 80559898  4B CF 06 68 */	b __ct__10dMsgFlow_cFv
/* 8055989C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 805598A0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 805598A4  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 805598A8  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 805598AC  4B B2 9E B4 */	b __ct__10dCcD_GSttsFv
/* 805598B0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805598B4  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 805598B8  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 805598BC  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 805598C0  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 805598C4  4B B1 DC B8 */	b __ct__11dBgS_GndChkFv
/* 805598C8  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 805598CC  4B B1 E3 9C */	b __ct__11dBgS_LinChkFv
/* 805598D0  3C 60 80 56 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 805598D4  38 03 B2 AC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 805598D8  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 805598DC  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 805598E0  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 805598E4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 805598E8  4B BE BF B0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 805598EC  3C 60 80 56 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 805598F0  38 03 B2 AC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 805598F4  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 805598F8  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 805598FC  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80559900  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80559904  4B BE BF 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80559908  3C 60 80 56 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8055990C  38 03 B2 B8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80559910  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80559914  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80559918  4B BE BD BC */	b initialize__18daNpcT_ActorMngr_cFv
/* 8055991C  3C 60 80 56 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80559920  38 03 B2 B8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80559924  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80559928  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 8055992C  4B BE BD A8 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80559930  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80559934  3C 60 80 56 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80559938  38 03 B2 C4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 8055993C  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80559940  3C 60 80 56 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80559944  38 03 B2 B8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80559948  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 8055994C  7F 43 D3 78 */	mr r3, r26
/* 80559950  4B BE BD 84 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80559954  38 7A 00 30 */	addi r3, r26, 0x30
/* 80559958  3C 80 80 56 */	lis r4, __ct__4cXyzFv@ha
/* 8055995C  38 84 9C 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 80559960  3C A0 80 56 */	lis r5, __dt__4cXyzFv@ha
/* 80559964  38 A5 95 3C */	addi r5, r5, __dt__4cXyzFv@l
/* 80559968  38 C0 00 0C */	li r6, 0xc
/* 8055996C  38 E0 00 03 */	li r7, 3
/* 80559970  4B E0 83 F0 */	b __construct_array
/* 80559974  38 7A 00 54 */	addi r3, r26, 0x54
/* 80559978  3C 80 80 56 */	lis r4, __ct__4cXyzFv@ha
/* 8055997C  38 84 9C 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 80559980  3C A0 80 56 */	lis r5, __dt__4cXyzFv@ha
/* 80559984  38 A5 95 3C */	addi r5, r5, __dt__4cXyzFv@l
/* 80559988  38 C0 00 0C */	li r6, 0xc
/* 8055998C  38 E0 00 03 */	li r7, 3
/* 80559990  4B E0 83 D0 */	b __construct_array
/* 80559994  38 7A 00 78 */	addi r3, r26, 0x78
/* 80559998  3C 80 80 56 */	lis r4, __ct__4cXyzFv@ha
/* 8055999C  38 84 9C 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 805599A0  3C A0 80 56 */	lis r5, __dt__4cXyzFv@ha
/* 805599A4  38 A5 95 3C */	addi r5, r5, __dt__4cXyzFv@l
/* 805599A8  38 C0 00 0C */	li r6, 0xc
/* 805599AC  38 E0 00 03 */	li r7, 3
/* 805599B0  4B E0 83 B0 */	b __construct_array
/* 805599B4  38 7A 00 9C */	addi r3, r26, 0x9c
/* 805599B8  3C 80 80 56 */	lis r4, __ct__4cXyzFv@ha
/* 805599BC  38 84 9C 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 805599C0  3C A0 80 56 */	lis r5, __dt__4cXyzFv@ha
/* 805599C4  38 A5 95 3C */	addi r5, r5, __dt__4cXyzFv@l
/* 805599C8  38 C0 00 0C */	li r6, 0xc
/* 805599CC  38 E0 00 03 */	li r7, 3
/* 805599D0  4B E0 83 90 */	b __construct_array
/* 805599D4  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 805599D8  3C 80 80 56 */	lis r4, __ct__4cXyzFv@ha
/* 805599DC  38 84 9C 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 805599E0  3C A0 80 56 */	lis r5, __dt__4cXyzFv@ha
/* 805599E4  38 A5 95 3C */	addi r5, r5, __dt__4cXyzFv@l
/* 805599E8  38 C0 00 0C */	li r6, 0xc
/* 805599EC  38 E0 00 03 */	li r7, 3
/* 805599F0  4B E0 83 70 */	b __construct_array
/* 805599F4  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 805599F8  3C 80 80 56 */	lis r4, __ct__4cXyzFv@ha
/* 805599FC  38 84 9C 14 */	addi r4, r4, __ct__4cXyzFv@l
/* 80559A00  3C A0 80 56 */	lis r5, __dt__4cXyzFv@ha
/* 80559A04  38 A5 95 3C */	addi r5, r5, __dt__4cXyzFv@l
/* 80559A08  38 C0 00 0C */	li r6, 0xc
/* 80559A0C  38 E0 00 03 */	li r7, 3
/* 80559A10  4B E0 83 50 */	b __construct_array
/* 80559A14  7F 43 D3 78 */	mr r3, r26
/* 80559A18  4B BE D2 80 */	b initialize__15daNpcT_JntAnm_cFv
/* 80559A1C  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80559A20  3C 80 80 56 */	lis r4, __ct__5csXyzFv@ha
/* 80559A24  38 84 9B 14 */	addi r4, r4, __ct__5csXyzFv@l
/* 80559A28  3C A0 80 56 */	lis r5, __dt__5csXyzFv@ha
/* 80559A2C  38 A5 95 78 */	addi r5, r5, __dt__5csXyzFv@l
/* 80559A30  38 C0 00 06 */	li r6, 6
/* 80559A34  38 E0 00 02 */	li r7, 2
/* 80559A38  4B E0 83 28 */	b __construct_array
/* 80559A3C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80559A40  38 80 00 00 */	li r4, 0
/* 80559A44  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80559A48  7C A3 00 50 */	subf r5, r3, r0
/* 80559A4C  4B AA 9A 0C */	b memset
/* 80559A50  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80559A54  4B BE BE 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80559A58  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80559A5C  4B BE BE 3C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80559A60  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80559A64  4B BE BC 70 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80559A68  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80559A6C  4B BE BC 68 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80559A70  7F 43 D3 78 */	mr r3, r26
/* 80559A74  4B BE D2 24 */	b initialize__15daNpcT_JntAnm_cFv
/* 80559A78  38 A0 00 00 */	li r5, 0
/* 80559A7C  38 60 00 00 */	li r3, 0
/* 80559A80  7C A4 2B 78 */	mr r4, r5
/* 80559A84  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 80559A88  38 00 00 02 */	li r0, 2
/* 80559A8C  7C 09 03 A6 */	mtctr r0
lbl_80559A90:
/* 80559A90  7C DF 22 14 */	add r6, r31, r4
/* 80559A94  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80559A98  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80559A9C  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80559AA0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80559AA4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80559AA8  38 63 00 04 */	addi r3, r3, 4
/* 80559AAC  38 84 00 06 */	addi r4, r4, 6
/* 80559AB0  42 00 FF E0 */	bdnz lbl_80559A90
/* 80559AB4  38 00 00 00 */	li r0, 0
/* 80559AB8  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80559ABC  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80559AC0  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80559AC4  38 00 FF FF */	li r0, -1
/* 80559AC8  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80559ACC  38 00 00 01 */	li r0, 1
/* 80559AD0  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80559AD4  C0 3E 00 F4 */	lfs f1, 0xf4(r30)
/* 80559AD8  4B D0 DE 7C */	b cM_rndF__Ff
/* 80559ADC  FC 00 08 1E */	fctiwz f0, f1
/* 80559AE0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80559AE4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80559AE8  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80559AEC  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 80559AF0  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80559AF4  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80559AF8  7F E3 FB 78 */	mr r3, r31
/* 80559AFC  39 61 00 40 */	addi r11, r1, 0x40
/* 80559B00  4B E0 87 0C */	b _restgpr_22
/* 80559B04  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80559B08  7C 08 03 A6 */	mtlr r0
/* 80559B0C  38 21 00 40 */	addi r1, r1, 0x40
/* 80559B10  4E 80 00 20 */	blr 
