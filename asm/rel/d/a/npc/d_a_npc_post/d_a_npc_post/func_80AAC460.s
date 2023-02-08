lbl_80AAC460:
/* 80AAC460  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AAC464  7C 08 02 A6 */	mflr r0
/* 80AAC468  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AAC46C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AAC470  4B 8B 5D 51 */	bl _savegpr_22
/* 80AAC474  7C 7F 1B 78 */	mr r31, r3
/* 80AAC478  7C 96 23 78 */	mr r22, r4
/* 80AAC47C  7C B7 2B 78 */	mr r23, r5
/* 80AAC480  7C DA 33 78 */	mr r26, r6
/* 80AAC484  7C FB 3B 78 */	mr r27, r7
/* 80AAC488  7D 1C 43 78 */	mr r28, r8
/* 80AAC48C  7D 3D 4B 78 */	mr r29, r9
/* 80AAC490  7D 58 53 78 */	mr r24, r10
/* 80AAC494  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80AAC498  3C 80 80 AB */	lis r4, m__18daNpc_Post_Param_c@ha /* 0x80AAD1EC@ha */
/* 80AAC49C  3B C4 D1 EC */	addi r30, r4, m__18daNpc_Post_Param_c@l /* 0x80AAD1EC@l */
/* 80AAC4A0  4B 56 C6 C5 */	bl __ct__10fopAc_ac_cFv
/* 80AAC4A4  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AAC4A8  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AAC4AC  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AAC4B0  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80AAC4B4  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80AAC4B8  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80AAC4BC  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80AAC4C0  38 7F 05 80 */	addi r3, r31, 0x580
/* 80AAC4C4  4B 81 3F 05 */	bl __ct__10Z2CreatureFv
/* 80AAC4C8  3A DF 06 10 */	addi r22, r31, 0x610
/* 80AAC4CC  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AADA78@ha */
/* 80AAC4D0  38 03 DA 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AADA78@l */
/* 80AAC4D4  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80AAC4D8  7E C3 B3 78 */	mr r3, r22
/* 80AAC4DC  38 80 00 00 */	li r4, 0
/* 80AAC4E0  4B 87 BF 1D */	bl init__12J3DFrameCtrlFs
/* 80AAC4E4  38 00 00 00 */	li r0, 0
/* 80AAC4E8  90 16 00 18 */	stw r0, 0x18(r22)
/* 80AAC4EC  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80AAC4F0  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AADA78@ha */
/* 80AAC4F4  38 03 DA 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AADA78@l */
/* 80AAC4F8  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80AAC4FC  7E C3 B3 78 */	mr r3, r22
/* 80AAC500  38 80 00 00 */	li r4, 0
/* 80AAC504  4B 87 BE F9 */	bl init__12J3DFrameCtrlFs
/* 80AAC508  38 00 00 00 */	li r0, 0
/* 80AAC50C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AAC510  3A DF 06 44 */	addi r22, r31, 0x644
/* 80AAC514  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AADA78@ha */
/* 80AAC518  38 03 DA 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AADA78@l */
/* 80AAC51C  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80AAC520  7E C3 B3 78 */	mr r3, r22
/* 80AAC524  38 80 00 00 */	li r4, 0
/* 80AAC528  4B 87 BE D5 */	bl init__12J3DFrameCtrlFs
/* 80AAC52C  38 00 00 00 */	li r0, 0
/* 80AAC530  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AAC534  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80AAC538  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AADA78@ha */
/* 80AAC53C  38 03 DA 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AADA78@l */
/* 80AAC540  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80AAC544  7E C3 B3 78 */	mr r3, r22
/* 80AAC548  38 80 00 00 */	li r4, 0
/* 80AAC54C  4B 87 BE B1 */	bl init__12J3DFrameCtrlFs
/* 80AAC550  38 00 00 00 */	li r0, 0
/* 80AAC554  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AAC558  3A DF 06 74 */	addi r22, r31, 0x674
/* 80AAC55C  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AADA78@ha */
/* 80AAC560  38 03 DA 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AADA78@l */
/* 80AAC564  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80AAC568  7E C3 B3 78 */	mr r3, r22
/* 80AAC56C  38 80 00 00 */	li r4, 0
/* 80AAC570  4B 87 BE 8D */	bl init__12J3DFrameCtrlFs
/* 80AAC574  38 00 00 00 */	li r0, 0
/* 80AAC578  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AAC57C  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80AAC580  7E C3 B3 78 */	mr r3, r22
/* 80AAC584  4B 5C 9B 1D */	bl __ct__9dBgS_AcchFv
/* 80AAC588  3C 60 80 AB */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AADA84@ha */
/* 80AAC58C  38 63 DA 84 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AADA84@l */
/* 80AAC590  90 76 00 10 */	stw r3, 0x10(r22)
/* 80AAC594  38 03 00 0C */	addi r0, r3, 0xc
/* 80AAC598  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AAC59C  38 03 00 18 */	addi r0, r3, 0x18
/* 80AAC5A0  90 16 00 24 */	stw r0, 0x24(r22)
/* 80AAC5A4  38 76 00 14 */	addi r3, r22, 0x14
/* 80AAC5A8  4B 5C C8 C1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80AAC5AC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AAC5B0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AAC5B4  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80AAC5B8  38 7F 08 80 */	addi r3, r31, 0x880
/* 80AAC5BC  4B 5D 71 A5 */	bl __ct__10dCcD_GSttsFv
/* 80AAC5C0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AAC5C4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AAC5C8  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80AAC5CC  3B 23 00 20 */	addi r25, r3, 0x20
/* 80AAC5D0  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80AAC5D4  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AAC5D8  4B 5C 98 D5 */	bl __ct__12dBgS_AcchCirFv
/* 80AAC5DC  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AAC5E0  4B 7B B6 3D */	bl __ct__11cBgS_GndChkFv
/* 80AAC5E4  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AAC5E8  4B 79 D9 19 */	bl __ct__10dMsgFlow_cFv
/* 80AAC5EC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AAC5F0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AAC5F4  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AAC5F8  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80AAC5FC  4B 5D 71 65 */	bl __ct__10dCcD_GSttsFv
/* 80AAC600  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AAC604  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AAC608  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AAC60C  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80AAC610  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80AAC614  4B 5C AF 69 */	bl __ct__11dBgS_GndChkFv
/* 80AAC618  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80AAC61C  4B 5C B6 4D */	bl __ct__11dBgS_LinChkFv
/* 80AAC620  3C 60 80 AB */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AADACC@ha */
/* 80AAC624  38 03 DA CC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AADACC@l */
/* 80AAC628  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80AAC62C  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80AAC630  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80AAC634  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AAC638  4B 69 92 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAC63C  3C 60 80 AB */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AADACC@ha */
/* 80AAC640  38 03 DA CC */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AADACC@l */
/* 80AAC644  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80AAC648  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80AAC64C  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80AAC650  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AAC654  4B 69 92 45 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAC658  3C 60 80 AB */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AADAD8@ha */
/* 80AAC65C  38 03 DA D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AADAD8@l */
/* 80AAC660  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80AAC664  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AAC668  4B 69 90 6D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AAC66C  3C 60 80 AB */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AADAD8@ha */
/* 80AAC670  38 03 DA D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AADAD8@l */
/* 80AAC674  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80AAC678  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AAC67C  4B 69 90 59 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AAC680  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80AAC684  3C 60 80 AB */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AADAE4@ha */
/* 80AAC688  38 03 DA E4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AADAE4@l */
/* 80AAC68C  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80AAC690  3C 60 80 AB */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AADAD8@ha */
/* 80AAC694  38 03 DA D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AADAD8@l */
/* 80AAC698  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80AAC69C  7F 43 D3 78 */	mr r3, r26
/* 80AAC6A0  4B 69 90 35 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AAC6A4  38 7A 00 30 */	addi r3, r26, 0x30
/* 80AAC6A8  3C 80 80 AB */	lis r4, __ct__4cXyzFv@ha /* 0x80AAC964@ha */
/* 80AAC6AC  38 84 C9 64 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AAC964@l */
/* 80AAC6B0  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha /* 0x80AAC28C@ha */
/* 80AAC6B4  38 A5 C2 8C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AAC28C@l */
/* 80AAC6B8  38 C0 00 0C */	li r6, 0xc
/* 80AAC6BC  38 E0 00 03 */	li r7, 3
/* 80AAC6C0  4B 8B 56 A1 */	bl __construct_array
/* 80AAC6C4  38 7A 00 54 */	addi r3, r26, 0x54
/* 80AAC6C8  3C 80 80 AB */	lis r4, __ct__4cXyzFv@ha /* 0x80AAC964@ha */
/* 80AAC6CC  38 84 C9 64 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AAC964@l */
/* 80AAC6D0  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha /* 0x80AAC28C@ha */
/* 80AAC6D4  38 A5 C2 8C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AAC28C@l */
/* 80AAC6D8  38 C0 00 0C */	li r6, 0xc
/* 80AAC6DC  38 E0 00 03 */	li r7, 3
/* 80AAC6E0  4B 8B 56 81 */	bl __construct_array
/* 80AAC6E4  38 7A 00 78 */	addi r3, r26, 0x78
/* 80AAC6E8  3C 80 80 AB */	lis r4, __ct__4cXyzFv@ha /* 0x80AAC964@ha */
/* 80AAC6EC  38 84 C9 64 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AAC964@l */
/* 80AAC6F0  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha /* 0x80AAC28C@ha */
/* 80AAC6F4  38 A5 C2 8C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AAC28C@l */
/* 80AAC6F8  38 C0 00 0C */	li r6, 0xc
/* 80AAC6FC  38 E0 00 03 */	li r7, 3
/* 80AAC700  4B 8B 56 61 */	bl __construct_array
/* 80AAC704  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80AAC708  3C 80 80 AB */	lis r4, __ct__4cXyzFv@ha /* 0x80AAC964@ha */
/* 80AAC70C  38 84 C9 64 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AAC964@l */
/* 80AAC710  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha /* 0x80AAC28C@ha */
/* 80AAC714  38 A5 C2 8C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AAC28C@l */
/* 80AAC718  38 C0 00 0C */	li r6, 0xc
/* 80AAC71C  38 E0 00 03 */	li r7, 3
/* 80AAC720  4B 8B 56 41 */	bl __construct_array
/* 80AAC724  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80AAC728  3C 80 80 AB */	lis r4, __ct__4cXyzFv@ha /* 0x80AAC964@ha */
/* 80AAC72C  38 84 C9 64 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AAC964@l */
/* 80AAC730  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha /* 0x80AAC28C@ha */
/* 80AAC734  38 A5 C2 8C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AAC28C@l */
/* 80AAC738  38 C0 00 0C */	li r6, 0xc
/* 80AAC73C  38 E0 00 03 */	li r7, 3
/* 80AAC740  4B 8B 56 21 */	bl __construct_array
/* 80AAC744  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80AAC748  3C 80 80 AB */	lis r4, __ct__4cXyzFv@ha /* 0x80AAC964@ha */
/* 80AAC74C  38 84 C9 64 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AAC964@l */
/* 80AAC750  3C A0 80 AB */	lis r5, __dt__4cXyzFv@ha /* 0x80AAC28C@ha */
/* 80AAC754  38 A5 C2 8C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AAC28C@l */
/* 80AAC758  38 C0 00 0C */	li r6, 0xc
/* 80AAC75C  38 E0 00 03 */	li r7, 3
/* 80AAC760  4B 8B 56 01 */	bl __construct_array
/* 80AAC764  7F 43 D3 78 */	mr r3, r26
/* 80AAC768  4B 69 A5 31 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AAC76C  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AAC770  3C 80 80 AB */	lis r4, __ct__5csXyzFv@ha /* 0x80AAC864@ha */
/* 80AAC774  38 84 C8 64 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AAC864@l */
/* 80AAC778  3C A0 80 AB */	lis r5, __dt__5csXyzFv@ha /* 0x80AAC2C8@ha */
/* 80AAC77C  38 A5 C2 C8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AAC2C8@l */
/* 80AAC780  38 C0 00 06 */	li r6, 6
/* 80AAC784  38 E0 00 02 */	li r7, 2
/* 80AAC788  4B 8B 55 D9 */	bl __construct_array
/* 80AAC78C  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AAC790  38 80 00 00 */	li r4, 0
/* 80AAC794  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AAC798  7C A3 00 50 */	subf r5, r3, r0
/* 80AAC79C  4B 55 6C BD */	bl memset
/* 80AAC7A0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AAC7A4  4B 69 90 F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAC7A8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AAC7AC  4B 69 90 ED */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AAC7B0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AAC7B4  4B 69 8F 21 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AAC7B8  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AAC7BC  4B 69 8F 19 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AAC7C0  7F 43 D3 78 */	mr r3, r26
/* 80AAC7C4  4B 69 A4 D5 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AAC7C8  38 A0 00 00 */	li r5, 0
/* 80AAC7CC  38 60 00 00 */	li r3, 0
/* 80AAC7D0  7C A4 2B 78 */	mr r4, r5
/* 80AAC7D4  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 80AAC7D8  38 00 00 02 */	li r0, 2
/* 80AAC7DC  7C 09 03 A6 */	mtctr r0
lbl_80AAC7E0:
/* 80AAC7E0  7C DF 22 14 */	add r6, r31, r4
/* 80AAC7E4  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AAC7E8  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AAC7EC  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AAC7F0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AAC7F4  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AAC7F8  38 63 00 04 */	addi r3, r3, 4
/* 80AAC7FC  38 84 00 06 */	addi r4, r4, 6
/* 80AAC800  42 00 FF E0 */	bdnz lbl_80AAC7E0
/* 80AAC804  38 00 00 00 */	li r0, 0
/* 80AAC808  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AAC80C  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AAC810  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AAC814  38 00 FF FF */	li r0, -1
/* 80AAC818  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AAC81C  38 00 00 01 */	li r0, 1
/* 80AAC820  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AAC824  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80AAC828  4B 7B B1 2D */	bl cM_rndF__Ff
/* 80AAC82C  FC 00 08 1E */	fctiwz f0, f1
/* 80AAC830  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AAC834  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AAC838  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AAC83C  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80AAC840  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AAC844  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AAC848  7F E3 FB 78 */	mr r3, r31
/* 80AAC84C  39 61 00 40 */	addi r11, r1, 0x40
/* 80AAC850  4B 8B 59 BD */	bl _restgpr_22
/* 80AAC854  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AAC858  7C 08 03 A6 */	mtlr r0
/* 80AAC85C  38 21 00 40 */	addi r1, r1, 0x40
/* 80AAC860  4E 80 00 20 */	blr 
