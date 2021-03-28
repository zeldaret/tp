lbl_80977D94:
/* 80977D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80977D98  7C 08 02 A6 */	mflr r0
/* 80977D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80977DA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80977DA4  93 C1 00 08 */	stw r30, 8(r1)
/* 80977DA8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80977DAC  7C 9F 23 78 */	mr r31, r4
/* 80977DB0  41 82 02 14 */	beq lbl_80977FC4
/* 80977DB4  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80977DB8  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80977DBC  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80977DC0  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80977DC4  38 80 FF FF */	li r4, -1
/* 80977DC8  4B 6F FF 14 */	b __dt__11dBgS_LinChkFv
/* 80977DCC  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80977DD0  38 80 FF FF */	li r4, -1
/* 80977DD4  4B 6F F8 1C */	b __dt__11dBgS_GndChkFv
/* 80977DD8  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80977DDC  38 80 FF FF */	li r4, -1
/* 80977DE0  4B 8E FE B4 */	b __dt__11cBgS_GndChkFv
/* 80977DE4  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80977DE8  38 80 FF FF */	li r4, -1
/* 80977DEC  4B 8D 21 5C */	b __dt__10dMsgFlow_cFv
/* 80977DF0  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80977DF4  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha
/* 80977DF8  38 84 7D 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 80977DFC  38 A0 00 06 */	li r5, 6
/* 80977E00  38 C0 00 03 */	li r6, 3
/* 80977E04  4B 9E 9E E4 */	b __destroy_arr
/* 80977E08  38 7E 09 08 */	addi r3, r30, 0x908
/* 80977E0C  3C 80 80 97 */	lis r4, __dt__5csXyzFv@ha
/* 80977E10  38 84 7D 14 */	addi r4, r4, __dt__5csXyzFv@l
/* 80977E14  38 A0 00 06 */	li r5, 6
/* 80977E18  38 C0 00 03 */	li r6, 3
/* 80977E1C  4B 9E 9E CC */	b __destroy_arr
/* 80977E20  38 7E 08 54 */	addi r3, r30, 0x854
/* 80977E24  3C 80 80 97 */	lis r4, __dt__4cXyzFv@ha
/* 80977E28  38 84 7D 54 */	addi r4, r4, __dt__4cXyzFv@l
/* 80977E2C  38 A0 00 0C */	li r5, 0xc
/* 80977E30  38 C0 00 03 */	li r6, 3
/* 80977E34  4B 9E 9E B4 */	b __destroy_arr
/* 80977E38  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80977E3C  3C 80 80 97 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80977E40  38 84 7B C0 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80977E44  38 A0 00 08 */	li r5, 8
/* 80977E48  38 C0 00 05 */	li r6, 5
/* 80977E4C  4B 9E 9E 9C */	b __destroy_arr
/* 80977E50  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80977E54  41 82 00 10 */	beq lbl_80977E64
/* 80977E58  3C 60 80 98 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80977E5C  38 03 8B 34 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80977E60  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80977E64:
/* 80977E64  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80977E68  41 82 00 28 */	beq lbl_80977E90
/* 80977E6C  3C 60 80 98 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80977E70  38 03 8B 28 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80977E74  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80977E78  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80977E7C  38 80 FF FF */	li r4, -1
/* 80977E80  4B 8F 70 98 */	b __dt__8cM3dGCirFv
/* 80977E84  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80977E88  38 80 00 00 */	li r4, 0
/* 80977E8C  4B 8F 02 24 */	b __dt__13cBgS_PolyInfoFv
lbl_80977E90:
/* 80977E90  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80977E94  41 82 00 54 */	beq lbl_80977EE8
/* 80977E98  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80977E9C  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80977EA0  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80977EA4  38 03 00 20 */	addi r0, r3, 0x20
/* 80977EA8  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80977EAC  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80977EB0  41 82 00 24 */	beq lbl_80977ED4
/* 80977EB4  3C 60 80 98 */	lis r3, __vt__10dCcD_GStts@ha
/* 80977EB8  38 03 8B 1C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80977EBC  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80977EC0  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80977EC4  41 82 00 10 */	beq lbl_80977ED4
/* 80977EC8  3C 60 80 98 */	lis r3, __vt__10cCcD_GStts@ha
/* 80977ECC  38 03 8B 10 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80977ED0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80977ED4:
/* 80977ED4  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80977ED8  41 82 00 10 */	beq lbl_80977EE8
/* 80977EDC  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80977EE0  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80977EE4  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80977EE8:
/* 80977EE8  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80977EEC  41 82 00 2C */	beq lbl_80977F18
/* 80977EF0  3C 60 80 98 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80977EF4  38 63 8A EC */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80977EF8  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80977EFC  38 03 00 0C */	addi r0, r3, 0xc
/* 80977F00  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80977F04  38 03 00 18 */	addi r0, r3, 0x18
/* 80977F08  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80977F0C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80977F10  38 80 00 00 */	li r4, 0
/* 80977F14  4B 6F E0 80 */	b __dt__9dBgS_AcchFv
lbl_80977F18:
/* 80977F18  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80977F1C  41 82 00 20 */	beq lbl_80977F3C
/* 80977F20  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80977F24  41 82 00 18 */	beq lbl_80977F3C
/* 80977F28  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80977F2C  41 82 00 10 */	beq lbl_80977F3C
/* 80977F30  3C 60 80 98 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80977F34  38 03 8A E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80977F38  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80977F3C:
/* 80977F3C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80977F40  41 82 00 20 */	beq lbl_80977F60
/* 80977F44  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80977F48  41 82 00 18 */	beq lbl_80977F60
/* 80977F4C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80977F50  41 82 00 10 */	beq lbl_80977F60
/* 80977F54  3C 60 80 98 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80977F58  38 03 8A E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80977F5C  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80977F60:
/* 80977F60  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80977F64  41 82 00 20 */	beq lbl_80977F84
/* 80977F68  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80977F6C  41 82 00 18 */	beq lbl_80977F84
/* 80977F70  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80977F74  41 82 00 10 */	beq lbl_80977F84
/* 80977F78  3C 60 80 98 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80977F7C  38 03 8A E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80977F80  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80977F84:
/* 80977F84  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80977F88  41 82 00 20 */	beq lbl_80977FA8
/* 80977F8C  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80977F90  41 82 00 18 */	beq lbl_80977FA8
/* 80977F94  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80977F98  41 82 00 10 */	beq lbl_80977FA8
/* 80977F9C  3C 60 80 98 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80977FA0  38 03 8A E0 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80977FA4  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80977FA8:
/* 80977FA8  7F C3 F3 78 */	mr r3, r30
/* 80977FAC  38 80 00 00 */	li r4, 0
/* 80977FB0  4B 6A 0C DC */	b __dt__10fopAc_ac_cFv
/* 80977FB4  7F E0 07 35 */	extsh. r0, r31
/* 80977FB8  40 81 00 0C */	ble lbl_80977FC4
/* 80977FBC  7F C3 F3 78 */	mr r3, r30
/* 80977FC0  4B 95 6D 7C */	b __dl__FPv
lbl_80977FC4:
/* 80977FC4  7F C3 F3 78 */	mr r3, r30
/* 80977FC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80977FCC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80977FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80977FD4  7C 08 03 A6 */	mtlr r0
/* 80977FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80977FDC  4E 80 00 20 */	blr 
