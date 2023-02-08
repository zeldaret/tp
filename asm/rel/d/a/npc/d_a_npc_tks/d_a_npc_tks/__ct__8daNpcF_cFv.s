lbl_80B1D928:
/* 80B1D928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1D92C  7C 08 02 A6 */	mflr r0
/* 80B1D930  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1D934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1D938  93 C1 00 08 */	stw r30, 8(r1)
/* 80B1D93C  7C 7F 1B 78 */	mr r31, r3
/* 80B1D940  4B 4F B2 25 */	bl __ct__10fopAc_ac_cFv
/* 80B1D944  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80B1D948  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80B1D94C  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80B1D950  3B DF 05 6C */	addi r30, r31, 0x56c
/* 80B1D954  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B1E4AC@ha */
/* 80B1D958  38 03 E4 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B1E4AC@l */
/* 80B1D95C  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80B1D960  7F C3 F3 78 */	mr r3, r30
/* 80B1D964  38 80 00 00 */	li r4, 0
/* 80B1D968  4B 80 AA 95 */	bl init__12J3DFrameCtrlFs
/* 80B1D96C  38 00 00 00 */	li r0, 0
/* 80B1D970  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80B1D974  3B DF 05 88 */	addi r30, r31, 0x588
/* 80B1D978  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B1E4AC@ha */
/* 80B1D97C  38 03 E4 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B1E4AC@l */
/* 80B1D980  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80B1D984  7F C3 F3 78 */	mr r3, r30
/* 80B1D988  38 80 00 00 */	li r4, 0
/* 80B1D98C  4B 80 AA 71 */	bl init__12J3DFrameCtrlFs
/* 80B1D990  38 00 00 00 */	li r0, 0
/* 80B1D994  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B1D998  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 80B1D99C  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B1E4AC@ha */
/* 80B1D9A0  38 03 E4 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B1E4AC@l */
/* 80B1D9A4  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80B1D9A8  7F C3 F3 78 */	mr r3, r30
/* 80B1D9AC  38 80 00 00 */	li r4, 0
/* 80B1D9B0  4B 80 AA 4D */	bl init__12J3DFrameCtrlFs
/* 80B1D9B4  38 00 00 00 */	li r0, 0
/* 80B1D9B8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B1D9BC  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 80B1D9C0  3C 60 80 B2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80B1E4AC@ha */
/* 80B1D9C4  38 03 E4 AC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80B1E4AC@l */
/* 80B1D9C8  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80B1D9CC  7F C3 F3 78 */	mr r3, r30
/* 80B1D9D0  38 80 00 00 */	li r4, 0
/* 80B1D9D4  4B 80 AA 29 */	bl init__12J3DFrameCtrlFs
/* 80B1D9D8  38 00 00 00 */	li r0, 0
/* 80B1D9DC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B1D9E0  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 80B1D9E4  7F C3 F3 78 */	mr r3, r30
/* 80B1D9E8  4B 55 86 B9 */	bl __ct__9dBgS_AcchFv
/* 80B1D9EC  3C 60 80 B2 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80B1E4B8@ha */
/* 80B1D9F0  38 63 E4 B8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80B1E4B8@l */
/* 80B1D9F4  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80B1D9F8  38 03 00 0C */	addi r0, r3, 0xc
/* 80B1D9FC  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B1DA00  38 03 00 18 */	addi r0, r3, 0x18
/* 80B1DA04  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B1DA08  38 7E 00 14 */	addi r3, r30, 0x14
/* 80B1DA0C  4B 55 B4 5D */	bl SetObj__16dBgS_PolyPassChkFv
/* 80B1DA10  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80B1DA14  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80B1DA18  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 80B1DA1C  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 80B1DA20  4B 56 5D 41 */	bl __ct__10dCcD_GSttsFv
/* 80B1DA24  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80B1DA28  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80B1DA2C  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 80B1DA30  38 03 00 20 */	addi r0, r3, 0x20
/* 80B1DA34  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 80B1DA38  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80B1DA3C  4B 55 84 71 */	bl __ct__12dBgS_AcchCirFv
/* 80B1DA40  3C 60 80 B2 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80B1E500@ha */
/* 80B1DA44  38 03 E5 00 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80B1E500@l */
/* 80B1DA48  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80B1DA4C  38 7F 08 24 */	addi r3, r31, 0x824
/* 80B1DA50  4B 63 2C 61 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 80B1DA54  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80B1DA58  3C 80 80 B2 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x80B1D488@ha */
/* 80B1DA5C  38 84 D4 88 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x80B1D488@l */
/* 80B1DA60  3C A0 80 B2 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80B1D440@ha */
/* 80B1DA64  38 A5 D4 40 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80B1D440@l */
/* 80B1DA68  38 C0 00 08 */	li r6, 8
/* 80B1DA6C  38 E0 00 05 */	li r7, 5
/* 80B1DA70  4B 84 42 F1 */	bl __construct_array
/* 80B1DA74  38 7F 08 54 */	addi r3, r31, 0x854
/* 80B1DA78  3C 80 80 B2 */	lis r4, __ct__4cXyzFv@ha /* 0x80B1D598@ha */
/* 80B1DA7C  38 84 D5 98 */	addi r4, r4, __ct__4cXyzFv@l /* 0x80B1D598@l */
/* 80B1DA80  3C A0 80 B2 */	lis r5, __dt__4cXyzFv@ha /* 0x80B1D668@ha */
/* 80B1DA84  38 A5 D6 68 */	addi r5, r5, __dt__4cXyzFv@l /* 0x80B1D668@l */
/* 80B1DA88  38 C0 00 0C */	li r6, 0xc
/* 80B1DA8C  38 E0 00 03 */	li r7, 3
/* 80B1DA90  4B 84 42 D1 */	bl __construct_array
/* 80B1DA94  38 7F 09 08 */	addi r3, r31, 0x908
/* 80B1DA98  3C 80 80 B2 */	lis r4, __ct__5csXyzFv@ha /* 0x80B1D594@ha */
/* 80B1DA9C  38 84 D5 94 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B1D594@l */
/* 80B1DAA0  3C A0 80 B2 */	lis r5, __dt__5csXyzFv@ha /* 0x80B1D59C@ha */
/* 80B1DAA4  38 A5 D5 9C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B1D59C@l */
/* 80B1DAA8  38 C0 00 06 */	li r6, 6
/* 80B1DAAC  38 E0 00 03 */	li r7, 3
/* 80B1DAB0  4B 84 42 B1 */	bl __construct_array
/* 80B1DAB4  38 7F 09 1A */	addi r3, r31, 0x91a
/* 80B1DAB8  3C 80 80 B2 */	lis r4, __ct__5csXyzFv@ha /* 0x80B1D594@ha */
/* 80B1DABC  38 84 D5 94 */	addi r4, r4, __ct__5csXyzFv@l /* 0x80B1D594@l */
/* 80B1DAC0  3C A0 80 B2 */	lis r5, __dt__5csXyzFv@ha /* 0x80B1D59C@ha */
/* 80B1DAC4  38 A5 D5 9C */	addi r5, r5, __dt__5csXyzFv@l /* 0x80B1D59C@l */
/* 80B1DAC8  38 C0 00 06 */	li r6, 6
/* 80B1DACC  38 E0 00 03 */	li r7, 3
/* 80B1DAD0  4B 84 42 91 */	bl __construct_array
/* 80B1DAD4  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80B1DAD8  4B 72 C4 29 */	bl __ct__10dMsgFlow_cFv
/* 80B1DADC  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 80B1DAE0  4B 74 A1 3D */	bl __ct__11cBgS_GndChkFv
/* 80B1DAE4  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80B1DAE8  4B 55 9A 95 */	bl __ct__11dBgS_GndChkFv
/* 80B1DAEC  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 80B1DAF0  4B 55 A1 79 */	bl __ct__11dBgS_LinChkFv
/* 80B1DAF4  7F E3 FB 78 */	mr r3, r31
/* 80B1DAF8  4B 63 4D D1 */	bl initialize__8daNpcF_cFv
/* 80B1DAFC  7F E3 FB 78 */	mr r3, r31
/* 80B1DB00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1DB04  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B1DB08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1DB0C  7C 08 03 A6 */	mtlr r0
/* 80B1DB10  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1DB14  4E 80 00 20 */	blr 
