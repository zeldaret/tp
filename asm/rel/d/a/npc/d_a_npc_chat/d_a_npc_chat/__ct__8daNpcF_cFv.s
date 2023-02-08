lbl_80986074:
/* 80986074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80986078  7C 08 02 A6 */	mflr r0
/* 8098607C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80986080  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80986084  93 C1 00 08 */	stw r30, 8(r1)
/* 80986088  7C 7F 1B 78 */	mr r31, r3
/* 8098608C  4B 69 2A D9 */	bl __ct__10fopAc_ac_cFv
/* 80986090  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80986094  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80986098  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 8098609C  3B DF 05 6C */	addi r30, r31, 0x56c
/* 809860A0  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8098B9E4@ha */
/* 809860A4  38 03 B9 E4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8098B9E4@l */
/* 809860A8  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 809860AC  7F C3 F3 78 */	mr r3, r30
/* 809860B0  38 80 00 00 */	li r4, 0
/* 809860B4  4B 9A 23 49 */	bl init__12J3DFrameCtrlFs
/* 809860B8  38 00 00 00 */	li r0, 0
/* 809860BC  90 1E 00 18 */	stw r0, 0x18(r30)
/* 809860C0  3B DF 05 88 */	addi r30, r31, 0x588
/* 809860C4  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8098B9E4@ha */
/* 809860C8  38 03 B9 E4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8098B9E4@l */
/* 809860CC  90 1F 05 88 */	stw r0, 0x588(r31)
/* 809860D0  7F C3 F3 78 */	mr r3, r30
/* 809860D4  38 80 00 00 */	li r4, 0
/* 809860D8  4B 9A 23 25 */	bl init__12J3DFrameCtrlFs
/* 809860DC  38 00 00 00 */	li r0, 0
/* 809860E0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809860E4  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 809860E8  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8098B9E4@ha */
/* 809860EC  38 03 B9 E4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8098B9E4@l */
/* 809860F0  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 809860F4  7F C3 F3 78 */	mr r3, r30
/* 809860F8  38 80 00 00 */	li r4, 0
/* 809860FC  4B 9A 23 01 */	bl init__12J3DFrameCtrlFs
/* 80986100  38 00 00 00 */	li r0, 0
/* 80986104  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80986108  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 8098610C  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8098B9E4@ha */
/* 80986110  38 03 B9 E4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8098B9E4@l */
/* 80986114  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80986118  7F C3 F3 78 */	mr r3, r30
/* 8098611C  38 80 00 00 */	li r4, 0
/* 80986120  4B 9A 22 DD */	bl init__12J3DFrameCtrlFs
/* 80986124  38 00 00 00 */	li r0, 0
/* 80986128  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8098612C  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 80986130  7F C3 F3 78 */	mr r3, r30
/* 80986134  4B 6E FF 6D */	bl __ct__9dBgS_AcchFv
/* 80986138  3C 60 80 99 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8098B9F0@ha */
/* 8098613C  38 63 B9 F0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8098B9F0@l */
/* 80986140  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80986144  38 03 00 0C */	addi r0, r3, 0xc
/* 80986148  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8098614C  38 03 00 18 */	addi r0, r3, 0x18
/* 80986150  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80986154  38 7E 00 14 */	addi r3, r30, 0x14
/* 80986158  4B 6F 2D 11 */	bl SetObj__16dBgS_PolyPassChkFv
/* 8098615C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80986160  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80986164  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 80986168  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 8098616C  4B 6F D5 F5 */	bl __ct__10dCcD_GSttsFv
/* 80986170  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80986174  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80986178  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 8098617C  38 03 00 20 */	addi r0, r3, 0x20
/* 80986180  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 80986184  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80986188  4B 6E FD 25 */	bl __ct__12dBgS_AcchCirFv
/* 8098618C  3C 60 80 99 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x8098BA38@ha */
/* 80986190  38 03 BA 38 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x8098BA38@l */
/* 80986194  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80986198  38 7F 08 24 */	addi r3, r31, 0x824
/* 8098619C  4B 7C A5 15 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809861A0  38 7F 08 2C */	addi r3, r31, 0x82c
/* 809861A4  3C 80 80 98 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80985C9C@ha */
/* 809861A8  38 84 5C 9C */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80985C9C@l */
/* 809861AC  3C A0 80 98 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80985C54@ha */
/* 809861B0  38 A5 5C 54 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80985C54@l */
/* 809861B4  38 C0 00 08 */	li r6, 8
/* 809861B8  38 E0 00 05 */	li r7, 5
/* 809861BC  4B 9D BB A5 */	bl __construct_array
/* 809861C0  38 7F 08 54 */	addi r3, r31, 0x854
/* 809861C4  3C 80 80 98 */	lis r4, __ct__4cXyzFv@ha /* 0x80985E24@ha */
/* 809861C8  38 84 5E 24 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80985E24@l */
/* 809861CC  3C A0 80 98 */	lis r5, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 809861D0  38 A5 5D E8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 809861D4  38 C0 00 0C */	li r6, 0xc
/* 809861D8  38 E0 00 03 */	li r7, 3
/* 809861DC  4B 9D BB 85 */	bl __construct_array
/* 809861E0  38 7F 09 08 */	addi r3, r31, 0x908
/* 809861E4  3C 80 80 98 */	lis r4, __ct__5csXyzFv@ha /* 0x80985DE4@ha */
/* 809861E8  38 84 5D E4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80985DE4@l */
/* 809861EC  3C A0 80 98 */	lis r5, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 809861F0  38 A5 5D A8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 809861F4  38 C0 00 06 */	li r6, 6
/* 809861F8  38 E0 00 03 */	li r7, 3
/* 809861FC  4B 9D BB 65 */	bl __construct_array
/* 80986200  38 7F 09 1A */	addi r3, r31, 0x91a
/* 80986204  3C 80 80 98 */	lis r4, __ct__5csXyzFv@ha /* 0x80985DE4@ha */
/* 80986208  38 84 5D E4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80985DE4@l */
/* 8098620C  3C A0 80 98 */	lis r5, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 80986210  38 A5 5D A8 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 80986214  38 C0 00 06 */	li r6, 6
/* 80986218  38 E0 00 03 */	li r7, 3
/* 8098621C  4B 9D BB 45 */	bl __construct_array
/* 80986220  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80986224  4B 8C 3C DD */	bl __ct__10dMsgFlow_cFv
/* 80986228  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 8098622C  4B 8E 19 F1 */	bl __ct__11cBgS_GndChkFv
/* 80986230  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80986234  4B 6F 13 49 */	bl __ct__11dBgS_GndChkFv
/* 80986238  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 8098623C  4B 6F 1A 2D */	bl __ct__11dBgS_LinChkFv
/* 80986240  7F E3 FB 78 */	mr r3, r31
/* 80986244  4B 7C C6 85 */	bl initialize__8daNpcF_cFv
/* 80986248  7F E3 FB 78 */	mr r3, r31
/* 8098624C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80986250  83 C1 00 08 */	lwz r30, 8(r1)
/* 80986254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80986258  7C 08 03 A6 */	mtlr r0
/* 8098625C  38 21 00 10 */	addi r1, r1, 0x10
/* 80986260  4E 80 00 20 */	blr 
