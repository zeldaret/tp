lbl_80B23C84:
/* 80B23C84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B23C88  7C 08 02 A6 */	mflr r0
/* 80B23C8C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B23C90  39 61 00 40 */	addi r11, r1, 0x40
/* 80B23C94  4B 83 E5 2D */	bl _savegpr_22
/* 80B23C98  7C 7F 1B 78 */	mr r31, r3
/* 80B23C9C  7C 96 23 78 */	mr r22, r4
/* 80B23CA0  7C B7 2B 78 */	mr r23, r5
/* 80B23CA4  7C DA 33 78 */	mr r26, r6
/* 80B23CA8  7C FB 3B 78 */	mr r27, r7
/* 80B23CAC  7D 1C 43 78 */	mr r28, r8
/* 80B23CB0  7D 3D 4B 78 */	mr r29, r9
/* 80B23CB4  7D 58 53 78 */	mr r24, r10
/* 80B23CB8  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80B23CBC  3C 80 80 B2 */	lis r4, m__18daNpc_Toby_Param_c@ha /* 0x80B249E4@ha */
/* 80B23CC0  3B C4 49 E4 */	addi r30, r4, m__18daNpc_Toby_Param_c@l /* 0x80B249E4@l */
/* 80B23CC4  4B 4F 4E A1 */	bl __ct__10fopAc_ac_cFv
/* 80B23CC8  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80B23CCC  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80B23CD0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80B23CD4  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80B23CD8  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80B23CDC  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80B23CE0  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80B23CE4  38 7F 05 80 */	addi r3, r31, 0x580
/* 80B23CE8  4B 79 C6 E1 */	bl __ct__10Z2CreatureFv
/* 80B23CEC  3A DF 06 10 */	addi r22, r31, 0x610
/* 80B23CF0  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B256CC@ha */
/* 80B23CF4  38 03 56 CC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B256CC@l */
/* 80B23CF8  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80B23CFC  7E C3 B3 78 */	mr r3, r22
/* 80B23D00  38 80 00 00 */	li r4, 0
/* 80B23D04  4B 80 46 F9 */	bl init__12J3DFrameCtrlFs
/* 80B23D08  38 00 00 00 */	li r0, 0
/* 80B23D0C  90 16 00 18 */	stw r0, 0x18(r22)
/* 80B23D10  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80B23D14  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B256CC@ha */
/* 80B23D18  38 03 56 CC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B256CC@l */
/* 80B23D1C  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80B23D20  7E C3 B3 78 */	mr r3, r22
/* 80B23D24  38 80 00 00 */	li r4, 0
/* 80B23D28  4B 80 46 D5 */	bl init__12J3DFrameCtrlFs
/* 80B23D2C  38 00 00 00 */	li r0, 0
/* 80B23D30  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B23D34  3A DF 06 44 */	addi r22, r31, 0x644
/* 80B23D38  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B256CC@ha */
/* 80B23D3C  38 03 56 CC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B256CC@l */
/* 80B23D40  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80B23D44  7E C3 B3 78 */	mr r3, r22
/* 80B23D48  38 80 00 00 */	li r4, 0
/* 80B23D4C  4B 80 46 B1 */	bl init__12J3DFrameCtrlFs
/* 80B23D50  38 00 00 00 */	li r0, 0
/* 80B23D54  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B23D58  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80B23D5C  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B256CC@ha */
/* 80B23D60  38 03 56 CC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B256CC@l */
/* 80B23D64  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80B23D68  7E C3 B3 78 */	mr r3, r22
/* 80B23D6C  38 80 00 00 */	li r4, 0
/* 80B23D70  4B 80 46 8D */	bl init__12J3DFrameCtrlFs
/* 80B23D74  38 00 00 00 */	li r0, 0
/* 80B23D78  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B23D7C  3A DF 06 74 */	addi r22, r31, 0x674
/* 80B23D80  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B256CC@ha */
/* 80B23D84  38 03 56 CC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B256CC@l */
/* 80B23D88  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80B23D8C  7E C3 B3 78 */	mr r3, r22
/* 80B23D90  38 80 00 00 */	li r4, 0
/* 80B23D94  4B 80 46 69 */	bl init__12J3DFrameCtrlFs
/* 80B23D98  38 00 00 00 */	li r0, 0
/* 80B23D9C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B23DA0  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80B23DA4  7E C3 B3 78 */	mr r3, r22
/* 80B23DA8  4B 55 22 F9 */	bl __ct__9dBgS_AcchFv
/* 80B23DAC  3C 60 80 B2 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B256D8@ha */
/* 80B23DB0  38 63 56 D8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B256D8@l */
/* 80B23DB4  90 76 00 10 */	stw r3, 0x10(r22)
/* 80B23DB8  38 03 00 0C */	addi r0, r3, 0xc
/* 80B23DBC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80B23DC0  38 03 00 18 */	addi r0, r3, 0x18
/* 80B23DC4  90 16 00 24 */	stw r0, 0x24(r22)
/* 80B23DC8  38 76 00 14 */	addi r3, r22, 0x14
/* 80B23DCC  4B 55 50 9D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80B23DD0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B23DD4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B23DD8  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80B23DDC  38 7F 08 80 */	addi r3, r31, 0x880
/* 80B23DE0  4B 55 F9 81 */	bl __ct__10dCcD_GSttsFv
/* 80B23DE4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B23DE8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B23DEC  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80B23DF0  3B 23 00 20 */	addi r25, r3, 0x20
/* 80B23DF4  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80B23DF8  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80B23DFC  4B 55 20 B1 */	bl __ct__12dBgS_AcchCirFv
/* 80B23E00  38 7F 09 30 */	addi r3, r31, 0x930
/* 80B23E04  4B 74 3E 19 */	bl __ct__11cBgS_GndChkFv
/* 80B23E08  38 7F 09 74 */	addi r3, r31, 0x974
/* 80B23E0C  4B 72 60 F5 */	bl __ct__10dMsgFlow_cFv
/* 80B23E10  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B23E14  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B23E18  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B23E1C  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80B23E20  4B 55 F9 41 */	bl __ct__10dCcD_GSttsFv
/* 80B23E24  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B23E28  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B23E2C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80B23E30  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80B23E34  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80B23E38  4B 55 37 45 */	bl __ct__11dBgS_GndChkFv
/* 80B23E3C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80B23E40  4B 55 3E 29 */	bl __ct__11dBgS_LinChkFv
/* 80B23E44  3C 60 80 B2 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B25720@ha */
/* 80B23E48  38 03 57 20 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B25720@l */
/* 80B23E4C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80B23E50  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80B23E54  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80B23E58  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B23E5C  4B 62 1A 3D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B23E60  3C 60 80 B2 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80B25720@ha */
/* 80B23E64  38 03 57 20 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80B25720@l */
/* 80B23E68  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80B23E6C  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80B23E70  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80B23E74  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B23E78  4B 62 1A 21 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B23E7C  3C 60 80 B2 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B2572C@ha */
/* 80B23E80  38 03 57 2C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B2572C@l */
/* 80B23E84  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80B23E88  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B23E8C  4B 62 18 49 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B23E90  3C 60 80 B2 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B2572C@ha */
/* 80B23E94  38 03 57 2C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B2572C@l */
/* 80B23E98  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80B23E9C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B23EA0  4B 62 18 35 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B23EA4  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80B23EA8  3C 60 80 B2 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B25738@ha */
/* 80B23EAC  38 03 57 38 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B25738@l */
/* 80B23EB0  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80B23EB4  3C 60 80 B2 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B2572C@ha */
/* 80B23EB8  38 03 57 2C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B2572C@l */
/* 80B23EBC  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80B23EC0  7F 43 D3 78 */	mr r3, r26
/* 80B23EC4  4B 62 18 11 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B23EC8  38 7A 00 30 */	addi r3, r26, 0x30
/* 80B23ECC  3C 80 80 B2 */	lis r4, __ct__4cXyzFv@ha /* 0x80B24188@ha */
/* 80B23ED0  38 84 41 88 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B24188@l */
/* 80B23ED4  3C A0 80 B2 */	lis r5, __dt__4cXyzFv@ha /* 0x80B23AB0@ha */
/* 80B23ED8  38 A5 3A B0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B23AB0@l */
/* 80B23EDC  38 C0 00 0C */	li r6, 0xc
/* 80B23EE0  38 E0 00 03 */	li r7, 3
/* 80B23EE4  4B 83 DE 7D */	bl __construct_array
/* 80B23EE8  38 7A 00 54 */	addi r3, r26, 0x54
/* 80B23EEC  3C 80 80 B2 */	lis r4, __ct__4cXyzFv@ha /* 0x80B24188@ha */
/* 80B23EF0  38 84 41 88 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B24188@l */
/* 80B23EF4  3C A0 80 B2 */	lis r5, __dt__4cXyzFv@ha /* 0x80B23AB0@ha */
/* 80B23EF8  38 A5 3A B0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B23AB0@l */
/* 80B23EFC  38 C0 00 0C */	li r6, 0xc
/* 80B23F00  38 E0 00 03 */	li r7, 3
/* 80B23F04  4B 83 DE 5D */	bl __construct_array
/* 80B23F08  38 7A 00 78 */	addi r3, r26, 0x78
/* 80B23F0C  3C 80 80 B2 */	lis r4, __ct__4cXyzFv@ha /* 0x80B24188@ha */
/* 80B23F10  38 84 41 88 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B24188@l */
/* 80B23F14  3C A0 80 B2 */	lis r5, __dt__4cXyzFv@ha /* 0x80B23AB0@ha */
/* 80B23F18  38 A5 3A B0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B23AB0@l */
/* 80B23F1C  38 C0 00 0C */	li r6, 0xc
/* 80B23F20  38 E0 00 03 */	li r7, 3
/* 80B23F24  4B 83 DE 3D */	bl __construct_array
/* 80B23F28  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80B23F2C  3C 80 80 B2 */	lis r4, __ct__4cXyzFv@ha /* 0x80B24188@ha */
/* 80B23F30  38 84 41 88 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B24188@l */
/* 80B23F34  3C A0 80 B2 */	lis r5, __dt__4cXyzFv@ha /* 0x80B23AB0@ha */
/* 80B23F38  38 A5 3A B0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B23AB0@l */
/* 80B23F3C  38 C0 00 0C */	li r6, 0xc
/* 80B23F40  38 E0 00 03 */	li r7, 3
/* 80B23F44  4B 83 DE 1D */	bl __construct_array
/* 80B23F48  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80B23F4C  3C 80 80 B2 */	lis r4, __ct__4cXyzFv@ha /* 0x80B24188@ha */
/* 80B23F50  38 84 41 88 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B24188@l */
/* 80B23F54  3C A0 80 B2 */	lis r5, __dt__4cXyzFv@ha /* 0x80B23AB0@ha */
/* 80B23F58  38 A5 3A B0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B23AB0@l */
/* 80B23F5C  38 C0 00 0C */	li r6, 0xc
/* 80B23F60  38 E0 00 03 */	li r7, 3
/* 80B23F64  4B 83 DD FD */	bl __construct_array
/* 80B23F68  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80B23F6C  3C 80 80 B2 */	lis r4, __ct__4cXyzFv@ha /* 0x80B24188@ha */
/* 80B23F70  38 84 41 88 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B24188@l */
/* 80B23F74  3C A0 80 B2 */	lis r5, __dt__4cXyzFv@ha /* 0x80B23AB0@ha */
/* 80B23F78  38 A5 3A B0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B23AB0@l */
/* 80B23F7C  38 C0 00 0C */	li r6, 0xc
/* 80B23F80  38 E0 00 03 */	li r7, 3
/* 80B23F84  4B 83 DD DD */	bl __construct_array
/* 80B23F88  7F 43 D3 78 */	mr r3, r26
/* 80B23F8C  4B 62 2D 0D */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B23F90  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80B23F94  3C 80 80 B2 */	lis r4, __ct__5csXyzFv@ha /* 0x80B24088@ha */
/* 80B23F98  38 84 40 88 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B24088@l */
/* 80B23F9C  3C A0 80 B2 */	lis r5, __dt__5csXyzFv@ha /* 0x80B23AEC@ha */
/* 80B23FA0  38 A5 3A EC */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B23AEC@l */
/* 80B23FA4  38 C0 00 06 */	li r6, 6
/* 80B23FA8  38 E0 00 02 */	li r7, 2
/* 80B23FAC  4B 83 DD B5 */	bl __construct_array
/* 80B23FB0  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80B23FB4  38 80 00 00 */	li r4, 0
/* 80B23FB8  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80B23FBC  7C A3 00 50 */	subf r5, r3, r0
/* 80B23FC0  4B 4D F4 99 */	bl memset
/* 80B23FC4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80B23FC8  4B 62 18 D1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B23FCC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80B23FD0  4B 62 18 C9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B23FD4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80B23FD8  4B 62 16 FD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B23FDC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80B23FE0  4B 62 16 F5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80B23FE4  7F 43 D3 78 */	mr r3, r26
/* 80B23FE8  4B 62 2C B1 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80B23FEC  38 A0 00 00 */	li r5, 0
/* 80B23FF0  38 60 00 00 */	li r3, 0
/* 80B23FF4  7C A4 2B 78 */	mr r4, r5
/* 80B23FF8  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80B23FFC  38 00 00 02 */	li r0, 2
/* 80B24000  7C 09 03 A6 */	mtctr r0
lbl_80B24004:
/* 80B24004  7C DF 22 14 */	add r6, r31, r4
/* 80B24008  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80B2400C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80B24010  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80B24014  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80B24018  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80B2401C  38 63 00 04 */	addi r3, r3, 4
/* 80B24020  38 84 00 06 */	addi r4, r4, 6
/* 80B24024  42 00 FF E0 */	bdnz lbl_80B24004
/* 80B24028  38 00 00 00 */	li r0, 0
/* 80B2402C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80B24030  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80B24034  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80B24038  38 00 FF FF */	li r0, -1
/* 80B2403C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80B24040  38 00 00 01 */	li r0, 1
/* 80B24044  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80B24048  C0 3E 00 D0 */	lfs f1, 0xd0(r30)
/* 80B2404C  4B 74 39 09 */	bl cM_rndF__Ff
/* 80B24050  FC 00 08 1E */	fctiwz f0, f1
/* 80B24054  D8 01 00 08 */	stfd f0, 8(r1)
/* 80B24058  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80B2405C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80B24060  C0 1E 00 D4 */	lfs f0, 0xd4(r30)
/* 80B24064  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80B24068  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80B2406C  7F E3 FB 78 */	mr r3, r31
/* 80B24070  39 61 00 40 */	addi r11, r1, 0x40
/* 80B24074  4B 83 E1 99 */	bl _restgpr_22
/* 80B24078  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B2407C  7C 08 03 A6 */	mtlr r0
/* 80B24080  38 21 00 40 */	addi r1, r1, 0x40
/* 80B24084  4E 80 00 20 */	blr 
