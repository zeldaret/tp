lbl_80985E28:
/* 80985E28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80985E2C  7C 08 02 A6 */	mflr r0
/* 80985E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80985E34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80985E38  93 C1 00 08 */	stw r30, 8(r1)
/* 80985E3C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80985E40  7C 9F 23 78 */	mr r31, r4
/* 80985E44  41 82 02 14 */	beq lbl_80986058
/* 80985E48  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80985E4C  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80985E50  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80985E54  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80985E58  38 80 FF FF */	li r4, -1
/* 80985E5C  4B 6F 1E 81 */	bl __dt__11dBgS_LinChkFv
/* 80985E60  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80985E64  38 80 FF FF */	li r4, -1
/* 80985E68  4B 6F 17 89 */	bl __dt__11dBgS_GndChkFv
/* 80985E6C  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80985E70  38 80 FF FF */	li r4, -1
/* 80985E74  4B 8E 1E 21 */	bl __dt__11cBgS_GndChkFv
/* 80985E78  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80985E7C  38 80 FF FF */	li r4, -1
/* 80985E80  4B 8C 40 C9 */	bl __dt__10dMsgFlow_cFv
/* 80985E84  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80985E88  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 80985E8C  38 84 5D A8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 80985E90  38 A0 00 06 */	li r5, 6
/* 80985E94  38 C0 00 03 */	li r6, 3
/* 80985E98  4B 9D BE 51 */	bl __destroy_arr
/* 80985E9C  38 7E 09 08 */	addi r3, r30, 0x908
/* 80985EA0  3C 80 80 98 */	lis r4, __dt__5csXyzFv@ha /* 0x80985DA8@ha */
/* 80985EA4  38 84 5D A8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80985DA8@l */
/* 80985EA8  38 A0 00 06 */	li r5, 6
/* 80985EAC  38 C0 00 03 */	li r6, 3
/* 80985EB0  4B 9D BE 39 */	bl __destroy_arr
/* 80985EB4  38 7E 08 54 */	addi r3, r30, 0x854
/* 80985EB8  3C 80 80 98 */	lis r4, __dt__4cXyzFv@ha /* 0x80985DE8@ha */
/* 80985EBC  38 84 5D E8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80985DE8@l */
/* 80985EC0  38 A0 00 0C */	li r5, 0xc
/* 80985EC4  38 C0 00 03 */	li r6, 3
/* 80985EC8  4B 9D BE 21 */	bl __destroy_arr
/* 80985ECC  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80985ED0  3C 80 80 98 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80985C54@ha */
/* 80985ED4  38 84 5C 54 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80985C54@l */
/* 80985ED8  38 A0 00 08 */	li r5, 8
/* 80985EDC  38 C0 00 05 */	li r6, 5
/* 80985EE0  4B 9D BE 09 */	bl __destroy_arr
/* 80985EE4  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80985EE8  41 82 00 10 */	beq lbl_80985EF8
/* 80985EEC  3C 60 80 99 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x8098BA38@ha */
/* 80985EF0  38 03 BA 38 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x8098BA38@l */
/* 80985EF4  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80985EF8:
/* 80985EF8  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80985EFC  41 82 00 28 */	beq lbl_80985F24
/* 80985F00  3C 60 80 99 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x8098BA2C@ha */
/* 80985F04  38 03 BA 2C */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x8098BA2C@l */
/* 80985F08  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80985F0C  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80985F10  38 80 FF FF */	li r4, -1
/* 80985F14  4B 8E 90 05 */	bl __dt__8cM3dGCirFv
/* 80985F18  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80985F1C  38 80 00 00 */	li r4, 0
/* 80985F20  4B 8E 21 91 */	bl __dt__13cBgS_PolyInfoFv
lbl_80985F24:
/* 80985F24  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80985F28  41 82 00 54 */	beq lbl_80985F7C
/* 80985F2C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80985F30  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80985F34  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80985F38  38 03 00 20 */	addi r0, r3, 0x20
/* 80985F3C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80985F40  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80985F44  41 82 00 24 */	beq lbl_80985F68
/* 80985F48  3C 60 80 99 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8098BA20@ha */
/* 80985F4C  38 03 BA 20 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8098BA20@l */
/* 80985F50  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80985F54  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80985F58  41 82 00 10 */	beq lbl_80985F68
/* 80985F5C  3C 60 80 99 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8098BA14@ha */
/* 80985F60  38 03 BA 14 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8098BA14@l */
/* 80985F64  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80985F68:
/* 80985F68  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80985F6C  41 82 00 10 */	beq lbl_80985F7C
/* 80985F70  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80985F74  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80985F78  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80985F7C:
/* 80985F7C  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80985F80  41 82 00 2C */	beq lbl_80985FAC
/* 80985F84  3C 60 80 99 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x8098B9F0@ha */
/* 80985F88  38 63 B9 F0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x8098B9F0@l */
/* 80985F8C  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80985F90  38 03 00 0C */	addi r0, r3, 0xc
/* 80985F94  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80985F98  38 03 00 18 */	addi r0, r3, 0x18
/* 80985F9C  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80985FA0  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80985FA4  38 80 00 00 */	li r4, 0
/* 80985FA8  4B 6E FF ED */	bl __dt__9dBgS_AcchFv
lbl_80985FAC:
/* 80985FAC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80985FB0  41 82 00 20 */	beq lbl_80985FD0
/* 80985FB4  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80985FB8  41 82 00 18 */	beq lbl_80985FD0
/* 80985FBC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80985FC0  41 82 00 10 */	beq lbl_80985FD0
/* 80985FC4  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8098B9E4@ha */
/* 80985FC8  38 03 B9 E4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8098B9E4@l */
/* 80985FCC  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80985FD0:
/* 80985FD0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80985FD4  41 82 00 20 */	beq lbl_80985FF4
/* 80985FD8  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80985FDC  41 82 00 18 */	beq lbl_80985FF4
/* 80985FE0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80985FE4  41 82 00 10 */	beq lbl_80985FF4
/* 80985FE8  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8098B9E4@ha */
/* 80985FEC  38 03 B9 E4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8098B9E4@l */
/* 80985FF0  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80985FF4:
/* 80985FF4  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80985FF8  41 82 00 20 */	beq lbl_80986018
/* 80985FFC  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80986000  41 82 00 18 */	beq lbl_80986018
/* 80986004  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80986008  41 82 00 10 */	beq lbl_80986018
/* 8098600C  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8098B9E4@ha */
/* 80986010  38 03 B9 E4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8098B9E4@l */
/* 80986014  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80986018:
/* 80986018  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 8098601C  41 82 00 20 */	beq lbl_8098603C
/* 80986020  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80986024  41 82 00 18 */	beq lbl_8098603C
/* 80986028  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 8098602C  41 82 00 10 */	beq lbl_8098603C
/* 80986030  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x8098B9E4@ha */
/* 80986034  38 03 B9 E4 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x8098B9E4@l */
/* 80986038  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_8098603C:
/* 8098603C  7F C3 F3 78 */	mr r3, r30
/* 80986040  38 80 00 00 */	li r4, 0
/* 80986044  4B 69 2C 49 */	bl __dt__10fopAc_ac_cFv
/* 80986048  7F E0 07 35 */	extsh. r0, r31
/* 8098604C  40 81 00 0C */	ble lbl_80986058
/* 80986050  7F C3 F3 78 */	mr r3, r30
/* 80986054  4B 94 8C E9 */	bl __dl__FPv
lbl_80986058:
/* 80986058  7F C3 F3 78 */	mr r3, r30
/* 8098605C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80986060  83 C1 00 08 */	lwz r30, 8(r1)
/* 80986064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80986068  7C 08 03 A6 */	mtlr r0
/* 8098606C  38 21 00 10 */	addi r1, r1, 0x10
/* 80986070  4E 80 00 20 */	blr 
