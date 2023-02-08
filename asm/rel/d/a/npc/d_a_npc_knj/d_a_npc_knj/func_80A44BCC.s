lbl_80A44BCC:
/* 80A44BCC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A44BD0  7C 08 02 A6 */	mflr r0
/* 80A44BD4  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A44BD8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A44BDC  4B 91 D5 E5 */	bl _savegpr_22
/* 80A44BE0  7C 7F 1B 78 */	mr r31, r3
/* 80A44BE4  7C 96 23 78 */	mr r22, r4
/* 80A44BE8  7C B7 2B 78 */	mr r23, r5
/* 80A44BEC  7C DA 33 78 */	mr r26, r6
/* 80A44BF0  7C FB 3B 78 */	mr r27, r7
/* 80A44BF4  7D 1C 43 78 */	mr r28, r8
/* 80A44BF8  7D 3D 4B 78 */	mr r29, r9
/* 80A44BFC  7D 58 53 78 */	mr r24, r10
/* 80A44C00  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80A44C04  3C 80 80 A4 */	lis r4, m__17daNpc_Knj_Param_c@ha /* 0x80A45510@ha */
/* 80A44C08  3B C4 55 10 */	addi r30, r4, m__17daNpc_Knj_Param_c@l /* 0x80A45510@l */
/* 80A44C0C  4B 5D 3F 59 */	bl __ct__10fopAc_ac_cFv
/* 80A44C10  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80A44C14  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80A44C18  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80A44C1C  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80A44C20  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80A44C24  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80A44C28  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80A44C2C  38 7F 05 80 */	addi r3, r31, 0x580
/* 80A44C30  4B 87 B7 99 */	bl __ct__10Z2CreatureFv
/* 80A44C34  3A DF 06 10 */	addi r22, r31, 0x610
/* 80A44C38  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A45740@ha */
/* 80A44C3C  38 03 57 40 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A45740@l */
/* 80A44C40  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80A44C44  7E C3 B3 78 */	mr r3, r22
/* 80A44C48  38 80 00 00 */	li r4, 0
/* 80A44C4C  4B 8E 37 B1 */	bl init__12J3DFrameCtrlFs
/* 80A44C50  38 00 00 00 */	li r0, 0
/* 80A44C54  90 16 00 18 */	stw r0, 0x18(r22)
/* 80A44C58  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80A44C5C  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A45740@ha */
/* 80A44C60  38 03 57 40 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A45740@l */
/* 80A44C64  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80A44C68  7E C3 B3 78 */	mr r3, r22
/* 80A44C6C  38 80 00 00 */	li r4, 0
/* 80A44C70  4B 8E 37 8D */	bl init__12J3DFrameCtrlFs
/* 80A44C74  38 00 00 00 */	li r0, 0
/* 80A44C78  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A44C7C  3A DF 06 44 */	addi r22, r31, 0x644
/* 80A44C80  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A45740@ha */
/* 80A44C84  38 03 57 40 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A45740@l */
/* 80A44C88  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80A44C8C  7E C3 B3 78 */	mr r3, r22
/* 80A44C90  38 80 00 00 */	li r4, 0
/* 80A44C94  4B 8E 37 69 */	bl init__12J3DFrameCtrlFs
/* 80A44C98  38 00 00 00 */	li r0, 0
/* 80A44C9C  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A44CA0  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80A44CA4  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A45740@ha */
/* 80A44CA8  38 03 57 40 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A45740@l */
/* 80A44CAC  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80A44CB0  7E C3 B3 78 */	mr r3, r22
/* 80A44CB4  38 80 00 00 */	li r4, 0
/* 80A44CB8  4B 8E 37 45 */	bl init__12J3DFrameCtrlFs
/* 80A44CBC  38 00 00 00 */	li r0, 0
/* 80A44CC0  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A44CC4  3A DF 06 74 */	addi r22, r31, 0x674
/* 80A44CC8  3C 60 80 A4 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A45740@ha */
/* 80A44CCC  38 03 57 40 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A45740@l */
/* 80A44CD0  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80A44CD4  7E C3 B3 78 */	mr r3, r22
/* 80A44CD8  38 80 00 00 */	li r4, 0
/* 80A44CDC  4B 8E 37 21 */	bl init__12J3DFrameCtrlFs
/* 80A44CE0  38 00 00 00 */	li r0, 0
/* 80A44CE4  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A44CE8  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80A44CEC  7E C3 B3 78 */	mr r3, r22
/* 80A44CF0  4B 63 13 B1 */	bl __ct__9dBgS_AcchFv
/* 80A44CF4  3C 60 80 A4 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A4574C@ha */
/* 80A44CF8  38 63 57 4C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A4574C@l */
/* 80A44CFC  90 76 00 10 */	stw r3, 0x10(r22)
/* 80A44D00  38 03 00 0C */	addi r0, r3, 0xc
/* 80A44D04  90 16 00 14 */	stw r0, 0x14(r22)
/* 80A44D08  38 03 00 18 */	addi r0, r3, 0x18
/* 80A44D0C  90 16 00 24 */	stw r0, 0x24(r22)
/* 80A44D10  38 76 00 14 */	addi r3, r22, 0x14
/* 80A44D14  4B 63 41 55 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80A44D18  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A44D1C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A44D20  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80A44D24  38 7F 08 80 */	addi r3, r31, 0x880
/* 80A44D28  4B 63 EA 39 */	bl __ct__10dCcD_GSttsFv
/* 80A44D2C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A44D30  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A44D34  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80A44D38  3B 23 00 20 */	addi r25, r3, 0x20
/* 80A44D3C  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80A44D40  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80A44D44  4B 63 11 69 */	bl __ct__12dBgS_AcchCirFv
/* 80A44D48  38 7F 09 30 */	addi r3, r31, 0x930
/* 80A44D4C  4B 82 2E D1 */	bl __ct__11cBgS_GndChkFv
/* 80A44D50  38 7F 09 74 */	addi r3, r31, 0x974
/* 80A44D54  4B 80 51 AD */	bl __ct__10dMsgFlow_cFv
/* 80A44D58  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A44D5C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A44D60  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A44D64  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80A44D68  4B 63 E9 F9 */	bl __ct__10dCcD_GSttsFv
/* 80A44D6C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A44D70  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A44D74  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80A44D78  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80A44D7C  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80A44D80  4B 63 27 FD */	bl __ct__11dBgS_GndChkFv
/* 80A44D84  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80A44D88  4B 63 2E E1 */	bl __ct__11dBgS_LinChkFv
/* 80A44D8C  3C 60 80 A4 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A45794@ha */
/* 80A44D90  38 03 57 94 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A45794@l */
/* 80A44D94  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80A44D98  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80A44D9C  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80A44DA0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A44DA4  4B 70 0A F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A44DA8  3C 60 80 A4 */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A45794@ha */
/* 80A44DAC  38 03 57 94 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A45794@l */
/* 80A44DB0  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80A44DB4  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80A44DB8  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80A44DBC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A44DC0  4B 70 0A D9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A44DC4  3C 60 80 A4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A457A0@ha */
/* 80A44DC8  38 03 57 A0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A457A0@l */
/* 80A44DCC  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80A44DD0  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A44DD4  4B 70 09 01 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A44DD8  3C 60 80 A4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A457A0@ha */
/* 80A44DDC  38 03 57 A0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A457A0@l */
/* 80A44DE0  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80A44DE4  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A44DE8  4B 70 08 ED */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A44DEC  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80A44DF0  3C 60 80 A4 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A457AC@ha */
/* 80A44DF4  38 03 57 AC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A457AC@l */
/* 80A44DF8  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80A44DFC  3C 60 80 A4 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A457A0@ha */
/* 80A44E00  38 03 57 A0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A457A0@l */
/* 80A44E04  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80A44E08  7F 43 D3 78 */	mr r3, r26
/* 80A44E0C  4B 70 08 C9 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A44E10  38 7A 00 30 */	addi r3, r26, 0x30
/* 80A44E14  3C 80 80 A4 */	lis r4, __ct__4cXyzFv@ha /* 0x80A450D0@ha */
/* 80A44E18  38 84 50 D0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A450D0@l */
/* 80A44E1C  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A44E20  38 A5 4B 54 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A44E24  38 C0 00 0C */	li r6, 0xc
/* 80A44E28  38 E0 00 03 */	li r7, 3
/* 80A44E2C  4B 91 CF 35 */	bl __construct_array
/* 80A44E30  38 7A 00 54 */	addi r3, r26, 0x54
/* 80A44E34  3C 80 80 A4 */	lis r4, __ct__4cXyzFv@ha /* 0x80A450D0@ha */
/* 80A44E38  38 84 50 D0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A450D0@l */
/* 80A44E3C  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A44E40  38 A5 4B 54 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A44E44  38 C0 00 0C */	li r6, 0xc
/* 80A44E48  38 E0 00 03 */	li r7, 3
/* 80A44E4C  4B 91 CF 15 */	bl __construct_array
/* 80A44E50  38 7A 00 78 */	addi r3, r26, 0x78
/* 80A44E54  3C 80 80 A4 */	lis r4, __ct__4cXyzFv@ha /* 0x80A450D0@ha */
/* 80A44E58  38 84 50 D0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A450D0@l */
/* 80A44E5C  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A44E60  38 A5 4B 54 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A44E64  38 C0 00 0C */	li r6, 0xc
/* 80A44E68  38 E0 00 03 */	li r7, 3
/* 80A44E6C  4B 91 CE F5 */	bl __construct_array
/* 80A44E70  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80A44E74  3C 80 80 A4 */	lis r4, __ct__4cXyzFv@ha /* 0x80A450D0@ha */
/* 80A44E78  38 84 50 D0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A450D0@l */
/* 80A44E7C  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A44E80  38 A5 4B 54 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A44E84  38 C0 00 0C */	li r6, 0xc
/* 80A44E88  38 E0 00 03 */	li r7, 3
/* 80A44E8C  4B 91 CE D5 */	bl __construct_array
/* 80A44E90  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80A44E94  3C 80 80 A4 */	lis r4, __ct__4cXyzFv@ha /* 0x80A450D0@ha */
/* 80A44E98  38 84 50 D0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A450D0@l */
/* 80A44E9C  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A44EA0  38 A5 4B 54 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A44EA4  38 C0 00 0C */	li r6, 0xc
/* 80A44EA8  38 E0 00 03 */	li r7, 3
/* 80A44EAC  4B 91 CE B5 */	bl __construct_array
/* 80A44EB0  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80A44EB4  3C 80 80 A4 */	lis r4, __ct__4cXyzFv@ha /* 0x80A450D0@ha */
/* 80A44EB8  38 84 50 D0 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A450D0@l */
/* 80A44EBC  3C A0 80 A4 */	lis r5, __dt__4cXyzFv@ha /* 0x80A44B54@ha */
/* 80A44EC0  38 A5 4B 54 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A44B54@l */
/* 80A44EC4  38 C0 00 0C */	li r6, 0xc
/* 80A44EC8  38 E0 00 03 */	li r7, 3
/* 80A44ECC  4B 91 CE 95 */	bl __construct_array
/* 80A44ED0  7F 43 D3 78 */	mr r3, r26
/* 80A44ED4  4B 70 1D C5 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A44ED8  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80A44EDC  3C 80 80 A4 */	lis r4, __ct__5csXyzFv@ha /* 0x80A44FD0@ha */
/* 80A44EE0  38 84 4F D0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A44FD0@l */
/* 80A44EE4  3C A0 80 A4 */	lis r5, __dt__5csXyzFv@ha /* 0x80A44B90@ha */
/* 80A44EE8  38 A5 4B 90 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A44B90@l */
/* 80A44EEC  38 C0 00 06 */	li r6, 6
/* 80A44EF0  38 E0 00 02 */	li r7, 2
/* 80A44EF4  4B 91 CE 6D */	bl __construct_array
/* 80A44EF8  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80A44EFC  38 80 00 00 */	li r4, 0
/* 80A44F00  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80A44F04  7C A3 00 50 */	subf r5, r3, r0
/* 80A44F08  4B 5B E5 51 */	bl memset
/* 80A44F0C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80A44F10  4B 70 09 89 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A44F14  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80A44F18  4B 70 09 81 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80A44F1C  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80A44F20  4B 70 07 B5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A44F24  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80A44F28  4B 70 07 AD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80A44F2C  7F 43 D3 78 */	mr r3, r26
/* 80A44F30  4B 70 1D 69 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80A44F34  38 A0 00 00 */	li r5, 0
/* 80A44F38  38 60 00 00 */	li r3, 0
/* 80A44F3C  7C A4 2B 78 */	mr r4, r5
/* 80A44F40  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80A44F44  38 00 00 02 */	li r0, 2
/* 80A44F48  7C 09 03 A6 */	mtctr r0
lbl_80A44F4C:
/* 80A44F4C  7C DF 22 14 */	add r6, r31, r4
/* 80A44F50  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80A44F54  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80A44F58  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80A44F5C  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80A44F60  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80A44F64  38 63 00 04 */	addi r3, r3, 4
/* 80A44F68  38 84 00 06 */	addi r4, r4, 6
/* 80A44F6C  42 00 FF E0 */	bdnz lbl_80A44F4C
/* 80A44F70  38 00 00 00 */	li r0, 0
/* 80A44F74  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80A44F78  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80A44F7C  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80A44F80  38 00 FF FF */	li r0, -1
/* 80A44F84  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80A44F88  38 00 00 01 */	li r0, 1
/* 80A44F8C  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80A44F90  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80A44F94  4B 82 29 C1 */	bl cM_rndF__Ff
/* 80A44F98  FC 00 08 1E */	fctiwz f0, f1
/* 80A44F9C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80A44FA0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A44FA4  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80A44FA8  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 80A44FAC  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80A44FB0  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80A44FB4  7F E3 FB 78 */	mr r3, r31
/* 80A44FB8  39 61 00 40 */	addi r11, r1, 0x40
/* 80A44FBC  4B 91 D2 51 */	bl _restgpr_22
/* 80A44FC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A44FC4  7C 08 03 A6 */	mtlr r0
/* 80A44FC8  38 21 00 40 */	addi r1, r1, 0x40
/* 80A44FCC  4E 80 00 20 */	blr 
