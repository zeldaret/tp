lbl_80A72C54:
/* 80A72C54  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A72C58  7C 08 02 A6 */	mflr r0
/* 80A72C5C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A72C60  39 61 00 40 */	addi r11, r1, 0x40
/* 80A72C64  4B 8E F5 5D */	bl _savegpr_22
/* 80A72C68  7C 7F 1B 78 */	mr r31, r3
/* 80A72C6C  7C 96 23 78 */	mr r22, r4
/* 80A72C70  7C B7 2B 78 */	mr r23, r5
/* 80A72C74  7C DA 33 78 */	mr r26, r6
/* 80A72C78  7C FB 3B 78 */	mr r27, r7
/* 80A72C7C  7D 1C 43 78 */	mr r28, r8
/* 80A72C80  7D 3D 4B 78 */	mr r29, r9
/* 80A72C84  7D 58 53 78 */	mr r24, r10
/* 80A72C88  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80A72C8C  3C 80 80 A7 */	lis r4, m__18daNpc_midP_Param_c@ha /* 0x80A739C0@ha */
/* 80A72C90  3B C4 39 C0 */	addi r30, r4, m__18daNpc_midP_Param_c@l /* 0x80A739C0@l */
/* 80A72C94  4B 5A 5E D1 */	bl __ct__10fopAc_ac_cFv
/* 80A72C98  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80A72C9C  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80A72CA0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A72CA4  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80A72CA8  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80A72CAC  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80A72CB0  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80A72CB4  38 7F 05 80 */	addi r3, r31, 0x580
/* 80A72CB8  4B 84 D7 11 */	bl __ct__10Z2CreatureFv
/* 80A72CBC  3A DF 06 10 */	addi r22, r31, 0x610
/* 80A72CC0  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A73BE8@ha */
/* 80A72CC4  38 03 3B E8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A73BE8@l */
/* 80A72CC8  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80A72CCC  7E C3 B3 78 */	mr r3, r22
/* 80A72CD0  38 80 00 00 */	li r4, 0
/* 80A72CD4  4B 8B 57 29 */	bl init__12J3DFrameCtrlFs
/* 80A72CD8  38 00 00 00 */	li r0, 0
/* 80A72CDC  90 16 00 18 */	stw r0, 0x18(r22)
/* 80A72CE0  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80A72CE4  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A73BE8@ha */
/* 80A72CE8  38 03 3B E8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A73BE8@l */
/* 80A72CEC  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80A72CF0  7E C3 B3 78 */	mr r3, r22
/* 80A72CF4  38 80 00 00 */	li r4, 0
/* 80A72CF8  4B 8B 57 05 */	bl init__12J3DFrameCtrlFs
/* 80A72CFC  38 00 00 00 */	li r0, 0
/* 80A72D00  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A72D04  3A DF 06 44 */	addi r22, r31, 0x644
/* 80A72D08  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A73BE8@ha */
/* 80A72D0C  38 03 3B E8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A73BE8@l */
/* 80A72D10  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80A72D14  7E C3 B3 78 */	mr r3, r22
/* 80A72D18  38 80 00 00 */	li r4, 0
/* 80A72D1C  4B 8B 56 E1 */	bl init__12J3DFrameCtrlFs
/* 80A72D20  38 00 00 00 */	li r0, 0
/* 80A72D24  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A72D28  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80A72D2C  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A73BE8@ha */
/* 80A72D30  38 03 3B E8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A73BE8@l */
/* 80A72D34  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80A72D38  7E C3 B3 78 */	mr r3, r22
/* 80A72D3C  38 80 00 00 */	li r4, 0
/* 80A72D40  4B 8B 56 BD */	bl init__12J3DFrameCtrlFs
/* 80A72D44  38 00 00 00 */	li r0, 0
/* 80A72D48  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A72D4C  3A DF 06 74 */	addi r22, r31, 0x674
/* 80A72D50  3C 60 80 A7 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A73BE8@ha */
/* 80A72D54  38 03 3B E8 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A73BE8@l */
/* 80A72D58  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80A72D5C  7E C3 B3 78 */	mr r3, r22
/* 80A72D60  38 80 00 00 */	li r4, 0
/* 80A72D64  4B 8B 56 99 */	bl init__12J3DFrameCtrlFs
/* 80A72D68  38 00 00 00 */	li r0, 0
/* 80A72D6C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A72D70  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80A72D74  7E C3 B3 78 */	mr r3, r22
/* 80A72D78  4B 60 33 29 */	bl __ct__9dBgS_AcchFv
/* 80A72D7C  3C 60 80 A7 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A73BF4@ha */
/* 80A72D80  38 63 3B F4 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A73BF4@l */
/* 80A72D84  90 76 00 10 */	stw r3, 0x10(r22)
/* 80A72D88  38 03 00 0C */	addi r0, r3, 0xc
/* 80A72D8C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A72D90  38 03 00 18 */	addi r0, r3, 0x18
/* 80A72D94  90 16 00 24 */	stw r0, 0x24(r22)
/* 80A72D98  38 76 00 14 */	addi r3, r22, 0x14
/* 80A72D9C  4B 60 60 CD */	bl SetObj__16dBgS_PolyPassChkFv
/* 80A72DA0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A72DA4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A72DA8  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80A72DAC  38 7F 08 80 */	addi r3, r31, 0x880
/* 80A72DB0  4B 61 09 B1 */	bl __ct__10dCcD_GSttsFv
/* 80A72DB4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A72DB8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A72DBC  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80A72DC0  3B 23 00 20 */	addi r25, r3, 0x20
/* 80A72DC4  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80A72DC8  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80A72DCC  4B 60 30 E1 */	bl __ct__12dBgS_AcchCirFv
/* 80A72DD0  38 7F 09 30 */	addi r3, r31, 0x930
/* 80A72DD4  4B 7F 4E 49 */	bl __ct__11cBgS_GndChkFv
/* 80A72DD8  38 7F 09 74 */	addi r3, r31, 0x974
/* 80A72DDC  4B 7D 71 25 */	bl __ct__10dMsgFlow_cFv
/* 80A72DE0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A72DE4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A72DE8  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A72DEC  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80A72DF0  4B 61 09 71 */	bl __ct__10dCcD_GSttsFv
/* 80A72DF4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A72DF8  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A72DFC  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A72E00  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80A72E04  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80A72E08  4B 60 47 75 */	bl __ct__11dBgS_GndChkFv
/* 80A72E0C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80A72E10  4B 60 4E 59 */	bl __ct__11dBgS_LinChkFv
/* 80A72E14  3C 60 80 A7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A73C3C@ha */
/* 80A72E18  38 03 3C 3C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A73C3C@l */
/* 80A72E1C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80A72E20  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80A72E24  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80A72E28  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A72E2C  4B 6D 2A 6D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A72E30  3C 60 80 A7 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A73C3C@ha */
/* 80A72E34  38 03 3C 3C */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A73C3C@l */
/* 80A72E38  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80A72E3C  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80A72E40  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80A72E44  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A72E48  4B 6D 2A 51 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A72E4C  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A73C48@ha */
/* 80A72E50  38 03 3C 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A73C48@l */
/* 80A72E54  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80A72E58  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A72E5C  4B 6D 28 79 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A72E60  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A73C48@ha */
/* 80A72E64  38 03 3C 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A73C48@l */
/* 80A72E68  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80A72E6C  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A72E70  4B 6D 28 65 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A72E74  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80A72E78  3C 60 80 A7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A73C54@ha */
/* 80A72E7C  38 03 3C 54 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A73C54@l */
/* 80A72E80  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80A72E84  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A73C48@ha */
/* 80A72E88  38 03 3C 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A73C48@l */
/* 80A72E8C  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80A72E90  7F 43 D3 78 */	mr r3, r26
/* 80A72E94  4B 6D 28 41 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A72E98  38 7A 00 30 */	addi r3, r26, 0x30
/* 80A72E9C  3C 80 80 A7 */	lis r4, __ct__4cXyzFv@ha /* 0x80A73158@ha */
/* 80A72EA0  38 84 31 58 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A73158@l */
/* 80A72EA4  3C A0 80 A7 */	lis r5, __dt__4cXyzFv@ha /* 0x80A72BDC@ha */
/* 80A72EA8  38 A5 2B DC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A72BDC@l */
/* 80A72EAC  38 C0 00 0C */	li r6, 0xc
/* 80A72EB0  38 E0 00 03 */	li r7, 3
/* 80A72EB4  4B 8E EE AD */	bl __construct_array
/* 80A72EB8  38 7A 00 54 */	addi r3, r26, 0x54
/* 80A72EBC  3C 80 80 A7 */	lis r4, __ct__4cXyzFv@ha /* 0x80A73158@ha */
/* 80A72EC0  38 84 31 58 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A73158@l */
/* 80A72EC4  3C A0 80 A7 */	lis r5, __dt__4cXyzFv@ha /* 0x80A72BDC@ha */
/* 80A72EC8  38 A5 2B DC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A72BDC@l */
/* 80A72ECC  38 C0 00 0C */	li r6, 0xc
/* 80A72ED0  38 E0 00 03 */	li r7, 3
/* 80A72ED4  4B 8E EE 8D */	bl __construct_array
/* 80A72ED8  38 7A 00 78 */	addi r3, r26, 0x78
/* 80A72EDC  3C 80 80 A7 */	lis r4, __ct__4cXyzFv@ha /* 0x80A73158@ha */
/* 80A72EE0  38 84 31 58 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A73158@l */
/* 80A72EE4  3C A0 80 A7 */	lis r5, __dt__4cXyzFv@ha /* 0x80A72BDC@ha */
/* 80A72EE8  38 A5 2B DC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A72BDC@l */
/* 80A72EEC  38 C0 00 0C */	li r6, 0xc
/* 80A72EF0  38 E0 00 03 */	li r7, 3
/* 80A72EF4  4B 8E EE 6D */	bl __construct_array
/* 80A72EF8  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80A72EFC  3C 80 80 A7 */	lis r4, __ct__4cXyzFv@ha /* 0x80A73158@ha */
/* 80A72F00  38 84 31 58 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A73158@l */
/* 80A72F04  3C A0 80 A7 */	lis r5, __dt__4cXyzFv@ha /* 0x80A72BDC@ha */
/* 80A72F08  38 A5 2B DC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A72BDC@l */
/* 80A72F0C  38 C0 00 0C */	li r6, 0xc
/* 80A72F10  38 E0 00 03 */	li r7, 3
/* 80A72F14  4B 8E EE 4D */	bl __construct_array
/* 80A72F18  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80A72F1C  3C 80 80 A7 */	lis r4, __ct__4cXyzFv@ha /* 0x80A73158@ha */
/* 80A72F20  38 84 31 58 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A73158@l */
/* 80A72F24  3C A0 80 A7 */	lis r5, __dt__4cXyzFv@ha /* 0x80A72BDC@ha */
/* 80A72F28  38 A5 2B DC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A72BDC@l */
/* 80A72F2C  38 C0 00 0C */	li r6, 0xc
/* 80A72F30  38 E0 00 03 */	li r7, 3
/* 80A72F34  4B 8E EE 2D */	bl __construct_array
/* 80A72F38  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80A72F3C  3C 80 80 A7 */	lis r4, __ct__4cXyzFv@ha /* 0x80A73158@ha */
/* 80A72F40  38 84 31 58 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A73158@l */
/* 80A72F44  3C A0 80 A7 */	lis r5, __dt__4cXyzFv@ha /* 0x80A72BDC@ha */
/* 80A72F48  38 A5 2B DC */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A72BDC@l */
/* 80A72F4C  38 C0 00 0C */	li r6, 0xc
/* 80A72F50  38 E0 00 03 */	li r7, 3
/* 80A72F54  4B 8E EE 0D */	bl __construct_array
/* 80A72F58  7F 43 D3 78 */	mr r3, r26
/* 80A72F5C  4B 6D 3D 3D */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A72F60  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A72F64  3C 80 80 A7 */	lis r4, __ct__5csXyzFv@ha /* 0x80A73058@ha */
/* 80A72F68  38 84 30 58 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A73058@l */
/* 80A72F6C  3C A0 80 A7 */	lis r5, __dt__5csXyzFv@ha /* 0x80A72C18@ha */
/* 80A72F70  38 A5 2C 18 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A72C18@l */
/* 80A72F74  38 C0 00 06 */	li r6, 6
/* 80A72F78  38 E0 00 02 */	li r7, 2
/* 80A72F7C  4B 8E ED E5 */	bl __construct_array
/* 80A72F80  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A72F84  38 80 00 00 */	li r4, 0
/* 80A72F88  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A72F8C  7C A3 00 50 */	subf r5, r3, r0
/* 80A72F90  4B 59 04 C9 */	bl memset
/* 80A72F94  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A72F98  4B 6D 29 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A72F9C  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A72FA0  4B 6D 28 F9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A72FA4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A72FA8  4B 6D 27 2D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A72FAC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A72FB0  4B 6D 27 25 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A72FB4  7F 43 D3 78 */	mr r3, r26
/* 80A72FB8  4B 6D 3C E1 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A72FBC  38 A0 00 00 */	li r5, 0
/* 80A72FC0  38 60 00 00 */	li r3, 0
/* 80A72FC4  7C A4 2B 78 */	mr r4, r5
/* 80A72FC8  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A72FCC  38 00 00 02 */	li r0, 2
/* 80A72FD0  7C 09 03 A6 */	mtctr r0
lbl_80A72FD4:
/* 80A72FD4  7C DF 22 14 */	add r6, r31, r4
/* 80A72FD8  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A72FDC  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A72FE0  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A72FE4  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A72FE8  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A72FEC  38 63 00 04 */	addi r3, r3, 4
/* 80A72FF0  38 84 00 06 */	addi r4, r4, 6
/* 80A72FF4  42 00 FF E0 */	bdnz lbl_80A72FD4
/* 80A72FF8  38 00 00 00 */	li r0, 0
/* 80A72FFC  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A73000  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A73004  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A73008  38 00 FF FF */	li r0, -1
/* 80A7300C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A73010  38 00 00 01 */	li r0, 1
/* 80A73014  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A73018  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80A7301C  4B 7F 49 39 */	bl cM_rndF__Ff
/* 80A73020  FC 00 08 1E */	fctiwz f0, f1
/* 80A73024  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A73028  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A7302C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A73030  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80A73034  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A73038  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A7303C  7F E3 FB 78 */	mr r3, r31
/* 80A73040  39 61 00 40 */	addi r11, r1, 0x40
/* 80A73044  4B 8E F1 C9 */	bl _restgpr_22
/* 80A73048  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A7304C  7C 08 03 A6 */	mtlr r0
/* 80A73050  38 21 00 40 */	addi r1, r1, 0x40
/* 80A73054  4E 80 00 20 */	blr 
