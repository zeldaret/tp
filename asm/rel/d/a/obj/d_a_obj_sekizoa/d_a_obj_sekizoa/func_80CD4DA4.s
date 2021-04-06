lbl_80CD4DA4:
/* 80CD4DA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80CD4DA8  7C 08 02 A6 */	mflr r0
/* 80CD4DAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 80CD4DB0  39 61 00 40 */	addi r11, r1, 0x40
/* 80CD4DB4  4B 68 D4 0D */	bl _savegpr_22
/* 80CD4DB8  7C 7F 1B 78 */	mr r31, r3
/* 80CD4DBC  7C 96 23 78 */	mr r22, r4
/* 80CD4DC0  7C B7 2B 78 */	mr r23, r5
/* 80CD4DC4  7C DA 33 78 */	mr r26, r6
/* 80CD4DC8  7C FB 3B 78 */	mr r27, r7
/* 80CD4DCC  7D 1C 43 78 */	mr r28, r8
/* 80CD4DD0  7D 3D 4B 78 */	mr r29, r9
/* 80CD4DD4  7D 58 53 78 */	mr r24, r10
/* 80CD4DD8  83 21 00 48 */	lwz r25, 0x48(r1)
/* 80CD4DDC  3C 80 80 CD */	lis r4, m__21daObj_Sekizoa_Param_c@ha /* 0x80CD5CFC@ha */
/* 80CD4DE0  3B C4 5C FC */	addi r30, r4, m__21daObj_Sekizoa_Param_c@l /* 0x80CD5CFC@l */
/* 80CD4DE4  4B 34 3D 81 */	bl __ct__10fopAc_ac_cFv
/* 80CD4DE8  3C 60 80 3B */	lis r3, __vt__8daNpcT_c@ha /* 0x803B3A78@ha */
/* 80CD4DEC  38 03 3A 78 */	addi r0, r3, __vt__8daNpcT_c@l /* 0x803B3A78@l */
/* 80CD4DF0  90 1F 0E 3C */	stw r0, 0xe3c(r31)
/* 80CD4DF4  92 DF 05 68 */	stw r22, 0x568(r31)
/* 80CD4DF8  92 FF 05 6C */	stw r23, 0x56c(r31)
/* 80CD4DFC  93 1F 05 70 */	stw r24, 0x570(r31)
/* 80CD4E00  93 3F 05 74 */	stw r25, 0x574(r31)
/* 80CD4E04  38 7F 05 80 */	addi r3, r31, 0x580
/* 80CD4E08  4B 5E B5 C1 */	bl __ct__10Z2CreatureFv
/* 80CD4E0C  3A DF 06 10 */	addi r22, r31, 0x610
/* 80CD4E10  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CD676C@ha */
/* 80CD4E14  38 03 67 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CD676C@l */
/* 80CD4E18  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80CD4E1C  7E C3 B3 78 */	mr r3, r22
/* 80CD4E20  38 80 00 00 */	li r4, 0
/* 80CD4E24  4B 65 35 D9 */	bl init__12J3DFrameCtrlFs
/* 80CD4E28  38 00 00 00 */	li r0, 0
/* 80CD4E2C  90 16 00 18 */	stw r0, 0x18(r22)
/* 80CD4E30  3A DF 06 2C */	addi r22, r31, 0x62c
/* 80CD4E34  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CD676C@ha */
/* 80CD4E38  38 03 67 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CD676C@l */
/* 80CD4E3C  90 1F 06 2C */	stw r0, 0x62c(r31)
/* 80CD4E40  7E C3 B3 78 */	mr r3, r22
/* 80CD4E44  38 80 00 00 */	li r4, 0
/* 80CD4E48  4B 65 35 B5 */	bl init__12J3DFrameCtrlFs
/* 80CD4E4C  38 00 00 00 */	li r0, 0
/* 80CD4E50  90 16 00 14 */	stw r0, 0x14(r22)
/* 80CD4E54  3A DF 06 44 */	addi r22, r31, 0x644
/* 80CD4E58  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CD676C@ha */
/* 80CD4E5C  38 03 67 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CD676C@l */
/* 80CD4E60  90 1F 06 44 */	stw r0, 0x644(r31)
/* 80CD4E64  7E C3 B3 78 */	mr r3, r22
/* 80CD4E68  38 80 00 00 */	li r4, 0
/* 80CD4E6C  4B 65 35 91 */	bl init__12J3DFrameCtrlFs
/* 80CD4E70  38 00 00 00 */	li r0, 0
/* 80CD4E74  90 16 00 14 */	stw r0, 0x14(r22)
/* 80CD4E78  3A DF 06 5C */	addi r22, r31, 0x65c
/* 80CD4E7C  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CD676C@ha */
/* 80CD4E80  38 03 67 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CD676C@l */
/* 80CD4E84  90 1F 06 5C */	stw r0, 0x65c(r31)
/* 80CD4E88  7E C3 B3 78 */	mr r3, r22
/* 80CD4E8C  38 80 00 00 */	li r4, 0
/* 80CD4E90  4B 65 35 6D */	bl init__12J3DFrameCtrlFs
/* 80CD4E94  38 00 00 00 */	li r0, 0
/* 80CD4E98  90 16 00 14 */	stw r0, 0x14(r22)
/* 80CD4E9C  3A DF 06 74 */	addi r22, r31, 0x674
/* 80CD4EA0  3C 60 80 CD */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80CD676C@ha */
/* 80CD4EA4  38 03 67 6C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80CD676C@l */
/* 80CD4EA8  90 1F 06 74 */	stw r0, 0x674(r31)
/* 80CD4EAC  7E C3 B3 78 */	mr r3, r22
/* 80CD4EB0  38 80 00 00 */	li r4, 0
/* 80CD4EB4  4B 65 35 49 */	bl init__12J3DFrameCtrlFs
/* 80CD4EB8  38 00 00 00 */	li r0, 0
/* 80CD4EBC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80CD4EC0  3A DF 06 8C */	addi r22, r31, 0x68c
/* 80CD4EC4  7E C3 B3 78 */	mr r3, r22
/* 80CD4EC8  4B 3A 11 D9 */	bl __ct__9dBgS_AcchFv
/* 80CD4ECC  3C 60 80 CD */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80CD6778@ha */
/* 80CD4ED0  38 63 67 78 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80CD6778@l */
/* 80CD4ED4  90 76 00 10 */	stw r3, 0x10(r22)
/* 80CD4ED8  38 03 00 0C */	addi r0, r3, 0xc
/* 80CD4EDC  90 16 00 14 */	stw r0, 0x14(r22)
/* 80CD4EE0  38 03 00 18 */	addi r0, r3, 0x18
/* 80CD4EE4  90 16 00 24 */	stw r0, 0x24(r22)
/* 80CD4EE8  38 76 00 14 */	addi r3, r22, 0x14
/* 80CD4EEC  4B 3A 3F 7D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80CD4EF0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CD4EF4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CD4EF8  90 1F 08 7C */	stw r0, 0x87c(r31)
/* 80CD4EFC  38 7F 08 80 */	addi r3, r31, 0x880
/* 80CD4F00  4B 3A E8 61 */	bl __ct__10dCcD_GSttsFv
/* 80CD4F04  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CD4F08  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CD4F0C  90 7F 08 7C */	stw r3, 0x87c(r31)
/* 80CD4F10  3B 23 00 20 */	addi r25, r3, 0x20
/* 80CD4F14  93 3F 08 80 */	stw r25, 0x880(r31)
/* 80CD4F18  38 7F 08 A0 */	addi r3, r31, 0x8a0
/* 80CD4F1C  4B 3A 0F 91 */	bl __ct__12dBgS_AcchCirFv
/* 80CD4F20  38 7F 09 30 */	addi r3, r31, 0x930
/* 80CD4F24  4B 59 2C F9 */	bl __ct__11cBgS_GndChkFv
/* 80CD4F28  38 7F 09 74 */	addi r3, r31, 0x974
/* 80CD4F2C  4B 57 4F D5 */	bl __ct__10dMsgFlow_cFv
/* 80CD4F30  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80CD4F34  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80CD4F38  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80CD4F3C  38 7F 0A 5C */	addi r3, r31, 0xa5c
/* 80CD4F40  4B 3A E8 21 */	bl __ct__10dCcD_GSttsFv
/* 80CD4F44  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80CD4F48  38 03 C2 E4 */	addi r0, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80CD4F4C  90 1F 0A 58 */	stw r0, 0xa58(r31)
/* 80CD4F50  93 3F 0A 5C */	stw r25, 0xa5c(r31)
/* 80CD4F54  38 7F 0A 8C */	addi r3, r31, 0xa8c
/* 80CD4F58  4B 3A 26 25 */	bl __ct__11dBgS_GndChkFv
/* 80CD4F5C  38 7F 0A E0 */	addi r3, r31, 0xae0
/* 80CD4F60  4B 3A 2D 09 */	bl __ct__11dBgS_LinChkFv
/* 80CD4F64  3C 60 80 CD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80CD67C0@ha */
/* 80CD4F68  38 03 67 C0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80CD67C0@l */
/* 80CD4F6C  90 1F 0B 70 */	stw r0, 0xb70(r31)
/* 80CD4F70  93 5F 0B 50 */	stw r26, 0xb50(r31)
/* 80CD4F74  93 7F 0B 54 */	stw r27, 0xb54(r31)
/* 80CD4F78  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80CD4F7C  4B 47 09 1D */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD4F80  3C 60 80 CD */	lis r3, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80CD67C0@ha */
/* 80CD4F84  38 03 67 C0 */	addi r0, r3, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80CD67C0@l */
/* 80CD4F88  90 1F 0B 94 */	stw r0, 0xb94(r31)
/* 80CD4F8C  93 9F 0B 74 */	stw r28, 0xb74(r31)
/* 80CD4F90  93 BF 0B 78 */	stw r29, 0xb78(r31)
/* 80CD4F94  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD4F98  4B 47 09 01 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD4F9C  3C 60 80 CD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80CD67CC@ha */
/* 80CD4FA0  38 03 67 CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80CD67CC@l */
/* 80CD4FA4  90 1F 0B 9C */	stw r0, 0xb9c(r31)
/* 80CD4FA8  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80CD4FAC  4B 47 07 29 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80CD4FB0  3C 60 80 CD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80CD67CC@ha */
/* 80CD4FB4  38 03 67 CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80CD67CC@l */
/* 80CD4FB8  90 1F 0B A4 */	stw r0, 0xba4(r31)
/* 80CD4FBC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80CD4FC0  4B 47 07 15 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80CD4FC4  3B 5F 0B A8 */	addi r26, r31, 0xba8
/* 80CD4FC8  3C 60 80 CD */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80CD67D8@ha */
/* 80CD4FCC  38 03 67 D8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80CD67D8@l */
/* 80CD4FD0  90 1F 0D 04 */	stw r0, 0xd04(r31)
/* 80CD4FD4  3C 60 80 CD */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80CD67CC@ha */
/* 80CD4FD8  38 03 67 CC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80CD67CC@l */
/* 80CD4FDC  90 1F 0B AC */	stw r0, 0xbac(r31)
/* 80CD4FE0  7F 43 D3 78 */	mr r3, r26
/* 80CD4FE4  4B 47 06 F1 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80CD4FE8  38 7A 00 30 */	addi r3, r26, 0x30
/* 80CD4FEC  3C 80 80 CD */	lis r4, __ct__4cXyzFv@ha /* 0x80CD52A8@ha */
/* 80CD4FF0  38 84 52 A8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80CD52A8@l */
/* 80CD4FF4  3C A0 80 CD */	lis r5, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD4FF8  38 A5 4B D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD4FFC  38 C0 00 0C */	li r6, 0xc
/* 80CD5000  38 E0 00 03 */	li r7, 3
/* 80CD5004  4B 68 CD 5D */	bl __construct_array
/* 80CD5008  38 7A 00 54 */	addi r3, r26, 0x54
/* 80CD500C  3C 80 80 CD */	lis r4, __ct__4cXyzFv@ha /* 0x80CD52A8@ha */
/* 80CD5010  38 84 52 A8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80CD52A8@l */
/* 80CD5014  3C A0 80 CD */	lis r5, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD5018  38 A5 4B D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD501C  38 C0 00 0C */	li r6, 0xc
/* 80CD5020  38 E0 00 03 */	li r7, 3
/* 80CD5024  4B 68 CD 3D */	bl __construct_array
/* 80CD5028  38 7A 00 78 */	addi r3, r26, 0x78
/* 80CD502C  3C 80 80 CD */	lis r4, __ct__4cXyzFv@ha /* 0x80CD52A8@ha */
/* 80CD5030  38 84 52 A8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80CD52A8@l */
/* 80CD5034  3C A0 80 CD */	lis r5, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD5038  38 A5 4B D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD503C  38 C0 00 0C */	li r6, 0xc
/* 80CD5040  38 E0 00 03 */	li r7, 3
/* 80CD5044  4B 68 CD 1D */	bl __construct_array
/* 80CD5048  38 7A 00 9C */	addi r3, r26, 0x9c
/* 80CD504C  3C 80 80 CD */	lis r4, __ct__4cXyzFv@ha /* 0x80CD52A8@ha */
/* 80CD5050  38 84 52 A8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80CD52A8@l */
/* 80CD5054  3C A0 80 CD */	lis r5, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD5058  38 A5 4B D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD505C  38 C0 00 0C */	li r6, 0xc
/* 80CD5060  38 E0 00 03 */	li r7, 3
/* 80CD5064  4B 68 CC FD */	bl __construct_array
/* 80CD5068  38 7A 00 C0 */	addi r3, r26, 0xc0
/* 80CD506C  3C 80 80 CD */	lis r4, __ct__4cXyzFv@ha /* 0x80CD52A8@ha */
/* 80CD5070  38 84 52 A8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80CD52A8@l */
/* 80CD5074  3C A0 80 CD */	lis r5, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD5078  38 A5 4B D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD507C  38 C0 00 0C */	li r6, 0xc
/* 80CD5080  38 E0 00 03 */	li r7, 3
/* 80CD5084  4B 68 CC DD */	bl __construct_array
/* 80CD5088  38 7A 00 E4 */	addi r3, r26, 0xe4
/* 80CD508C  3C 80 80 CD */	lis r4, __ct__4cXyzFv@ha /* 0x80CD52A8@ha */
/* 80CD5090  38 84 52 A8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80CD52A8@l */
/* 80CD5094  3C A0 80 CD */	lis r5, __dt__4cXyzFv@ha /* 0x80CD4BD0@ha */
/* 80CD5098  38 A5 4B D0 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80CD4BD0@l */
/* 80CD509C  38 C0 00 0C */	li r6, 0xc
/* 80CD50A0  38 E0 00 03 */	li r7, 3
/* 80CD50A4  4B 68 CC BD */	bl __construct_array
/* 80CD50A8  7F 43 D3 78 */	mr r3, r26
/* 80CD50AC  4B 47 1B ED */	bl initialize__15daNpcT_JntAnm_cFv
/* 80CD50B0  38 7F 0D 08 */	addi r3, r31, 0xd08
/* 80CD50B4  3C 80 80 CD */	lis r4, __ct__5csXyzFv@ha /* 0x80CD51A8@ha */
/* 80CD50B8  38 84 51 A8 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80CD51A8@l */
/* 80CD50BC  3C A0 80 CD */	lis r5, __dt__5csXyzFv@ha /* 0x80CD4C0C@ha */
/* 80CD50C0  38 A5 4C 0C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80CD4C0C@l */
/* 80CD50C4  38 C0 00 06 */	li r6, 6
/* 80CD50C8  38 E0 00 02 */	li r7, 2
/* 80CD50CC  4B 68 CC 95 */	bl __construct_array
/* 80CD50D0  38 7F 0D 24 */	addi r3, r31, 0xd24
/* 80CD50D4  38 80 00 00 */	li r4, 0
/* 80CD50D8  38 1F 0E 38 */	addi r0, r31, 0xe38
/* 80CD50DC  7C A3 00 50 */	subf r5, r3, r0
/* 80CD50E0  4B 32 E3 79 */	bl memset
/* 80CD50E4  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80CD50E8  4B 47 07 B1 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD50EC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80CD50F0  4B 47 07 A9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80CD50F4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80CD50F8  4B 47 05 DD */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80CD50FC  38 7F 0B A0 */	addi r3, r31, 0xba0
/* 80CD5100  4B 47 05 D5 */	bl initialize__18daNpcT_ActorMngr_cFv
/* 80CD5104  7F 43 D3 78 */	mr r3, r26
/* 80CD5108  4B 47 1B 91 */	bl initialize__15daNpcT_JntAnm_cFv
/* 80CD510C  38 A0 00 00 */	li r5, 0
/* 80CD5110  38 60 00 00 */	li r3, 0
/* 80CD5114  7C A4 2B 78 */	mr r4, r5
/* 80CD5118  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 80CD511C  38 00 00 02 */	li r0, 2
/* 80CD5120  7C 09 03 A6 */	mtctr r0
lbl_80CD5124:
/* 80CD5124  7C DF 22 14 */	add r6, r31, r4
/* 80CD5128  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 80CD512C  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 80CD5130  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 80CD5134  38 03 0D 14 */	addi r0, r3, 0xd14
/* 80CD5138  7C 1F 05 2E */	stfsx f0, r31, r0
/* 80CD513C  38 63 00 04 */	addi r3, r3, 4
/* 80CD5140  38 84 00 06 */	addi r4, r4, 6
/* 80CD5144  42 00 FF E0 */	bdnz lbl_80CD5124
/* 80CD5148  38 00 00 00 */	li r0, 0
/* 80CD514C  B0 1F 0D 1C */	sth r0, 0xd1c(r31)
/* 80CD5150  B0 1F 0D 1E */	sth r0, 0xd1e(r31)
/* 80CD5154  98 1F 0D 20 */	stb r0, 0xd20(r31)
/* 80CD5158  38 00 FF FF */	li r0, -1
/* 80CD515C  90 1F 0D 90 */	stw r0, 0xd90(r31)
/* 80CD5160  38 00 00 01 */	li r0, 1
/* 80CD5164  98 1F 0E 26 */	stb r0, 0xe26(r31)
/* 80CD5168  C0 3E 00 C4 */	lfs f1, 0xc4(r30)
/* 80CD516C  4B 59 27 E9 */	bl cM_rndF__Ff
/* 80CD5170  FC 00 08 1E */	fctiwz f0, f1
/* 80CD5174  D8 01 00 08 */	stfd f0, 8(r1)
/* 80CD5178  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80CD517C  B0 1F 0E 1A */	sth r0, 0xe1a(r31)
/* 80CD5180  C0 1E 00 C8 */	lfs f0, 0xc8(r30)
/* 80CD5184  D0 1F 0D E0 */	stfs f0, 0xde0(r31)
/* 80CD5188  D0 1F 0D E4 */	stfs f0, 0xde4(r31)
/* 80CD518C  7F E3 FB 78 */	mr r3, r31
/* 80CD5190  39 61 00 40 */	addi r11, r1, 0x40
/* 80CD5194  4B 68 D0 79 */	bl _restgpr_22
/* 80CD5198  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80CD519C  7C 08 03 A6 */	mtlr r0
/* 80CD51A0  38 21 00 40 */	addi r1, r1, 0x40
/* 80CD51A4  4E 80 00 20 */	blr 
