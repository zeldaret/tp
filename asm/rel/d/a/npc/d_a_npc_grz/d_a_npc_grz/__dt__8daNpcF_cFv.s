lbl_809EEA58:
/* 809EEA58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EEA5C  7C 08 02 A6 */	mflr r0
/* 809EEA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EEA64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EEA68  93 C1 00 08 */	stw r30, 8(r1)
/* 809EEA6C  7C 7E 1B 79 */	or. r30, r3, r3
/* 809EEA70  7C 9F 23 78 */	mr r31, r4
/* 809EEA74  41 82 02 14 */	beq lbl_809EEC88
/* 809EEA78  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 809EEA7C  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 809EEA80  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809EEA84  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 809EEA88  38 80 FF FF */	li r4, -1
/* 809EEA8C  4B 68 92 51 */	bl __dt__11dBgS_LinChkFv
/* 809EEA90  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 809EEA94  38 80 FF FF */	li r4, -1
/* 809EEA98  4B 68 8B 59 */	bl __dt__11dBgS_GndChkFv
/* 809EEA9C  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 809EEAA0  38 80 FF FF */	li r4, -1
/* 809EEAA4  4B 87 91 F1 */	bl __dt__11cBgS_GndChkFv
/* 809EEAA8  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 809EEAAC  38 80 FF FF */	li r4, -1
/* 809EEAB0  4B 85 B4 99 */	bl __dt__10dMsgFlow_cFv
/* 809EEAB4  38 7E 09 1A */	addi r3, r30, 0x91a
/* 809EEAB8  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha /* 0x809EE9D8@ha */
/* 809EEABC  38 84 E9 D8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809EE9D8@l */
/* 809EEAC0  38 A0 00 06 */	li r5, 6
/* 809EEAC4  38 C0 00 03 */	li r6, 3
/* 809EEAC8  4B 97 32 21 */	bl __destroy_arr
/* 809EEACC  38 7E 09 08 */	addi r3, r30, 0x908
/* 809EEAD0  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha /* 0x809EE9D8@ha */
/* 809EEAD4  38 84 E9 D8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809EE9D8@l */
/* 809EEAD8  38 A0 00 06 */	li r5, 6
/* 809EEADC  38 C0 00 03 */	li r6, 3
/* 809EEAE0  4B 97 32 09 */	bl __destroy_arr
/* 809EEAE4  38 7E 08 54 */	addi r3, r30, 0x854
/* 809EEAE8  3C 80 80 9F */	lis r4, __dt__4cXyzFv@ha /* 0x809EEA18@ha */
/* 809EEAEC  38 84 EA 18 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809EEA18@l */
/* 809EEAF0  38 A0 00 0C */	li r5, 0xc
/* 809EEAF4  38 C0 00 03 */	li r6, 3
/* 809EEAF8  4B 97 31 F1 */	bl __destroy_arr
/* 809EEAFC  38 7E 08 2C */	addi r3, r30, 0x82c
/* 809EEB00  3C 80 80 9F */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809EE7DC@ha */
/* 809EEB04  38 84 E7 DC */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809EE7DC@l */
/* 809EEB08  38 A0 00 08 */	li r5, 8
/* 809EEB0C  38 C0 00 05 */	li r6, 5
/* 809EEB10  4B 97 31 D9 */	bl __destroy_arr
/* 809EEB14  34 1E 08 24 */	addic. r0, r30, 0x824
/* 809EEB18  41 82 00 10 */	beq lbl_809EEB28
/* 809EEB1C  3C 60 80 9F */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x809EFBA0@ha */
/* 809EEB20  38 03 FB A0 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x809EFBA0@l */
/* 809EEB24  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_809EEB28:
/* 809EEB28  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 809EEB2C  41 82 00 28 */	beq lbl_809EEB54
/* 809EEB30  3C 60 80 9F */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809EFB94@ha */
/* 809EEB34  38 03 FB 94 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809EFB94@l */
/* 809EEB38  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 809EEB3C  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 809EEB40  38 80 FF FF */	li r4, -1
/* 809EEB44  4B 88 03 D5 */	bl __dt__8cM3dGCirFv
/* 809EEB48  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809EEB4C  38 80 00 00 */	li r4, 0
/* 809EEB50  4B 87 95 61 */	bl __dt__13cBgS_PolyInfoFv
lbl_809EEB54:
/* 809EEB54  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809EEB58  41 82 00 54 */	beq lbl_809EEBAC
/* 809EEB5C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809EEB60  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809EEB64  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 809EEB68  38 03 00 20 */	addi r0, r3, 0x20
/* 809EEB6C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809EEB70  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809EEB74  41 82 00 24 */	beq lbl_809EEB98
/* 809EEB78  3C 60 80 9F */	lis r3, __vt__10dCcD_GStts@ha /* 0x809EFB88@ha */
/* 809EEB7C  38 03 FB 88 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809EFB88@l */
/* 809EEB80  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809EEB84  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809EEB88  41 82 00 10 */	beq lbl_809EEB98
/* 809EEB8C  3C 60 80 9F */	lis r3, __vt__10cCcD_GStts@ha /* 0x809EFB7C@ha */
/* 809EEB90  38 03 FB 7C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809EFB7C@l */
/* 809EEB94  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_809EEB98:
/* 809EEB98  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809EEB9C  41 82 00 10 */	beq lbl_809EEBAC
/* 809EEBA0  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809EEBA4  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809EEBA8  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_809EEBAC:
/* 809EEBAC  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 809EEBB0  41 82 00 2C */	beq lbl_809EEBDC
/* 809EEBB4  3C 60 80 9F */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809EFB58@ha */
/* 809EEBB8  38 63 FB 58 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809EFB58@l */
/* 809EEBBC  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 809EEBC0  38 03 00 0C */	addi r0, r3, 0xc
/* 809EEBC4  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 809EEBC8  38 03 00 18 */	addi r0, r3, 0x18
/* 809EEBCC  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 809EEBD0  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809EEBD4  38 80 00 00 */	li r4, 0
/* 809EEBD8  4B 68 73 BD */	bl __dt__9dBgS_AcchFv
lbl_809EEBDC:
/* 809EEBDC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809EEBE0  41 82 00 20 */	beq lbl_809EEC00
/* 809EEBE4  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809EEBE8  41 82 00 18 */	beq lbl_809EEC00
/* 809EEBEC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809EEBF0  41 82 00 10 */	beq lbl_809EEC00
/* 809EEBF4  3C 60 80 9F */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809EFB4C@ha */
/* 809EEBF8  38 03 FB 4C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809EFB4C@l */
/* 809EEBFC  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_809EEC00:
/* 809EEC00  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809EEC04  41 82 00 20 */	beq lbl_809EEC24
/* 809EEC08  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809EEC0C  41 82 00 18 */	beq lbl_809EEC24
/* 809EEC10  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809EEC14  41 82 00 10 */	beq lbl_809EEC24
/* 809EEC18  3C 60 80 9F */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809EFB4C@ha */
/* 809EEC1C  38 03 FB 4C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809EFB4C@l */
/* 809EEC20  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_809EEC24:
/* 809EEC24  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809EEC28  41 82 00 20 */	beq lbl_809EEC48
/* 809EEC2C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809EEC30  41 82 00 18 */	beq lbl_809EEC48
/* 809EEC34  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809EEC38  41 82 00 10 */	beq lbl_809EEC48
/* 809EEC3C  3C 60 80 9F */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809EFB4C@ha */
/* 809EEC40  38 03 FB 4C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809EFB4C@l */
/* 809EEC44  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_809EEC48:
/* 809EEC48  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809EEC4C  41 82 00 20 */	beq lbl_809EEC6C
/* 809EEC50  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809EEC54  41 82 00 18 */	beq lbl_809EEC6C
/* 809EEC58  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809EEC5C  41 82 00 10 */	beq lbl_809EEC6C
/* 809EEC60  3C 60 80 9F */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809EFB4C@ha */
/* 809EEC64  38 03 FB 4C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809EFB4C@l */
/* 809EEC68  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_809EEC6C:
/* 809EEC6C  7F C3 F3 78 */	mr r3, r30
/* 809EEC70  38 80 00 00 */	li r4, 0
/* 809EEC74  4B 62 A0 19 */	bl __dt__10fopAc_ac_cFv
/* 809EEC78  7F E0 07 35 */	extsh. r0, r31
/* 809EEC7C  40 81 00 0C */	ble lbl_809EEC88
/* 809EEC80  7F C3 F3 78 */	mr r3, r30
/* 809EEC84  4B 8E 00 B9 */	bl __dl__FPv
lbl_809EEC88:
/* 809EEC88  7F C3 F3 78 */	mr r3, r30
/* 809EEC8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EEC90  83 C1 00 08 */	lwz r30, 8(r1)
/* 809EEC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EEC98  7C 08 03 A6 */	mtlr r0
/* 809EEC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 809EECA0  4E 80 00 20 */	blr 
