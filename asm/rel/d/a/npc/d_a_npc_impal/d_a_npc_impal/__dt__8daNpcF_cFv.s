lbl_80A0BBF0:
/* 80A0BBF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A0BBF4  7C 08 02 A6 */	mflr r0
/* 80A0BBF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A0BBFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A0BC00  93 C1 00 08 */	stw r30, 8(r1)
/* 80A0BC04  7C 7E 1B 79 */	or. r30, r3, r3
/* 80A0BC08  7C 9F 23 78 */	mr r31, r4
/* 80A0BC0C  41 82 02 14 */	beq lbl_80A0BE20
/* 80A0BC10  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 80A0BC14  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 80A0BC18  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 80A0BC1C  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 80A0BC20  38 80 FF FF */	li r4, -1
/* 80A0BC24  4B 66 C0 B9 */	bl __dt__11dBgS_LinChkFv
/* 80A0BC28  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 80A0BC2C  38 80 FF FF */	li r4, -1
/* 80A0BC30  4B 66 B9 C1 */	bl __dt__11dBgS_GndChkFv
/* 80A0BC34  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 80A0BC38  38 80 FF FF */	li r4, -1
/* 80A0BC3C  4B 85 C0 59 */	bl __dt__11cBgS_GndChkFv
/* 80A0BC40  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 80A0BC44  38 80 FF FF */	li r4, -1
/* 80A0BC48  4B 83 E3 01 */	bl __dt__10dMsgFlow_cFv
/* 80A0BC4C  38 7E 09 1A */	addi r3, r30, 0x91a
/* 80A0BC50  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha /* 0x80A0BB70@ha */
/* 80A0BC54  38 84 BB 70 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A0BB70@l */
/* 80A0BC58  38 A0 00 06 */	li r5, 6
/* 80A0BC5C  38 C0 00 03 */	li r6, 3
/* 80A0BC60  4B 95 60 89 */	bl __destroy_arr
/* 80A0BC64  38 7E 09 08 */	addi r3, r30, 0x908
/* 80A0BC68  3C 80 80 A1 */	lis r4, __dt__5csXyzFv@ha /* 0x80A0BB70@ha */
/* 80A0BC6C  38 84 BB 70 */	addi r4, r4, __dt__5csXyzFv@l /* 0x80A0BB70@l */
/* 80A0BC70  38 A0 00 06 */	li r5, 6
/* 80A0BC74  38 C0 00 03 */	li r6, 3
/* 80A0BC78  4B 95 60 71 */	bl __destroy_arr
/* 80A0BC7C  38 7E 08 54 */	addi r3, r30, 0x854
/* 80A0BC80  3C 80 80 A1 */	lis r4, __dt__4cXyzFv@ha /* 0x80A0BBB0@ha */
/* 80A0BC84  38 84 BB B0 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A0BBB0@l */
/* 80A0BC88  38 A0 00 0C */	li r5, 0xc
/* 80A0BC8C  38 C0 00 03 */	li r6, 3
/* 80A0BC90  4B 95 60 59 */	bl __destroy_arr
/* 80A0BC94  38 7E 08 2C */	addi r3, r30, 0x82c
/* 80A0BC98  3C 80 80 A1 */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x80A0BA1C@ha */
/* 80A0BC9C  38 84 BA 1C */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x80A0BA1C@l */
/* 80A0BCA0  38 A0 00 08 */	li r5, 8
/* 80A0BCA4  38 C0 00 05 */	li r6, 5
/* 80A0BCA8  4B 95 60 41 */	bl __destroy_arr
/* 80A0BCAC  34 1E 08 24 */	addic. r0, r30, 0x824
/* 80A0BCB0  41 82 00 10 */	beq lbl_80A0BCC0
/* 80A0BCB4  3C 60 80 A1 */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x80A0C8B0@ha */
/* 80A0BCB8  38 03 C8 B0 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x80A0C8B0@l */
/* 80A0BCBC  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_80A0BCC0:
/* 80A0BCC0  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 80A0BCC4  41 82 00 28 */	beq lbl_80A0BCEC
/* 80A0BCC8  3C 60 80 A1 */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x80A0C8A4@ha */
/* 80A0BCCC  38 03 C8 A4 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x80A0C8A4@l */
/* 80A0BCD0  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 80A0BCD4  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 80A0BCD8  38 80 FF FF */	li r4, -1
/* 80A0BCDC  4B 86 32 3D */	bl __dt__8cM3dGCirFv
/* 80A0BCE0  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80A0BCE4  38 80 00 00 */	li r4, 0
/* 80A0BCE8  4B 85 C3 C9 */	bl __dt__13cBgS_PolyInfoFv
lbl_80A0BCEC:
/* 80A0BCEC  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80A0BCF0  41 82 00 54 */	beq lbl_80A0BD44
/* 80A0BCF4  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80A0BCF8  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80A0BCFC  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 80A0BD00  38 03 00 20 */	addi r0, r3, 0x20
/* 80A0BD04  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80A0BD08  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80A0BD0C  41 82 00 24 */	beq lbl_80A0BD30
/* 80A0BD10  3C 60 80 A1 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80A0C898@ha */
/* 80A0BD14  38 03 C8 98 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80A0C898@l */
/* 80A0BD18  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 80A0BD1C  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 80A0BD20  41 82 00 10 */	beq lbl_80A0BD30
/* 80A0BD24  3C 60 80 A1 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80A0C88C@ha */
/* 80A0BD28  38 03 C8 8C */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80A0C88C@l */
/* 80A0BD2C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_80A0BD30:
/* 80A0BD30  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 80A0BD34  41 82 00 10 */	beq lbl_80A0BD44
/* 80A0BD38  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80A0BD3C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80A0BD40  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_80A0BD44:
/* 80A0BD44  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 80A0BD48  41 82 00 2C */	beq lbl_80A0BD74
/* 80A0BD4C  3C 60 80 A1 */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x80A0C868@ha */
/* 80A0BD50  38 63 C8 68 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x80A0C868@l */
/* 80A0BD54  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 80A0BD58  38 03 00 0C */	addi r0, r3, 0xc
/* 80A0BD5C  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 80A0BD60  38 03 00 18 */	addi r0, r3, 0x18
/* 80A0BD64  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 80A0BD68  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80A0BD6C  38 80 00 00 */	li r4, 0
/* 80A0BD70  4B 66 A2 25 */	bl __dt__9dBgS_AcchFv
lbl_80A0BD74:
/* 80A0BD74  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A0BD78  41 82 00 20 */	beq lbl_80A0BD98
/* 80A0BD7C  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A0BD80  41 82 00 18 */	beq lbl_80A0BD98
/* 80A0BD84  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 80A0BD88  41 82 00 10 */	beq lbl_80A0BD98
/* 80A0BD8C  3C 60 80 A1 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A0C85C@ha */
/* 80A0BD90  38 03 C8 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A0C85C@l */
/* 80A0BD94  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_80A0BD98:
/* 80A0BD98  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A0BD9C  41 82 00 20 */	beq lbl_80A0BDBC
/* 80A0BDA0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A0BDA4  41 82 00 18 */	beq lbl_80A0BDBC
/* 80A0BDA8  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 80A0BDAC  41 82 00 10 */	beq lbl_80A0BDBC
/* 80A0BDB0  3C 60 80 A1 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A0C85C@ha */
/* 80A0BDB4  38 03 C8 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A0C85C@l */
/* 80A0BDB8  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_80A0BDBC:
/* 80A0BDBC  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A0BDC0  41 82 00 20 */	beq lbl_80A0BDE0
/* 80A0BDC4  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A0BDC8  41 82 00 18 */	beq lbl_80A0BDE0
/* 80A0BDCC  34 1E 05 88 */	addic. r0, r30, 0x588
/* 80A0BDD0  41 82 00 10 */	beq lbl_80A0BDE0
/* 80A0BDD4  3C 60 80 A1 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A0C85C@ha */
/* 80A0BDD8  38 03 C8 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A0C85C@l */
/* 80A0BDDC  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_80A0BDE0:
/* 80A0BDE0  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A0BDE4  41 82 00 20 */	beq lbl_80A0BE04
/* 80A0BDE8  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A0BDEC  41 82 00 18 */	beq lbl_80A0BE04
/* 80A0BDF0  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 80A0BDF4  41 82 00 10 */	beq lbl_80A0BE04
/* 80A0BDF8  3C 60 80 A1 */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x80A0C85C@ha */
/* 80A0BDFC  38 03 C8 5C */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x80A0C85C@l */
/* 80A0BE00  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_80A0BE04:
/* 80A0BE04  7F C3 F3 78 */	mr r3, r30
/* 80A0BE08  38 80 00 00 */	li r4, 0
/* 80A0BE0C  4B 60 CE 81 */	bl __dt__10fopAc_ac_cFv
/* 80A0BE10  7F E0 07 35 */	extsh. r0, r31
/* 80A0BE14  40 81 00 0C */	ble lbl_80A0BE20
/* 80A0BE18  7F C3 F3 78 */	mr r3, r30
/* 80A0BE1C  4B 8C 2F 21 */	bl __dl__FPv
lbl_80A0BE20:
/* 80A0BE20  7F C3 F3 78 */	mr r3, r30
/* 80A0BE24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A0BE28  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A0BE2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A0BE30  7C 08 03 A6 */	mtlr r0
/* 80A0BE34  38 21 00 10 */	addi r1, r1, 0x10
/* 80A0BE38  4E 80 00 20 */	blr 
