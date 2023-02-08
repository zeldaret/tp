lbl_80AD3BEC:
/* 80AD3BEC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80AD3BF0  7C 08 02 A6 */	mflr r0
/* 80AD3BF4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80AD3BF8  39 61 00 40 */	addi r11, r1, 0x40
/* 80AD3BFC  4B 88 E5 C5 */	bl _savegpr_22
/* 80AD3C00  7C 7F 1B 78 */	mr r31, r3
/* 80AD3C04  7C 96 23 78 */	mr r22, r4
/* 80AD3C08  7C B7 2B 78 */	mr r23, r5
/* 80AD3C0C  7C DA 33 78 */	mr r26, r6
/* 80AD3C10  7C FB 3B 78 */	mr r27, r7
/* 80AD3C14  7D 1C 43 78 */	mr r28, r8
/* 80AD3C18  7D 3D 4B 78 */	mr r29, r9
/* 80AD3C1C  7D 58 53 78 */	mr r24, r10
/* 80AD3C20  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80AD3C24  3C 80 80 AD */	lis r4, m__20daNpc_Seira2_Param_c@ha /* 0x80AD4A60@ha */
/* 80AD3C28  3B C4 4A 60 */	addi r30, r4, m__20daNpc_Seira2_Param_c@l /* 0x80AD4A60@l */
/* 80AD3C2C  4B 54 4F 39 */	bl __ct__10fopAc_ac_cFv
/* 80AD3C30  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80AD3C34  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80AD3C38  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80AD3C3C  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80AD3C40  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80AD3C44  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80AD3C48  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80AD3C4C  38 7F 05 80 */	addi r3, r31, 0x580
/* 80AD3C50  4B 7E C7 79 */	bl __ct__10Z2CreatureFv
/* 80AD3C54  3A DF 06 10 */	addi r22, r31, 0x610
/* 80AD3C58  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AD54A0@ha */
/* 80AD3C5C  38 03 54 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AD54A0@l */
/* 80AD3C60  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80AD3C64  7E C3 B3 78 */	mr r3, r22
/* 80AD3C68  38 80 00 00 */	li r4, 0
/* 80AD3C6C  4B 85 47 91 */	bl init__12J3DFrameCtrlFs
/* 80AD3C70  38 00 00 00 */	li r0, 0
/* 80AD3C74  90 16 00 18 */	stw r0, 0x18(r22)
/* 80AD3C78  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80AD3C7C  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AD54A0@ha */
/* 80AD3C80  38 03 54 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AD54A0@l */
/* 80AD3C84  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80AD3C88  7E C3 B3 78 */	mr r3, r22
/* 80AD3C8C  38 80 00 00 */	li r4, 0
/* 80AD3C90  4B 85 47 6D */	bl init__12J3DFrameCtrlFs
/* 80AD3C94  38 00 00 00 */	li r0, 0
/* 80AD3C98  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AD3C9C  3A DF 06 44 */	addi r22, r31, 0x644
/* 80AD3CA0  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AD54A0@ha */
/* 80AD3CA4  38 03 54 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AD54A0@l */
/* 80AD3CA8  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80AD3CAC  7E C3 B3 78 */	mr r3, r22
/* 80AD3CB0  38 80 00 00 */	li r4, 0
/* 80AD3CB4  4B 85 47 49 */	bl init__12J3DFrameCtrlFs
/* 80AD3CB8  38 00 00 00 */	li r0, 0
/* 80AD3CBC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AD3CC0  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80AD3CC4  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AD54A0@ha */
/* 80AD3CC8  38 03 54 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AD54A0@l */
/* 80AD3CCC  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80AD3CD0  7E C3 B3 78 */	mr r3, r22
/* 80AD3CD4  38 80 00 00 */	li r4, 0
/* 80AD3CD8  4B 85 47 25 */	bl init__12J3DFrameCtrlFs
/* 80AD3CDC  38 00 00 00 */	li r0, 0
/* 80AD3CE0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AD3CE4  3A DF 06 74 */	addi r22, r31, 0x674
/* 80AD3CE8  3C 60 80 AD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80AD54A0@ha */
/* 80AD3CEC  38 03 54 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80AD54A0@l */
/* 80AD3CF0  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80AD3CF4  7E C3 B3 78 */	mr r3, r22
/* 80AD3CF8  38 80 00 00 */	li r4, 0
/* 80AD3CFC  4B 85 47 01 */	bl init__12J3DFrameCtrlFs
/* 80AD3D00  38 00 00 00 */	li r0, 0
/* 80AD3D04  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AD3D08  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80AD3D0C  7E C3 B3 78 */	mr r3, r22
/* 80AD3D10  4B 5A 23 91 */	bl __ct__9dBgS_AcchFv
/* 80AD3D14  3C 60 80 AD */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80AD54AC@ha */
/* 80AD3D18  38 63 54 AC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80AD54AC@l */
/* 80AD3D1C  90 76 00 10 */	stw r3, 0x10(r22)
/* 80AD3D20  38 03 00 0C */	addi r0, r3, 0xc
/* 80AD3D24  90 16 00 14 */	stw r0, 0x14(r22)
/* 80AD3D28  38 03 00 18 */	addi r0, r3, 0x18
/* 80AD3D2C  90 16 00 24 */	stw r0, 0x24(r22)
/* 80AD3D30  38 76 00 14 */	addi r3, r22, 0x14
/* 80AD3D34  4B 5A 51 35 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80AD3D38  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AD3D3C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AD3D40  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80AD3D44  38 7F 08 80 */	addi r3, r31, 0x880
/* 80AD3D48  4B 5A FA 19 */	bl __ct__10dCcD_GSttsFv
/* 80AD3D4C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AD3D50  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AD3D54  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80AD3D58  3B 23 00 20 */	addi r25, r3, 0x20
/* 80AD3D5C  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80AD3D60  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80AD3D64  4B 5A 21 49 */	bl __ct__12dBgS_AcchCirFv
/* 80AD3D68  38 7F 09 30 */	addi r3, r31, 0x930
/* 80AD3D6C  4B 79 3E B1 */	bl __ct__11cBgS_GndChkFv
/* 80AD3D70  38 7F 09 74 */	addi r3, r31, 0x974
/* 80AD3D74  4B 77 61 8D */	bl __ct__10dMsgFlow_cFv
/* 80AD3D78  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80AD3D7C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80AD3D80  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AD3D84  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80AD3D88  4B 5A F9 D9 */	bl __ct__10dCcD_GSttsFv
/* 80AD3D8C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80AD3D90  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80AD3D94  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80AD3D98  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80AD3D9C  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80AD3DA0  4B 5A 37 DD */	bl __ct__11dBgS_GndChkFv
/* 80AD3DA4  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80AD3DA8  4B 5A 3E C1 */	bl __ct__11dBgS_LinChkFv
/* 80AD3DAC  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AD54F4@ha */
/* 80AD3DB0  38 03 54 F4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AD54F4@l */
/* 80AD3DB4  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80AD3DB8  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80AD3DBC  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80AD3DC0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD3DC4  4B 67 1A D5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD3DC8  3C 60 80 AD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AD54F4@ha */
/* 80AD3DCC  38 03 54 F4 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AD54F4@l */
/* 80AD3DD0  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80AD3DD4  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80AD3DD8  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80AD3DDC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD3DE0  4B 67 1A B9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD3DE4  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AD550C@ha */
/* 80AD3DE8  38 03 55 0C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AD550C@l */
/* 80AD3DEC  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80AD3DF0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AD3DF4  4B 67 18 E1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD3DF8  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AD550C@ha */
/* 80AD3DFC  38 03 55 0C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AD550C@l */
/* 80AD3E00  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80AD3E04  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AD3E08  4B 67 18 CD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD3E0C  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80AD3E10  3C 60 80 AD */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AD5500@ha */
/* 80AD3E14  38 03 55 00 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AD5500@l */
/* 80AD3E18  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80AD3E1C  3C 60 80 AD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AD550C@ha */
/* 80AD3E20  38 03 55 0C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AD550C@l */
/* 80AD3E24  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80AD3E28  7F 43 D3 78 */	mr r3, r26
/* 80AD3E2C  4B 67 18 A9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD3E30  38 7A 00 30 */	addi r3, r26, 0x30
/* 80AD3E34  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AD40F0@ha */
/* 80AD3E38  38 84 40 F0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AD40F0@l */
/* 80AD3E3C  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AD3B74@ha */
/* 80AD3E40  38 A5 3B 74 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AD3B74@l */
/* 80AD3E44  38 C0 00 0C */	li r6, 0xc
/* 80AD3E48  38 E0 00 03 */	li r7, 3
/* 80AD3E4C  4B 88 DF 15 */	bl __construct_array
/* 80AD3E50  38 7A 00 54 */	addi r3, r26, 0x54
/* 80AD3E54  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AD40F0@ha */
/* 80AD3E58  38 84 40 F0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AD40F0@l */
/* 80AD3E5C  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AD3B74@ha */
/* 80AD3E60  38 A5 3B 74 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AD3B74@l */
/* 80AD3E64  38 C0 00 0C */	li r6, 0xc
/* 80AD3E68  38 E0 00 03 */	li r7, 3
/* 80AD3E6C  4B 88 DE F5 */	bl __construct_array
/* 80AD3E70  38 7A 00 78 */	addi r3, r26, 0x78
/* 80AD3E74  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AD40F0@ha */
/* 80AD3E78  38 84 40 F0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AD40F0@l */
/* 80AD3E7C  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AD3B74@ha */
/* 80AD3E80  38 A5 3B 74 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AD3B74@l */
/* 80AD3E84  38 C0 00 0C */	li r6, 0xc
/* 80AD3E88  38 E0 00 03 */	li r7, 3
/* 80AD3E8C  4B 88 DE D5 */	bl __construct_array
/* 80AD3E90  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80AD3E94  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AD40F0@ha */
/* 80AD3E98  38 84 40 F0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AD40F0@l */
/* 80AD3E9C  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AD3B74@ha */
/* 80AD3EA0  38 A5 3B 74 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AD3B74@l */
/* 80AD3EA4  38 C0 00 0C */	li r6, 0xc
/* 80AD3EA8  38 E0 00 03 */	li r7, 3
/* 80AD3EAC  4B 88 DE B5 */	bl __construct_array
/* 80AD3EB0  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80AD3EB4  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AD40F0@ha */
/* 80AD3EB8  38 84 40 F0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AD40F0@l */
/* 80AD3EBC  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AD3B74@ha */
/* 80AD3EC0  38 A5 3B 74 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AD3B74@l */
/* 80AD3EC4  38 C0 00 0C */	li r6, 0xc
/* 80AD3EC8  38 E0 00 03 */	li r7, 3
/* 80AD3ECC  4B 88 DE 95 */	bl __construct_array
/* 80AD3ED0  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80AD3ED4  3C 80 80 AD */	lis r4, __ct__4cXyzFv@ha /* 0x80AD40F0@ha */
/* 80AD3ED8  38 84 40 F0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80AD40F0@l */
/* 80AD3EDC  3C A0 80 AD */	lis r5, __dt__4cXyzFv@ha /* 0x80AD3B74@ha */
/* 80AD3EE0  38 A5 3B 74 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80AD3B74@l */
/* 80AD3EE4  38 C0 00 0C */	li r6, 0xc
/* 80AD3EE8  38 E0 00 03 */	li r7, 3
/* 80AD3EEC  4B 88 DE 75 */	bl __construct_array
/* 80AD3EF0  7F 43 D3 78 */	mr r3, r26
/* 80AD3EF4  4B 67 2D A5 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AD3EF8  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80AD3EFC  3C 80 80 AD */	lis r4, __ct__5csXyzFv@ha /* 0x80AD3FF0@ha */
/* 80AD3F00  38 84 3F F0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80AD3FF0@l */
/* 80AD3F04  3C A0 80 AD */	lis r5, __dt__5csXyzFv@ha /* 0x80AD3BB0@ha */
/* 80AD3F08  38 A5 3B B0 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80AD3BB0@l */
/* 80AD3F0C  38 C0 00 06 */	li r6, 6
/* 80AD3F10  38 E0 00 02 */	li r7, 2
/* 80AD3F14  4B 88 DE 4D */	bl __construct_array
/* 80AD3F18  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80AD3F1C  38 80 00 00 */	li r4, 0
/* 80AD3F20  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80AD3F24  7C A3 00 50 */	subf r5, r3, r0
/* 80AD3F28  4B 52 F5 31 */	bl memset
/* 80AD3F2C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AD3F30  4B 67 19 69 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD3F34  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AD3F38  4B 67 19 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AD3F3C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AD3F40  4B 67 17 95 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD3F44  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80AD3F48  4B 67 17 8D */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80AD3F4C  7F 43 D3 78 */	mr r3, r26
/* 80AD3F50  4B 67 2D 49 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80AD3F54  38 A0 00 00 */	li r5, 0
/* 80AD3F58  38 60 00 00 */	li r3, 0
/* 80AD3F5C  7C A4 2B 78 */	mr r4, r5
/* 80AD3F60  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80AD3F64  38 00 00 02 */	li r0, 2
/* 80AD3F68  7C 09 03 A6 */	mtctr r0
lbl_80AD3F6C:
/* 80AD3F6C  7C DF 22 14 */	add r6, r31, r4
/* 80AD3F70  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80AD3F74  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80AD3F78  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80AD3F7C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80AD3F80  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80AD3F84  38 63 00 04 */	addi r3, r3, 4
/* 80AD3F88  38 84 00 06 */	addi r4, r4, 6
/* 80AD3F8C  42 00 FF E0 */	bdnz lbl_80AD3F6C
/* 80AD3F90  38 00 00 00 */	li r0, 0
/* 80AD3F94  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80AD3F98  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80AD3F9C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80AD3FA0  38 00 FF FF */	li r0, -1
/* 80AD3FA4  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80AD3FA8  38 00 00 01 */	li r0, 1
/* 80AD3FAC  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80AD3FB0  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 80AD3FB4  4B 79 39 A1 */	bl cM_rndF__Ff
/* 80AD3FB8  FC 00 08 1E */	fctiwz f0, f1
/* 80AD3FBC  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AD3FC0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AD3FC4  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80AD3FC8  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 80AD3FCC  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80AD3FD0  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80AD3FD4  7F E3 FB 78 */	mr r3, r31
/* 80AD3FD8  39 61 00 40 */	addi r11, r1, 0x40
/* 80AD3FDC  4B 88 E2 31 */	bl _restgpr_22
/* 80AD3FE0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80AD3FE4  7C 08 03 A6 */	mtlr r0
/* 80AD3FE8  38 21 00 40 */	addi r1, r1, 0x40
/* 80AD3FEC  4E 80 00 20 */	blr 
