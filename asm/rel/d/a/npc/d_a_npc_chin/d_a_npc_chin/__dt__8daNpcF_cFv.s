lbl_809910A0:
/* 809910A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809910A4  7C 08 02 A6 */	mflr r0
/* 809910A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809910AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809910B0  93 C1 00 08 */	stw r30, 8(r1)
/* 809910B4  7C 7E 1B 79 */	or. r30, r3, r3
/* 809910B8  7C 9F 23 78 */	mr r31, r4
/* 809910BC  41 82 02 14 */	beq lbl_809912D0
/* 809910C0  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 809910C4  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 809910C8  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809910CC  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 809910D0  38 80 FF FF */	li r4, -1
/* 809910D4  4B 6E 6C 08 */	b __dt__11dBgS_LinChkFv
/* 809910D8  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 809910DC  38 80 FF FF */	li r4, -1
/* 809910E0  4B 6E 65 10 */	b __dt__11dBgS_GndChkFv
/* 809910E4  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 809910E8  38 80 FF FF */	li r4, -1
/* 809910EC  4B 8D 6B A8 */	b __dt__11cBgS_GndChkFv
/* 809910F0  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 809910F4  38 80 FF FF */	li r4, -1
/* 809910F8  4B 8B 8E 50 */	b __dt__10dMsgFlow_cFv
/* 809910FC  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80991100  3C 80 80 99 */	lis r4, __dt__5csXyzFv@ha
/* 80991104  38 84 10 20 */	addi r4, r4, __dt__5csXyzFv@l
/* 80991108  38 A0 00 06 */	li r5, 6
/* 8099110C  38 C0 00 03 */	li r6, 3
/* 80991110  4B 9D 0B D8 */	b __destroy_arr
/* 80991114  38 7E 09 08 */	addi r3, r30, 0x908
/* 80991118  3C 80 80 99 */	lis r4, __dt__5csXyzFv@ha
/* 8099111C  38 84 10 20 */	addi r4, r4, __dt__5csXyzFv@l
/* 80991120  38 A0 00 06 */	li r5, 6
/* 80991124  38 C0 00 03 */	li r6, 3
/* 80991128  4B 9D 0B C0 */	b __destroy_arr
/* 8099112C  38 7E 08 54 */	addi r3, r30, 0x854
/* 80991130  3C 80 80 99 */	lis r4, __dt__4cXyzFv@ha
/* 80991134  38 84 10 60 */	addi r4, r4, __dt__4cXyzFv@l
/* 80991138  38 A0 00 0C */	li r5, 0xc
/* 8099113C  38 C0 00 03 */	li r6, 3
/* 80991140  4B 9D 0B A8 */	b __destroy_arr
/* 80991144  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80991148  3C 80 80 99 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 8099114C  38 84 0E CC */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80991150  38 A0 00 08 */	li r5, 8
/* 80991154  38 C0 00 05 */	li r6, 5
/* 80991158  4B 9D 0B 90 */	b __destroy_arr
/* 8099115C  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80991160  41 82 00 10 */	beq lbl_80991170
/* 80991164  3C 60 80 99 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80991168  38 03 23 C8 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 8099116C  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80991170:
/* 80991170  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80991174  41 82 00 28 */	beq lbl_8099119C
/* 80991178  3C 60 80 99 */	lis r3, __vt__12dBgS_AcchCir@ha
/* 8099117C  38 03 23 BC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80991180  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80991184  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80991188  38 80 FF FF */	li r4, -1
/* 8099118C  4B 8D DD 8C */	b __dt__8cM3dGCirFv
/* 80991190  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80991194  38 80 00 00 */	li r4, 0
/* 80991198  4B 8D 6F 18 */	b __dt__13cBgS_PolyInfoFv
lbl_8099119C:
/* 8099119C  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809911A0  41 82 00 54 */	beq lbl_809911F4
/* 809911A4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 809911A8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 809911AC  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 809911B0  38 03 00 20 */	addi r0, r3, 0x20
/* 809911B4  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809911B8  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809911BC  41 82 00 24 */	beq lbl_809911E0
/* 809911C0  3C 60 80 99 */	lis r3, __vt__10dCcD_GStts@ha
/* 809911C4  38 03 23 B0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 809911C8  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809911CC  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809911D0  41 82 00 10 */	beq lbl_809911E0
/* 809911D4  3C 60 80 99 */	lis r3, __vt__10cCcD_GStts@ha
/* 809911D8  38 03 23 A4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 809911DC  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_809911E0:
/* 809911E0  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809911E4  41 82 00 10 */	beq lbl_809911F4
/* 809911E8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 809911EC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 809911F0  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_809911F4:
/* 809911F4  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 809911F8  41 82 00 2C */	beq lbl_80991224
/* 809911FC  3C 60 80 99 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80991200  38 63 23 80 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80991204  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80991208  38 03 00 0C */	addi r0, r3, 0xc
/* 8099120C  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80991210  38 03 00 18 */	addi r0, r3, 0x18
/* 80991214  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80991218  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8099121C  38 80 00 00 */	li r4, 0
/* 80991220  4B 6E 4D 74 */	b __dt__9dBgS_AcchFv
lbl_80991224:
/* 80991224  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80991228  41 82 00 20 */	beq lbl_80991248
/* 8099122C  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80991230  41 82 00 18 */	beq lbl_80991248
/* 80991234  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80991238  41 82 00 10 */	beq lbl_80991248
/* 8099123C  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80991240  38 03 23 D4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80991244  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80991248:
/* 80991248  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 8099124C  41 82 00 20 */	beq lbl_8099126C
/* 80991250  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80991254  41 82 00 18 */	beq lbl_8099126C
/* 80991258  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 8099125C  41 82 00 10 */	beq lbl_8099126C
/* 80991260  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80991264  38 03 23 D4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80991268  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_8099126C:
/* 8099126C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80991270  41 82 00 20 */	beq lbl_80991290
/* 80991274  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80991278  41 82 00 18 */	beq lbl_80991290
/* 8099127C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80991280  41 82 00 10 */	beq lbl_80991290
/* 80991284  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80991288  38 03 23 D4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 8099128C  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80991290:
/* 80991290  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80991294  41 82 00 20 */	beq lbl_809912B4
/* 80991298  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 8099129C  41 82 00 18 */	beq lbl_809912B4
/* 809912A0  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809912A4  41 82 00 10 */	beq lbl_809912B4
/* 809912A8  3C 60 80 99 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 809912AC  38 03 23 D4 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 809912B0  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_809912B4:
/* 809912B4  7F C3 F3 78 */	mr r3, r30
/* 809912B8  38 80 00 00 */	li r4, 0
/* 809912BC  4B 68 79 D0 */	b __dt__10fopAc_ac_cFv
/* 809912C0  7F E0 07 35 */	extsh. r0, r31
/* 809912C4  40 81 00 0C */	ble lbl_809912D0
/* 809912C8  7F C3 F3 78 */	mr r3, r30
/* 809912CC  4B 93 DA 70 */	b __dl__FPv
lbl_809912D0:
/* 809912D0  7F C3 F3 78 */	mr r3, r30
/* 809912D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809912D8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809912DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809912E0  7C 08 03 A6 */	mtlr r0
/* 809912E4  38 21 00 10 */	addi r1, r1, 0x10
/* 809912E8  4E 80 00 20 */	blr 
