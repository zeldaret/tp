lbl_809DEAA8:
/* 809DEAA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DEAAC  7C 08 02 A6 */	mflr r0
/* 809DEAB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DEAB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DEAB8  93 C1 00 08 */	stw r30, 8(r1)
/* 809DEABC  7C 7F 1B 78 */	mr r31, r3
/* 809DEAC0  4B 63 A0 A5 */	bl __ct__10fopAc_ac_cFv
/* 809DEAC4  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 809DEAC8  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 809DEACC  90 1F 0B 44 */	stw r0, 0xb44(r31)
/* 809DEAD0  3B DF 05 6C */	addi r30, r31, 0x56c
/* 809DEAD4  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809DF668@ha */
/* 809DEAD8  38 03 F6 68 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809DF668@l */
/* 809DEADC  90 1F 05 6C */	stw r0, 0x56c(r31)
/* 809DEAE0  7F C3 F3 78 */	mr r3, r30
/* 809DEAE4  38 80 00 00 */	li r4, 0
/* 809DEAE8  4B 94 99 15 */	bl init__12J3DFrameCtrlFs
/* 809DEAEC  38 00 00 00 */	li r0, 0
/* 809DEAF0  90 1E 00 18 */	stw r0, 0x18(r30)
/* 809DEAF4  3B DF 05 88 */	addi r30, r31, 0x588
/* 809DEAF8  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809DF668@ha */
/* 809DEAFC  38 03 F6 68 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809DF668@l */
/* 809DEB00  90 1F 05 88 */	stw r0, 0x588(r31)
/* 809DEB04  7F C3 F3 78 */	mr r3, r30
/* 809DEB08  38 80 00 00 */	li r4, 0
/* 809DEB0C  4B 94 98 F1 */	bl init__12J3DFrameCtrlFs
/* 809DEB10  38 00 00 00 */	li r0, 0
/* 809DEB14  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809DEB18  3B DF 05 A0 */	addi r30, r31, 0x5a0
/* 809DEB1C  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809DF668@ha */
/* 809DEB20  38 03 F6 68 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809DF668@l */
/* 809DEB24  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 809DEB28  7F C3 F3 78 */	mr r3, r30
/* 809DEB2C  38 80 00 00 */	li r4, 0
/* 809DEB30  4B 94 98 CD */	bl init__12J3DFrameCtrlFs
/* 809DEB34  38 00 00 00 */	li r0, 0
/* 809DEB38  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809DEB3C  3B DF 05 B8 */	addi r30, r31, 0x5b8
/* 809DEB40  3C 60 80 9E */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809DF668@ha */
/* 809DEB44  38 03 F6 68 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809DF668@l */
/* 809DEB48  90 1F 05 B8 */	stw r0, 0x5b8(r31)
/* 809DEB4C  7F C3 F3 78 */	mr r3, r30
/* 809DEB50  38 80 00 00 */	li r4, 0
/* 809DEB54  4B 94 98 A9 */	bl init__12J3DFrameCtrlFs
/* 809DEB58  38 00 00 00 */	li r0, 0
/* 809DEB5C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809DEB60  3B DF 05 D0 */	addi r30, r31, 0x5d0
/* 809DEB64  7F C3 F3 78 */	mr r3, r30
/* 809DEB68  4B 69 75 39 */	bl __ct__9dBgS_AcchFv
/* 809DEB6C  3C 60 80 9E */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809DF674@ha */
/* 809DEB70  38 63 F6 74 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809DF674@l */
/* 809DEB74  90 7E 00 10 */	stw r3, 0x10(r30)
/* 809DEB78  38 03 00 0C */	addi r0, r3, 0xc
/* 809DEB7C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 809DEB80  38 03 00 18 */	addi r0, r3, 0x18
/* 809DEB84  90 1E 00 24 */	stw r0, 0x24(r30)
/* 809DEB88  38 7E 00 14 */	addi r3, r30, 0x14
/* 809DEB8C  4B 69 A2 DD */	bl SetObj__16dBgS_PolyPassChkFv
/* 809DEB90  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809DEB94  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809DEB98  90 1F 07 C0 */	stw r0, 0x7c0(r31)
/* 809DEB9C  38 7F 07 C4 */	addi r3, r31, 0x7c4
/* 809DEBA0  4B 6A 4B C1 */	bl __ct__10dCcD_GSttsFv
/* 809DEBA4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809DEBA8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809DEBAC  90 7F 07 C0 */	stw r3, 0x7c0(r31)
/* 809DEBB0  38 03 00 20 */	addi r0, r3, 0x20
/* 809DEBB4  90 1F 07 C4 */	stw r0, 0x7c4(r31)
/* 809DEBB8  38 7F 07 E4 */	addi r3, r31, 0x7e4
/* 809DEBBC  4B 69 72 F1 */	bl __ct__12dBgS_AcchCirFv
/* 809DEBC0  3C 60 80 9E */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x809DF6BC@ha */
/* 809DEBC4  38 03 F6 BC */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x809DF6BC@l */
/* 809DEBC8  90 1F 08 28 */	stw r0, 0x828(r31)
/* 809DEBCC  38 7F 08 24 */	addi r3, r31, 0x824
/* 809DEBD0  4B 77 1A E1 */	bl initialize__18daNpcF_ActorMngr_cFv
/* 809DEBD4  38 7F 08 2C */	addi r3, r31, 0x82c
/* 809DEBD8  3C 80 80 9E */	lis r4, __ct__18daNpcF_ActorMngr_cFv@ha /* 0x809DE6D0@ha */
/* 809DEBDC  38 84 E6 D0 */	addi r4, r4, __ct__18daNpcF_ActorMngr_cFv@l /* 0x809DE6D0@l */
/* 809DEBE0  3C A0 80 9E */	lis r5, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809DE688@ha */
/* 809DEBE4  38 A5 E6 88 */	addi r5, r5, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809DE688@l */
/* 809DEBE8  38 C0 00 08 */	li r6, 8
/* 809DEBEC  38 E0 00 05 */	li r7, 5
/* 809DEBF0  4B 98 31 71 */	bl __construct_array
/* 809DEBF4  38 7F 08 54 */	addi r3, r31, 0x854
/* 809DEBF8  3C 80 80 9E */	lis r4, __ct__4cXyzFv@ha /* 0x809DE858@ha */
/* 809DEBFC  38 84 E8 58 */	addi r4, r4, __ct__4cXyzFv@l /* 0x809DE858@l */
/* 809DEC00  3C A0 80 9E */	lis r5, __dt__4cXyzFv@ha /* 0x809DE81C@ha */
/* 809DEC04  38 A5 E8 1C */	addi r5, r5, __dt__4cXyzFv@l /* 0x809DE81C@l */
/* 809DEC08  38 C0 00 0C */	li r6, 0xc
/* 809DEC0C  38 E0 00 03 */	li r7, 3
/* 809DEC10  4B 98 31 51 */	bl __construct_array
/* 809DEC14  38 7F 09 08 */	addi r3, r31, 0x908
/* 809DEC18  3C 80 80 9E */	lis r4, __ct__5csXyzFv@ha /* 0x809DE818@ha */
/* 809DEC1C  38 84 E8 18 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809DE818@l */
/* 809DEC20  3C A0 80 9E */	lis r5, __dt__5csXyzFv@ha /* 0x809DE7DC@ha */
/* 809DEC24  38 A5 E7 DC */	addi r5, r5, __dt__5csXyzFv@l /* 0x809DE7DC@l */
/* 809DEC28  38 C0 00 06 */	li r6, 6
/* 809DEC2C  38 E0 00 03 */	li r7, 3
/* 809DEC30  4B 98 31 31 */	bl __construct_array
/* 809DEC34  38 7F 09 1A */	addi r3, r31, 0x91a
/* 809DEC38  3C 80 80 9E */	lis r4, __ct__5csXyzFv@ha /* 0x809DE818@ha */
/* 809DEC3C  38 84 E8 18 */	addi r4, r4, __ct__5csXyzFv@l /* 0x809DE818@l */
/* 809DEC40  3C A0 80 9E */	lis r5, __dt__5csXyzFv@ha /* 0x809DE7DC@ha */
/* 809DEC44  38 A5 E7 DC */	addi r5, r5, __dt__5csXyzFv@l /* 0x809DE7DC@l */
/* 809DEC48  38 C0 00 06 */	li r6, 6
/* 809DEC4C  38 E0 00 03 */	li r7, 3
/* 809DEC50  4B 98 31 11 */	bl __construct_array
/* 809DEC54  38 7F 09 F8 */	addi r3, r31, 0x9f8
/* 809DEC58  4B 86 B2 A9 */	bl __ct__10dMsgFlow_cFv
/* 809DEC5C  38 7F 0A 44 */	addi r3, r31, 0xa44
/* 809DEC60  4B 88 8F BD */	bl __ct__11cBgS_GndChkFv
/* 809DEC64  38 7F 0A 80 */	addi r3, r31, 0xa80
/* 809DEC68  4B 69 89 15 */	bl __ct__11dBgS_GndChkFv
/* 809DEC6C  38 7F 0A D4 */	addi r3, r31, 0xad4
/* 809DEC70  4B 69 8F F9 */	bl __ct__11dBgS_LinChkFv
/* 809DEC74  7F E3 FB 78 */	mr r3, r31
/* 809DEC78  4B 77 3C 51 */	bl initialize__8daNpcF_cFv
/* 809DEC7C  7F E3 FB 78 */	mr r3, r31
/* 809DEC80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DEC84  83 C1 00 08 */	lwz r30, 8(r1)
/* 809DEC88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DEC8C  7C 08 03 A6 */	mtlr r0
/* 809DEC90  38 21 00 10 */	addi r1, r1, 0x10
/* 809DEC94  4E 80 00 20 */	blr 
