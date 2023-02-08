lbl_809F7D84:
/* 809F7D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F7D88  7C 08 02 A6 */	mflr r0
/* 809F7D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F7D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F7D94  93 C1 00 08 */	stw r30, 8(r1)
/* 809F7D98  7C 7E 1B 79 */	or. r30, r3, r3
/* 809F7D9C  7C 9F 23 78 */	mr r31, r4
/* 809F7DA0  41 82 02 14 */	beq lbl_809F7FB4
/* 809F7DA4  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 809F7DA8  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 809F7DAC  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809F7DB0  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 809F7DB4  38 80 FF FF */	li r4, -1
/* 809F7DB8  4B 67 FF 25 */	bl __dt__11dBgS_LinChkFv
/* 809F7DBC  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 809F7DC0  38 80 FF FF */	li r4, -1
/* 809F7DC4  4B 67 F8 2D */	bl __dt__11dBgS_GndChkFv
/* 809F7DC8  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 809F7DCC  38 80 FF FF */	li r4, -1
/* 809F7DD0  4B 86 FE C5 */	bl __dt__11cBgS_GndChkFv
/* 809F7DD4  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 809F7DD8  38 80 FF FF */	li r4, -1
/* 809F7DDC  4B 85 21 6D */	bl __dt__10dMsgFlow_cFv
/* 809F7DE0  38 7E 09 1A */	addi r3, r30, 0x91a
/* 809F7DE4  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha /* 0x809F7D04@ha */
/* 809F7DE8  38 84 7D 04 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809F7D04@l */
/* 809F7DEC  38 A0 00 06 */	li r5, 6
/* 809F7DF0  38 C0 00 03 */	li r6, 3
/* 809F7DF4  4B 96 9E F5 */	bl __destroy_arr
/* 809F7DF8  38 7E 09 08 */	addi r3, r30, 0x908
/* 809F7DFC  3C 80 80 9F */	lis r4, __dt__5csXyzFv@ha /* 0x809F7D04@ha */
/* 809F7E00  38 84 7D 04 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809F7D04@l */
/* 809F7E04  38 A0 00 06 */	li r5, 6
/* 809F7E08  38 C0 00 03 */	li r6, 3
/* 809F7E0C  4B 96 9E DD */	bl __destroy_arr
/* 809F7E10  38 7E 08 54 */	addi r3, r30, 0x854
/* 809F7E14  3C 80 80 9F */	lis r4, __dt__4cXyzFv@ha /* 0x809F7D44@ha */
/* 809F7E18  38 84 7D 44 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809F7D44@l */
/* 809F7E1C  38 A0 00 0C */	li r5, 0xc
/* 809F7E20  38 C0 00 03 */	li r6, 3
/* 809F7E24  4B 96 9E C5 */	bl __destroy_arr
/* 809F7E28  38 7E 08 2C */	addi r3, r30, 0x82c
/* 809F7E2C  3C 80 80 9F */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809F7BB0@ha */
/* 809F7E30  38 84 7B B0 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809F7BB0@l */
/* 809F7E34  38 A0 00 08 */	li r5, 8
/* 809F7E38  38 C0 00 05 */	li r6, 5
/* 809F7E3C  4B 96 9E AD */	bl __destroy_arr
/* 809F7E40  34 1E 08 24 */	addic. r0, r30, 0x824
/* 809F7E44  41 82 00 10 */	beq lbl_809F7E54
/* 809F7E48  3C 60 80 A0 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x809F8E80@ha */
/* 809F7E4C  38 03 8E 80 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x809F8E80@l */
/* 809F7E50  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_809F7E54:
/* 809F7E54  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 809F7E58  41 82 00 28 */	beq lbl_809F7E80
/* 809F7E5C  3C 60 80 A0 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809F8E74@ha */
/* 809F7E60  38 03 8E 74 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809F8E74@l */
/* 809F7E64  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 809F7E68  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 809F7E6C  38 80 FF FF */	li r4, -1
/* 809F7E70  4B 87 70 A9 */	bl __dt__8cM3dGCirFv
/* 809F7E74  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809F7E78  38 80 00 00 */	li r4, 0
/* 809F7E7C  4B 87 02 35 */	bl __dt__13cBgS_PolyInfoFv
lbl_809F7E80:
/* 809F7E80  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809F7E84  41 82 00 54 */	beq lbl_809F7ED8
/* 809F7E88  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809F7E8C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809F7E90  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 809F7E94  38 03 00 20 */	addi r0, r3, 0x20
/* 809F7E98  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809F7E9C  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809F7EA0  41 82 00 24 */	beq lbl_809F7EC4
/* 809F7EA4  3C 60 80 A0 */	lis r3, __vt__10dCcD_GStts@ha /* 0x809F8E68@ha */
/* 809F7EA8  38 03 8E 68 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809F8E68@l */
/* 809F7EAC  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809F7EB0  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809F7EB4  41 82 00 10 */	beq lbl_809F7EC4
/* 809F7EB8  3C 60 80 A0 */	lis r3, __vt__10cCcD_GStts@ha /* 0x809F8E5C@ha */
/* 809F7EBC  38 03 8E 5C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809F8E5C@l */
/* 809F7EC0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_809F7EC4:
/* 809F7EC4  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809F7EC8  41 82 00 10 */	beq lbl_809F7ED8
/* 809F7ECC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809F7ED0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809F7ED4  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_809F7ED8:
/* 809F7ED8  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 809F7EDC  41 82 00 2C */	beq lbl_809F7F08
/* 809F7EE0  3C 60 80 A0 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809F8E38@ha */
/* 809F7EE4  38 63 8E 38 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809F8E38@l */
/* 809F7EE8  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 809F7EEC  38 03 00 0C */	addi r0, r3, 0xc
/* 809F7EF0  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 809F7EF4  38 03 00 18 */	addi r0, r3, 0x18
/* 809F7EF8  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 809F7EFC  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809F7F00  38 80 00 00 */	li r4, 0
/* 809F7F04  4B 67 E0 91 */	bl __dt__9dBgS_AcchFv
lbl_809F7F08:
/* 809F7F08  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809F7F0C  41 82 00 20 */	beq lbl_809F7F2C
/* 809F7F10  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809F7F14  41 82 00 18 */	beq lbl_809F7F2C
/* 809F7F18  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809F7F1C  41 82 00 10 */	beq lbl_809F7F2C
/* 809F7F20  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809F8E2C@ha */
/* 809F7F24  38 03 8E 2C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809F8E2C@l */
/* 809F7F28  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_809F7F2C:
/* 809F7F2C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809F7F30  41 82 00 20 */	beq lbl_809F7F50
/* 809F7F34  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809F7F38  41 82 00 18 */	beq lbl_809F7F50
/* 809F7F3C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809F7F40  41 82 00 10 */	beq lbl_809F7F50
/* 809F7F44  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809F8E2C@ha */
/* 809F7F48  38 03 8E 2C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809F8E2C@l */
/* 809F7F4C  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_809F7F50:
/* 809F7F50  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809F7F54  41 82 00 20 */	beq lbl_809F7F74
/* 809F7F58  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809F7F5C  41 82 00 18 */	beq lbl_809F7F74
/* 809F7F60  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809F7F64  41 82 00 10 */	beq lbl_809F7F74
/* 809F7F68  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809F8E2C@ha */
/* 809F7F6C  38 03 8E 2C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809F8E2C@l */
/* 809F7F70  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_809F7F74:
/* 809F7F74  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809F7F78  41 82 00 20 */	beq lbl_809F7F98
/* 809F7F7C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809F7F80  41 82 00 18 */	beq lbl_809F7F98
/* 809F7F84  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809F7F88  41 82 00 10 */	beq lbl_809F7F98
/* 809F7F8C  3C 60 80 A0 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809F8E2C@ha */
/* 809F7F90  38 03 8E 2C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809F8E2C@l */
/* 809F7F94  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_809F7F98:
/* 809F7F98  7F C3 F3 78 */	mr r3, r30
/* 809F7F9C  38 80 00 00 */	li r4, 0
/* 809F7FA0  4B 62 0C ED */	bl __dt__10fopAc_ac_cFv
/* 809F7FA4  7F E0 07 35 */	extsh. r0, r31
/* 809F7FA8  40 81 00 0C */	ble lbl_809F7FB4
/* 809F7FAC  7F C3 F3 78 */	mr r3, r30
/* 809F7FB0  4B 8D 6D 8D */	bl __dl__FPv
lbl_809F7FB4:
/* 809F7FB4  7F C3 F3 78 */	mr r3, r30
/* 809F7FB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F7FBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 809F7FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F7FC4  7C 08 03 A6 */	mtlr r0
/* 809F7FC8  38 21 00 10 */	addi r1, r1, 0x10
/* 809F7FCC  4E 80 00 20 */	blr 
