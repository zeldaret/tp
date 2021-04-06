lbl_809BD748:
/* 809BD748  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 809BD74C  7C 08 02 A6 */	mflr r0
/* 809BD750  90 01 00 44 */	stw r0, 0x44(r1)
/* 809BD754  39 61 00 40 */	addi r11, r1, 0x40
/* 809BD758  4B 9A 4A 69 */	bl _savegpr_22
/* 809BD75C  7C 7F 1B 78 */	mr r31, r3
/* 809BD760  7C 96 23 78 */	mr r22, r4
/* 809BD764  7C B7 2B 78 */	mr r23, r5
/* 809BD768  7C DA 33 78 */	mr r26, r6
/* 809BD76C  7C FB 3B 78 */	mr r27, r7
/* 809BD770  7D 1C 43 78 */	mr r28, r8
/* 809BD774  7D 3D 4B 78 */	mr r29, r9
/* 809BD778  7D 58 53 78 */	mr r24, r10
/* 809BD77C  83 21 00 48 */	lwz r25, 0x48(r1)
/* 809BD780  3C 80 80 9C */	lis r4, m__17daNpc_Gnd_Param_c@ha /* 0x809BE4A0@ha */
/* 809BD784  3B C4 E4 A0 */	addi r30, r4, m__17daNpc_Gnd_Param_c@l /* 0x809BE4A0@l */
/* 809BD788  4B 65 B3 DD */	bl __ct__10fopAc_ac_cFv
/* 809BD78C  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 809BD790  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 809BD794  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 809BD798  92 DF 05 68 */	stw r22, 0x568(r31)
/* 809BD79C  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 809BD7A0  93 1F 05 70 */	stw r24, 0x570(r31)
/* 809BD7A4  93 3F 05 74 */	stw r25, 0x574(r31)
/* 809BD7A8  38 7F 05 80 */	addi r3, r31, 0x580
/* 809BD7AC  4B 90 2C 1D */	bl __ct__10Z2CreatureFv
/* 809BD7B0  3A DF 06 10 */	addi r22, r31, 0x610
/* 809BD7B4  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BE6E0@ha */
/* 809BD7B8  38 03 E6 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BE6E0@l */
/* 809BD7BC  90 1F 06 10 */	stw r0, 0x610(r31)
/* 809BD7C0  7E C3 B3 78 */	mr r3, r22
/* 809BD7C4  38 80 00 00 */	li r4, 0
/* 809BD7C8  4B 96 AC 35 */	bl init__12J3DFrameCtrlFs
/* 809BD7CC  38 00 00 00 */	li r0, 0
/* 809BD7D0  90 16 00 18 */	stw r0, 0x18(r22)
/* 809BD7D4  3A DF 06 2C */	addi r22, r31, 0x62c
/* 809BD7D8  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BE6E0@ha */
/* 809BD7DC  38 03 E6 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BE6E0@l */
/* 809BD7E0  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 809BD7E4  7E C3 B3 78 */	mr r3, r22
/* 809BD7E8  38 80 00 00 */	li r4, 0
/* 809BD7EC  4B 96 AC 11 */	bl init__12J3DFrameCtrlFs
/* 809BD7F0  38 00 00 00 */	li r0, 0
/* 809BD7F4  90 16 00 14 */	stw r0, 0x14(r22)
/* 809BD7F8  3A DF 06 44 */	addi r22, r31, 0x644
/* 809BD7FC  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BE6E0@ha */
/* 809BD800  38 03 E6 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BE6E0@l */
/* 809BD804  90 1F 06 44 */	stw r0, 0x644(r31)
/* 809BD808  7E C3 B3 78 */	mr r3, r22
/* 809BD80C  38 80 00 00 */	li r4, 0
/* 809BD810  4B 96 AB ED */	bl init__12J3DFrameCtrlFs
/* 809BD814  38 00 00 00 */	li r0, 0
/* 809BD818  90 16 00 14 */	stw r0, 0x14(r22)
/* 809BD81C  3A DF 06 5C */	addi r22, r31, 0x65c
/* 809BD820  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BE6E0@ha */
/* 809BD824  38 03 E6 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BE6E0@l */
/* 809BD828  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 809BD82C  7E C3 B3 78 */	mr r3, r22
/* 809BD830  38 80 00 00 */	li r4, 0
/* 809BD834  4B 96 AB C9 */	bl init__12J3DFrameCtrlFs
/* 809BD838  38 00 00 00 */	li r0, 0
/* 809BD83C  90 16 00 14 */	stw r0, 0x14(r22)
/* 809BD840  3A DF 06 74 */	addi r22, r31, 0x674
/* 809BD844  3C 60 80 9C */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809BE6E0@ha */
/* 809BD848  38 03 E6 E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809BE6E0@l */
/* 809BD84C  90 1F 06 74 */	stw r0, 0x674(r31)
/* 809BD850  7E C3 B3 78 */	mr r3, r22
/* 809BD854  38 80 00 00 */	li r4, 0
/* 809BD858  4B 96 AB A5 */	bl init__12J3DFrameCtrlFs
/* 809BD85C  38 00 00 00 */	li r0, 0
/* 809BD860  90 16 00 14 */	stw r0, 0x14(r22)
/* 809BD864  3A DF 06 8C */	addi r22, r31, 0x68c
/* 809BD868  7E C3 B3 78 */	mr r3, r22
/* 809BD86C  4B 6B 88 35 */	bl __ct__9dBgS_AcchFv
/* 809BD870  3C 60 80 9C */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809BE6EC@ha */
/* 809BD874  38 63 E6 EC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809BE6EC@l */
/* 809BD878  90 76 00 10 */	stw r3, 0x10(r22)
/* 809BD87C  38 03 00 0C */	addi r0, r3, 0xc
/* 809BD880  90 16 00 14 */	stw r0, 0x14(r22)
/* 809BD884  38 03 00 18 */	addi r0, r3, 0x18
/* 809BD888  90 16 00 24 */	stw r0, 0x24(r22)
/* 809BD88C  38 76 00 14 */	addi r3, r22, 0x14
/* 809BD890  4B 6B B5 D9 */	bl SetObj__16dBgS_PolyPassChkFv
/* 809BD894  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809BD898  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809BD89C  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 809BD8A0  38 7F 08 80 */	addi r3, r31, 0x880
/* 809BD8A4  4B 6C 5E BD */	bl __ct__10dCcD_GSttsFv
/* 809BD8A8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809BD8AC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809BD8B0  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 809BD8B4  3B 23 00 20 */	addi r25, r3, 0x20
/* 809BD8B8  93 3F 08 80 */	stw r25, 0x880(r31)
/* 809BD8BC  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 809BD8C0  4B 6B 85 ED */	bl __ct__12dBgS_AcchCirFv
/* 809BD8C4  38 7F 09 30 */	addi r3, r31, 0x930
/* 809BD8C8  4B 8A A3 55 */	bl __ct__11cBgS_GndChkFv
/* 809BD8CC  38 7F 09 74 */	addi r3, r31, 0x974
/* 809BD8D0  4B 88 C6 31 */	bl __ct__10dMsgFlow_cFv
/* 809BD8D4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809BD8D8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809BD8DC  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 809BD8E0  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 809BD8E4  4B 6C 5E 7D */	bl __ct__10dCcD_GSttsFv
/* 809BD8E8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809BD8EC  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809BD8F0  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 809BD8F4  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 809BD8F8  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 809BD8FC  4B 6B 9C 81 */	bl __ct__11dBgS_GndChkFv
/* 809BD900  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 809BD904  4B 6B A3 65 */	bl __ct__11dBgS_LinChkFv
/* 809BD908  3C 60 80 9C */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x809BE734@ha */
/* 809BD90C  38 03 E7 34 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x809BE734@l */
/* 809BD910  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 809BD914  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 809BD918  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 809BD91C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809BD920  4B 78 7F 79 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809BD924  3C 60 80 9C */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x809BE734@ha */
/* 809BD928  38 03 E7 34 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x809BE734@l */
/* 809BD92C  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 809BD930  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 809BD934  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 809BD938  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809BD93C  4B 78 7F 5D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809BD940  3C 60 80 9C */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809BE740@ha */
/* 809BD944  38 03 E7 40 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809BE740@l */
/* 809BD948  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 809BD94C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809BD950  4B 78 7D 85 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809BD954  3C 60 80 9C */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809BE740@ha */
/* 809BD958  38 03 E7 40 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809BE740@l */
/* 809BD95C  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 809BD960  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 809BD964  4B 78 7D 71 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809BD968  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 809BD96C  3C 60 80 9C */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x809BE74C@ha */
/* 809BD970  38 03 E7 4C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x809BE74C@l */
/* 809BD974  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 809BD978  3C 60 80 9C */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x809BE740@ha */
/* 809BD97C  38 03 E7 40 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x809BE740@l */
/* 809BD980  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 809BD984  7F 43 D3 78 */	mr r3, r26
/* 809BD988  4B 78 7D 4D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809BD98C  38 7A 00 30 */	addi r3, r26, 0x30
/* 809BD990  3C 80 80 9C */	lis r4, __ct__4cXyzFv@ha /* 0x809BDC4C@ha */
/* 809BD994  38 84 DC 4C */	addi r4, r4, __ct__4cXyzFv@l /* 0x809BDC4C@l */
/* 809BD998  3C A0 80 9C */	lis r5, __dt__4cXyzFv@ha /* 0x809BD6D0@ha */
/* 809BD99C  38 A5 D6 D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809BD6D0@l */
/* 809BD9A0  38 C0 00 0C */	li r6, 0xc
/* 809BD9A4  38 E0 00 03 */	li r7, 3
/* 809BD9A8  4B 9A 43 B9 */	bl __construct_array
/* 809BD9AC  38 7A 00 54 */	addi r3, r26, 0x54
/* 809BD9B0  3C 80 80 9C */	lis r4, __ct__4cXyzFv@ha /* 0x809BDC4C@ha */
/* 809BD9B4  38 84 DC 4C */	addi r4, r4, __ct__4cXyzFv@l /* 0x809BDC4C@l */
/* 809BD9B8  3C A0 80 9C */	lis r5, __dt__4cXyzFv@ha /* 0x809BD6D0@ha */
/* 809BD9BC  38 A5 D6 D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809BD6D0@l */
/* 809BD9C0  38 C0 00 0C */	li r6, 0xc
/* 809BD9C4  38 E0 00 03 */	li r7, 3
/* 809BD9C8  4B 9A 43 99 */	bl __construct_array
/* 809BD9CC  38 7A 00 78 */	addi r3, r26, 0x78
/* 809BD9D0  3C 80 80 9C */	lis r4, __ct__4cXyzFv@ha /* 0x809BDC4C@ha */
/* 809BD9D4  38 84 DC 4C */	addi r4, r4, __ct__4cXyzFv@l /* 0x809BDC4C@l */
/* 809BD9D8  3C A0 80 9C */	lis r5, __dt__4cXyzFv@ha /* 0x809BD6D0@ha */
/* 809BD9DC  38 A5 D6 D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809BD6D0@l */
/* 809BD9E0  38 C0 00 0C */	li r6, 0xc
/* 809BD9E4  38 E0 00 03 */	li r7, 3
/* 809BD9E8  4B 9A 43 79 */	bl __construct_array
/* 809BD9EC  38 7A 00 9C */	addi r3, r26, 0x9c
/* 809BD9F0  3C 80 80 9C */	lis r4, __ct__4cXyzFv@ha /* 0x809BDC4C@ha */
/* 809BD9F4  38 84 DC 4C */	addi r4, r4, __ct__4cXyzFv@l /* 0x809BDC4C@l */
/* 809BD9F8  3C A0 80 9C */	lis r5, __dt__4cXyzFv@ha /* 0x809BD6D0@ha */
/* 809BD9FC  38 A5 D6 D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809BD6D0@l */
/* 809BDA00  38 C0 00 0C */	li r6, 0xc
/* 809BDA04  38 E0 00 03 */	li r7, 3
/* 809BDA08  4B 9A 43 59 */	bl __construct_array
/* 809BDA0C  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 809BDA10  3C 80 80 9C */	lis r4, __ct__4cXyzFv@ha /* 0x809BDC4C@ha */
/* 809BDA14  38 84 DC 4C */	addi r4, r4, __ct__4cXyzFv@l /* 0x809BDC4C@l */
/* 809BDA18  3C A0 80 9C */	lis r5, __dt__4cXyzFv@ha /* 0x809BD6D0@ha */
/* 809BDA1C  38 A5 D6 D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809BD6D0@l */
/* 809BDA20  38 C0 00 0C */	li r6, 0xc
/* 809BDA24  38 E0 00 03 */	li r7, 3
/* 809BDA28  4B 9A 43 39 */	bl __construct_array
/* 809BDA2C  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 809BDA30  3C 80 80 9C */	lis r4, __ct__4cXyzFv@ha /* 0x809BDC4C@ha */
/* 809BDA34  38 84 DC 4C */	addi r4, r4, __ct__4cXyzFv@l /* 0x809BDC4C@l */
/* 809BDA38  3C A0 80 9C */	lis r5, __dt__4cXyzFv@ha /* 0x809BD6D0@ha */
/* 809BDA3C  38 A5 D6 D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809BD6D0@l */
/* 809BDA40  38 C0 00 0C */	li r6, 0xc
/* 809BDA44  38 E0 00 03 */	li r7, 3
/* 809BDA48  4B 9A 43 19 */	bl __construct_array
/* 809BDA4C  7F 43 D3 78 */	mr r3, r26
/* 809BDA50  4B 78 92 49 */	bl initialize__15daNpcT_JntAnm_cFv
/* 809BDA54  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 809BDA58  3C 80 80 9C */	lis r4, __ct__5csXyzFv@ha /* 0x809BDB4C@ha */
/* 809BDA5C  38 84 DB 4C */	addi r4, r4, __ct__5csXyzFv@l /* 0x809BDB4C@l */
/* 809BDA60  3C A0 80 9C */	lis r5, __dt__5csXyzFv@ha /* 0x809BD70C@ha */
/* 809BDA64  38 A5 D7 0C */	addi r5, r5, __dt__5csXyzFv@l /* 0x809BD70C@l */
/* 809BDA68  38 C0 00 06 */	li r6, 6
/* 809BDA6C  38 E0 00 02 */	li r7, 2
/* 809BDA70  4B 9A 42 F1 */	bl __construct_array
/* 809BDA74  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 809BDA78  38 80 00 00 */	li r4, 0
/* 809BDA7C  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 809BDA80  7C A3 00 50 */	subf r5, r3, r0
/* 809BDA84  4B 64 59 D5 */	bl memset
/* 809BDA88  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 809BDA8C  4B 78 7E 0D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809BDA90  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 809BDA94  4B 78 7E 05 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 809BDA98  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 809BDA9C  4B 78 7C 39 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809BDAA0  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 809BDAA4  4B 78 7C 31 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 809BDAA8  7F 43 D3 78 */	mr r3, r26
/* 809BDAAC  4B 78 91 ED */	bl initialize__15daNpcT_JntAnm_cFv
/* 809BDAB0  38 A0 00 00 */	li r5, 0
/* 809BDAB4  38 60 00 00 */	li r3, 0
/* 809BDAB8  7C A4 2B 78 */	mr r4, r5
/* 809BDABC  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 809BDAC0  38 00 00 02 */	li r0, 2
/* 809BDAC4  7C 09 03 A6 */	mtctr r0
lbl_809BDAC8:
/* 809BDAC8  7C DF 22 14 */	add r6, r31, r4
/* 809BDACC  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 809BDAD0  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 809BDAD4  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 809BDAD8  38 03 0D 14 */	addi r0, r3, 0xd14
/* 809BDADC  7C 1F 05 2E */	stfsx f0, r31, r0
/* 809BDAE0  38 63 00 04 */	addi r3, r3, 4
/* 809BDAE4  38 84 00 06 */	addi r4, r4, 6
/* 809BDAE8  42 00 FF E0 */	bdnz lbl_809BDAC8
/* 809BDAEC  38 00 00 00 */	li r0, 0
/* 809BDAF0  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 809BDAF4  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 809BDAF8  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 809BDAFC  38 00 FF FF */	li r0, -1
/* 809BDB00  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 809BDB04  38 00 00 01 */	li r0, 1
/* 809BDB08  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 809BDB0C  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 809BDB10  4B 8A 9E 45 */	bl cM_rndF__Ff
/* 809BDB14  FC 00 08 1E */	fctiwz f0, f1
/* 809BDB18  D8 01 00 08 */	stfd f0, 8(r1)
/* 809BDB1C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809BDB20  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 809BDB24  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 809BDB28  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 809BDB2C  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 809BDB30  7F E3 FB 78 */	mr r3, r31
/* 809BDB34  39 61 00 40 */	addi r11, r1, 0x40
/* 809BDB38  4B 9A 46 D5 */	bl _restgpr_22
/* 809BDB3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 809BDB40  7C 08 03 A6 */	mtlr r0
/* 809BDB44  38 21 00 40 */	addi r1, r1, 0x40
/* 809BDB48  4E 80 00 20 */	blr 
