lbl_80A20B24:
/* 80A20B24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A20B28  7C 08 02 A6 */	mflr r0
/* 80A20B2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A20B30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A20B34  93 C1 00 08 */	stw r30, 8(r1)
/* 80A20B38  7C 7F 1B 78 */	mr r31, r3
/* 80A20B3C  4B 5F 80 29 */	bl __ct__10fopAc_ac_cFv
/* 80A20B40  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80A20B44  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80A20B48  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80A20B4C  3B DF 05 6C */	addi r30, r31, 0x56c
/* 80A20B50  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A21758@ha */
/* 80A20B54  38 03 17 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A21758@l */
/* 80A20B58  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80A20B5C  7F C3 F3 78 */	mr r3, r30
/* 80A20B60  38 80 00 00 */	li r4, 0
/* 80A20B64  4B 90 78 99 */	bl init__12J3DFrameCtrlFs
/* 80A20B68  38 00 00 00 */	li r0, 0
/* 80A20B6C  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80A20B70  3B DF 05 88 */	addi r30, r31, 0x588
/* 80A20B74  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A21758@ha */
/* 80A20B78  38 03 17 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A21758@l */
/* 80A20B7C  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80A20B80  7F C3 F3 78 */	mr r3, r30
/* 80A20B84  38 80 00 00 */	li r4, 0
/* 80A20B88  4B 90 78 75 */	bl init__12J3DFrameCtrlFs
/* 80A20B8C  38 00 00 00 */	li r0, 0
/* 80A20B90  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A20B94  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 80A20B98  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A21758@ha */
/* 80A20B9C  38 03 17 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A21758@l */
/* 80A20BA0  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80A20BA4  7F C3 F3 78 */	mr r3, r30
/* 80A20BA8  38 80 00 00 */	li r4, 0
/* 80A20BAC  4B 90 78 51 */	bl init__12J3DFrameCtrlFs
/* 80A20BB0  38 00 00 00 */	li r0, 0
/* 80A20BB4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A20BB8  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 80A20BBC  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A21758@ha */
/* 80A20BC0  38 03 17 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A21758@l */
/* 80A20BC4  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80A20BC8  7F C3 F3 78 */	mr r3, r30
/* 80A20BCC  38 80 00 00 */	li r4, 0
/* 80A20BD0  4B 90 78 2D */	bl init__12J3DFrameCtrlFs
/* 80A20BD4  38 00 00 00 */	li r0, 0
/* 80A20BD8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A20BDC  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 80A20BE0  7F C3 F3 78 */	mr r3, r30
/* 80A20BE4  4B 65 54 BD */	bl __ct__9dBgS_AcchFv
/* 80A20BE8  3C 60 80 A2 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A21764@ha */
/* 80A20BEC  38 63 17 64 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A21764@l */
/* 80A20BF0  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80A20BF4  38 03 00 0C */	addi r0, r3, 0xc
/* 80A20BF8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A20BFC  38 03 00 18 */	addi r0, r3, 0x18
/* 80A20C00  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A20C04  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A20C08  4B 65 82 61 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80A20C0C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A20C10  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A20C14  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 80A20C18  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 80A20C1C  4B 66 2B 45 */	bl __ct__10dCcD_GSttsFv
/* 80A20C20  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A20C24  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A20C28  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 80A20C2C  38 03 00 20 */	addi r0, r3, 0x20
/* 80A20C30  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 80A20C34  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80A20C38  4B 65 52 75 */	bl __ct__12dBgS_AcchCirFv
/* 80A20C3C  3C 60 80 A2 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A217AC@ha */
/* 80A20C40  38 03 17 AC */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80A217AC@l */
/* 80A20C44  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80A20C48  38 7F 08 24 */	addi r3, r31, 0x824
/* 80A20C4C  4B 72 FA 65 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80A20C50  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80A20C54  3C 80 80 A2 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80A207C4@ha */
/* 80A20C58  38 84 07 C4 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80A207C4@l */
/* 80A20C5C  3C A0 80 A2 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80A2077C@ha */
/* 80A20C60  38 A5 07 7C */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80A2077C@l */
/* 80A20C64  38 C0 00 08 */	li r6, 8
/* 80A20C68  38 E0 00 05 */	li r7, 5
/* 80A20C6C  4B 94 10 F5 */	bl __construct_array
/* 80A20C70  38 7F 08 54 */	addi r3, r31, 0x854
/* 80A20C74  3C 80 80 A2 */	lis r4, __ct__4cXyzFv@ha /* 0x80A208D4@ha */
/* 80A20C78  38 84 08 D4 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80A208D4@l */
/* 80A20C7C  3C A0 80 A2 */	lis r5, __dt__4cXyzFv@ha /* 0x80A1B09C@ha */
/* 80A20C80  38 A5 B0 9C */	addi r5, r5, __dt__4cXyzFv@l /* 0x80A1B09C@l */
/* 80A20C84  38 C0 00 0C */	li r6, 0xc
/* 80A20C88  38 E0 00 03 */	li r7, 3
/* 80A20C8C  4B 94 10 D5 */	bl __construct_array
/* 80A20C90  38 7F 09 08 */	addi r3, r31, 0x908
/* 80A20C94  3C 80 80 A2 */	lis r4, __ct__5csXyzFv@ha /* 0x80A208D0@ha */
/* 80A20C98  38 84 08 D0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A208D0@l */
/* 80A20C9C  3C A0 80 A2 */	lis r5, __dt__5csXyzFv@ha /* 0x80A1B3D4@ha */
/* 80A20CA0  38 A5 B3 D4 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A1B3D4@l */
/* 80A20CA4  38 C0 00 06 */	li r6, 6
/* 80A20CA8  38 E0 00 03 */	li r7, 3
/* 80A20CAC  4B 94 10 B5 */	bl __construct_array
/* 80A20CB0  38 7F 09 1A */	addi r3, r31, 0x91a
/* 80A20CB4  3C 80 80 A2 */	lis r4, __ct__5csXyzFv@ha /* 0x80A208D0@ha */
/* 80A20CB8  38 84 08 D0 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80A208D0@l */
/* 80A20CBC  3C A0 80 A2 */	lis r5, __dt__5csXyzFv@ha /* 0x80A1B3D4@ha */
/* 80A20CC0  38 A5 B3 D4 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80A1B3D4@l */
/* 80A20CC4  38 C0 00 06 */	li r6, 6
/* 80A20CC8  38 E0 00 03 */	li r7, 3
/* 80A20CCC  4B 94 10 95 */	bl __construct_array
/* 80A20CD0  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80A20CD4  4B 82 92 2D */	bl __ct__10dMsgFlow_cFv
/* 80A20CD8  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 80A20CDC  4B 84 6F 41 */	bl __ct__11cBgS_GndChkFv
/* 80A20CE0  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80A20CE4  4B 65 68 99 */	bl __ct__11dBgS_GndChkFv
/* 80A20CE8  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 80A20CEC  4B 65 6F 7D */	bl __ct__11dBgS_LinChkFv
/* 80A20CF0  7F E3 FB 78 */	mr r3, r31
/* 80A20CF4  4B 73 1B D5 */	bl initialize__8daNpcF_cFv
/* 80A20CF8  7F E3 FB 78 */	mr r3, r31
/* 80A20CFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A20D00  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A20D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A20D08  7C 08 03 A6 */	mtlr r0
/* 80A20D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A20D10  4E 80 00 20 */	blr 
