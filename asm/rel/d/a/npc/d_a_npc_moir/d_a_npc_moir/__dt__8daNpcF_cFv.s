lbl_80A82ADC:
/* 80A82ADC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A82AE0  7C 08 02 A6 */	mflr r0
/* 80A82AE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A82AE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A82AEC  93 C1 00 08 */	stw r30, 8(r1)
/* 80A82AF0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A82AF4  7C 9F 23 78 */	mr r31, r4
/* 80A82AF8  41 82 02 14 */	beq lbl_80A82D0C
/* 80A82AFC  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80A82B00  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80A82B04  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80A82B08  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80A82B0C  38 80 FF FF */	li r4, -1
/* 80A82B10  4B 5F 51 CC */	b __dt__11dBgS_LinChkFv
/* 80A82B14  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80A82B18  38 80 FF FF */	li r4, -1
/* 80A82B1C  4B 5F 4A D4 */	b __dt__11dBgS_GndChkFv
/* 80A82B20  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80A82B24  38 80 FF FF */	li r4, -1
/* 80A82B28  4B 7E 51 6C */	b __dt__11cBgS_GndChkFv
/* 80A82B2C  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80A82B30  38 80 FF FF */	li r4, -1
/* 80A82B34  4B 7C 74 14 */	b __dt__10dMsgFlow_cFv
/* 80A82B38  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80A82B3C  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha
/* 80A82B40  38 84 2A 5C */	addi r4, r4, __dt__5csXyzFv@l
/* 80A82B44  38 A0 00 06 */	li r5, 6
/* 80A82B48  38 C0 00 03 */	li r6, 3
/* 80A82B4C  4B 8D F1 9C */	b __destroy_arr
/* 80A82B50  38 7E 09 08 */	addi r3, r30, 0x908
/* 80A82B54  3C 80 80 A8 */	lis r4, __dt__5csXyzFv@ha
/* 80A82B58  38 84 2A 5C */	addi r4, r4, __dt__5csXyzFv@l
/* 80A82B5C  38 A0 00 06 */	li r5, 6
/* 80A82B60  38 C0 00 03 */	li r6, 3
/* 80A82B64  4B 8D F1 84 */	b __destroy_arr
/* 80A82B68  38 7E 08 54 */	addi r3, r30, 0x854
/* 80A82B6C  3C 80 80 A8 */	lis r4, __dt__4cXyzFv@ha
/* 80A82B70  38 84 2A 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80A82B74  38 A0 00 0C */	li r5, 0xc
/* 80A82B78  38 C0 00 03 */	li r6, 3
/* 80A82B7C  4B 8D F1 6C */	b __destroy_arr
/* 80A82B80  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80A82B84  3C 80 80 A8 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80A82B88  38 84 29 08 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80A82B8C  38 A0 00 08 */	li r5, 8
/* 80A82B90  38 C0 00 05 */	li r6, 5
/* 80A82B94  4B 8D F1 54 */	b __destroy_arr
/* 80A82B98  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80A82B9C  41 82 00 10 */	beq lbl_80A82BAC
/* 80A82BA0  3C 60 80 A8 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80A82BA4  38 03 3D 30 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80A82BA8  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80A82BAC:
/* 80A82BAC  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80A82BB0  41 82 00 28 */	beq lbl_80A82BD8
/* 80A82BB4  3C 60 80 A8 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80A82BB8  38 03 3D 24 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80A82BBC  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80A82BC0  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80A82BC4  38 80 FF FF */	li r4, -1
/* 80A82BC8  4B 7E C3 50 */	b __dt__8cM3dGCirFv
/* 80A82BCC  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80A82BD0  38 80 00 00 */	li r4, 0
/* 80A82BD4  4B 7E 54 DC */	b __dt__13cBgS_PolyInfoFv
lbl_80A82BD8:
/* 80A82BD8  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80A82BDC  41 82 00 54 */	beq lbl_80A82C30
/* 80A82BE0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80A82BE4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80A82BE8  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80A82BEC  38 03 00 20 */	addi r0, r3, 0x20
/* 80A82BF0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80A82BF4  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80A82BF8  41 82 00 24 */	beq lbl_80A82C1C
/* 80A82BFC  3C 60 80 A8 */	lis r3, __vt__10dCcD_GStts@ha
/* 80A82C00  38 03 3D 18 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80A82C04  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80A82C08  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80A82C0C  41 82 00 10 */	beq lbl_80A82C1C
/* 80A82C10  3C 60 80 A8 */	lis r3, __vt__10cCcD_GStts@ha
/* 80A82C14  38 03 3D 0C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80A82C18  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80A82C1C:
/* 80A82C1C  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80A82C20  41 82 00 10 */	beq lbl_80A82C30
/* 80A82C24  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80A82C28  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80A82C2C  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80A82C30:
/* 80A82C30  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80A82C34  41 82 00 2C */	beq lbl_80A82C60
/* 80A82C38  3C 60 80 A8 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80A82C3C  38 63 3C E8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80A82C40  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80A82C44  38 03 00 0C */	addi r0, r3, 0xc
/* 80A82C48  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80A82C4C  38 03 00 18 */	addi r0, r3, 0x18
/* 80A82C50  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80A82C54  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80A82C58  38 80 00 00 */	li r4, 0
/* 80A82C5C  4B 5F 33 38 */	b __dt__9dBgS_AcchFv
lbl_80A82C60:
/* 80A82C60  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A82C64  41 82 00 20 */	beq lbl_80A82C84
/* 80A82C68  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A82C6C  41 82 00 18 */	beq lbl_80A82C84
/* 80A82C70  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A82C74  41 82 00 10 */	beq lbl_80A82C84
/* 80A82C78  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A82C7C  38 03 3C DC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A82C80  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80A82C84:
/* 80A82C84  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A82C88  41 82 00 20 */	beq lbl_80A82CA8
/* 80A82C8C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A82C90  41 82 00 18 */	beq lbl_80A82CA8
/* 80A82C94  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A82C98  41 82 00 10 */	beq lbl_80A82CA8
/* 80A82C9C  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A82CA0  38 03 3C DC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A82CA4  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80A82CA8:
/* 80A82CA8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A82CAC  41 82 00 20 */	beq lbl_80A82CCC
/* 80A82CB0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A82CB4  41 82 00 18 */	beq lbl_80A82CCC
/* 80A82CB8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A82CBC  41 82 00 10 */	beq lbl_80A82CCC
/* 80A82CC0  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A82CC4  38 03 3C DC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A82CC8  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80A82CCC:
/* 80A82CCC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A82CD0  41 82 00 20 */	beq lbl_80A82CF0
/* 80A82CD4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A82CD8  41 82 00 18 */	beq lbl_80A82CF0
/* 80A82CDC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A82CE0  41 82 00 10 */	beq lbl_80A82CF0
/* 80A82CE4  3C 60 80 A8 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80A82CE8  38 03 3C DC */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80A82CEC  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80A82CF0:
/* 80A82CF0  7F C3 F3 78 */	mr r3, r30
/* 80A82CF4  38 80 00 00 */	li r4, 0
/* 80A82CF8  4B 59 5F 94 */	b __dt__10fopAc_ac_cFv
/* 80A82CFC  7F E0 07 35 */	extsh. r0, r31
/* 80A82D00  40 81 00 0C */	ble lbl_80A82D0C
/* 80A82D04  7F C3 F3 78 */	mr r3, r30
/* 80A82D08  4B 84 C0 34 */	b __dl__FPv
lbl_80A82D0C:
/* 80A82D0C  7F C3 F3 78 */	mr r3, r30
/* 80A82D10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A82D14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A82D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A82D1C  7C 08 03 A6 */	mtlr r0
/* 80A82D20  38 21 00 10 */	addi r1, r1, 0x10
/* 80A82D24  4E 80 00 20 */	blr 
