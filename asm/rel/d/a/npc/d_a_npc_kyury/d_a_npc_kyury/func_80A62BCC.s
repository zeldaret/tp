lbl_80A62BCC:
/* 80A62BCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A62BD0  7C 08 02 A6 */	mflr r0
/* 80A62BD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A62BD8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A62BDC  4B 8F F5 E5 */	bl _savegpr_22
/* 80A62BE0  7C 7F 1B 78 */	mr r31, r3
/* 80A62BE4  7C 96 23 78 */	mr r22, r4
/* 80A62BE8  7C B7 2B 78 */	mr r23, r5
/* 80A62BEC  7C DA 33 78 */	mr r26, r6
/* 80A62BF0  7C FB 3B 78 */	mr r27, r7
/* 80A62BF4  7D 1C 43 78 */	mr r28, r8
/* 80A62BF8  7D 3D 4B 78 */	mr r29, r9
/* 80A62BFC  7D 58 53 78 */	mr r24, r10
/* 80A62C00  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80A62C04  3C 80 80 A6 */	lis r4, m__19daNpc_Kyury_Param_c@ha /* 0x80A638AC@ha */
/* 80A62C08  3B C4 38 AC */	addi r30, r4, m__19daNpc_Kyury_Param_c@l /* 0x80A638AC@l */
/* 80A62C0C  4B 5B 5F 59 */	bl __ct__10fopAc_ac_cFv
/* 80A62C10  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80A62C14  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80A62C18  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A62C1C  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80A62C20  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80A62C24  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80A62C28  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80A62C2C  38 7F 05 80 */	addi r3, r31, 0x580
/* 80A62C30  4B 85 D7 99 */	bl __ct__10Z2CreatureFv
/* 80A62C34  3A DF 06 10 */	addi r22, r31, 0x610
/* 80A62C38  3C 60 80 A6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A640AC@ha */
/* 80A62C3C  38 03 40 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A640AC@l */
/* 80A62C40  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80A62C44  7E C3 B3 78 */	mr r3, r22
/* 80A62C48  38 80 00 00 */	li r4, 0
/* 80A62C4C  4B 8C 57 B1 */	bl init__12J3DFrameCtrlFs
/* 80A62C50  38 00 00 00 */	li r0, 0
/* 80A62C54  90 16 00 18 */	stw r0, 0x18(r22)
/* 80A62C58  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80A62C5C  3C 60 80 A6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A640AC@ha */
/* 80A62C60  38 03 40 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A640AC@l */
/* 80A62C64  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80A62C68  7E C3 B3 78 */	mr r3, r22
/* 80A62C6C  38 80 00 00 */	li r4, 0
/* 80A62C70  4B 8C 57 8D */	bl init__12J3DFrameCtrlFs
/* 80A62C74  38 00 00 00 */	li r0, 0
/* 80A62C78  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A62C7C  3A DF 06 44 */	addi r22, r31, 0x644
/* 80A62C80  3C 60 80 A6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A640AC@ha */
/* 80A62C84  38 03 40 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A640AC@l */
/* 80A62C88  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80A62C8C  7E C3 B3 78 */	mr r3, r22
/* 80A62C90  38 80 00 00 */	li r4, 0
/* 80A62C94  4B 8C 57 69 */	bl init__12J3DFrameCtrlFs
/* 80A62C98  38 00 00 00 */	li r0, 0
/* 80A62C9C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A62CA0  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80A62CA4  3C 60 80 A6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A640AC@ha */
/* 80A62CA8  38 03 40 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A640AC@l */
/* 80A62CAC  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80A62CB0  7E C3 B3 78 */	mr r3, r22
/* 80A62CB4  38 80 00 00 */	li r4, 0
/* 80A62CB8  4B 8C 57 45 */	bl init__12J3DFrameCtrlFs
/* 80A62CBC  38 00 00 00 */	li r0, 0
/* 80A62CC0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A62CC4  3A DF 06 74 */	addi r22, r31, 0x674
/* 80A62CC8  3C 60 80 A6 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A640AC@ha */
/* 80A62CCC  38 03 40 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A640AC@l */
/* 80A62CD0  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80A62CD4  7E C3 B3 78 */	mr r3, r22
/* 80A62CD8  38 80 00 00 */	li r4, 0
/* 80A62CDC  4B 8C 57 21 */	bl init__12J3DFrameCtrlFs
/* 80A62CE0  38 00 00 00 */	li r0, 0
/* 80A62CE4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A62CE8  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80A62CEC  7E C3 B3 78 */	mr r3, r22
/* 80A62CF0  4B 61 33 B1 */	bl __ct__9dBgS_AcchFv
/* 80A62CF4  3C 60 80 A6 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A640B8@ha */
/* 80A62CF8  38 63 40 B8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A640B8@l */
/* 80A62CFC  90 76 00 10 */	stw r3, 0x10(r22)
/* 80A62D00  38 03 00 0C */	addi r0, r3, 0xc
/* 80A62D04  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A62D08  38 03 00 18 */	addi r0, r3, 0x18
/* 80A62D0C  90 16 00 24 */	stw r0, 0x24(r22)
/* 80A62D10  38 76 00 14 */	addi r3, r22, 0x14
/* 80A62D14  4B 61 61 55 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80A62D18  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A62D1C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A62D20  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80A62D24  38 7F 08 80 */	addi r3, r31, 0x880
/* 80A62D28  4B 62 0A 39 */	bl __ct__10dCcD_GSttsFv
/* 80A62D2C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A62D30  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A62D34  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80A62D38  3B 23 00 20 */	addi r25, r3, 0x20
/* 80A62D3C  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80A62D40  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80A62D44  4B 61 31 69 */	bl __ct__12dBgS_AcchCirFv
/* 80A62D48  38 7F 09 30 */	addi r3, r31, 0x930
/* 80A62D4C  4B 80 4E D1 */	bl __ct__11cBgS_GndChkFv
/* 80A62D50  38 7F 09 74 */	addi r3, r31, 0x974
/* 80A62D54  4B 7E 71 AD */	bl __ct__10dMsgFlow_cFv
/* 80A62D58  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A62D5C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A62D60  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A62D64  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80A62D68  4B 62 09 F9 */	bl __ct__10dCcD_GSttsFv
/* 80A62D6C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A62D70  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A62D74  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A62D78  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80A62D7C  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80A62D80  4B 61 47 FD */	bl __ct__11dBgS_GndChkFv
/* 80A62D84  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80A62D88  4B 61 4E E1 */	bl __ct__11dBgS_LinChkFv
/* 80A62D8C  3C 60 80 A6 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A64100@ha */
/* 80A62D90  38 03 41 00 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A64100@l */
/* 80A62D94  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80A62D98  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80A62D9C  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80A62DA0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A62DA4  4B 6E 2A F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A62DA8  3C 60 80 A6 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A64100@ha */
/* 80A62DAC  38 03 41 00 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A64100@l */
/* 80A62DB0  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80A62DB4  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80A62DB8  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80A62DBC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A62DC0  4B 6E 2A D9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A62DC4  3C 60 80 A6 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A6410C@ha */
/* 80A62DC8  38 03 41 0C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A6410C@l */
/* 80A62DCC  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80A62DD0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A62DD4  4B 6E 29 01 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A62DD8  3C 60 80 A6 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A6410C@ha */
/* 80A62DDC  38 03 41 0C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A6410C@l */
/* 80A62DE0  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80A62DE4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A62DE8  4B 6E 28 ED */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A62DEC  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80A62DF0  3C 60 80 A6 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A64118@ha */
/* 80A62DF4  38 03 41 18 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A64118@l */
/* 80A62DF8  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80A62DFC  3C 60 80 A6 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A6410C@ha */
/* 80A62E00  38 03 41 0C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A6410C@l */
/* 80A62E04  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80A62E08  7F 43 D3 78 */	mr r3, r26
/* 80A62E0C  4B 6E 28 C9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A62E10  38 7A 00 30 */	addi r3, r26, 0x30
/* 80A62E14  3C 80 80 A6 */	lis r4, __ct__4cXyzFv@ha /* 0x80A630D0@ha */
/* 80A62E18  38 84 30 D0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A630D0@l */
/* 80A62E1C  3C A0 80 A6 */	lis r5, __dt__4cXyzFv@ha /* 0x80A629F8@ha */
/* 80A62E20  38 A5 29 F8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A629F8@l */
/* 80A62E24  38 C0 00 0C */	li r6, 0xc
/* 80A62E28  38 E0 00 03 */	li r7, 3
/* 80A62E2C  4B 8F EF 35 */	bl __construct_array
/* 80A62E30  38 7A 00 54 */	addi r3, r26, 0x54
/* 80A62E34  3C 80 80 A6 */	lis r4, __ct__4cXyzFv@ha /* 0x80A630D0@ha */
/* 80A62E38  38 84 30 D0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A630D0@l */
/* 80A62E3C  3C A0 80 A6 */	lis r5, __dt__4cXyzFv@ha /* 0x80A629F8@ha */
/* 80A62E40  38 A5 29 F8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A629F8@l */
/* 80A62E44  38 C0 00 0C */	li r6, 0xc
/* 80A62E48  38 E0 00 03 */	li r7, 3
/* 80A62E4C  4B 8F EF 15 */	bl __construct_array
/* 80A62E50  38 7A 00 78 */	addi r3, r26, 0x78
/* 80A62E54  3C 80 80 A6 */	lis r4, __ct__4cXyzFv@ha /* 0x80A630D0@ha */
/* 80A62E58  38 84 30 D0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A630D0@l */
/* 80A62E5C  3C A0 80 A6 */	lis r5, __dt__4cXyzFv@ha /* 0x80A629F8@ha */
/* 80A62E60  38 A5 29 F8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A629F8@l */
/* 80A62E64  38 C0 00 0C */	li r6, 0xc
/* 80A62E68  38 E0 00 03 */	li r7, 3
/* 80A62E6C  4B 8F EE F5 */	bl __construct_array
/* 80A62E70  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80A62E74  3C 80 80 A6 */	lis r4, __ct__4cXyzFv@ha /* 0x80A630D0@ha */
/* 80A62E78  38 84 30 D0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A630D0@l */
/* 80A62E7C  3C A0 80 A6 */	lis r5, __dt__4cXyzFv@ha /* 0x80A629F8@ha */
/* 80A62E80  38 A5 29 F8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A629F8@l */
/* 80A62E84  38 C0 00 0C */	li r6, 0xc
/* 80A62E88  38 E0 00 03 */	li r7, 3
/* 80A62E8C  4B 8F EE D5 */	bl __construct_array
/* 80A62E90  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80A62E94  3C 80 80 A6 */	lis r4, __ct__4cXyzFv@ha /* 0x80A630D0@ha */
/* 80A62E98  38 84 30 D0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A630D0@l */
/* 80A62E9C  3C A0 80 A6 */	lis r5, __dt__4cXyzFv@ha /* 0x80A629F8@ha */
/* 80A62EA0  38 A5 29 F8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A629F8@l */
/* 80A62EA4  38 C0 00 0C */	li r6, 0xc
/* 80A62EA8  38 E0 00 03 */	li r7, 3
/* 80A62EAC  4B 8F EE B5 */	bl __construct_array
/* 80A62EB0  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80A62EB4  3C 80 80 A6 */	lis r4, __ct__4cXyzFv@ha /* 0x80A630D0@ha */
/* 80A62EB8  38 84 30 D0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A630D0@l */
/* 80A62EBC  3C A0 80 A6 */	lis r5, __dt__4cXyzFv@ha /* 0x80A629F8@ha */
/* 80A62EC0  38 A5 29 F8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A629F8@l */
/* 80A62EC4  38 C0 00 0C */	li r6, 0xc
/* 80A62EC8  38 E0 00 03 */	li r7, 3
/* 80A62ECC  4B 8F EE 95 */	bl __construct_array
/* 80A62ED0  7F 43 D3 78 */	mr r3, r26
/* 80A62ED4  4B 6E 3D C5 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A62ED8  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A62EDC  3C 80 80 A6 */	lis r4, __ct__5csXyzFv@ha /* 0x80A62FD0@ha */
/* 80A62EE0  38 84 2F D0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A62FD0@l */
/* 80A62EE4  3C A0 80 A6 */	lis r5, __dt__5csXyzFv@ha /* 0x80A62A34@ha */
/* 80A62EE8  38 A5 2A 34 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A62A34@l */
/* 80A62EEC  38 C0 00 06 */	li r6, 6
/* 80A62EF0  38 E0 00 02 */	li r7, 2
/* 80A62EF4  4B 8F EE 6D */	bl __construct_array
/* 80A62EF8  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A62EFC  38 80 00 00 */	li r4, 0
/* 80A62F00  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A62F04  7C A3 00 50 */	subf r5, r3, r0
/* 80A62F08  4B 5A 05 51 */	bl memset
/* 80A62F0C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A62F10  4B 6E 29 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A62F14  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A62F18  4B 6E 29 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A62F1C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A62F20  4B 6E 27 B5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A62F24  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A62F28  4B 6E 27 AD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A62F2C  7F 43 D3 78 */	mr r3, r26
/* 80A62F30  4B 6E 3D 69 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A62F34  38 A0 00 00 */	li r5, 0
/* 80A62F38  38 60 00 00 */	li r3, 0
/* 80A62F3C  7C A4 2B 78 */	mr r4, r5
/* 80A62F40  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 80A62F44  38 00 00 02 */	li r0, 2
/* 80A62F48  7C 09 03 A6 */	mtctr r0
lbl_80A62F4C:
/* 80A62F4C  7C DF 22 14 */	add r6, r31, r4
/* 80A62F50  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A62F54  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A62F58  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A62F5C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A62F60  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A62F64  38 63 00 04 */	addi r3, r3, 4
/* 80A62F68  38 84 00 06 */	addi r4, r4, 6
/* 80A62F6C  42 00 FF E0 */	bdnz lbl_80A62F4C
/* 80A62F70  38 00 00 00 */	li r0, 0
/* 80A62F74  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A62F78  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A62F7C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A62F80  38 00 FF FF */	li r0, -1
/* 80A62F84  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A62F88  38 00 00 01 */	li r0, 1
/* 80A62F8C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A62F90  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80A62F94  4B 80 49 C1 */	bl cM_rndF__Ff
/* 80A62F98  FC 00 08 1E */	fctiwz f0, f1
/* 80A62F9C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A62FA0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A62FA4  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A62FA8  C0 1E 00 A8 */	lfs f0, 0xa8(r30)
/* 80A62FAC  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A62FB0  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A62FB4  7F E3 FB 78 */	mr r3, r31
/* 80A62FB8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A62FBC  4B 8F F2 51 */	bl _restgpr_22
/* 80A62FC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A62FC4  7C 08 03 A6 */	mtlr r0
/* 80A62FC8  38 21 00 40 */	addi r1, r1, 0x40
/* 80A62FCC  4E 80 00 20 */	blr 
