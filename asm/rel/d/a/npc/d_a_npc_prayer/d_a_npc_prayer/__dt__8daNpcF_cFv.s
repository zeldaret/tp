lbl_80AB50E4:
/* 80AB50E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB50E8  7C 08 02 A6 */	mflr r0
/* 80AB50EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB50F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB50F4  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB50F8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AB50FC  7C 9F 23 78 */	mr r31, r4
/* 80AB5100  41 82 02 14 */	beq lbl_80AB5314
/* 80AB5104  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80AB5108  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80AB510C  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80AB5110  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80AB5114  38 80 FF FF */	li r4, -1
/* 80AB5118  4B 5C 2B C4 */	b __dt__11dBgS_LinChkFv
/* 80AB511C  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80AB5120  38 80 FF FF */	li r4, -1
/* 80AB5124  4B 5C 24 CC */	b __dt__11dBgS_GndChkFv
/* 80AB5128  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80AB512C  38 80 FF FF */	li r4, -1
/* 80AB5130  4B 7B 2B 64 */	b __dt__11cBgS_GndChkFv
/* 80AB5134  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80AB5138  38 80 FF FF */	li r4, -1
/* 80AB513C  4B 79 4E 0C */	b __dt__10dMsgFlow_cFv
/* 80AB5140  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80AB5144  3C 80 80 AB */	lis r4, __dt__5csXyzFv@ha
/* 80AB5148  38 84 50 64 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AB514C  38 A0 00 06 */	li r5, 6
/* 80AB5150  38 C0 00 03 */	li r6, 3
/* 80AB5154  4B 8A CB 94 */	b __destroy_arr
/* 80AB5158  38 7E 09 08 */	addi r3, r30, 0x908
/* 80AB515C  3C 80 80 AB */	lis r4, __dt__5csXyzFv@ha
/* 80AB5160  38 84 50 64 */	addi r4, r4, __dt__5csXyzFv@l
/* 80AB5164  38 A0 00 06 */	li r5, 6
/* 80AB5168  38 C0 00 03 */	li r6, 3
/* 80AB516C  4B 8A CB 7C */	b __destroy_arr
/* 80AB5170  38 7E 08 54 */	addi r3, r30, 0x854
/* 80AB5174  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha
/* 80AB5178  38 84 50 A4 */	addi r4, r4, __dt__4cXyzFv@l
/* 80AB517C  38 A0 00 0C */	li r5, 0xc
/* 80AB5180  38 C0 00 03 */	li r6, 3
/* 80AB5184  4B 8A CB 64 */	b __destroy_arr
/* 80AB5188  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80AB518C  3C 80 80 AB */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80AB5190  38 84 4F 10 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80AB5194  38 A0 00 08 */	li r5, 8
/* 80AB5198  38 C0 00 05 */	li r6, 5
/* 80AB519C  4B 8A CB 4C */	b __destroy_arr
/* 80AB51A0  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80AB51A4  41 82 00 10 */	beq lbl_80AB51B4
/* 80AB51A8  3C 60 80 AB */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80AB51AC  38 03 5B 64 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80AB51B0  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80AB51B4:
/* 80AB51B4  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80AB51B8  41 82 00 28 */	beq lbl_80AB51E0
/* 80AB51BC  3C 60 80 AB */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AB51C0  38 03 5B 58 */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AB51C4  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80AB51C8  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80AB51CC  38 80 FF FF */	li r4, -1
/* 80AB51D0  4B 7B 9D 48 */	b __dt__8cM3dGCirFv
/* 80AB51D4  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80AB51D8  38 80 00 00 */	li r4, 0
/* 80AB51DC  4B 7B 2E D4 */	b __dt__13cBgS_PolyInfoFv
lbl_80AB51E0:
/* 80AB51E0  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80AB51E4  41 82 00 54 */	beq lbl_80AB5238
/* 80AB51E8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AB51EC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AB51F0  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80AB51F4  38 03 00 20 */	addi r0, r3, 0x20
/* 80AB51F8  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80AB51FC  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80AB5200  41 82 00 24 */	beq lbl_80AB5224
/* 80AB5204  3C 60 80 AB */	lis r3, __vt__10dCcD_GStts@ha
/* 80AB5208  38 03 5B 4C */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AB520C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80AB5210  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80AB5214  41 82 00 10 */	beq lbl_80AB5224
/* 80AB5218  3C 60 80 AB */	lis r3, __vt__10cCcD_GStts@ha
/* 80AB521C  38 03 5B 40 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AB5220  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80AB5224:
/* 80AB5224  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80AB5228  41 82 00 10 */	beq lbl_80AB5238
/* 80AB522C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AB5230  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AB5234  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80AB5238:
/* 80AB5238  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80AB523C  41 82 00 2C */	beq lbl_80AB5268
/* 80AB5240  3C 60 80 AB */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AB5244  38 63 5B 1C */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AB5248  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80AB524C  38 03 00 0C */	addi r0, r3, 0xc
/* 80AB5250  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80AB5254  38 03 00 18 */	addi r0, r3, 0x18
/* 80AB5258  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80AB525C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80AB5260  38 80 00 00 */	li r4, 0
/* 80AB5264  4B 5C 0D 30 */	b __dt__9dBgS_AcchFv
lbl_80AB5268:
/* 80AB5268  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AB526C  41 82 00 20 */	beq lbl_80AB528C
/* 80AB5270  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AB5274  41 82 00 18 */	beq lbl_80AB528C
/* 80AB5278  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AB527C  41 82 00 10 */	beq lbl_80AB528C
/* 80AB5280  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AB5284  38 03 5B 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AB5288  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80AB528C:
/* 80AB528C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AB5290  41 82 00 20 */	beq lbl_80AB52B0
/* 80AB5294  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AB5298  41 82 00 18 */	beq lbl_80AB52B0
/* 80AB529C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AB52A0  41 82 00 10 */	beq lbl_80AB52B0
/* 80AB52A4  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AB52A8  38 03 5B 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AB52AC  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80AB52B0:
/* 80AB52B0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AB52B4  41 82 00 20 */	beq lbl_80AB52D4
/* 80AB52B8  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AB52BC  41 82 00 18 */	beq lbl_80AB52D4
/* 80AB52C0  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AB52C4  41 82 00 10 */	beq lbl_80AB52D4
/* 80AB52C8  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AB52CC  38 03 5B 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AB52D0  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80AB52D4:
/* 80AB52D4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AB52D8  41 82 00 20 */	beq lbl_80AB52F8
/* 80AB52DC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AB52E0  41 82 00 18 */	beq lbl_80AB52F8
/* 80AB52E4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AB52E8  41 82 00 10 */	beq lbl_80AB52F8
/* 80AB52EC  3C 60 80 AB */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AB52F0  38 03 5B 10 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AB52F4  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80AB52F8:
/* 80AB52F8  7F C3 F3 78 */	mr r3, r30
/* 80AB52FC  38 80 00 00 */	li r4, 0
/* 80AB5300  4B 56 39 8C */	b __dt__10fopAc_ac_cFv
/* 80AB5304  7F E0 07 35 */	extsh. r0, r31
/* 80AB5308  40 81 00 0C */	ble lbl_80AB5314
/* 80AB530C  7F C3 F3 78 */	mr r3, r30
/* 80AB5310  4B 81 9A 2C */	b __dl__FPv
lbl_80AB5314:
/* 80AB5314  7F C3 F3 78 */	mr r3, r30
/* 80AB5318  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB531C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB5320  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB5324  7C 08 03 A6 */	mtlr r0
/* 80AB5328  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB532C  4E 80 00 20 */	blr 
