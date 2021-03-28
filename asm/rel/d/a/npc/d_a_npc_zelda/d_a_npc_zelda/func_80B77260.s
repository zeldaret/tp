lbl_80B77260:
/* 80B77260  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B77264  7C 08 02 A6 */	mflr r0
/* 80B77268  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B7726C  39 61 00 40 */	addi r11, r1, 0x40
/* 80B77270  4B 7E AF 50 */	b _savegpr_22
/* 80B77274  7C 7F 1B 78 */	mr r31, r3
/* 80B77278  7C 96 23 78 */	mr r22, r4
/* 80B7727C  7C B7 2B 78 */	mr r23, r5
/* 80B77280  7C DA 33 78 */	mr r26, r6
/* 80B77284  7C FB 3B 78 */	mr r27, r7
/* 80B77288  7D 1C 43 78 */	mr r28, r8
/* 80B7728C  7D 3D 4B 78 */	mr r29, r9
/* 80B77290  7D 58 53 78 */	mr r24, r10
/* 80B77294  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80B77298  3C 80 80 B7 */	lis r4, m__19daNpc_Zelda_Param_c@ha
/* 80B7729C  3B C4 7F C8 */	addi r30, r4, m__19daNpc_Zelda_Param_c@l
/* 80B772A0  4B 4A 18 C4 */	b __ct__10fopAc_ac_cFv
/* 80B772A4  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 80B772A8  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 80B772AC  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B772B0  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80B772B4  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80B772B8  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80B772BC  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80B772C0  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B772C4  4B 74 91 04 */	b __ct__10Z2CreatureFv
/* 80B772C8  3A DF 06 10 */	addi r22, r31, 0x610
/* 80B772CC  3C 60 80 B8 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B772D0  38 03 82 9C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B772D4  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80B772D8  7E C3 B3 78 */	mr r3, r22
/* 80B772DC  38 80 00 00 */	li r4, 0
/* 80B772E0  4B 7B 11 1C */	b init__12J3DFrameCtrlFs
/* 80B772E4  38 00 00 00 */	li r0, 0
/* 80B772E8  90 16 00 18 */	stw r0, 0x18(r22)
/* 80B772EC  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80B772F0  3C 60 80 B8 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B772F4  38 03 82 9C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B772F8  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B772FC  7E C3 B3 78 */	mr r3, r22
/* 80B77300  38 80 00 00 */	li r4, 0
/* 80B77304  4B 7B 10 F8 */	b init__12J3DFrameCtrlFs
/* 80B77308  38 00 00 00 */	li r0, 0
/* 80B7730C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B77310  3A DF 06 44 */	addi r22, r31, 0x644
/* 80B77314  3C 60 80 B8 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B77318  38 03 82 9C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B7731C  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80B77320  7E C3 B3 78 */	mr r3, r22
/* 80B77324  38 80 00 00 */	li r4, 0
/* 80B77328  4B 7B 10 D4 */	b init__12J3DFrameCtrlFs
/* 80B7732C  38 00 00 00 */	li r0, 0
/* 80B77330  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B77334  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80B77338  3C 60 80 B8 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B7733C  38 03 82 9C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B77340  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80B77344  7E C3 B3 78 */	mr r3, r22
/* 80B77348  38 80 00 00 */	li r4, 0
/* 80B7734C  4B 7B 10 B0 */	b init__12J3DFrameCtrlFs
/* 80B77350  38 00 00 00 */	li r0, 0
/* 80B77354  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B77358  3A DF 06 74 */	addi r22, r31, 0x674
/* 80B7735C  3C 60 80 B8 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B77360  38 03 82 9C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B77364  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80B77368  7E C3 B3 78 */	mr r3, r22
/* 80B7736C  38 80 00 00 */	li r4, 0
/* 80B77370  4B 7B 10 8C */	b init__12J3DFrameCtrlFs
/* 80B77374  38 00 00 00 */	li r0, 0
/* 80B77378  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B7737C  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80B77380  7E C3 B3 78 */	mr r3, r22
/* 80B77384  4B 4F ED 1C */	b __ct__9dBgS_AcchFv
/* 80B77388  3C 60 80 B8 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80B7738C  38 63 82 A8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80B77390  90 76 00 10 */	stw r3, 0x10(r22)
/* 80B77394  38 03 00 0C */	addi r0, r3, 0xc
/* 80B77398  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B7739C  38 03 00 18 */	addi r0, r3, 0x18
/* 80B773A0  90 16 00 24 */	stw r0, 0x24(r22)
/* 80B773A4  38 76 00 14 */	addi r3, r22, 0x14
/* 80B773A8  4B 50 1A C0 */	b SetObj__16dBgS_PolyPassChkFv
/* 80B773AC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B773B0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B773B4  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80B773B8  38 7F 08 80 */	addi r3, r31, 0x880
/* 80B773BC  4B 50 C3 A4 */	b __ct__10dCcD_GSttsFv
/* 80B773C0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B773C4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B773C8  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80B773CC  3B 23 00 20 */	addi r25, r3, 0x20
/* 80B773D0  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80B773D4  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B773D8  4B 4F EA D4 */	b __ct__12dBgS_AcchCirFv
/* 80B773DC  38 7F 09 30 */	addi r3, r31, 0x930
/* 80B773E0  4B 6F 08 3C */	b __ct__11cBgS_GndChkFv
/* 80B773E4  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B773E8  4B 6D 2B 18 */	b __ct__10dMsgFlow_cFv
/* 80B773EC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B773F0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B773F4  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B773F8  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80B773FC  4B 50 C3 64 */	b __ct__10dCcD_GSttsFv
/* 80B77400  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B77404  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 80B77408  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B7740C  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80B77410  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80B77414  4B 50 01 68 */	b __ct__11dBgS_GndChkFv
/* 80B77418  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80B7741C  4B 50 08 4C */	b __ct__11dBgS_LinChkFv
/* 80B77420  3C 60 80 B8 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B77424  38 03 82 F0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B77428  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80B7742C  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80B77430  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80B77434  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B77438  4B 5C E4 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B7743C  3C 60 80 B8 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80B77440  38 03 82 F0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80B77444  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80B77448  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80B7744C  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80B77450  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B77454  4B 5C E4 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B77458  3C 60 80 B8 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B7745C  38 03 82 FC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B77460  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80B77464  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B77468  4B 5C E2 6C */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B7746C  3C 60 80 B8 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B77470  38 03 82 FC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B77474  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80B77478  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B7747C  4B 5C E2 58 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B77480  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80B77484  3C 60 80 B8 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B77488  38 03 83 08 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B7748C  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80B77490  3C 60 80 B8 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B77494  38 03 82 FC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B77498  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80B7749C  7F 43 D3 78 */	mr r3, r26
/* 80B774A0  4B 5C E2 34 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B774A4  38 7A 00 30 */	addi r3, r26, 0x30
/* 80B774A8  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha
/* 80B774AC  38 84 77 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B774B0  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha
/* 80B774B4  38 A5 71 E8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B774B8  38 C0 00 0C */	li r6, 0xc
/* 80B774BC  38 E0 00 03 */	li r7, 3
/* 80B774C0  4B 7E A8 A0 */	b __construct_array
/* 80B774C4  38 7A 00 54 */	addi r3, r26, 0x54
/* 80B774C8  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha
/* 80B774CC  38 84 77 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B774D0  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha
/* 80B774D4  38 A5 71 E8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B774D8  38 C0 00 0C */	li r6, 0xc
/* 80B774DC  38 E0 00 03 */	li r7, 3
/* 80B774E0  4B 7E A8 80 */	b __construct_array
/* 80B774E4  38 7A 00 78 */	addi r3, r26, 0x78
/* 80B774E8  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha
/* 80B774EC  38 84 77 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B774F0  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha
/* 80B774F4  38 A5 71 E8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B774F8  38 C0 00 0C */	li r6, 0xc
/* 80B774FC  38 E0 00 03 */	li r7, 3
/* 80B77500  4B 7E A8 60 */	b __construct_array
/* 80B77504  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80B77508  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha
/* 80B7750C  38 84 77 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B77510  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha
/* 80B77514  38 A5 71 E8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B77518  38 C0 00 0C */	li r6, 0xc
/* 80B7751C  38 E0 00 03 */	li r7, 3
/* 80B77520  4B 7E A8 40 */	b __construct_array
/* 80B77524  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80B77528  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha
/* 80B7752C  38 84 77 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B77530  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha
/* 80B77534  38 A5 71 E8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B77538  38 C0 00 0C */	li r6, 0xc
/* 80B7753C  38 E0 00 03 */	li r7, 3
/* 80B77540  4B 7E A8 20 */	b __construct_array
/* 80B77544  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80B77548  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha
/* 80B7754C  38 84 77 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 80B77550  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha
/* 80B77554  38 A5 71 E8 */	addi r5, r5, __dt__4cXyzFv@l
/* 80B77558  38 C0 00 0C */	li r6, 0xc
/* 80B7755C  38 E0 00 03 */	li r7, 3
/* 80B77560  4B 7E A8 00 */	b __construct_array
/* 80B77564  7F 43 D3 78 */	mr r3, r26
/* 80B77568  4B 5C F7 30 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B7756C  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B77570  3C 80 80 B7 */	lis r4, __ct__5csXyzFv@ha
/* 80B77574  38 84 76 64 */	addi r4, r4, __ct__5csXyzFv@l
/* 80B77578  3C A0 80 B7 */	lis r5, __dt__5csXyzFv@ha
/* 80B7757C  38 A5 72 24 */	addi r5, r5, __dt__5csXyzFv@l
/* 80B77580  38 C0 00 06 */	li r6, 6
/* 80B77584  38 E0 00 02 */	li r7, 2
/* 80B77588  4B 7E A7 D8 */	b __construct_array
/* 80B7758C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B77590  38 80 00 00 */	li r4, 0
/* 80B77594  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B77598  7C A3 00 50 */	subf r5, r3, r0
/* 80B7759C  4B 48 BE BC */	b memset
/* 80B775A0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B775A4  4B 5C E2 F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B775A8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B775AC  4B 5C E2 EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B775B0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B775B4  4B 5C E1 20 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B775B8  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B775BC  4B 5C E1 18 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80B775C0  7F 43 D3 78 */	mr r3, r26
/* 80B775C4  4B 5C F6 D4 */	b initialize__15daNpcT_JntAnm_cFv
/* 80B775C8  38 A0 00 00 */	li r5, 0
/* 80B775CC  38 60 00 00 */	li r3, 0
/* 80B775D0  7C A4 2B 78 */	mr r4, r5
/* 80B775D4  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80B775D8  38 00 00 02 */	li r0, 2
/* 80B775DC  7C 09 03 A6 */	mtctr r0
lbl_80B775E0:
/* 80B775E0  7C DF 22 14 */	add r6, r31, r4
/* 80B775E4  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B775E8  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B775EC  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B775F0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B775F4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B775F8  38 63 00 04 */	addi r3, r3, 4
/* 80B775FC  38 84 00 06 */	addi r4, r4, 6
/* 80B77600  42 00 FF E0 */	bdnz lbl_80B775E0
/* 80B77604  38 00 00 00 */	li r0, 0
/* 80B77608  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B7760C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B77610  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B77614  38 00 FF FF */	li r0, -1
/* 80B77618  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B7761C  38 00 00 01 */	li r0, 1
/* 80B77620  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B77624  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80B77628  4B 6F 03 2C */	b cM_rndF__Ff
/* 80B7762C  FC 00 08 1E */	fctiwz f0, f1
/* 80B77630  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B77634  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B77638  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B7763C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B77640  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B77644  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B77648  7F E3 FB 78 */	mr r3, r31
/* 80B7764C  39 61 00 40 */	addi r11, r1, 0x40
/* 80B77650  4B 7E AB BC */	b _restgpr_22
/* 80B77654  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B77658  7C 08 03 A6 */	mtlr r0
/* 80B7765C  38 21 00 40 */	addi r1, r1, 0x40
/* 80B77660  4E 80 00 20 */	blr 
