lbl_80B70DEC:
/* 80B70DEC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B70DF0  7C 08 02 A6 */	mflr r0
/* 80B70DF4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B70DF8  39 61 00 40 */	addi r11, r1, 0x40
/* 80B70DFC  4B 7F 13 C5 */	bl _savegpr_22
/* 80B70E00  7C 7F 1B 78 */	mr r31, r3
/* 80B70E04  7C 96 23 78 */	mr r22, r4
/* 80B70E08  7C B7 2B 78 */	mr r23, r5
/* 80B70E0C  7C DA 33 78 */	mr r26, r6
/* 80B70E10  7C FB 3B 78 */	mr r27, r7
/* 80B70E14  7D 1C 43 78 */	mr r28, r8
/* 80B70E18  7D 3D 4B 78 */	mr r29, r9
/* 80B70E1C  7D 58 53 78 */	mr r24, r10
/* 80B70E20  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80B70E24  3C 80 80 B7 */	lis r4, m__18daNpc_ZelR_Param_c@ha /* 0x80B71AE0@ha */
/* 80B70E28  3B C4 1A E0 */	addi r30, r4, m__18daNpc_ZelR_Param_c@l /* 0x80B71AE0@l */
/* 80B70E2C  4B 4A 7D 39 */	bl __ct__10fopAc_ac_cFv
/* 80B70E30  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80B70E34  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80B70E38  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B70E3C  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80B70E40  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80B70E44  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80B70E48  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80B70E4C  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B70E50  4B 74 F5 79 */	bl __ct__10Z2CreatureFv
/* 80B70E54  3A DF 06 10 */	addi r22, r31, 0x610
/* 80B70E58  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B71D38@ha */
/* 80B70E5C  38 03 1D 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B71D38@l */
/* 80B70E60  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80B70E64  7E C3 B3 78 */	mr r3, r22
/* 80B70E68  38 80 00 00 */	li r4, 0
/* 80B70E6C  4B 7B 75 91 */	bl init__12J3DFrameCtrlFs
/* 80B70E70  38 00 00 00 */	li r0, 0
/* 80B70E74  90 16 00 18 */	stw r0, 0x18(r22)
/* 80B70E78  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80B70E7C  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B71D38@ha */
/* 80B70E80  38 03 1D 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B71D38@l */
/* 80B70E84  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B70E88  7E C3 B3 78 */	mr r3, r22
/* 80B70E8C  38 80 00 00 */	li r4, 0
/* 80B70E90  4B 7B 75 6D */	bl init__12J3DFrameCtrlFs
/* 80B70E94  38 00 00 00 */	li r0, 0
/* 80B70E98  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B70E9C  3A DF 06 44 */	addi r22, r31, 0x644
/* 80B70EA0  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B71D38@ha */
/* 80B70EA4  38 03 1D 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B71D38@l */
/* 80B70EA8  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80B70EAC  7E C3 B3 78 */	mr r3, r22
/* 80B70EB0  38 80 00 00 */	li r4, 0
/* 80B70EB4  4B 7B 75 49 */	bl init__12J3DFrameCtrlFs
/* 80B70EB8  38 00 00 00 */	li r0, 0
/* 80B70EBC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B70EC0  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80B70EC4  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B71D38@ha */
/* 80B70EC8  38 03 1D 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B71D38@l */
/* 80B70ECC  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80B70ED0  7E C3 B3 78 */	mr r3, r22
/* 80B70ED4  38 80 00 00 */	li r4, 0
/* 80B70ED8  4B 7B 75 25 */	bl init__12J3DFrameCtrlFs
/* 80B70EDC  38 00 00 00 */	li r0, 0
/* 80B70EE0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B70EE4  3A DF 06 74 */	addi r22, r31, 0x674
/* 80B70EE8  3C 60 80 B7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B71D38@ha */
/* 80B70EEC  38 03 1D 38 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B71D38@l */
/* 80B70EF0  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80B70EF4  7E C3 B3 78 */	mr r3, r22
/* 80B70EF8  38 80 00 00 */	li r4, 0
/* 80B70EFC  4B 7B 75 01 */	bl init__12J3DFrameCtrlFs
/* 80B70F00  38 00 00 00 */	li r0, 0
/* 80B70F04  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B70F08  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80B70F0C  7E C3 B3 78 */	mr r3, r22
/* 80B70F10  4B 50 51 91 */	bl __ct__9dBgS_AcchFv
/* 80B70F14  3C 60 80 B7 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B71D44@ha */
/* 80B70F18  38 63 1D 44 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B71D44@l */
/* 80B70F1C  90 76 00 10 */	stw r3, 0x10(r22)
/* 80B70F20  38 03 00 0C */	addi r0, r3, 0xc
/* 80B70F24  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B70F28  38 03 00 18 */	addi r0, r3, 0x18
/* 80B70F2C  90 16 00 24 */	stw r0, 0x24(r22)
/* 80B70F30  38 76 00 14 */	addi r3, r22, 0x14
/* 80B70F34  4B 50 7F 35 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80B70F38  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B70F3C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B70F40  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80B70F44  38 7F 08 80 */	addi r3, r31, 0x880
/* 80B70F48  4B 51 28 19 */	bl __ct__10dCcD_GSttsFv
/* 80B70F4C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B70F50  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B70F54  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80B70F58  3B 23 00 20 */	addi r25, r3, 0x20
/* 80B70F5C  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80B70F60  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B70F64  4B 50 4F 49 */	bl __ct__12dBgS_AcchCirFv
/* 80B70F68  38 7F 09 30 */	addi r3, r31, 0x930
/* 80B70F6C  4B 6F 6C B1 */	bl __ct__11cBgS_GndChkFv
/* 80B70F70  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B70F74  4B 6D 8F 8D */	bl __ct__10dMsgFlow_cFv
/* 80B70F78  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B70F7C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B70F80  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B70F84  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80B70F88  4B 51 27 D9 */	bl __ct__10dCcD_GSttsFv
/* 80B70F8C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B70F90  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B70F94  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B70F98  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80B70F9C  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80B70FA0  4B 50 65 DD */	bl __ct__11dBgS_GndChkFv
/* 80B70FA4  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80B70FA8  4B 50 6C C1 */	bl __ct__11dBgS_LinChkFv
/* 80B70FAC  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B71D8C@ha */
/* 80B70FB0  38 03 1D 8C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B71D8C@l */
/* 80B70FB4  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80B70FB8  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80B70FBC  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80B70FC0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B70FC4  4B 5D 48 D5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B70FC8  3C 60 80 B7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B71D8C@ha */
/* 80B70FCC  38 03 1D 8C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B71D8C@l */
/* 80B70FD0  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80B70FD4  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80B70FD8  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80B70FDC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B70FE0  4B 5D 48 B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B70FE4  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B71D98@ha */
/* 80B70FE8  38 03 1D 98 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B71D98@l */
/* 80B70FEC  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80B70FF0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B70FF4  4B 5D 46 E1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B70FF8  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B71D98@ha */
/* 80B70FFC  38 03 1D 98 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B71D98@l */
/* 80B71000  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80B71004  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B71008  4B 5D 46 CD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B7100C  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80B71010  3C 60 80 B7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B71DA4@ha */
/* 80B71014  38 03 1D A4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B71DA4@l */
/* 80B71018  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80B7101C  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B71D98@ha */
/* 80B71020  38 03 1D 98 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B71D98@l */
/* 80B71024  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80B71028  7F 43 D3 78 */	mr r3, r26
/* 80B7102C  4B 5D 46 A9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B71030  38 7A 00 30 */	addi r3, r26, 0x30
/* 80B71034  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha /* 0x80B712F0@ha */
/* 80B71038  38 84 12 F0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B712F0@l */
/* 80B7103C  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B71040  38 A5 0C 9C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B71044  38 C0 00 0C */	li r6, 0xc
/* 80B71048  38 E0 00 03 */	li r7, 3
/* 80B7104C  4B 7F 0D 15 */	bl __construct_array
/* 80B71050  38 7A 00 54 */	addi r3, r26, 0x54
/* 80B71054  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha /* 0x80B712F0@ha */
/* 80B71058  38 84 12 F0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B712F0@l */
/* 80B7105C  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B71060  38 A5 0C 9C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B71064  38 C0 00 0C */	li r6, 0xc
/* 80B71068  38 E0 00 03 */	li r7, 3
/* 80B7106C  4B 7F 0C F5 */	bl __construct_array
/* 80B71070  38 7A 00 78 */	addi r3, r26, 0x78
/* 80B71074  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha /* 0x80B712F0@ha */
/* 80B71078  38 84 12 F0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B712F0@l */
/* 80B7107C  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B71080  38 A5 0C 9C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B71084  38 C0 00 0C */	li r6, 0xc
/* 80B71088  38 E0 00 03 */	li r7, 3
/* 80B7108C  4B 7F 0C D5 */	bl __construct_array
/* 80B71090  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80B71094  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha /* 0x80B712F0@ha */
/* 80B71098  38 84 12 F0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B712F0@l */
/* 80B7109C  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B710A0  38 A5 0C 9C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B710A4  38 C0 00 0C */	li r6, 0xc
/* 80B710A8  38 E0 00 03 */	li r7, 3
/* 80B710AC  4B 7F 0C B5 */	bl __construct_array
/* 80B710B0  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80B710B4  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha /* 0x80B712F0@ha */
/* 80B710B8  38 84 12 F0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B712F0@l */
/* 80B710BC  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B710C0  38 A5 0C 9C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B710C4  38 C0 00 0C */	li r6, 0xc
/* 80B710C8  38 E0 00 03 */	li r7, 3
/* 80B710CC  4B 7F 0C 95 */	bl __construct_array
/* 80B710D0  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80B710D4  3C 80 80 B7 */	lis r4, __ct__4cXyzFv@ha /* 0x80B712F0@ha */
/* 80B710D8  38 84 12 F0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B712F0@l */
/* 80B710DC  3C A0 80 B7 */	lis r5, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B710E0  38 A5 0C 9C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B710E4  38 C0 00 0C */	li r6, 0xc
/* 80B710E8  38 E0 00 03 */	li r7, 3
/* 80B710EC  4B 7F 0C 75 */	bl __construct_array
/* 80B710F0  7F 43 D3 78 */	mr r3, r26
/* 80B710F4  4B 5D 5B A5 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B710F8  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B710FC  3C 80 80 B7 */	lis r4, __ct__5csXyzFv@ha /* 0x80B711F0@ha */
/* 80B71100  38 84 11 F0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B711F0@l */
/* 80B71104  3C A0 80 B7 */	lis r5, __dt__5csXyzFv@ha /* 0x80B70CD8@ha */
/* 80B71108  38 A5 0C D8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B70CD8@l */
/* 80B7110C  38 C0 00 06 */	li r6, 6
/* 80B71110  38 E0 00 02 */	li r7, 2
/* 80B71114  4B 7F 0C 4D */	bl __construct_array
/* 80B71118  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B7111C  38 80 00 00 */	li r4, 0
/* 80B71120  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B71124  7C A3 00 50 */	subf r5, r3, r0
/* 80B71128  4B 49 23 31 */	bl memset
/* 80B7112C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B71130  4B 5D 47 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B71134  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B71138  4B 5D 47 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B7113C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B71140  4B 5D 45 95 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B71144  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B71148  4B 5D 45 8D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B7114C  7F 43 D3 78 */	mr r3, r26
/* 80B71150  4B 5D 5B 49 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B71154  38 A0 00 00 */	li r5, 0
/* 80B71158  38 60 00 00 */	li r3, 0
/* 80B7115C  7C A4 2B 78 */	mr r4, r5
/* 80B71160  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 80B71164  38 00 00 02 */	li r0, 2
/* 80B71168  7C 09 03 A6 */	mtctr r0
lbl_80B7116C:
/* 80B7116C  7C DF 22 14 */	add r6, r31, r4
/* 80B71170  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B71174  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B71178  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B7117C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B71180  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B71184  38 63 00 04 */	addi r3, r3, 4
/* 80B71188  38 84 00 06 */	addi r4, r4, 6
/* 80B7118C  42 00 FF E0 */	bdnz lbl_80B7116C
/* 80B71190  38 00 00 00 */	li r0, 0
/* 80B71194  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B71198  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B7119C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B711A0  38 00 FF FF */	li r0, -1
/* 80B711A4  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B711A8  38 00 00 01 */	li r0, 1
/* 80B711AC  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B711B0  C0 3E 00 A0 */	lfs f1, 0xa0(r30)
/* 80B711B4  4B 6F 67 A1 */	bl cM_rndF__Ff
/* 80B711B8  FC 00 08 1E */	fctiwz f0, f1
/* 80B711BC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B711C0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B711C4  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B711C8  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80B711CC  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B711D0  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B711D4  7F E3 FB 78 */	mr r3, r31
/* 80B711D8  39 61 00 40 */	addi r11, r1, 0x40
/* 80B711DC  4B 7F 10 31 */	bl _restgpr_22
/* 80B711E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B711E4  7C 08 03 A6 */	mtlr r0
/* 80B711E8  38 21 00 40 */	addi r1, r1, 0x40
/* 80B711EC  4E 80 00 20 */	blr 
