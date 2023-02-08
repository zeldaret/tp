lbl_80A208D8:
/* 80A208D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A208DC  7C 08 02 A6 */	mflr r0
/* 80A208E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A208E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A208E8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A208EC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A208F0  7C 9F 23 78 */	mr r31, r4
/* 80A208F4  41 82 02 14 */	beq lbl_80A20B08
/* 80A208F8  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80A208FC  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80A20900  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80A20904  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80A20908  38 80 FF FF */	li r4, -1
/* 80A2090C  4B 65 73 D1 */	bl __dt__11dBgS_LinChkFv
/* 80A20910  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80A20914  38 80 FF FF */	li r4, -1
/* 80A20918  4B 65 6C D9 */	bl __dt__11dBgS_GndChkFv
/* 80A2091C  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80A20920  38 80 FF FF */	li r4, -1
/* 80A20924  4B 84 73 71 */	bl __dt__11cBgS_GndChkFv
/* 80A20928  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80A2092C  38 80 FF FF */	li r4, -1
/* 80A20930  4B 82 96 19 */	bl __dt__10dMsgFlow_cFv
/* 80A20934  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80A20938  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha /* 0x80A1B3D4@ha */
/* 80A2093C  38 84 B3 D4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A1B3D4@l */
/* 80A20940  38 A0 00 06 */	li r5, 6
/* 80A20944  38 C0 00 03 */	li r6, 3
/* 80A20948  4B 94 13 A1 */	bl __destroy_arr
/* 80A2094C  38 7E 09 08 */	addi r3, r30, 0x908
/* 80A20950  3C 80 80 A2 */	lis r4, __dt__5csXyzFv@ha /* 0x80A1B3D4@ha */
/* 80A20954  38 84 B3 D4 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A1B3D4@l */
/* 80A20958  38 A0 00 06 */	li r5, 6
/* 80A2095C  38 C0 00 03 */	li r6, 3
/* 80A20960  4B 94 13 89 */	bl __destroy_arr
/* 80A20964  38 7E 08 54 */	addi r3, r30, 0x854
/* 80A20968  3C 80 80 A2 */	lis r4, __dt__4cXyzFv@ha /* 0x80A1B09C@ha */
/* 80A2096C  38 84 B0 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A1B09C@l */
/* 80A20970  38 A0 00 0C */	li r5, 0xc
/* 80A20974  38 C0 00 03 */	li r6, 3
/* 80A20978  4B 94 13 71 */	bl __destroy_arr
/* 80A2097C  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80A20980  3C 80 80 A2 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80A2077C@ha */
/* 80A20984  38 84 07 7C */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80A2077C@l */
/* 80A20988  38 A0 00 08 */	li r5, 8
/* 80A2098C  38 C0 00 05 */	li r6, 5
/* 80A20990  4B 94 13 59 */	bl __destroy_arr
/* 80A20994  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80A20998  41 82 00 10 */	beq lbl_80A209A8
/* 80A2099C  3C 60 80 A2 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A217AC@ha */
/* 80A209A0  38 03 17 AC */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80A217AC@l */
/* 80A209A4  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80A209A8:
/* 80A209A8  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80A209AC  41 82 00 28 */	beq lbl_80A209D4
/* 80A209B0  3C 60 80 A2 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A217A0@ha */
/* 80A209B4  38 03 17 A0 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A217A0@l */
/* 80A209B8  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80A209BC  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80A209C0  38 80 FF FF */	li r4, -1
/* 80A209C4  4B 84 E5 55 */	bl __dt__8cM3dGCirFv
/* 80A209C8  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80A209CC  38 80 00 00 */	li r4, 0
/* 80A209D0  4B 84 76 E1 */	bl __dt__13cBgS_PolyInfoFv
lbl_80A209D4:
/* 80A209D4  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80A209D8  41 82 00 54 */	beq lbl_80A20A2C
/* 80A209DC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A209E0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A209E4  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80A209E8  38 03 00 20 */	addi r0, r3, 0x20
/* 80A209EC  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80A209F0  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80A209F4  41 82 00 24 */	beq lbl_80A20A18
/* 80A209F8  3C 60 80 A2 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A21794@ha */
/* 80A209FC  38 03 17 94 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A21794@l */
/* 80A20A00  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80A20A04  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80A20A08  41 82 00 10 */	beq lbl_80A20A18
/* 80A20A0C  3C 60 80 A2 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A21788@ha */
/* 80A20A10  38 03 17 88 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A21788@l */
/* 80A20A14  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80A20A18:
/* 80A20A18  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80A20A1C  41 82 00 10 */	beq lbl_80A20A2C
/* 80A20A20  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A20A24  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A20A28  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80A20A2C:
/* 80A20A2C  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80A20A30  41 82 00 2C */	beq lbl_80A20A5C
/* 80A20A34  3C 60 80 A2 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A21764@ha */
/* 80A20A38  38 63 17 64 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A21764@l */
/* 80A20A3C  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80A20A40  38 03 00 0C */	addi r0, r3, 0xc
/* 80A20A44  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80A20A48  38 03 00 18 */	addi r0, r3, 0x18
/* 80A20A4C  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80A20A50  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80A20A54  38 80 00 00 */	li r4, 0
/* 80A20A58  4B 65 55 3D */	bl __dt__9dBgS_AcchFv
lbl_80A20A5C:
/* 80A20A5C  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A20A60  41 82 00 20 */	beq lbl_80A20A80
/* 80A20A64  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A20A68  41 82 00 18 */	beq lbl_80A20A80
/* 80A20A6C  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A20A70  41 82 00 10 */	beq lbl_80A20A80
/* 80A20A74  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A21758@ha */
/* 80A20A78  38 03 17 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A21758@l */
/* 80A20A7C  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80A20A80:
/* 80A20A80  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A20A84  41 82 00 20 */	beq lbl_80A20AA4
/* 80A20A88  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A20A8C  41 82 00 18 */	beq lbl_80A20AA4
/* 80A20A90  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A20A94  41 82 00 10 */	beq lbl_80A20AA4
/* 80A20A98  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A21758@ha */
/* 80A20A9C  38 03 17 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A21758@l */
/* 80A20AA0  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80A20AA4:
/* 80A20AA4  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A20AA8  41 82 00 20 */	beq lbl_80A20AC8
/* 80A20AAC  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A20AB0  41 82 00 18 */	beq lbl_80A20AC8
/* 80A20AB4  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A20AB8  41 82 00 10 */	beq lbl_80A20AC8
/* 80A20ABC  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A21758@ha */
/* 80A20AC0  38 03 17 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A21758@l */
/* 80A20AC4  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80A20AC8:
/* 80A20AC8  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A20ACC  41 82 00 20 */	beq lbl_80A20AEC
/* 80A20AD0  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A20AD4  41 82 00 18 */	beq lbl_80A20AEC
/* 80A20AD8  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A20ADC  41 82 00 10 */	beq lbl_80A20AEC
/* 80A20AE0  3C 60 80 A2 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A21758@ha */
/* 80A20AE4  38 03 17 58 */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A21758@l */
/* 80A20AE8  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80A20AEC:
/* 80A20AEC  7F C3 F3 78 */	mr r3, r30
/* 80A20AF0  38 80 00 00 */	li r4, 0
/* 80A20AF4  4B 5F 81 99 */	bl __dt__10fopAc_ac_cFv
/* 80A20AF8  7F E0 07 35 */	extsh. r0, r31
/* 80A20AFC  40 81 00 0C */	ble lbl_80A20B08
/* 80A20B00  7F C3 F3 78 */	mr r3, r30
/* 80A20B04  4B 8A E2 39 */	bl __dl__FPv
lbl_80A20B08:
/* 80A20B08  7F C3 F3 78 */	mr r3, r30
/* 80A20B0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A20B10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A20B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A20B18  7C 08 03 A6 */	mtlr r0
/* 80A20B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A20B20  4E 80 00 20 */	blr 
