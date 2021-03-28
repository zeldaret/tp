lbl_80A25400:
/* 80A25400  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A25404  7C 08 02 A6 */	mflr r0
/* 80A25408  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A2540C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A25410  93 C1 00 08 */	stw r30, 8(r1)
/* 80A25414  7C 7F 1B 78 */	mr r31, r3
/* 80A25418  4B 5F 37 4C */	b __ct__10fopAc_ac_cFv
/* 80A2541C  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80A25420  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80A25424  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 80A25428  3B DF 05 6C */	addi r30, r31, 0x56c
/* 80A2542C  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A25430  38 03 5F 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A25434  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 80A25438  7F C3 F3 78 */	mr r3, r30
/* 80A2543C  38 80 00 00 */	li r4, 0
/* 80A25440  4B 90 2F BC */	b init__12J3DFrameCtrlFs
/* 80A25444  38 00 00 00 */	li r0, 0
/* 80A25448  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80A2544C  3B DF 05 88 */	addi r30, r31, 0x588
/* 80A25450  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A25454  38 03 5F 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A25458  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80A2545C  7F C3 F3 78 */	mr r3, r30
/* 80A25460  38 80 00 00 */	li r4, 0
/* 80A25464  4B 90 2F 98 */	b init__12J3DFrameCtrlFs
/* 80A25468  38 00 00 00 */	li r0, 0
/* 80A2546C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A25470  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 80A25474  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A25478  38 03 5F 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A2547C  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80A25480  7F C3 F3 78 */	mr r3, r30
/* 80A25484  38 80 00 00 */	li r4, 0
/* 80A25488  4B 90 2F 74 */	b init__12J3DFrameCtrlFs
/* 80A2548C  38 00 00 00 */	li r0, 0
/* 80A25490  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A25494  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 80A25498  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A2549C  38 03 5F 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A254A0  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 80A254A4  7F C3 F3 78 */	mr r3, r30
/* 80A254A8  38 80 00 00 */	li r4, 0
/* 80A254AC  4B 90 2F 50 */	b init__12J3DFrameCtrlFs
/* 80A254B0  38 00 00 00 */	li r0, 0
/* 80A254B4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A254B8  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 80A254BC  7F C3 F3 78 */	mr r3, r30
/* 80A254C0  4B 65 0B E0 */	b __ct__9dBgS_AcchFv
/* 80A254C4  3C 60 80 A2 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A254C8  38 63 5F 68 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A254CC  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80A254D0  38 03 00 0C */	addi r0, r3, 0xc
/* 80A254D4  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80A254D8  38 03 00 18 */	addi r0, r3, 0x18
/* 80A254DC  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80A254E0  38 7E 00 14 */	addi r3, r30, 0x14
/* 80A254E4  4B 65 39 84 */	b SetObj__16dBgS_PolyPassChkFv
/* 80A254E8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A254EC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A254F0  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 80A254F4  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 80A254F8  4B 65 E2 68 */	b __ct__10dCcD_GSttsFv
/* 80A254FC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A25500  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A25504  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 80A25508  38 03 00 20 */	addi r0, r3, 0x20
/* 80A2550C  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 80A25510  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 80A25514  4B 65 09 98 */	b __ct__12dBgS_AcchCirFv
/* 80A25518  3C 60 80 A2 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80A2551C  38 03 5F B0 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80A25520  90 1F 08 28 */	stw r0, 0x828(r31)
/* 80A25524  38 7F 08 24 */	addi r3, r31, 0x824
/* 80A25528  4B 72 B1 88 */	b initialize__18daNpcF_ActorMngr_cFv
/* 80A2552C  38 7F 08 2C */	addi r3, r31, 0x82c
/* 80A25530  3C 80 80 A2 */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha
/* 80A25534  38 84 50 28 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l
/* 80A25538  3C A0 80 A2 */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80A2553C  38 A5 4F E0 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l
/* 80A25540  38 C0 00 08 */	li r6, 8
/* 80A25544  38 E0 00 05 */	li r7, 5
/* 80A25548  4B 93 C8 18 */	b __construct_array
/* 80A2554C  38 7F 08 54 */	addi r3, r31, 0x854
/* 80A25550  3C 80 80 A2 */	lis r4, __ct__4cXyzFv@ha
/* 80A25554  38 84 51 B0 */	addi r4, r4, __ct__4cXyzFv@l
/* 80A25558  3C A0 80 A2 */	lis r5, __dt__4cXyzFv@ha
/* 80A2555C  38 A5 51 74 */	addi r5, r5, __dt__4cXyzFv@l
/* 80A25560  38 C0 00 0C */	li r6, 0xc
/* 80A25564  38 E0 00 03 */	li r7, 3
/* 80A25568  4B 93 C7 F8 */	b __construct_array
/* 80A2556C  38 7F 09 08 */	addi r3, r31, 0x908
/* 80A25570  3C 80 80 A2 */	lis r4, __ct__5csXyzFv@ha
/* 80A25574  38 84 51 70 */	addi r4, r4, __ct__5csXyzFv@l
/* 80A25578  3C A0 80 A2 */	lis r5, __dt__5csXyzFv@ha
/* 80A2557C  38 A5 51 34 */	addi r5, r5, __dt__5csXyzFv@l
/* 80A25580  38 C0 00 06 */	li r6, 6
/* 80A25584  38 E0 00 03 */	li r7, 3
/* 80A25588  4B 93 C7 D8 */	b __construct_array
/* 80A2558C  38 7F 09 1A */	addi r3, r31, 0x91a
/* 80A25590  3C 80 80 A2 */	lis r4, __ct__5csXyzFv@ha
/* 80A25594  38 84 51 70 */	addi r4, r4, __ct__5csXyzFv@l
/* 80A25598  3C A0 80 A2 */	lis r5, __dt__5csXyzFv@ha
/* 80A2559C  38 A5 51 34 */	addi r5, r5, __dt__5csXyzFv@l
/* 80A255A0  38 C0 00 06 */	li r6, 6
/* 80A255A4  38 E0 00 03 */	li r7, 3
/* 80A255A8  4B 93 C7 B8 */	b __construct_array
/* 80A255AC  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 80A255B0  4B 82 49 50 */	b __ct__10dMsgFlow_cFv
/* 80A255B4  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 80A255B8  4B 84 26 64 */	b __ct__11cBgS_GndChkFv
/* 80A255BC  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 80A255C0  4B 65 1F BC */	b __ct__11dBgS_GndChkFv
/* 80A255C4  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 80A255C8  4B 65 26 A0 */	b __ct__11dBgS_LinChkFv
/* 80A255CC  7F E3 FB 78 */	mr r3, r31
/* 80A255D0  4B 72 D2 F8 */	b initialize__8daNpcF_cFv
/* 80A255D4  7F E3 FB 78 */	mr r3, r31
/* 80A255D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A255DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A255E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A255E4  7C 08 03 A6 */	mtlr r0
/* 80A255E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A255EC  4E 80 00 20 */	blr 
