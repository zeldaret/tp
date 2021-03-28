lbl_80AE9CAC:
/* 80AE9CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE9CB0  7C 08 02 A6 */	mflr r0
/* 80AE9CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE9CB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE9CBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE9CC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AE9CC4  7C 9F 23 78 */	mr r31, r4
/* 80AE9CC8  41 82 02 14 */	beq lbl_80AE9EDC
/* 80AE9CCC  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80AE9CD0  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80AE9CD4  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80AE9CD8  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80AE9CDC  38 80 FF FF */	li r4, -1
/* 80AE9CE0  4B 58 DF FC */	b __dt__11dBgS_LinChkFv
/* 80AE9CE4  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80AE9CE8  38 80 FF FF */	li r4, -1
/* 80AE9CEC  4B 58 D9 04 */	b __dt__11dBgS_GndChkFv
/* 80AE9CF0  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80AE9CF4  38 80 FF FF */	li r4, -1
/* 80AE9CF8  4B 77 DF 9C */	b __dt__11cBgS_GndChkFv
/* 80AE9CFC  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80AE9D00  38 80 FF FF */	li r4, -1
/* 80AE9D04  4B 76 02 44 */	b __dt__10dMsgFlow_cFv
/* 80AE9D08  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80AE9D0C  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AE9D10  38 84 9C 2C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AE9D14  38 A0 00 06 */	li r5, 6
/* 80AE9D18  38 C0 00 03 */	li r6, 3
/* 80AE9D1C  4B 87 7F CC */	b __destroy_arr
/* 80AE9D20  38 7E 09 08 */	addi r3, r30, 0x908
/* 80AE9D24  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AE9D28  38 84 9C 2C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AE9D2C  38 A0 00 06 */	li r5, 6
/* 80AE9D30  38 C0 00 03 */	li r6, 3
/* 80AE9D34  4B 87 7F B4 */	b __destroy_arr
/* 80AE9D38  38 7E 08 54 */	addi r3, r30, 0x854
/* 80AE9D3C  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AE9D40  38 84 9C 6C */	addi r4, r4, __dt__4cXyzFv@l
/* 80AE9D44  38 A0 00 0C */	li r5, 0xc
/* 80AE9D48  38 C0 00 03 */	li r6, 3
/* 80AE9D4C  4B 87 7F 9C */	b __destroy_arr
/* 80AE9D50  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80AE9D54  3C 80 80 AF */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80AE9D58  38 84 9A D8 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80AE9D5C  38 A0 00 08 */	li r5, 8
/* 80AE9D60  38 C0 00 05 */	li r6, 5
/* 80AE9D64  4B 87 7F 84 */	b __destroy_arr
/* 80AE9D68  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80AE9D6C  41 82 00 10 */	beq lbl_80AE9D7C
/* 80AE9D70  3C 60 80 AF */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80AE9D74  38 03 A6 F4 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80AE9D78  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80AE9D7C:
/* 80AE9D7C  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80AE9D80  41 82 00 28 */	beq lbl_80AE9DA8
/* 80AE9D84  3C 60 80 AF */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AE9D88  38 03 A6 E8 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AE9D8C  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80AE9D90  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80AE9D94  38 80 FF FF */	li r4, -1
/* 80AE9D98  4B 78 51 80 */	b __dt__8cM3dGCirFv
/* 80AE9D9C  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80AE9DA0  38 80 00 00 */	li r4, 0
/* 80AE9DA4  4B 77 E3 0C */	b __dt__13cBgS_PolyInfoFv
lbl_80AE9DA8:
/* 80AE9DA8  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80AE9DAC  41 82 00 54 */	beq lbl_80AE9E00
/* 80AE9DB0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AE9DB4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AE9DB8  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80AE9DBC  38 03 00 20 */	addi r0, r3, 0x20
/* 80AE9DC0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80AE9DC4  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80AE9DC8  41 82 00 24 */	beq lbl_80AE9DEC
/* 80AE9DCC  3C 60 80 AF */	lis r3, __vt__10dCcD_GStts@ha
/* 80AE9DD0  38 03 A6 DC */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AE9DD4  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80AE9DD8  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80AE9DDC  41 82 00 10 */	beq lbl_80AE9DEC
/* 80AE9DE0  3C 60 80 AF */	lis r3, __vt__10cCcD_GStts@ha
/* 80AE9DE4  38 03 A6 D0 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AE9DE8  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80AE9DEC:
/* 80AE9DEC  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80AE9DF0  41 82 00 10 */	beq lbl_80AE9E00
/* 80AE9DF4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AE9DF8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AE9DFC  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80AE9E00:
/* 80AE9E00  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80AE9E04  41 82 00 2C */	beq lbl_80AE9E30
/* 80AE9E08  3C 60 80 AF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AE9E0C  38 63 A6 AC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AE9E10  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80AE9E14  38 03 00 0C */	addi r0, r3, 0xc
/* 80AE9E18  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80AE9E1C  38 03 00 18 */	addi r0, r3, 0x18
/* 80AE9E20  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80AE9E24  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80AE9E28  38 80 00 00 */	li r4, 0
/* 80AE9E2C  4B 58 C1 68 */	b __dt__9dBgS_AcchFv
lbl_80AE9E30:
/* 80AE9E30  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AE9E34  41 82 00 20 */	beq lbl_80AE9E54
/* 80AE9E38  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AE9E3C  41 82 00 18 */	beq lbl_80AE9E54
/* 80AE9E40  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AE9E44  41 82 00 10 */	beq lbl_80AE9E54
/* 80AE9E48  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AE9E4C  38 03 A6 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AE9E50  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80AE9E54:
/* 80AE9E54  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AE9E58  41 82 00 20 */	beq lbl_80AE9E78
/* 80AE9E5C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AE9E60  41 82 00 18 */	beq lbl_80AE9E78
/* 80AE9E64  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AE9E68  41 82 00 10 */	beq lbl_80AE9E78
/* 80AE9E6C  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AE9E70  38 03 A6 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AE9E74  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80AE9E78:
/* 80AE9E78  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AE9E7C  41 82 00 20 */	beq lbl_80AE9E9C
/* 80AE9E80  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AE9E84  41 82 00 18 */	beq lbl_80AE9E9C
/* 80AE9E88  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AE9E8C  41 82 00 10 */	beq lbl_80AE9E9C
/* 80AE9E90  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AE9E94  38 03 A6 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AE9E98  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80AE9E9C:
/* 80AE9E9C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AE9EA0  41 82 00 20 */	beq lbl_80AE9EC0
/* 80AE9EA4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AE9EA8  41 82 00 18 */	beq lbl_80AE9EC0
/* 80AE9EAC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AE9EB0  41 82 00 10 */	beq lbl_80AE9EC0
/* 80AE9EB4  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AE9EB8  38 03 A6 A0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AE9EBC  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80AE9EC0:
/* 80AE9EC0  7F C3 F3 78 */	mr r3, r30
/* 80AE9EC4  38 80 00 00 */	li r4, 0
/* 80AE9EC8  4B 52 ED C4 */	b __dt__10fopAc_ac_cFv
/* 80AE9ECC  7F E0 07 35 */	extsh. r0, r31
/* 80AE9ED0  40 81 00 0C */	ble lbl_80AE9EDC
/* 80AE9ED4  7F C3 F3 78 */	mr r3, r30
/* 80AE9ED8  4B 7E 4E 64 */	b __dl__FPv
lbl_80AE9EDC:
/* 80AE9EDC  7F C3 F3 78 */	mr r3, r30
/* 80AE9EE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE9EE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE9EE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE9EEC  7C 08 03 A6 */	mtlr r0
/* 80AE9EF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE9EF4  4E 80 00 20 */	blr 
