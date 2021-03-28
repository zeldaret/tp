lbl_8099C460:
/* 8099C460  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8099C464  7C 08 02 A6 */	mflr r0
/* 8099C468  90 01 00 44 */	stw r0, 0x44(r1)
/* 8099C46C  39 61 00 40 */	addi r11, r1, 0x40
/* 8099C470  4B 9C 5D 50 */	b _savegpr_22
/* 8099C474  7C 7F 1B 78 */	mr r31, r3
/* 8099C478  7C 96 23 78 */	mr r22, r4
/* 8099C47C  7C B7 2B 78 */	mr r23, r5
/* 8099C480  7C DA 33 78 */	mr r26, r6
/* 8099C484  7C FB 3B 78 */	mr r27, r7
/* 8099C488  7D 1C 43 78 */	mr r28, r8
/* 8099C48C  7D 3D 4B 78 */	mr r29, r9
/* 8099C490  7D 58 53 78 */	mr r24, r10
/* 8099C494  83 21 00 48 */	lwz r25, 0x48(r1)
/* 8099C498  3C 80 80 9A */	lis r4, m__19daNpcClerkt_Param_c@ha
/* 8099C49C  3B C4 D2 44 */	addi r30, r4, m__19daNpcClerkt_Param_c@l
/* 8099C4A0  4B 67 C6 C4 */	b __ct__10fopAc_ac_cFv
/* 8099C4A4  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha
/* 8099C4A8  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l
/* 8099C4AC  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 8099C4B0  92 DF 05 68 */	stw r22, 0x568(r31)
/* 8099C4B4  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 8099C4B8  93 1F 05 70 */	stw r24, 0x570(r31)
/* 8099C4BC  93 3F 05 74 */	stw r25, 0x574(r31)
/* 8099C4C0  38 7F 05 80 */	addi r3, r31, 0x580
/* 8099C4C4  4B 92 3F 04 */	b __ct__10Z2CreatureFv
/* 8099C4C8  3A DF 06 10 */	addi r22, r31, 0x610
/* 8099C4CC  3C 60 80 9A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8099C4D0  38 03 D4 DC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8099C4D4  90 1F 06 10 */	stw r0, 0x610(r31)
/* 8099C4D8  7E C3 B3 78 */	mr r3, r22
/* 8099C4DC  38 80 00 00 */	li r4, 0
/* 8099C4E0  4B 98 BF 1C */	b init__12J3DFrameCtrlFs
/* 8099C4E4  38 00 00 00 */	li r0, 0
/* 8099C4E8  90 16 00 18 */	stw r0, 0x18(r22)
/* 8099C4EC  3A DF 06 2C */	addi r22, r31, 0x62c
/* 8099C4F0  3C 60 80 9A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8099C4F4  38 03 D4 DC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8099C4F8  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 8099C4FC  7E C3 B3 78 */	mr r3, r22
/* 8099C500  38 80 00 00 */	li r4, 0
/* 8099C504  4B 98 BE F8 */	b init__12J3DFrameCtrlFs
/* 8099C508  38 00 00 00 */	li r0, 0
/* 8099C50C  90 16 00 14 */	stw r0, 0x14(r22)
/* 8099C510  3A DF 06 44 */	addi r22, r31, 0x644
/* 8099C514  3C 60 80 9A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8099C518  38 03 D4 DC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8099C51C  90 1F 06 44 */	stw r0, 0x644(r31)
/* 8099C520  7E C3 B3 78 */	mr r3, r22
/* 8099C524  38 80 00 00 */	li r4, 0
/* 8099C528  4B 98 BE D4 */	b init__12J3DFrameCtrlFs
/* 8099C52C  38 00 00 00 */	li r0, 0
/* 8099C530  90 16 00 14 */	stw r0, 0x14(r22)
/* 8099C534  3A DF 06 5C */	addi r22, r31, 0x65c
/* 8099C538  3C 60 80 9A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8099C53C  38 03 D4 DC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8099C540  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 8099C544  7E C3 B3 78 */	mr r3, r22
/* 8099C548  38 80 00 00 */	li r4, 0
/* 8099C54C  4B 98 BE B0 */	b init__12J3DFrameCtrlFs
/* 8099C550  38 00 00 00 */	li r0, 0
/* 8099C554  90 16 00 14 */	stw r0, 0x14(r22)
/* 8099C558  3A DF 06 74 */	addi r22, r31, 0x674
/* 8099C55C  3C 60 80 9A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 8099C560  38 03 D4 DC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8099C564  90 1F 06 74 */	stw r0, 0x674(r31)
/* 8099C568  7E C3 B3 78 */	mr r3, r22
/* 8099C56C  38 80 00 00 */	li r4, 0
/* 8099C570  4B 98 BE 8C */	b init__12J3DFrameCtrlFs
/* 8099C574  38 00 00 00 */	li r0, 0
/* 8099C578  90 16 00 14 */	stw r0, 0x14(r22)
/* 8099C57C  3A DF 06 8C */	addi r22, r31, 0x68c
/* 8099C580  7E C3 B3 78 */	mr r3, r22
/* 8099C584  4B 6D 9B 1C */	b __ct__9dBgS_AcchFv
/* 8099C588  3C 60 80 9A */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 8099C58C  38 63 D4 E8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 8099C590  90 76 00 10 */	stw r3, 0x10(r22)
/* 8099C594  38 03 00 0C */	addi r0, r3, 0xc
/* 8099C598  90 16 00 14 */	stw r0, 0x14(r22)
/* 8099C59C  38 03 00 18 */	addi r0, r3, 0x18
/* 8099C5A0  90 16 00 24 */	stw r0, 0x24(r22)
/* 8099C5A4  38 76 00 14 */	addi r3, r22, 0x14
/* 8099C5A8  4B 6D C8 C0 */	b SetObj__16dBgS_PolyPassChkFv
/* 8099C5AC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8099C5B0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8099C5B4  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 8099C5B8  38 7F 08 80 */	addi r3, r31, 0x880
/* 8099C5BC  4B 6E 71 A4 */	b __ct__10dCcD_GSttsFv
/* 8099C5C0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8099C5C4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 8099C5C8  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 8099C5CC  3B 23 00 20 */	addi r25, r3, 0x20
/* 8099C5D0  93 3F 08 80 */	stw r25, 0x880(r31)
/* 8099C5D4  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 8099C5D8  4B 6D 98 D4 */	b __ct__12dBgS_AcchCirFv
/* 8099C5DC  38 7F 09 30 */	addi r3, r31, 0x930
/* 8099C5E0  4B 8C B6 3C */	b __ct__11cBgS_GndChkFv
/* 8099C5E4  38 7F 09 74 */	addi r3, r31, 0x974
/* 8099C5E8  4B 8A D9 18 */	b __ct__10dMsgFlow_cFv
/* 8099C5EC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 8099C5F0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 8099C5F4  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 8099C5F8  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 8099C5FC  4B 6E 71 64 */	b __ct__10dCcD_GSttsFv
/* 8099C600  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 8099C604  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l
/* 8099C608  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 8099C60C  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 8099C610  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 8099C614  4B 6D AF 68 */	b __ct__11dBgS_GndChkFv
/* 8099C618  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 8099C61C  4B 6D B6 4C */	b __ct__11dBgS_LinChkFv
/* 8099C620  3C 60 80 9A */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 8099C624  38 03 D5 30 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 8099C628  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 8099C62C  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 8099C630  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 8099C634  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8099C638  4B 7A 92 60 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8099C63C  3C 60 80 9A */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 8099C640  38 03 D5 30 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l
/* 8099C644  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 8099C648  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 8099C64C  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 8099C650  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8099C654  4B 7A 92 44 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8099C658  3C 60 80 9A */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8099C65C  38 03 D5 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8099C660  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 8099C664  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8099C668  4B 7A 90 6C */	b initialize__18daNpcT_ActorMngr_cFv
/* 8099C66C  3C 60 80 9A */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8099C670  38 03 D5 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8099C674  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 8099C678  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 8099C67C  4B 7A 90 58 */	b initialize__18daNpcT_ActorMngr_cFv
/* 8099C680  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 8099C684  3C 60 80 9A */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 8099C688  38 03 D5 3C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 8099C68C  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 8099C690  3C 60 80 9A */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 8099C694  38 03 D5 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 8099C698  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 8099C69C  7F 43 D3 78 */	mr r3, r26
/* 8099C6A0  4B 7A 90 34 */	b initialize__18daNpcT_ActorMngr_cFv
/* 8099C6A4  38 7A 00 30 */	addi r3, r26, 0x30
/* 8099C6A8  3C 80 80 9A */	lis r4, __ct__4cXyzFv@ha
/* 8099C6AC  38 84 C9 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 8099C6B0  3C A0 80 9A */	lis r5, __dt__4cXyzFv@ha
/* 8099C6B4  38 A5 C3 E8 */	addi r5, r5, __dt__4cXyzFv@l
/* 8099C6B8  38 C0 00 0C */	li r6, 0xc
/* 8099C6BC  38 E0 00 03 */	li r7, 3
/* 8099C6C0  4B 9C 56 A0 */	b __construct_array
/* 8099C6C4  38 7A 00 54 */	addi r3, r26, 0x54
/* 8099C6C8  3C 80 80 9A */	lis r4, __ct__4cXyzFv@ha
/* 8099C6CC  38 84 C9 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 8099C6D0  3C A0 80 9A */	lis r5, __dt__4cXyzFv@ha
/* 8099C6D4  38 A5 C3 E8 */	addi r5, r5, __dt__4cXyzFv@l
/* 8099C6D8  38 C0 00 0C */	li r6, 0xc
/* 8099C6DC  38 E0 00 03 */	li r7, 3
/* 8099C6E0  4B 9C 56 80 */	b __construct_array
/* 8099C6E4  38 7A 00 78 */	addi r3, r26, 0x78
/* 8099C6E8  3C 80 80 9A */	lis r4, __ct__4cXyzFv@ha
/* 8099C6EC  38 84 C9 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 8099C6F0  3C A0 80 9A */	lis r5, __dt__4cXyzFv@ha
/* 8099C6F4  38 A5 C3 E8 */	addi r5, r5, __dt__4cXyzFv@l
/* 8099C6F8  38 C0 00 0C */	li r6, 0xc
/* 8099C6FC  38 E0 00 03 */	li r7, 3
/* 8099C700  4B 9C 56 60 */	b __construct_array
/* 8099C704  38 7A 00 9C */	addi r3, r26, 0x9c
/* 8099C708  3C 80 80 9A */	lis r4, __ct__4cXyzFv@ha
/* 8099C70C  38 84 C9 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 8099C710  3C A0 80 9A */	lis r5, __dt__4cXyzFv@ha
/* 8099C714  38 A5 C3 E8 */	addi r5, r5, __dt__4cXyzFv@l
/* 8099C718  38 C0 00 0C */	li r6, 0xc
/* 8099C71C  38 E0 00 03 */	li r7, 3
/* 8099C720  4B 9C 56 40 */	b __construct_array
/* 8099C724  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 8099C728  3C 80 80 9A */	lis r4, __ct__4cXyzFv@ha
/* 8099C72C  38 84 C9 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 8099C730  3C A0 80 9A */	lis r5, __dt__4cXyzFv@ha
/* 8099C734  38 A5 C3 E8 */	addi r5, r5, __dt__4cXyzFv@l
/* 8099C738  38 C0 00 0C */	li r6, 0xc
/* 8099C73C  38 E0 00 03 */	li r7, 3
/* 8099C740  4B 9C 56 20 */	b __construct_array
/* 8099C744  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 8099C748  3C 80 80 9A */	lis r4, __ct__4cXyzFv@ha
/* 8099C74C  38 84 C9 64 */	addi r4, r4, __ct__4cXyzFv@l
/* 8099C750  3C A0 80 9A */	lis r5, __dt__4cXyzFv@ha
/* 8099C754  38 A5 C3 E8 */	addi r5, r5, __dt__4cXyzFv@l
/* 8099C758  38 C0 00 0C */	li r6, 0xc
/* 8099C75C  38 E0 00 03 */	li r7, 3
/* 8099C760  4B 9C 56 00 */	b __construct_array
/* 8099C764  7F 43 D3 78 */	mr r3, r26
/* 8099C768  4B 7A A5 30 */	b initialize__15daNpcT_JntAnm_cFv
/* 8099C76C  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 8099C770  3C 80 80 9A */	lis r4, __ct__5csXyzFv@ha
/* 8099C774  38 84 C8 64 */	addi r4, r4, __ct__5csXyzFv@l
/* 8099C778  3C A0 80 9A */	lis r5, __dt__5csXyzFv@ha
/* 8099C77C  38 A5 C4 24 */	addi r5, r5, __dt__5csXyzFv@l
/* 8099C780  38 C0 00 06 */	li r6, 6
/* 8099C784  38 E0 00 02 */	li r7, 2
/* 8099C788  4B 9C 55 D8 */	b __construct_array
/* 8099C78C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 8099C790  38 80 00 00 */	li r4, 0
/* 8099C794  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 8099C798  7C A3 00 50 */	subf r5, r3, r0
/* 8099C79C  4B 66 6C BC */	b memset
/* 8099C7A0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 8099C7A4  4B 7A 90 F4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8099C7A8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 8099C7AC  4B 7A 90 EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 8099C7B0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 8099C7B4  4B 7A 8F 20 */	b initialize__18daNpcT_ActorMngr_cFv
/* 8099C7B8  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 8099C7BC  4B 7A 8F 18 */	b initialize__18daNpcT_ActorMngr_cFv
/* 8099C7C0  7F 43 D3 78 */	mr r3, r26
/* 8099C7C4  4B 7A A4 D4 */	b initialize__15daNpcT_JntAnm_cFv
/* 8099C7C8  38 A0 00 00 */	li r5, 0
/* 8099C7CC  38 60 00 00 */	li r3, 0
/* 8099C7D0  7C A4 2B 78 */	mr r4, r5
/* 8099C7D4  C0 1E 00 AC */	lfs f0, 0xac(r30)
/* 8099C7D8  38 00 00 02 */	li r0, 2
/* 8099C7DC  7C 09 03 A6 */	mtctr r0
lbl_8099C7E0:
/* 8099C7E0  7C DF 22 14 */	add r6, r31, r4
/* 8099C7E4  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 8099C7E8  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 8099C7EC  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 8099C7F0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 8099C7F4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 8099C7F8  38 63 00 04 */	addi r3, r3, 4
/* 8099C7FC  38 84 00 06 */	addi r4, r4, 6
/* 8099C800  42 00 FF E0 */	bdnz lbl_8099C7E0
/* 8099C804  38 00 00 00 */	li r0, 0
/* 8099C808  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 8099C80C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 8099C810  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 8099C814  38 00 FF FF */	li r0, -1
/* 8099C818  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 8099C81C  38 00 00 01 */	li r0, 1
/* 8099C820  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 8099C824  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 8099C828  4B 8C B1 2C */	b cM_rndF__Ff
/* 8099C82C  FC 00 08 1E */	fctiwz f0, f1
/* 8099C830  D8 01 00 08 */	stfd f0, 8(r1)
/* 8099C834  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8099C838  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 8099C83C  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 8099C840  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 8099C844  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 8099C848  7F E3 FB 78 */	mr r3, r31
/* 8099C84C  39 61 00 40 */	addi r11, r1, 0x40
/* 8099C850  4B 9C 59 BC */	b _restgpr_22
/* 8099C854  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8099C858  7C 08 03 A6 */	mtlr r0
/* 8099C85C  38 21 00 40 */	addi r1, r1, 0x40
/* 8099C860  4E 80 00 20 */	blr 
