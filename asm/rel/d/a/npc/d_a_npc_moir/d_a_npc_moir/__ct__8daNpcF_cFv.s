lbl_80A82D28:
/* 80A82D28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A82D2C  7C 08 02 A6 */	mflr r0
/* 80A82D30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A82D34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A82D38  93 C1 00 08 */	stw r30, 8(r1)
/* 80A82D3C  7C 7F 1B 78 */	mr r31, r3
/* 80A82D40  4B 59 5E 25 */	bl __ct__10fopAc_ac_cFv
/* 80A82D44  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80A82D48  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80A82D4C  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80A82D50  3B DF 05 6C */	addi r30, r31, 0x56c
/* 80A82D54  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A83CDC@ha */
/* 80A82D58  38 03 3C DC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A83CDC@l */
/* 80A82D5C  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80A82D60  7F C3 F3 78 */	mr r3, r30
/* 80A82D64  38 80 00 00 */	li r4, 0
/* 80A82D68  4B 8A 56 95 */	bl init__12J3DFrameCtrlFs
/* 80A82D6C  38 00 00 00 */	li r0, 0
/* 80A82D70  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80A82D74  3B DF 05 88 */	addi r30, r31, 0x588
/* 80A82D78  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A83CDC@ha */
/* 80A82D7C  38 03 3C DC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A83CDC@l */
/* 80A82D80  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80A82D84  7F C3 F3 78 */	mr r3, r30
/* 80A82D88  38 80 00 00 */	li r4, 0
/* 80A82D8C  4B 8A 56 71 */	bl init__12J3DFrameCtrlFs
/* 80A82D90  38 00 00 00 */	li r0, 0
/* 80A82D94  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A82D98  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 80A82D9C  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A83CDC@ha */
/* 80A82DA0  38 03 3C DC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A83CDC@l */
/* 80A82DA4  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80A82DA8  7F C3 F3 78 */	mr r3, r30
/* 80A82DAC  38 80 00 00 */	li r4, 0
/* 80A82DB0  4B 8A 56 4D */	bl init__12J3DFrameCtrlFs
/* 80A82DB4  38 00 00 00 */	li r0, 0
/* 80A82DB8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A82DBC  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 80A82DC0  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A83CDC@ha */
/* 80A82DC4  38 03 3C DC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A83CDC@l */
/* 80A82DC8  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80A82DCC  7F C3 F3 78 */	mr r3, r30
/* 80A82DD0  38 80 00 00 */	li r4, 0
/* 80A82DD4  4B 8A 56 29 */	bl init__12J3DFrameCtrlFs
/* 80A82DD8  38 00 00 00 */	li r0, 0
/* 80A82DDC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A82DE0  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 80A82DE4  7F C3 F3 78 */	mr r3, r30
/* 80A82DE8  4B 5F 32 B9 */	bl __ct__9dBgS_AcchFv
/* 80A82DEC  3C 60 80 A8 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A83CE8@ha */
/* 80A82DF0  38 63 3C E8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A83CE8@l */
/* 80A82DF4  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80A82DF8  38 03 00 0C */	addi r0, r3, 0xc
/* 80A82DFC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A82E00  38 03 00 18 */	addi r0, r3, 0x18
/* 80A82E04  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A82E08  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A82E0C  4B 5F 60 5D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80A82E10  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A82E14  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A82E18  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 80A82E1C  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 80A82E20  4B 60 09 41 */	bl __ct__10dCcD_GSttsFv
/* 80A82E24  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A82E28  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A82E2C  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 80A82E30  38 03 00 20 */	addi r0, r3, 0x20
/* 80A82E34  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 80A82E38  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80A82E3C  4B 5F 30 71 */	bl __ct__12dBgS_AcchCirFv
/* 80A82E40  3C 60 80 A8 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A83D30@ha */
/* 80A82E44  38 03 3D 30 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80A83D30@l */
/* 80A82E48  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80A82E4C  38 7F 08 24 */	addi r3, r31, 0x824
/* 80A82E50  4B 6C D8 61 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80A82E54  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80A82E58  3C 80 80 A8 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80A82950@ha */
/* 80A82E5C  38 84 29 50 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80A82950@l */
/* 80A82E60  3C A0 80 A8 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80A82908@ha */
/* 80A82E64  38 A5 29 08 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80A82908@l */
/* 80A82E68  38 C0 00 08 */	li r6, 8
/* 80A82E6C  38 E0 00 05 */	li r7, 5
/* 80A82E70  4B 8D EE F1 */	bl __construct_array
/* 80A82E74  38 7F 08 54 */	addi r3, r31, 0x854
/* 80A82E78  3C 80 80 A8 */	lis r4, __ct__4cXyzFv@ha /* 0x80A82AD8@ha */
/* 80A82E7C  38 84 2A D8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A82AD8@l */
/* 80A82E80  3C A0 80 A8 */	lis r5, __dt__4cXyzFv@ha /* 0x80A82A9C@ha */
/* 80A82E84  38 A5 2A 9C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A82A9C@l */
/* 80A82E88  38 C0 00 0C */	li r6, 0xc
/* 80A82E8C  38 E0 00 03 */	li r7, 3
/* 80A82E90  4B 8D EE D1 */	bl __construct_array
/* 80A82E94  38 7F 09 08 */	addi r3, r31, 0x908
/* 80A82E98  3C 80 80 A8 */	lis r4, __ct__5csXyzFv@ha /* 0x80A82A98@ha */
/* 80A82E9C  38 84 2A 98 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A82A98@l */
/* 80A82EA0  3C A0 80 A8 */	lis r5, __dt__5csXyzFv@ha /* 0x80A82A5C@ha */
/* 80A82EA4  38 A5 2A 5C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A82A5C@l */
/* 80A82EA8  38 C0 00 06 */	li r6, 6
/* 80A82EAC  38 E0 00 03 */	li r7, 3
/* 80A82EB0  4B 8D EE B1 */	bl __construct_array
/* 80A82EB4  38 7F 09 1A */	addi r3, r31, 0x91a
/* 80A82EB8  3C 80 80 A8 */	lis r4, __ct__5csXyzFv@ha /* 0x80A82A98@ha */
/* 80A82EBC  38 84 2A 98 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A82A98@l */
/* 80A82EC0  3C A0 80 A8 */	lis r5, __dt__5csXyzFv@ha /* 0x80A82A5C@ha */
/* 80A82EC4  38 A5 2A 5C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A82A5C@l */
/* 80A82EC8  38 C0 00 06 */	li r6, 6
/* 80A82ECC  38 E0 00 03 */	li r7, 3
/* 80A82ED0  4B 8D EE 91 */	bl __construct_array
/* 80A82ED4  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80A82ED8  4B 7C 70 29 */	bl __ct__10dMsgFlow_cFv
/* 80A82EDC  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 80A82EE0  4B 7E 4D 3D */	bl __ct__11cBgS_GndChkFv
/* 80A82EE4  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80A82EE8  4B 5F 46 95 */	bl __ct__11dBgS_GndChkFv
/* 80A82EEC  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 80A82EF0  4B 5F 4D 79 */	bl __ct__11dBgS_LinChkFv
/* 80A82EF4  7F E3 FB 78 */	mr r3, r31
/* 80A82EF8  4B 6C F9 D1 */	bl initialize__8daNpcF_cFv
/* 80A82EFC  7F E3 FB 78 */	mr r3, r31
/* 80A82F00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A82F04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A82F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A82F0C  7C 08 03 A6 */	mtlr r0
/* 80A82F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80A82F14  4E 80 00 20 */	blr 
