lbl_80AF53BC:
/* 80AF53BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF53C0  7C 08 02 A6 */	mflr r0
/* 80AF53C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF53C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF53CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AF53D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AF53D4  7C 9F 23 78 */	mr r31, r4
/* 80AF53D8  41 82 02 14 */	beq lbl_80AF55EC
/* 80AF53DC  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha
/* 80AF53E0  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l
/* 80AF53E4  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80AF53E8  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80AF53EC  38 80 FF FF */	li r4, -1
/* 80AF53F0  4B 58 28 EC */	b __dt__11dBgS_LinChkFv
/* 80AF53F4  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80AF53F8  38 80 FF FF */	li r4, -1
/* 80AF53FC  4B 58 21 F4 */	b __dt__11dBgS_GndChkFv
/* 80AF5400  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80AF5404  38 80 FF FF */	li r4, -1
/* 80AF5408  4B 77 28 8C */	b __dt__11cBgS_GndChkFv
/* 80AF540C  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80AF5410  38 80 FF FF */	li r4, -1
/* 80AF5414  4B 75 4B 34 */	b __dt__10dMsgFlow_cFv
/* 80AF5418  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80AF541C  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF5420  38 84 53 3C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF5424  38 A0 00 06 */	li r5, 6
/* 80AF5428  38 C0 00 03 */	li r6, 3
/* 80AF542C  4B 86 C8 BC */	b __destroy_arr
/* 80AF5430  38 7E 09 08 */	addi r3, r30, 0x908
/* 80AF5434  3C 80 80 AF */	lis r4, __dt__5csXyzFv@ha
/* 80AF5438  38 84 53 3C */	addi r4, r4, __dt__5csXyzFv@l
/* 80AF543C  38 A0 00 06 */	li r5, 6
/* 80AF5440  38 C0 00 03 */	li r6, 3
/* 80AF5444  4B 86 C8 A4 */	b __destroy_arr
/* 80AF5448  38 7E 08 54 */	addi r3, r30, 0x854
/* 80AF544C  3C 80 80 AF */	lis r4, __dt__4cXyzFv@ha
/* 80AF5450  38 84 53 7C */	addi r4, r4, __dt__4cXyzFv@l
/* 80AF5454  38 A0 00 0C */	li r5, 0xc
/* 80AF5458  38 C0 00 03 */	li r6, 3
/* 80AF545C  4B 86 C8 8C */	b __destroy_arr
/* 80AF5460  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80AF5464  3C 80 80 AF */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha
/* 80AF5468  38 84 51 E8 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l
/* 80AF546C  38 A0 00 08 */	li r5, 8
/* 80AF5470  38 C0 00 05 */	li r6, 5
/* 80AF5474  4B 86 C8 74 */	b __destroy_arr
/* 80AF5478  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80AF547C  41 82 00 10 */	beq lbl_80AF548C
/* 80AF5480  3C 60 80 AF */	lis r3, __vt__18daNpcF_ActorMngr_c@ha
/* 80AF5484  38 03 5D E8 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l
/* 80AF5488  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80AF548C:
/* 80AF548C  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80AF5490  41 82 00 28 */	beq lbl_80AF54B8
/* 80AF5494  3C 60 80 AF */	lis r3, __vt__12dBgS_AcchCir@ha
/* 80AF5498  38 03 5D DC */	addi r0, r3, __vt__12dBgS_AcchCir@l
/* 80AF549C  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80AF54A0  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80AF54A4  38 80 FF FF */	li r4, -1
/* 80AF54A8  4B 77 9A 70 */	b __dt__8cM3dGCirFv
/* 80AF54AC  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80AF54B0  38 80 00 00 */	li r4, 0
/* 80AF54B4  4B 77 2B FC */	b __dt__13cBgS_PolyInfoFv
lbl_80AF54B8:
/* 80AF54B8  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80AF54BC  41 82 00 54 */	beq lbl_80AF5510
/* 80AF54C0  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80AF54C4  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80AF54C8  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80AF54CC  38 03 00 20 */	addi r0, r3, 0x20
/* 80AF54D0  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80AF54D4  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80AF54D8  41 82 00 24 */	beq lbl_80AF54FC
/* 80AF54DC  3C 60 80 AF */	lis r3, __vt__10dCcD_GStts@ha
/* 80AF54E0  38 03 5D D0 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80AF54E4  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80AF54E8  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80AF54EC  41 82 00 10 */	beq lbl_80AF54FC
/* 80AF54F0  3C 60 80 AF */	lis r3, __vt__10cCcD_GStts@ha
/* 80AF54F4  38 03 5D C4 */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80AF54F8  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80AF54FC:
/* 80AF54FC  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80AF5500  41 82 00 10 */	beq lbl_80AF5510
/* 80AF5504  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80AF5508  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80AF550C  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80AF5510:
/* 80AF5510  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80AF5514  41 82 00 2C */	beq lbl_80AF5540
/* 80AF5518  3C 60 80 AF */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 80AF551C  38 63 5D A0 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 80AF5520  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80AF5524  38 03 00 0C */	addi r0, r3, 0xc
/* 80AF5528  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80AF552C  38 03 00 18 */	addi r0, r3, 0x18
/* 80AF5530  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80AF5534  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80AF5538  38 80 00 00 */	li r4, 0
/* 80AF553C  4B 58 0A 58 */	b __dt__9dBgS_AcchFv
lbl_80AF5540:
/* 80AF5540  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AF5544  41 82 00 20 */	beq lbl_80AF5564
/* 80AF5548  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AF554C  41 82 00 18 */	beq lbl_80AF5564
/* 80AF5550  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80AF5554  41 82 00 10 */	beq lbl_80AF5564
/* 80AF5558  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AF555C  38 03 5D 94 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AF5560  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80AF5564:
/* 80AF5564  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AF5568  41 82 00 20 */	beq lbl_80AF5588
/* 80AF556C  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AF5570  41 82 00 18 */	beq lbl_80AF5588
/* 80AF5574  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80AF5578  41 82 00 10 */	beq lbl_80AF5588
/* 80AF557C  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AF5580  38 03 5D 94 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AF5584  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80AF5588:
/* 80AF5588  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AF558C  41 82 00 20 */	beq lbl_80AF55AC
/* 80AF5590  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AF5594  41 82 00 18 */	beq lbl_80AF55AC
/* 80AF5598  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80AF559C  41 82 00 10 */	beq lbl_80AF55AC
/* 80AF55A0  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AF55A4  38 03 5D 94 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AF55A8  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80AF55AC:
/* 80AF55AC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AF55B0  41 82 00 20 */	beq lbl_80AF55D0
/* 80AF55B4  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AF55B8  41 82 00 18 */	beq lbl_80AF55D0
/* 80AF55BC  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80AF55C0  41 82 00 10 */	beq lbl_80AF55D0
/* 80AF55C4  3C 60 80 AF */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80AF55C8  38 03 5D 94 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80AF55CC  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80AF55D0:
/* 80AF55D0  7F C3 F3 78 */	mr r3, r30
/* 80AF55D4  38 80 00 00 */	li r4, 0
/* 80AF55D8  4B 52 36 B4 */	b __dt__10fopAc_ac_cFv
/* 80AF55DC  7F E0 07 35 */	extsh. r0, r31
/* 80AF55E0  40 81 00 0C */	ble lbl_80AF55EC
/* 80AF55E4  7F C3 F3 78 */	mr r3, r30
/* 80AF55E8  4B 7D 97 54 */	b __dl__FPv
lbl_80AF55EC:
/* 80AF55EC  7F C3 F3 78 */	mr r3, r30
/* 80AF55F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF55F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AF55F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF55FC  7C 08 03 A6 */	mtlr r0
/* 80AF5600  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF5604  4E 80 00 20 */	blr 
