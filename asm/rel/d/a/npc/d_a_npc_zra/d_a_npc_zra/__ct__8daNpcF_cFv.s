lbl_80B7F334:
/* 80B7F334  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7F338  7C 08 02 A6 */	mflr r0
/* 80B7F33C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7F340  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7F344  93 C1 00 08 */	stw r30, 8(r1)
/* 80B7F348  7C 7F 1B 78 */	mr r31, r3
/* 80B7F34C  4B 49 98 19 */	bl __ct__10fopAc_ac_cFv
/* 80B7F350  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80B7F354  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80B7F358  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80B7F35C  3B DF 05 6C */	addi r30, r31, 0x56c
/* 80B7F360  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B8DA28@ha */
/* 80B7F364  38 03 DA 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B8DA28@l */
/* 80B7F368  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80B7F36C  7F C3 F3 78 */	mr r3, r30
/* 80B7F370  38 80 00 00 */	li r4, 0
/* 80B7F374  4B 7A 90 89 */	bl init__12J3DFrameCtrlFs
/* 80B7F378  38 00 00 00 */	li r0, 0
/* 80B7F37C  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80B7F380  3B DF 05 88 */	addi r30, r31, 0x588
/* 80B7F384  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B8DA28@ha */
/* 80B7F388  38 03 DA 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B8DA28@l */
/* 80B7F38C  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80B7F390  7F C3 F3 78 */	mr r3, r30
/* 80B7F394  38 80 00 00 */	li r4, 0
/* 80B7F398  4B 7A 90 65 */	bl init__12J3DFrameCtrlFs
/* 80B7F39C  38 00 00 00 */	li r0, 0
/* 80B7F3A0  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B7F3A4  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 80B7F3A8  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B8DA28@ha */
/* 80B7F3AC  38 03 DA 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B8DA28@l */
/* 80B7F3B0  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80B7F3B4  7F C3 F3 78 */	mr r3, r30
/* 80B7F3B8  38 80 00 00 */	li r4, 0
/* 80B7F3BC  4B 7A 90 41 */	bl init__12J3DFrameCtrlFs
/* 80B7F3C0  38 00 00 00 */	li r0, 0
/* 80B7F3C4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B7F3C8  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 80B7F3CC  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B8DA28@ha */
/* 80B7F3D0  38 03 DA 28 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B8DA28@l */
/* 80B7F3D4  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80B7F3D8  7F C3 F3 78 */	mr r3, r30
/* 80B7F3DC  38 80 00 00 */	li r4, 0
/* 80B7F3E0  4B 7A 90 1D */	bl init__12J3DFrameCtrlFs
/* 80B7F3E4  38 00 00 00 */	li r0, 0
/* 80B7F3E8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B7F3EC  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 80B7F3F0  7F C3 F3 78 */	mr r3, r30
/* 80B7F3F4  4B 4F 6C AD */	bl __ct__9dBgS_AcchFv
/* 80B7F3F8  3C 60 80 B9 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B8D98C@ha */
/* 80B7F3FC  38 63 D9 8C */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B8D98C@l */
/* 80B7F400  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80B7F404  38 03 00 0C */	addi r0, r3, 0xc
/* 80B7F408  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B7F40C  38 03 00 18 */	addi r0, r3, 0x18
/* 80B7F410  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B7F414  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B7F418  4B 4F 9A 51 */	bl SetObj__16dBgS_PolyPassChkFv
/* 80B7F41C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B7F420  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B7F424  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 80B7F428  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 80B7F42C  4B 50 43 35 */	bl __ct__10dCcD_GSttsFv
/* 80B7F430  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B7F434  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B7F438  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 80B7F43C  38 03 00 20 */	addi r0, r3, 0x20
/* 80B7F440  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 80B7F444  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80B7F448  4B 4F 6A 65 */	bl __ct__12dBgS_AcchCirFv
/* 80B7F44C  3C 60 80 B9 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80B8D9D4@ha */
/* 80B7F450  38 03 D9 D4 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80B8D9D4@l */
/* 80B7F454  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80B7F458  38 7F 08 24 */	addi r3, r31, 0x824
/* 80B7F45C  4B 5D 12 55 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80B7F460  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80B7F464  3C 80 80 B8 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80B7EE38@ha */
/* 80B7F468  38 84 EE 38 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80B7EE38@l */
/* 80B7F46C  3C A0 80 B8 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80B7EDF0@ha */
/* 80B7F470  38 A5 ED F0 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80B7EDF0@l */
/* 80B7F474  38 C0 00 08 */	li r6, 8
/* 80B7F478  38 E0 00 05 */	li r7, 5
/* 80B7F47C  4B 7E 28 E5 */	bl __construct_array
/* 80B7F480  38 7F 08 54 */	addi r3, r31, 0x854
/* 80B7F484  3C 80 80 B8 */	lis r4, __ct__4cXyzFv@ha /* 0x80B7EF84@ha */
/* 80B7F488  38 84 EF 84 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B7EF84@l */
/* 80B7F48C  3C A0 80 B8 */	lis r5, __dt__4cXyzFv@ha /* 0x80B78730@ha */
/* 80B7F490  38 A5 87 30 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B78730@l */
/* 80B7F494  38 C0 00 0C */	li r6, 0xc
/* 80B7F498  38 E0 00 03 */	li r7, 3
/* 80B7F49C  4B 7E 28 C5 */	bl __construct_array
/* 80B7F4A0  38 7F 09 08 */	addi r3, r31, 0x908
/* 80B7F4A4  3C 80 80 B8 */	lis r4, __ct__5csXyzFv@ha /* 0x80B7EF80@ha */
/* 80B7F4A8  38 84 EF 80 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B7EF80@l */
/* 80B7F4AC  3C A0 80 B8 */	lis r5, __dt__5csXyzFv@ha /* 0x80B7EF44@ha */
/* 80B7F4B0  38 A5 EF 44 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B7EF44@l */
/* 80B7F4B4  38 C0 00 06 */	li r6, 6
/* 80B7F4B8  38 E0 00 03 */	li r7, 3
/* 80B7F4BC  4B 7E 28 A5 */	bl __construct_array
/* 80B7F4C0  38 7F 09 1A */	addi r3, r31, 0x91a
/* 80B7F4C4  3C 80 80 B8 */	lis r4, __ct__5csXyzFv@ha /* 0x80B7EF80@ha */
/* 80B7F4C8  38 84 EF 80 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B7EF80@l */
/* 80B7F4CC  3C A0 80 B8 */	lis r5, __dt__5csXyzFv@ha /* 0x80B7EF44@ha */
/* 80B7F4D0  38 A5 EF 44 */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B7EF44@l */
/* 80B7F4D4  38 C0 00 06 */	li r6, 6
/* 80B7F4D8  38 E0 00 03 */	li r7, 3
/* 80B7F4DC  4B 7E 28 85 */	bl __construct_array
/* 80B7F4E0  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80B7F4E4  4B 6C AA 1D */	bl __ct__10dMsgFlow_cFv
/* 80B7F4E8  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 80B7F4EC  4B 6E 87 31 */	bl __ct__11cBgS_GndChkFv
/* 80B7F4F0  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80B7F4F4  4B 4F 80 89 */	bl __ct__11dBgS_GndChkFv
/* 80B7F4F8  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 80B7F4FC  4B 4F 87 6D */	bl __ct__11dBgS_LinChkFv
/* 80B7F500  7F E3 FB 78 */	mr r3, r31
/* 80B7F504  4B 5D 33 C5 */	bl initialize__8daNpcF_cFv
/* 80B7F508  7F E3 FB 78 */	mr r3, r31
/* 80B7F50C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7F510  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B7F514  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7F518  7C 08 03 A6 */	mtlr r0
/* 80B7F51C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7F520  4E 80 00 20 */	blr 
