lbl_809AF4D4:
/* 809AF4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AF4D8  7C 08 02 A6 */	mflr r0
/* 809AF4DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AF4E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AF4E4  93 C1 00 08 */	stw r30, 8(r1)
/* 809AF4E8  7C 7F 1B 78 */	mr r31, r3
/* 809AF4EC  4B 66 96 79 */	bl __ct__10fopAc_ac_cFv
/* 809AF4F0  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 809AF4F4  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 809AF4F8  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 809AF4FC  3B DF 05 6C */	addi r30, r31, 0x56c
/* 809AF500  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809AFBB0@ha */
/* 809AF504  38 03 FB B0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809AFBB0@l */
/* 809AF508  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 809AF50C  7F C3 F3 78 */	mr r3, r30
/* 809AF510  38 80 00 00 */	li r4, 0
/* 809AF514  4B 97 8E E9 */	bl init__12J3DFrameCtrlFs
/* 809AF518  38 00 00 00 */	li r0, 0
/* 809AF51C  90 1E 00 18 */	stw r0, 0x18(r30)
/* 809AF520  3B DF 05 88 */	addi r30, r31, 0x588
/* 809AF524  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809AFBB0@ha */
/* 809AF528  38 03 FB B0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809AFBB0@l */
/* 809AF52C  90 1F 05 88 */	stw r0, 0x588(r31)
/* 809AF530  7F C3 F3 78 */	mr r3, r30
/* 809AF534  38 80 00 00 */	li r4, 0
/* 809AF538  4B 97 8E C5 */	bl init__12J3DFrameCtrlFs
/* 809AF53C  38 00 00 00 */	li r0, 0
/* 809AF540  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809AF544  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 809AF548  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809AFBB0@ha */
/* 809AF54C  38 03 FB B0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809AFBB0@l */
/* 809AF550  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 809AF554  7F C3 F3 78 */	mr r3, r30
/* 809AF558  38 80 00 00 */	li r4, 0
/* 809AF55C  4B 97 8E A1 */	bl init__12J3DFrameCtrlFs
/* 809AF560  38 00 00 00 */	li r0, 0
/* 809AF564  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809AF568  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 809AF56C  3C 60 80 9B */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809AFBB0@ha */
/* 809AF570  38 03 FB B0 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809AFBB0@l */
/* 809AF574  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 809AF578  7F C3 F3 78 */	mr r3, r30
/* 809AF57C  38 80 00 00 */	li r4, 0
/* 809AF580  4B 97 8E 7D */	bl init__12J3DFrameCtrlFs
/* 809AF584  38 00 00 00 */	li r0, 0
/* 809AF588  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809AF58C  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 809AF590  7F C3 F3 78 */	mr r3, r30
/* 809AF594  4B 6C 6B 0D */	bl __ct__9dBgS_AcchFv
/* 809AF598  3C 60 80 9B */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809AFBBC@ha */
/* 809AF59C  38 63 FB BC */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809AFBBC@l */
/* 809AF5A0  90 7E 00 10 */	stw r3, 0x10(r30)
/* 809AF5A4  38 03 00 0C */	addi r0, r3, 0xc
/* 809AF5A8  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809AF5AC  38 03 00 18 */	addi r0, r3, 0x18
/* 809AF5B0  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809AF5B4  38 7E 00 14 */	addi r3, r30, 0x14
/* 809AF5B8  4B 6C 98 B1 */	bl SetObj__16dBgS_PolyPassChkFv
/* 809AF5BC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809AF5C0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809AF5C4  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 809AF5C8  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 809AF5CC  4B 6D 41 95 */	bl __ct__10dCcD_GSttsFv
/* 809AF5D0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809AF5D4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809AF5D8  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 809AF5DC  38 03 00 20 */	addi r0, r3, 0x20
/* 809AF5E0  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 809AF5E4  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 809AF5E8  4B 6C 68 C5 */	bl __ct__12dBgS_AcchCirFv
/* 809AF5EC  3C 60 80 9B */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x809AFC04@ha */
/* 809AF5F0  38 03 FC 04 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x809AFC04@l */
/* 809AF5F4  90 1F 08 28 */	stw r0, 0x828(r31)
/* 809AF5F8  38 7F 08 24 */	addi r3, r31, 0x824
/* 809AF5FC  4B 7A 10 B5 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809AF600  38 7F 08 2C */	addi r3, r31, 0x82c
/* 809AF604  3C 80 80 9B */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x809AF6CC@ha */
/* 809AF608  38 84 F6 CC */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x809AF6CC@l */
/* 809AF60C  3C A0 80 9B */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809AF450@ha */
/* 809AF610  38 A5 F4 50 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809AF450@l */
/* 809AF614  38 C0 00 08 */	li r6, 8
/* 809AF618  38 E0 00 05 */	li r7, 5
/* 809AF61C  4B 9B 27 45 */	bl __construct_array
/* 809AF620  38 7F 08 54 */	addi r3, r31, 0x854
/* 809AF624  3C 80 80 9B */	lis r4, __ct__4cXyzFv@ha /* 0x809AF6C8@ha */
/* 809AF628  38 84 F6 C8 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809AF6C8@l */
/* 809AF62C  3C A0 80 9B */	lis r5, __dt__4cXyzFv@ha /* 0x809ADFA8@ha */
/* 809AF630  38 A5 DF A8 */	addi r5, r5, __dt__4cXyzFv@l /* 0x809ADFA8@l */
/* 809AF634  38 C0 00 0C */	li r6, 0xc
/* 809AF638  38 E0 00 03 */	li r7, 3
/* 809AF63C  4B 9B 27 25 */	bl __construct_array
/* 809AF640  38 7F 09 08 */	addi r3, r31, 0x908
/* 809AF644  3C 80 80 9B */	lis r4, __ct__5csXyzFv@ha /* 0x809AF6C4@ha */
/* 809AF648  38 84 F6 C4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809AF6C4@l */
/* 809AF64C  3C A0 80 9B */	lis r5, __dt__5csXyzFv@ha /* 0x809AF498@ha */
/* 809AF650  38 A5 F4 98 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809AF498@l */
/* 809AF654  38 C0 00 06 */	li r6, 6
/* 809AF658  38 E0 00 03 */	li r7, 3
/* 809AF65C  4B 9B 27 05 */	bl __construct_array
/* 809AF660  38 7F 09 1A */	addi r3, r31, 0x91a
/* 809AF664  3C 80 80 9B */	lis r4, __ct__5csXyzFv@ha /* 0x809AF6C4@ha */
/* 809AF668  38 84 F6 C4 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809AF6C4@l */
/* 809AF66C  3C A0 80 9B */	lis r5, __dt__5csXyzFv@ha /* 0x809AF498@ha */
/* 809AF670  38 A5 F4 98 */	addi r5, r5, __dt__5csXyzFv@l /* 0x809AF498@l */
/* 809AF674  38 C0 00 06 */	li r6, 6
/* 809AF678  38 E0 00 03 */	li r7, 3
/* 809AF67C  4B 9B 26 E5 */	bl __construct_array
/* 809AF680  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 809AF684  4B 89 A8 7D */	bl __ct__10dMsgFlow_cFv
/* 809AF688  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 809AF68C  4B 8B 85 91 */	bl __ct__11cBgS_GndChkFv
/* 809AF690  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 809AF694  4B 6C 7E E9 */	bl __ct__11dBgS_GndChkFv
/* 809AF698  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 809AF69C  4B 6C 85 CD */	bl __ct__11dBgS_LinChkFv
/* 809AF6A0  7F E3 FB 78 */	mr r3, r31
/* 809AF6A4  4B 7A 32 25 */	bl initialize__8daNpcF_cFv
/* 809AF6A8  7F E3 FB 78 */	mr r3, r31
/* 809AF6AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AF6B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809AF6B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AF6B8  7C 08 03 A6 */	mtlr r0
/* 809AF6BC  38 21 00 10 */	addi r1, r1, 0x10
/* 809AF6C0  4E 80 00 20 */	blr 
