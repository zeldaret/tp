lbl_80155BF4:
/* 80155BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80155BF8  7C 08 02 A6 */	mflr r0
/* 80155BFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80155C00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80155C04  93 C1 00 08 */	stw r30, 8(r1)
/* 80155C08  7C 7E 1B 79 */	or. r30, r3, r3
/* 80155C0C  7C 9F 23 78 */	mr r31, r4
/* 80155C10  41 82 02 14 */	beq lbl_80155E24
/* 80155C14  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80155C18  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80155C1C  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80155C20  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80155C24  38 80 FF FF */	li r4, -1
/* 80155C28  4B F2 20 B5 */	bl __dt__11dBgS_LinChkFv
/* 80155C2C  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80155C30  38 80 FF FF */	li r4, -1
/* 80155C34  4B F2 19 BD */	bl __dt__11dBgS_GndChkFv
/* 80155C38  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80155C3C  38 80 FF FF */	li r4, -1
/* 80155C40  48 11 20 55 */	bl __dt__11cBgS_GndChkFv
/* 80155C44  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80155C48  38 80 FF FF */	li r4, -1
/* 80155C4C  48 0F 42 FD */	bl __dt__10dMsgFlow_cFv
/* 80155C50  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80155C54  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha
/* 80155C58  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80155C5C  38 A0 00 06 */	li r5, 6
/* 80155C60  38 C0 00 03 */	li r6, 3
/* 80155C64  48 20 C0 85 */	bl __destroy_arr
/* 80155C68  38 7E 09 08 */	addi r3, r30, 0x908
/* 80155C6C  3C 80 80 02 */	lis r4, __dt__5csXyzFv@ha
/* 80155C70  38 84 8B D0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80155C74  38 A0 00 06 */	li r5, 6
/* 80155C78  38 C0 00 03 */	li r6, 3
/* 80155C7C  48 20 C0 6D */	bl __destroy_arr
/* 80155C80  38 7E 08 54 */	addi r3, r30, 0x854
/* 80155C84  3C 80 80 01 */	lis r4, __dt__4cXyzFv@ha
/* 80155C88  38 84 91 84 */	addi r4, r4, __dt__4cXyzFv@l
/* 80155C8C  38 A0 00 0C */	li r5, 0xc
/* 80155C90  38 C0 00 03 */	li r6, 3
/* 80155C94  48 20 C0 55 */	bl __destroy_arr
/* 80155C98  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80155C9C  3C 80 80 15 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80155CA0  38 84 5E 40 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80155CA4  38 A0 00 08 */	li r5, 8
/* 80155CA8  38 C0 00 05 */	li r6, 5
/* 80155CAC  48 20 C0 3D */	bl __destroy_arr
/* 80155CB0  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80155CB4  41 82 00 10 */	beq lbl_80155CC4
/* 80155CB8  3C 60 80 3B */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80155CBC  38 03 38 64 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80155CC0  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80155CC4:
/* 80155CC4  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80155CC8  41 82 00 28 */	beq lbl_80155CF0
/* 80155CCC  3C 60 80 3B */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80155CD0  38 03 B6 64 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80155CD4  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80155CD8  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80155CDC  38 80 FF FF */	li r4, -1
/* 80155CE0  48 11 92 39 */	bl __dt__8cM3dGCirFv
/* 80155CE4  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80155CE8  38 80 00 00 */	li r4, 0
/* 80155CEC  48 11 23 C5 */	bl __dt__13cBgS_PolyInfoFv
lbl_80155CF0:
/* 80155CF0  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80155CF4  41 82 00 54 */	beq lbl_80155D48
/* 80155CF8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80155CFC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80155D00  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80155D04  38 03 00 20 */	addi r0, r3, 0x20
/* 80155D08  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80155D0C  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80155D10  41 82 00 24 */	beq lbl_80155D34
/* 80155D14  3C 60 80 3B */	lis r3, __vt__10dCcD_GStts@ha
/* 80155D18  38 03 C3 10 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80155D1C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80155D20  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80155D24  41 82 00 10 */	beq lbl_80155D34
/* 80155D28  3C 60 80 3B */	lis r3, __vt__10cCcD_GStts@ha
/* 80155D2C  38 03 C3 1C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80155D30  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80155D34:
/* 80155D34  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80155D38  41 82 00 10 */	beq lbl_80155D48
/* 80155D3C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80155D40  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80155D44  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80155D48:
/* 80155D48  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80155D4C  41 82 00 2C */	beq lbl_80155D78
/* 80155D50  3C 60 80 3B */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80155D54  38 63 35 C8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80155D58  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80155D5C  38 03 00 0C */	addi r0, r3, 0xc
/* 80155D60  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80155D64  38 03 00 18 */	addi r0, r3, 0x18
/* 80155D68  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80155D6C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80155D70  38 80 00 00 */	li r4, 0
/* 80155D74  4B F2 02 21 */	bl __dt__9dBgS_AcchFv
lbl_80155D78:
/* 80155D78  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80155D7C  41 82 00 20 */	beq lbl_80155D9C
/* 80155D80  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80155D84  41 82 00 18 */	beq lbl_80155D9C
/* 80155D88  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80155D8C  41 82 00 10 */	beq lbl_80155D9C
/* 80155D90  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80155D94  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80155D98  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80155D9C:
/* 80155D9C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80155DA0  41 82 00 20 */	beq lbl_80155DC0
/* 80155DA4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80155DA8  41 82 00 18 */	beq lbl_80155DC0
/* 80155DAC  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80155DB0  41 82 00 10 */	beq lbl_80155DC0
/* 80155DB4  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80155DB8  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80155DBC  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80155DC0:
/* 80155DC0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80155DC4  41 82 00 20 */	beq lbl_80155DE4
/* 80155DC8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80155DCC  41 82 00 18 */	beq lbl_80155DE4
/* 80155DD0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80155DD4  41 82 00 10 */	beq lbl_80155DE4
/* 80155DD8  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80155DDC  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80155DE0  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80155DE4:
/* 80155DE4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80155DE8  41 82 00 20 */	beq lbl_80155E08
/* 80155DEC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80155DF0  41 82 00 18 */	beq lbl_80155E08
/* 80155DF4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80155DF8  41 82 00 10 */	beq lbl_80155E08
/* 80155DFC  3C 60 80 3A */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80155E00  38 03 33 54 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80155E04  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80155E08:
/* 80155E08  7F C3 F3 78 */	mr r3, r30
/* 80155E0C  38 80 00 00 */	li r4, 0
/* 80155E10  4B EC 2E 7D */	bl __dt__10fopAc_ac_cFv
/* 80155E14  7F E0 07 35 */	extsh. r0, r31
/* 80155E18  40 81 00 0C */	ble lbl_80155E24
/* 80155E1C  7F C3 F3 78 */	mr r3, r30
/* 80155E20  48 17 8F 1D */	bl __dl__FPv
lbl_80155E24:
/* 80155E24  7F C3 F3 78 */	mr r3, r30
/* 80155E28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80155E2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80155E30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80155E34  7C 08 03 A6 */	mtlr r0
/* 80155E38  38 21 00 10 */	addi r1, r1, 0x10
/* 80155E3C  4E 80 00 20 */	blr 
