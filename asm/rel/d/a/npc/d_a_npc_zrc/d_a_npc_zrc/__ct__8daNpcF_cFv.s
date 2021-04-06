lbl_80B92D44:
/* 80B92D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B92D48  7C 08 02 A6 */	mflr r0
/* 80B92D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B92D50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B92D54  93 C1 00 08 */	stw r30, 8(r1)
/* 80B92D58  7C 7F 1B 78 */	mr r31, r3
/* 80B92D5C  4B 48 5E 09 */	bl __ct__10fopAc_ac_cFv
/* 80B92D60  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80B92D64  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80B92D68  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80B92D6C  3B DF 05 6C */	addi r30, r31, 0x56c
/* 80B92D70  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B93B78@ha */
/* 80B92D74  38 03 3B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B93B78@l */
/* 80B92D78  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80B92D7C  7F C3 F3 78 */	mr r3, r30
/* 80B92D80  38 80 00 00 */	li r4, 0
/* 80B92D84  4B 79 56 79 */	bl init__12J3DFrameCtrlFs
/* 80B92D88  38 00 00 00 */	li r0, 0
/* 80B92D8C  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80B92D90  3B DF 05 88 */	addi r30, r31, 0x588
/* 80B92D94  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B93B78@ha */
/* 80B92D98  38 03 3B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B93B78@l */
/* 80B92D9C  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80B92DA0  7F C3 F3 78 */	mr r3, r30
/* 80B92DA4  38 80 00 00 */	li r4, 0
/* 80B92DA8  4B 79 56 55 */	bl init__12J3DFrameCtrlFs
/* 80B92DAC  38 00 00 00 */	li r0, 0
/* 80B92DB0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B92DB4  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 80B92DB8  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B93B78@ha */
/* 80B92DBC  38 03 3B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B93B78@l */
/* 80B92DC0  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80B92DC4  7F C3 F3 78 */	mr r3, r30
/* 80B92DC8  38 80 00 00 */	li r4, 0
/* 80B92DCC  4B 79 56 31 */	bl init__12J3DFrameCtrlFs
/* 80B92DD0  38 00 00 00 */	li r0, 0
/* 80B92DD4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B92DD8  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 80B92DDC  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B93B78@ha */
/* 80B92DE0  38 03 3B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B93B78@l */
/* 80B92DE4  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80B92DE8  7F C3 F3 78 */	mr r3, r30
/* 80B92DEC  38 80 00 00 */	li r4, 0
/* 80B92DF0  4B 79 56 0D */	bl init__12J3DFrameCtrlFs
/* 80B92DF4  38 00 00 00 */	li r0, 0
/* 80B92DF8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B92DFC  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 80B92E00  7F C3 F3 78 */	mr r3, r30
/* 80B92E04  4B 4E 32 9D */	bl __ct__9dBgS_AcchFv
/* 80B92E08  3C 60 80 B9 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B93B84@ha */
/* 80B92E0C  38 63 3B 84 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B93B84@l */
/* 80B92E10  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80B92E14  38 03 00 0C */	addi r0, r3, 0xc
/* 80B92E18  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B92E1C  38 03 00 18 */	addi r0, r3, 0x18
/* 80B92E20  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B92E24  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B92E28  4B 4E 60 41 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80B92E2C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B92E30  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B92E34  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 80B92E38  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 80B92E3C  4B 4F 09 25 */	bl __ct__10dCcD_GSttsFv
/* 80B92E40  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B92E44  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B92E48  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 80B92E4C  38 03 00 20 */	addi r0, r3, 0x20
/* 80B92E50  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 80B92E54  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80B92E58  4B 4E 30 55 */	bl __ct__12dBgS_AcchCirFv
/* 80B92E5C  3C 60 80 B9 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80B93BCC@ha */
/* 80B92E60  38 03 3B CC */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80B93BCC@l */
/* 80B92E64  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80B92E68  38 7F 08 24 */	addi r3, r31, 0x824
/* 80B92E6C  4B 5B D8 45 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80B92E70  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80B92E74  3C 80 80 B9 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80B9296C@ha */
/* 80B92E78  38 84 29 6C */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80B9296C@l */
/* 80B92E7C  3C A0 80 B9 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80B92924@ha */
/* 80B92E80  38 A5 29 24 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80B92924@l */
/* 80B92E84  38 C0 00 08 */	li r6, 8
/* 80B92E88  38 E0 00 05 */	li r7, 5
/* 80B92E8C  4B 7C EE D5 */	bl __construct_array
/* 80B92E90  38 7F 08 54 */	addi r3, r31, 0x854
/* 80B92E94  3C 80 80 B9 */	lis r4, __ct__4cXyzFv@ha /* 0x80B92AF4@ha */
/* 80B92E98  38 84 2A F4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B92AF4@l */
/* 80B92E9C  3C A0 80 B9 */	lis r5, __dt__4cXyzFv@ha /* 0x80B92AB8@ha */
/* 80B92EA0  38 A5 2A B8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B92AB8@l */
/* 80B92EA4  38 C0 00 0C */	li r6, 0xc
/* 80B92EA8  38 E0 00 03 */	li r7, 3
/* 80B92EAC  4B 7C EE B5 */	bl __construct_array
/* 80B92EB0  38 7F 09 08 */	addi r3, r31, 0x908
/* 80B92EB4  3C 80 80 B9 */	lis r4, __ct__5csXyzFv@ha /* 0x80B92AB4@ha */
/* 80B92EB8  38 84 2A B4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B92AB4@l */
/* 80B92EBC  3C A0 80 B9 */	lis r5, __dt__5csXyzFv@ha /* 0x80B92A78@ha */
/* 80B92EC0  38 A5 2A 78 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B92A78@l */
/* 80B92EC4  38 C0 00 06 */	li r6, 6
/* 80B92EC8  38 E0 00 03 */	li r7, 3
/* 80B92ECC  4B 7C EE 95 */	bl __construct_array
/* 80B92ED0  38 7F 09 1A */	addi r3, r31, 0x91a
/* 80B92ED4  3C 80 80 B9 */	lis r4, __ct__5csXyzFv@ha /* 0x80B92AB4@ha */
/* 80B92ED8  38 84 2A B4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B92AB4@l */
/* 80B92EDC  3C A0 80 B9 */	lis r5, __dt__5csXyzFv@ha /* 0x80B92A78@ha */
/* 80B92EE0  38 A5 2A 78 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B92A78@l */
/* 80B92EE4  38 C0 00 06 */	li r6, 6
/* 80B92EE8  38 E0 00 03 */	li r7, 3
/* 80B92EEC  4B 7C EE 75 */	bl __construct_array
/* 80B92EF0  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80B92EF4  4B 6B 70 0D */	bl __ct__10dMsgFlow_cFv
/* 80B92EF8  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 80B92EFC  4B 6D 4D 21 */	bl __ct__11cBgS_GndChkFv
/* 80B92F00  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80B92F04  4B 4E 46 79 */	bl __ct__11dBgS_GndChkFv
/* 80B92F08  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 80B92F0C  4B 4E 4D 5D */	bl __ct__11dBgS_LinChkFv
/* 80B92F10  7F E3 FB 78 */	mr r3, r31
/* 80B92F14  4B 5B F9 B5 */	bl initialize__8daNpcF_cFv
/* 80B92F18  7F E3 FB 78 */	mr r3, r31
/* 80B92F1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B92F20  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B92F24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B92F28  7C 08 03 A6 */	mtlr r0
/* 80B92F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B92F30  4E 80 00 20 */	blr 
