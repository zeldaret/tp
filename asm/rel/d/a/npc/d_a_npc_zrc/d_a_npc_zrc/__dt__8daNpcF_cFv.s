lbl_80B92AF8:
/* 80B92AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B92AFC  7C 08 02 A6 */	mflr r0
/* 80B92B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B92B04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B92B08  93 C1 00 08 */	stw r30, 8(r1)
/* 80B92B0C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B92B10  7C 9F 23 78 */	mr r31, r4
/* 80B92B14  41 82 02 14 */	beq lbl_80B92D28
/* 80B92B18  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80B92B1C  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80B92B20  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80B92B24  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80B92B28  38 80 FF FF */	li r4, -1
/* 80B92B2C  4B 4E 51 B0 */	b __dt__11dBgS_LinChkFv
/* 80B92B30  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80B92B34  38 80 FF FF */	li r4, -1
/* 80B92B38  4B 4E 4A B8 */	b __dt__11dBgS_GndChkFv
/* 80B92B3C  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80B92B40  38 80 FF FF */	li r4, -1
/* 80B92B44  4B 6D 51 50 */	b __dt__11cBgS_GndChkFv
/* 80B92B48  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80B92B4C  38 80 FF FF */	li r4, -1
/* 80B92B50  4B 6B 73 F8 */	b __dt__10dMsgFlow_cFv
/* 80B92B54  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80B92B58  3C 80 80 B9 */	lis r4, __dt__5csXyzFv@ha
/* 80B92B5C  38 84 2A 78 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B92B60  38 A0 00 06 */	li r5, 6
/* 80B92B64  38 C0 00 03 */	li r6, 3
/* 80B92B68  4B 7C F1 80 */	b __destroy_arr
/* 80B92B6C  38 7E 09 08 */	addi r3, r30, 0x908
/* 80B92B70  3C 80 80 B9 */	lis r4, __dt__5csXyzFv@ha
/* 80B92B74  38 84 2A 78 */	addi r4, r4, __dt__5csXyzFv@l
/* 80B92B78  38 A0 00 06 */	li r5, 6
/* 80B92B7C  38 C0 00 03 */	li r6, 3
/* 80B92B80  4B 7C F1 68 */	b __destroy_arr
/* 80B92B84  38 7E 08 54 */	addi r3, r30, 0x854
/* 80B92B88  3C 80 80 B9 */	lis r4, __dt__4cXyzFv@ha
/* 80B92B8C  38 84 2A B8 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B92B90  38 A0 00 0C */	li r5, 0xc
/* 80B92B94  38 C0 00 03 */	li r6, 3
/* 80B92B98  4B 7C F1 50 */	b __destroy_arr
/* 80B92B9C  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80B92BA0  3C 80 80 B9 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80B92BA4  38 84 29 24 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80B92BA8  38 A0 00 08 */	li r5, 8
/* 80B92BAC  38 C0 00 05 */	li r6, 5
/* 80B92BB0  4B 7C F1 38 */	b __destroy_arr
/* 80B92BB4  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80B92BB8  41 82 00 10 */	beq lbl_80B92BC8
/* 80B92BBC  3C 60 80 B9 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80B92BC0  38 03 3B CC */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80B92BC4  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80B92BC8:
/* 80B92BC8  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80B92BCC  41 82 00 28 */	beq lbl_80B92BF4
/* 80B92BD0  3C 60 80 B9 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80B92BD4  38 03 3B C0 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80B92BD8  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80B92BDC  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80B92BE0  38 80 FF FF */	li r4, -1
/* 80B92BE4  4B 6D C3 34 */	b __dt__8cM3dGCirFv
/* 80B92BE8  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80B92BEC  38 80 00 00 */	li r4, 0
/* 80B92BF0  4B 6D 54 C0 */	b __dt__13cBgS_PolyInfoFv
lbl_80B92BF4:
/* 80B92BF4  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80B92BF8  41 82 00 54 */	beq lbl_80B92C4C
/* 80B92BFC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80B92C00  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80B92C04  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80B92C08  38 03 00 20 */	addi r0, r3, 0x20
/* 80B92C0C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80B92C10  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80B92C14  41 82 00 24 */	beq lbl_80B92C38
/* 80B92C18  3C 60 80 B9 */	lis r3, __vt__10dCcD_GStts@ha
/* 80B92C1C  38 03 3B B4 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80B92C20  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80B92C24  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80B92C28  41 82 00 10 */	beq lbl_80B92C38
/* 80B92C2C  3C 60 80 B9 */	lis r3, __vt__10cCcD_GStts@ha
/* 80B92C30  38 03 3B A8 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80B92C34  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80B92C38:
/* 80B92C38  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80B92C3C  41 82 00 10 */	beq lbl_80B92C4C
/* 80B92C40  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80B92C44  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80B92C48  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80B92C4C:
/* 80B92C4C  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80B92C50  41 82 00 2C */	beq lbl_80B92C7C
/* 80B92C54  3C 60 80 B9 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80B92C58  38 63 3B 84 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80B92C5C  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80B92C60  38 03 00 0C */	addi r0, r3, 0xc
/* 80B92C64  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80B92C68  38 03 00 18 */	addi r0, r3, 0x18
/* 80B92C6C  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80B92C70  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80B92C74  38 80 00 00 */	li r4, 0
/* 80B92C78  4B 4E 33 1C */	b __dt__9dBgS_AcchFv
lbl_80B92C7C:
/* 80B92C7C  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B92C80  41 82 00 20 */	beq lbl_80B92CA0
/* 80B92C84  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B92C88  41 82 00 18 */	beq lbl_80B92CA0
/* 80B92C8C  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80B92C90  41 82 00 10 */	beq lbl_80B92CA0
/* 80B92C94  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B92C98  38 03 3B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B92C9C  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80B92CA0:
/* 80B92CA0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B92CA4  41 82 00 20 */	beq lbl_80B92CC4
/* 80B92CA8  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B92CAC  41 82 00 18 */	beq lbl_80B92CC4
/* 80B92CB0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80B92CB4  41 82 00 10 */	beq lbl_80B92CC4
/* 80B92CB8  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B92CBC  38 03 3B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B92CC0  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80B92CC4:
/* 80B92CC4  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B92CC8  41 82 00 20 */	beq lbl_80B92CE8
/* 80B92CCC  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B92CD0  41 82 00 18 */	beq lbl_80B92CE8
/* 80B92CD4  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80B92CD8  41 82 00 10 */	beq lbl_80B92CE8
/* 80B92CDC  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B92CE0  38 03 3B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B92CE4  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80B92CE8:
/* 80B92CE8  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B92CEC  41 82 00 20 */	beq lbl_80B92D0C
/* 80B92CF0  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B92CF4  41 82 00 18 */	beq lbl_80B92D0C
/* 80B92CF8  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80B92CFC  41 82 00 10 */	beq lbl_80B92D0C
/* 80B92D00  3C 60 80 B9 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80B92D04  38 03 3B 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80B92D08  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80B92D0C:
/* 80B92D0C  7F C3 F3 78 */	mr r3, r30
/* 80B92D10  38 80 00 00 */	li r4, 0
/* 80B92D14  4B 48 5F 78 */	b __dt__10fopAc_ac_cFv
/* 80B92D18  7F E0 07 35 */	extsh. r0, r31
/* 80B92D1C  40 81 00 0C */	ble lbl_80B92D28
/* 80B92D20  7F C3 F3 78 */	mr r3, r30
/* 80B92D24  4B 73 C0 18 */	b __dl__FPv
lbl_80B92D28:
/* 80B92D28  7F C3 F3 78 */	mr r3, r30
/* 80B92D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B92D30  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B92D34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B92D38  7C 08 03 A6 */	mtlr r0
/* 80B92D3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B92D40  4E 80 00 20 */	blr 
