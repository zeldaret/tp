lbl_80A87BFC:
/* 80A87BFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A87C00  7C 08 02 A6 */	mflr r0
/* 80A87C04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A87C08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A87C0C  93 C1 00 08 */	stw r30, 8(r1)
/* 80A87C10  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A87C14  7C 9F 23 78 */	mr r31, r4
/* 80A87C18  41 82 02 14 */	beq lbl_80A87E2C
/* 80A87C1C  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80A87C20  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80A87C24  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80A87C28  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80A87C2C  38 80 FF FF */	li r4, -1
/* 80A87C30  4B 5F 00 AD */	bl __dt__11dBgS_LinChkFv
/* 80A87C34  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80A87C38  38 80 FF FF */	li r4, -1
/* 80A87C3C  4B 5E F9 B5 */	bl __dt__11dBgS_GndChkFv
/* 80A87C40  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80A87C44  38 80 FF FF */	li r4, -1
/* 80A87C48  4B 7E 00 4D */	bl __dt__11cBgS_GndChkFv
/* 80A87C4C  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80A87C50  38 80 FF FF */	li r4, -1
/* 80A87C54  4B 7C 22 F5 */	bl __dt__10dMsgFlow_cFv
/* 80A87C58  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80A87C5C  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A87B7C@ha */
/* 80A87C60  38 84 7B 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A87B7C@l */
/* 80A87C64  38 A0 00 06 */	li r5, 6
/* 80A87C68  38 C0 00 03 */	li r6, 3
/* 80A87C6C  4B 8D A0 7D */	bl __destroy_arr
/* 80A87C70  38 7E 09 08 */	addi r3, r30, 0x908
/* 80A87C74  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha /* 0x80A87B7C@ha */
/* 80A87C78  38 84 7B 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A87B7C@l */
/* 80A87C7C  38 A0 00 06 */	li r5, 6
/* 80A87C80  38 C0 00 03 */	li r6, 3
/* 80A87C84  4B 8D A0 65 */	bl __destroy_arr
/* 80A87C88  38 7E 08 54 */	addi r3, r30, 0x854
/* 80A87C8C  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha /* 0x80A87BBC@ha */
/* 80A87C90  38 84 7B BC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A87BBC@l */
/* 80A87C94  38 A0 00 0C */	li r5, 0xc
/* 80A87C98  38 C0 00 03 */	li r6, 3
/* 80A87C9C  4B 8D A0 4D */	bl __destroy_arr
/* 80A87CA0  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80A87CA4  3C 80 80 A8 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80A87A28@ha */
/* 80A87CA8  38 84 7A 28 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80A87A28@l */
/* 80A87CAC  38 A0 00 08 */	li r5, 8
/* 80A87CB0  38 C0 00 05 */	li r6, 5
/* 80A87CB4  4B 8D A0 35 */	bl __destroy_arr
/* 80A87CB8  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80A87CBC  41 82 00 10 */	beq lbl_80A87CCC
/* 80A87CC0  3C 60 80 A9 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A88AB0@ha */
/* 80A87CC4  38 03 8A B0 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80A88AB0@l */
/* 80A87CC8  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80A87CCC:
/* 80A87CCC  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80A87CD0  41 82 00 28 */	beq lbl_80A87CF8
/* 80A87CD4  3C 60 80 A9 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A88AA4@ha */
/* 80A87CD8  38 03 8A A4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A88AA4@l */
/* 80A87CDC  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80A87CE0  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80A87CE4  38 80 FF FF */	li r4, -1
/* 80A87CE8  4B 7E 72 31 */	bl __dt__8cM3dGCirFv
/* 80A87CEC  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80A87CF0  38 80 00 00 */	li r4, 0
/* 80A87CF4  4B 7E 03 BD */	bl __dt__13cBgS_PolyInfoFv
lbl_80A87CF8:
/* 80A87CF8  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80A87CFC  41 82 00 54 */	beq lbl_80A87D50
/* 80A87D00  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A87D04  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A87D08  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80A87D0C  38 03 00 20 */	addi r0, r3, 0x20
/* 80A87D10  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80A87D14  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80A87D18  41 82 00 24 */	beq lbl_80A87D3C
/* 80A87D1C  3C 60 80 A9 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A88A98@ha */
/* 80A87D20  38 03 8A 98 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A88A98@l */
/* 80A87D24  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80A87D28  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80A87D2C  41 82 00 10 */	beq lbl_80A87D3C
/* 80A87D30  3C 60 80 A9 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A88A8C@ha */
/* 80A87D34  38 03 8A 8C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A88A8C@l */
/* 80A87D38  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80A87D3C:
/* 80A87D3C  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80A87D40  41 82 00 10 */	beq lbl_80A87D50
/* 80A87D44  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A87D48  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A87D4C  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80A87D50:
/* 80A87D50  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80A87D54  41 82 00 2C */	beq lbl_80A87D80
/* 80A87D58  3C 60 80 A9 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A88A68@ha */
/* 80A87D5C  38 63 8A 68 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A88A68@l */
/* 80A87D60  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80A87D64  38 03 00 0C */	addi r0, r3, 0xc
/* 80A87D68  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80A87D6C  38 03 00 18 */	addi r0, r3, 0x18
/* 80A87D70  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80A87D74  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80A87D78  38 80 00 00 */	li r4, 0
/* 80A87D7C  4B 5E E2 19 */	bl __dt__9dBgS_AcchFv
lbl_80A87D80:
/* 80A87D80  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A87D84  41 82 00 20 */	beq lbl_80A87DA4
/* 80A87D88  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A87D8C  41 82 00 18 */	beq lbl_80A87DA4
/* 80A87D90  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A87D94  41 82 00 10 */	beq lbl_80A87DA4
/* 80A87D98  3C 60 80 A9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A88A5C@ha */
/* 80A87D9C  38 03 8A 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A88A5C@l */
/* 80A87DA0  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80A87DA4:
/* 80A87DA4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A87DA8  41 82 00 20 */	beq lbl_80A87DC8
/* 80A87DAC  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A87DB0  41 82 00 18 */	beq lbl_80A87DC8
/* 80A87DB4  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A87DB8  41 82 00 10 */	beq lbl_80A87DC8
/* 80A87DBC  3C 60 80 A9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A88A5C@ha */
/* 80A87DC0  38 03 8A 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A88A5C@l */
/* 80A87DC4  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80A87DC8:
/* 80A87DC8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A87DCC  41 82 00 20 */	beq lbl_80A87DEC
/* 80A87DD0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A87DD4  41 82 00 18 */	beq lbl_80A87DEC
/* 80A87DD8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A87DDC  41 82 00 10 */	beq lbl_80A87DEC
/* 80A87DE0  3C 60 80 A9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A88A5C@ha */
/* 80A87DE4  38 03 8A 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A88A5C@l */
/* 80A87DE8  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80A87DEC:
/* 80A87DEC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A87DF0  41 82 00 20 */	beq lbl_80A87E10
/* 80A87DF4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A87DF8  41 82 00 18 */	beq lbl_80A87E10
/* 80A87DFC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A87E00  41 82 00 10 */	beq lbl_80A87E10
/* 80A87E04  3C 60 80 A9 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A88A5C@ha */
/* 80A87E08  38 03 8A 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A88A5C@l */
/* 80A87E0C  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80A87E10:
/* 80A87E10  7F C3 F3 78 */	mr r3, r30
/* 80A87E14  38 80 00 00 */	li r4, 0
/* 80A87E18  4B 59 0E 75 */	bl __dt__10fopAc_ac_cFv
/* 80A87E1C  7F E0 07 35 */	extsh. r0, r31
/* 80A87E20  40 81 00 0C */	ble lbl_80A87E2C
/* 80A87E24  7F C3 F3 78 */	mr r3, r30
/* 80A87E28  4B 84 6F 15 */	bl __dl__FPv
lbl_80A87E2C:
/* 80A87E2C  7F C3 F3 78 */	mr r3, r30
/* 80A87E30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A87E34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A87E38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A87E3C  7C 08 03 A6 */	mtlr r0
/* 80A87E40  38 21 00 10 */	addi r1, r1, 0x10
/* 80A87E44  4E 80 00 20 */	blr 
