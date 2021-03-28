lbl_80ABF360:
/* 80ABF360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABF364  7C 08 02 A6 */	mflr r0
/* 80ABF368  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABF36C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ABF370  93 C1 00 08 */	stw r30, 8(r1)
/* 80ABF374  7C 7E 1B 79 */	or. r30, r3, r3
/* 80ABF378  7C 9F 23 78 */	mr r31, r4
/* 80ABF37C  41 82 02 14 */	beq lbl_80ABF590
/* 80ABF380  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80ABF384  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80ABF388  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80ABF38C  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80ABF390  38 80 FF FF */	li r4, -1
/* 80ABF394  4B 5B 89 48 */	b __dt__11dBgS_LinChkFv
/* 80ABF398  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80ABF39C  38 80 FF FF */	li r4, -1
/* 80ABF3A0  4B 5B 82 50 */	b __dt__11dBgS_GndChkFv
/* 80ABF3A4  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80ABF3A8  38 80 FF FF */	li r4, -1
/* 80ABF3AC  4B 7A 88 E8 */	b __dt__11cBgS_GndChkFv
/* 80ABF3B0  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80ABF3B4  38 80 FF FF */	li r4, -1
/* 80ABF3B8  4B 78 AB 90 */	b __dt__10dMsgFlow_cFv
/* 80ABF3BC  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80ABF3C0  3C 80 80 AC */	lis r4, __dt__5csXyzFv@ha
/* 80ABF3C4  38 84 F2 E0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80ABF3C8  38 A0 00 06 */	li r5, 6
/* 80ABF3CC  38 C0 00 03 */	li r6, 3
/* 80ABF3D0  4B 8A 29 18 */	b __destroy_arr
/* 80ABF3D4  38 7E 09 08 */	addi r3, r30, 0x908
/* 80ABF3D8  3C 80 80 AC */	lis r4, __dt__5csXyzFv@ha
/* 80ABF3DC  38 84 F2 E0 */	addi r4, r4, __dt__5csXyzFv@l
/* 80ABF3E0  38 A0 00 06 */	li r5, 6
/* 80ABF3E4  38 C0 00 03 */	li r6, 3
/* 80ABF3E8  4B 8A 29 00 */	b __destroy_arr
/* 80ABF3EC  38 7E 08 54 */	addi r3, r30, 0x854
/* 80ABF3F0  3C 80 80 AC */	lis r4, __dt__4cXyzFv@ha
/* 80ABF3F4  38 84 F3 20 */	addi r4, r4, __dt__4cXyzFv@l
/* 80ABF3F8  38 A0 00 0C */	li r5, 0xc
/* 80ABF3FC  38 C0 00 03 */	li r6, 3
/* 80ABF400  4B 8A 28 E8 */	b __destroy_arr
/* 80ABF404  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80ABF408  3C 80 80 AC */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80ABF40C  38 84 F1 8C */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80ABF410  38 A0 00 08 */	li r5, 8
/* 80ABF414  38 C0 00 05 */	li r6, 5
/* 80ABF418  4B 8A 28 D0 */	b __destroy_arr
/* 80ABF41C  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80ABF420  41 82 00 10 */	beq lbl_80ABF430
/* 80ABF424  3C 60 80 AC */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80ABF428  38 03 02 D0 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80ABF42C  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80ABF430:
/* 80ABF430  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80ABF434  41 82 00 28 */	beq lbl_80ABF45C
/* 80ABF438  3C 60 80 AC */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80ABF43C  38 03 02 C4 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80ABF440  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80ABF444  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80ABF448  38 80 FF FF */	li r4, -1
/* 80ABF44C  4B 7A FA CC */	b __dt__8cM3dGCirFv
/* 80ABF450  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80ABF454  38 80 00 00 */	li r4, 0
/* 80ABF458  4B 7A 8C 58 */	b __dt__13cBgS_PolyInfoFv
lbl_80ABF45C:
/* 80ABF45C  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80ABF460  41 82 00 54 */	beq lbl_80ABF4B4
/* 80ABF464  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80ABF468  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80ABF46C  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80ABF470  38 03 00 20 */	addi r0, r3, 0x20
/* 80ABF474  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80ABF478  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80ABF47C  41 82 00 24 */	beq lbl_80ABF4A0
/* 80ABF480  3C 60 80 AC */	lis r3, __vt__10dCcD_GStts@ha
/* 80ABF484  38 03 02 B8 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80ABF488  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80ABF48C  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80ABF490  41 82 00 10 */	beq lbl_80ABF4A0
/* 80ABF494  3C 60 80 AC */	lis r3, __vt__10cCcD_GStts@ha
/* 80ABF498  38 03 02 AC */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80ABF49C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80ABF4A0:
/* 80ABF4A0  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80ABF4A4  41 82 00 10 */	beq lbl_80ABF4B4
/* 80ABF4A8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80ABF4AC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80ABF4B0  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80ABF4B4:
/* 80ABF4B4  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80ABF4B8  41 82 00 2C */	beq lbl_80ABF4E4
/* 80ABF4BC  3C 60 80 AC */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80ABF4C0  38 63 02 88 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80ABF4C4  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80ABF4C8  38 03 00 0C */	addi r0, r3, 0xc
/* 80ABF4CC  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80ABF4D0  38 03 00 18 */	addi r0, r3, 0x18
/* 80ABF4D4  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80ABF4D8  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80ABF4DC  38 80 00 00 */	li r4, 0
/* 80ABF4E0  4B 5B 6A B4 */	b __dt__9dBgS_AcchFv
lbl_80ABF4E4:
/* 80ABF4E4  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80ABF4E8  41 82 00 20 */	beq lbl_80ABF508
/* 80ABF4EC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80ABF4F0  41 82 00 18 */	beq lbl_80ABF508
/* 80ABF4F4  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80ABF4F8  41 82 00 10 */	beq lbl_80ABF508
/* 80ABF4FC  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ABF500  38 03 02 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ABF504  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80ABF508:
/* 80ABF508  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80ABF50C  41 82 00 20 */	beq lbl_80ABF52C
/* 80ABF510  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80ABF514  41 82 00 18 */	beq lbl_80ABF52C
/* 80ABF518  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80ABF51C  41 82 00 10 */	beq lbl_80ABF52C
/* 80ABF520  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ABF524  38 03 02 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ABF528  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80ABF52C:
/* 80ABF52C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80ABF530  41 82 00 20 */	beq lbl_80ABF550
/* 80ABF534  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80ABF538  41 82 00 18 */	beq lbl_80ABF550
/* 80ABF53C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80ABF540  41 82 00 10 */	beq lbl_80ABF550
/* 80ABF544  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ABF548  38 03 02 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ABF54C  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80ABF550:
/* 80ABF550  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80ABF554  41 82 00 20 */	beq lbl_80ABF574
/* 80ABF558  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80ABF55C  41 82 00 18 */	beq lbl_80ABF574
/* 80ABF560  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80ABF564  41 82 00 10 */	beq lbl_80ABF574
/* 80ABF568  3C 60 80 AC */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80ABF56C  38 03 02 7C */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80ABF570  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80ABF574:
/* 80ABF574  7F C3 F3 78 */	mr r3, r30
/* 80ABF578  38 80 00 00 */	li r4, 0
/* 80ABF57C  4B 55 97 10 */	b __dt__10fopAc_ac_cFv
/* 80ABF580  7F E0 07 35 */	extsh. r0, r31
/* 80ABF584  40 81 00 0C */	ble lbl_80ABF590
/* 80ABF588  7F C3 F3 78 */	mr r3, r30
/* 80ABF58C  4B 80 F7 B0 */	b __dl__FPv
lbl_80ABF590:
/* 80ABF590  7F C3 F3 78 */	mr r3, r30
/* 80ABF594  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ABF598  83 C1 00 08 */	lwz r30, 8(r1)
/* 80ABF59C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABF5A0  7C 08 03 A6 */	mtlr r0
/* 80ABF5A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABF5A8  4E 80 00 20 */	blr 
