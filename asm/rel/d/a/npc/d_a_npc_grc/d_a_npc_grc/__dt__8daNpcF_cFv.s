lbl_809CEE38:
/* 809CEE38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809CEE3C  7C 08 02 A6 */	mflr r0
/* 809CEE40  90 01 00 14 */	stw r0, 0x14(r1)
/* 809CEE44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809CEE48  93 C1 00 08 */	stw r30, 8(r1)
/* 809CEE4C  7C 7E 1B 79 */	or. r30, r3, r3
/* 809CEE50  7C 9F 23 78 */	mr r31, r4
/* 809CEE54  41 82 02 14 */	beq lbl_809CF068
/* 809CEE58  3C 60 80 3B */	lis r3, __vt__8daNpcF_c@ha /* 0x803B38D8@ha */
/* 809CEE5C  38 03 38 D8 */	addi r0, r3, __vt__8daNpcF_c@l /* 0x803B38D8@l */
/* 809CEE60  90 1E 0B 44 */	stw r0, 0xb44(r30)
/* 809CEE64  38 7E 0A D4 */	addi r3, r30, 0xad4
/* 809CEE68  38 80 FF FF */	li r4, -1
/* 809CEE6C  4B 6A 8E 71 */	bl __dt__11dBgS_LinChkFv
/* 809CEE70  38 7E 0A 80 */	addi r3, r30, 0xa80
/* 809CEE74  38 80 FF FF */	li r4, -1
/* 809CEE78  4B 6A 87 79 */	bl __dt__11dBgS_GndChkFv
/* 809CEE7C  38 7E 0A 44 */	addi r3, r30, 0xa44
/* 809CEE80  38 80 FF FF */	li r4, -1
/* 809CEE84  4B 89 8E 11 */	bl __dt__11cBgS_GndChkFv
/* 809CEE88  38 7E 09 F8 */	addi r3, r30, 0x9f8
/* 809CEE8C  38 80 FF FF */	li r4, -1
/* 809CEE90  4B 87 B0 B9 */	bl __dt__10dMsgFlow_cFv
/* 809CEE94  38 7E 09 1A */	addi r3, r30, 0x91a
/* 809CEE98  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809CEDB8@ha */
/* 809CEE9C  38 84 ED B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809CEDB8@l */
/* 809CEEA0  38 A0 00 06 */	li r5, 6
/* 809CEEA4  38 C0 00 03 */	li r6, 3
/* 809CEEA8  4B 99 2E 41 */	bl __destroy_arr
/* 809CEEAC  38 7E 09 08 */	addi r3, r30, 0x908
/* 809CEEB0  3C 80 80 9D */	lis r4, __dt__5csXyzFv@ha /* 0x809CEDB8@ha */
/* 809CEEB4  38 84 ED B8 */	addi r4, r4, __dt__5csXyzFv@l /* 0x809CEDB8@l */
/* 809CEEB8  38 A0 00 06 */	li r5, 6
/* 809CEEBC  38 C0 00 03 */	li r6, 3
/* 809CEEC0  4B 99 2E 29 */	bl __destroy_arr
/* 809CEEC4  38 7E 08 54 */	addi r3, r30, 0x854
/* 809CEEC8  3C 80 80 9D */	lis r4, __dt__4cXyzFv@ha /* 0x809CEDF8@ha */
/* 809CEECC  38 84 ED F8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x809CEDF8@l */
/* 809CEED0  38 A0 00 0C */	li r5, 0xc
/* 809CEED4  38 C0 00 03 */	li r6, 3
/* 809CEED8  4B 99 2E 11 */	bl __destroy_arr
/* 809CEEDC  38 7E 08 2C */	addi r3, r30, 0x82c
/* 809CEEE0  3C 80 80 9D */	lis r4, __dt__18daNpcF_ActorMngr_cFv@ha /* 0x809CEC64@ha */
/* 809CEEE4  38 84 EC 64 */	addi r4, r4, __dt__18daNpcF_ActorMngr_cFv@l /* 0x809CEC64@l */
/* 809CEEE8  38 A0 00 08 */	li r5, 8
/* 809CEEEC  38 C0 00 05 */	li r6, 5
/* 809CEEF0  4B 99 2D F9 */	bl __destroy_arr
/* 809CEEF4  34 1E 08 24 */	addic. r0, r30, 0x824
/* 809CEEF8  41 82 00 10 */	beq lbl_809CEF08
/* 809CEEFC  3C 60 80 9D */	lis r3, __vt__18daNpcF_ActorMngr_c@ha /* 0x809CFB20@ha */
/* 809CEF00  38 03 FB 20 */	addi r0, r3, __vt__18daNpcF_ActorMngr_c@l /* 0x809CFB20@l */
/* 809CEF04  90 1E 08 28 */	stw r0, 0x828(r30)
lbl_809CEF08:
/* 809CEF08  34 1E 07 E4 */	addic. r0, r30, 0x7e4
/* 809CEF0C  41 82 00 28 */	beq lbl_809CEF34
/* 809CEF10  3C 60 80 9D */	lis r3, __vt__12dBgS_AcchCir@ha /* 0x809CFB14@ha */
/* 809CEF14  38 03 FB 14 */	addi r0, r3, __vt__12dBgS_AcchCir@l /* 0x809CFB14@l */
/* 809CEF18  90 1E 07 F0 */	stw r0, 0x7f0(r30)
/* 809CEF1C  38 7E 07 F8 */	addi r3, r30, 0x7f8
/* 809CEF20  38 80 FF FF */	li r4, -1
/* 809CEF24  4B 89 FF F5 */	bl __dt__8cM3dGCirFv
/* 809CEF28  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 809CEF2C  38 80 00 00 */	li r4, 0
/* 809CEF30  4B 89 91 81 */	bl __dt__13cBgS_PolyInfoFv
lbl_809CEF34:
/* 809CEF34  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809CEF38  41 82 00 54 */	beq lbl_809CEF8C
/* 809CEF3C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 809CEF40  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 809CEF44  90 7E 07 C0 */	stw r3, 0x7c0(r30)
/* 809CEF48  38 03 00 20 */	addi r0, r3, 0x20
/* 809CEF4C  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809CEF50  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809CEF54  41 82 00 24 */	beq lbl_809CEF78
/* 809CEF58  3C 60 80 9D */	lis r3, __vt__10dCcD_GStts@ha /* 0x809CFB08@ha */
/* 809CEF5C  38 03 FB 08 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x809CFB08@l */
/* 809CEF60  90 1E 07 C4 */	stw r0, 0x7c4(r30)
/* 809CEF64  34 1E 07 C4 */	addic. r0, r30, 0x7c4
/* 809CEF68  41 82 00 10 */	beq lbl_809CEF78
/* 809CEF6C  3C 60 80 9D */	lis r3, __vt__10cCcD_GStts@ha /* 0x809CFAFC@ha */
/* 809CEF70  38 03 FA FC */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x809CFAFC@l */
/* 809CEF74  90 1E 07 C4 */	stw r0, 0x7c4(r30)
lbl_809CEF78:
/* 809CEF78  34 1E 07 A8 */	addic. r0, r30, 0x7a8
/* 809CEF7C  41 82 00 10 */	beq lbl_809CEF8C
/* 809CEF80  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 809CEF84  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 809CEF88  90 1E 07 C0 */	stw r0, 0x7c0(r30)
lbl_809CEF8C:
/* 809CEF8C  34 1E 05 D0 */	addic. r0, r30, 0x5d0
/* 809CEF90  41 82 00 2C */	beq lbl_809CEFBC
/* 809CEF94  3C 60 80 9D */	lis r3, __vt__12dBgS_ObjAcch@ha /* 0x809CFAD8@ha */
/* 809CEF98  38 63 FA D8 */	addi r3, r3, __vt__12dBgS_ObjAcch@l /* 0x809CFAD8@l */
/* 809CEF9C  90 7E 05 E0 */	stw r3, 0x5e0(r30)
/* 809CEFA0  38 03 00 0C */	addi r0, r3, 0xc
/* 809CEFA4  90 1E 05 E4 */	stw r0, 0x5e4(r30)
/* 809CEFA8  38 03 00 18 */	addi r0, r3, 0x18
/* 809CEFAC  90 1E 05 F4 */	stw r0, 0x5f4(r30)
/* 809CEFB0  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 809CEFB4  38 80 00 00 */	li r4, 0
/* 809CEFB8  4B 6A 6F DD */	bl __dt__9dBgS_AcchFv
lbl_809CEFBC:
/* 809CEFBC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809CEFC0  41 82 00 20 */	beq lbl_809CEFE0
/* 809CEFC4  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809CEFC8  41 82 00 18 */	beq lbl_809CEFE0
/* 809CEFCC  34 1E 05 B8 */	addic. r0, r30, 0x5b8
/* 809CEFD0  41 82 00 10 */	beq lbl_809CEFE0
/* 809CEFD4  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809CFACC@ha */
/* 809CEFD8  38 03 FA CC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809CFACC@l */
/* 809CEFDC  90 1E 05 B8 */	stw r0, 0x5b8(r30)
lbl_809CEFE0:
/* 809CEFE0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809CEFE4  41 82 00 20 */	beq lbl_809CF004
/* 809CEFE8  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809CEFEC  41 82 00 18 */	beq lbl_809CF004
/* 809CEFF0  34 1E 05 A0 */	addic. r0, r30, 0x5a0
/* 809CEFF4  41 82 00 10 */	beq lbl_809CF004
/* 809CEFF8  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809CFACC@ha */
/* 809CEFFC  38 03 FA CC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809CFACC@l */
/* 809CF000  90 1E 05 A0 */	stw r0, 0x5a0(r30)
lbl_809CF004:
/* 809CF004  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809CF008  41 82 00 20 */	beq lbl_809CF028
/* 809CF00C  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809CF010  41 82 00 18 */	beq lbl_809CF028
/* 809CF014  34 1E 05 88 */	addic. r0, r30, 0x588
/* 809CF018  41 82 00 10 */	beq lbl_809CF028
/* 809CF01C  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809CFACC@ha */
/* 809CF020  38 03 FA CC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809CFACC@l */
/* 809CF024  90 1E 05 88 */	stw r0, 0x588(r30)
lbl_809CF028:
/* 809CF028  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809CF02C  41 82 00 20 */	beq lbl_809CF04C
/* 809CF030  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809CF034  41 82 00 18 */	beq lbl_809CF04C
/* 809CF038  34 1E 05 6C */	addic. r0, r30, 0x56c
/* 809CF03C  41 82 00 10 */	beq lbl_809CF04C
/* 809CF040  3C 60 80 9D */	lis r3, __vt__12J3DFrameCtrl@ha /* 0x809CFACC@ha */
/* 809CF044  38 03 FA CC */	addi r0, r3, __vt__12J3DFrameCtrl@l /* 0x809CFACC@l */
/* 809CF048  90 1E 05 6C */	stw r0, 0x56c(r30)
lbl_809CF04C:
/* 809CF04C  7F C3 F3 78 */	mr r3, r30
/* 809CF050  38 80 00 00 */	li r4, 0
/* 809CF054  4B 64 9C 39 */	bl __dt__10fopAc_ac_cFv
/* 809CF058  7F E0 07 35 */	extsh. r0, r31
/* 809CF05C  40 81 00 0C */	ble lbl_809CF068
/* 809CF060  7F C3 F3 78 */	mr r3, r30
/* 809CF064  4B 8F FC D9 */	bl __dl__FPv
lbl_809CF068:
/* 809CF068  7F C3 F3 78 */	mr r3, r30
/* 809CF06C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809CF070  83 C1 00 08 */	lwz r30, 8(r1)
/* 809CF074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809CF078  7C 08 03 A6 */	mtlr r0
/* 809CF07C  38 21 00 10 */	addi r1, r1, 0x10
/* 809CF080  4E 80 00 20 */	blr 
