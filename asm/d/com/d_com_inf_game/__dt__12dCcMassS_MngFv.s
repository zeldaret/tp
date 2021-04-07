lbl_80030A74:
/* 80030A74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030A78  7C 08 02 A6 */	mflr r0
/* 80030A7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030A80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80030A84  93 C1 00 08 */	stw r30, 8(r1)
/* 80030A88  7C 7E 1B 79 */	or. r30, r3, r3
/* 80030A8C  7C 9F 23 78 */	mr r31, r4
/* 80030A90  41 82 01 30 */	beq lbl_80030BC0
/* 80030A94  3C 60 80 3A */	lis r3, __vt__12dCcMassS_Mng@ha /* 0x803A7230@ha */
/* 80030A98  38 03 72 30 */	addi r0, r3, __vt__12dCcMassS_Mng@l /* 0x803A7230@l */
/* 80030A9C  90 1E 02 74 */	stw r0, 0x274(r30)
/* 80030AA0  34 1E 02 64 */	addic. r0, r30, 0x264
/* 80030AA4  41 82 00 10 */	beq lbl_80030AB4
/* 80030AA8  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideInfo@ha /* 0x803A7224@ha */
/* 80030AAC  38 03 72 24 */	addi r0, r3, __vt__15cCcD_DivideInfo@l /* 0x803A7224@l */
/* 80030AB0  90 1E 02 70 */	stw r0, 0x270(r30)
lbl_80030AB4:
/* 80030AB4  34 1E 02 24 */	addic. r0, r30, 0x224
/* 80030AB8  41 82 00 4C */	beq lbl_80030B04
/* 80030ABC  3C 60 80 3C */	lis r3, __vt__12cCcD_CpsAttr@ha /* 0x803C3608@ha */
/* 80030AC0  38 63 36 08 */	addi r3, r3, __vt__12cCcD_CpsAttr@l /* 0x803C3608@l */
/* 80030AC4  90 7E 02 40 */	stw r3, 0x240(r30)
/* 80030AC8  38 03 00 58 */	addi r0, r3, 0x58
/* 80030ACC  90 1E 02 5C */	stw r0, 0x25c(r30)
/* 80030AD0  38 7E 02 44 */	addi r3, r30, 0x244
/* 80030AD4  38 80 00 00 */	li r4, 0
/* 80030AD8  48 23 E4 CD */	bl __dt__8cM3dGCpsFv
/* 80030ADC  34 1E 02 24 */	addic. r0, r30, 0x224
/* 80030AE0  41 82 00 24 */	beq lbl_80030B04
/* 80030AE4  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80030AE8  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80030AEC  90 1E 02 40 */	stw r0, 0x240(r30)
/* 80030AF0  34 1E 02 24 */	addic. r0, r30, 0x224
/* 80030AF4  41 82 00 10 */	beq lbl_80030B04
/* 80030AF8  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 80030AFC  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 80030B00  90 1E 02 3C */	stw r0, 0x23c(r30)
lbl_80030B04:
/* 80030B04  34 1E 01 C8 */	addic. r0, r30, 0x1c8
/* 80030B08  41 82 00 54 */	beq lbl_80030B5C
/* 80030B0C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80030B10  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80030B14  90 7E 01 E4 */	stw r3, 0x1e4(r30)
/* 80030B18  38 03 00 58 */	addi r0, r3, 0x58
/* 80030B1C  90 1E 01 FC */	stw r0, 0x1fc(r30)
/* 80030B20  34 1E 01 E8 */	addic. r0, r30, 0x1e8
/* 80030B24  41 82 00 10 */	beq lbl_80030B34
/* 80030B28  3C 60 80 3A */	lis r3, __vt__8cM3dGCyl@ha /* 0x803A720C@ha */
/* 80030B2C  38 03 72 0C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x803A720C@l */
/* 80030B30  90 1E 01 FC */	stw r0, 0x1fc(r30)
lbl_80030B34:
/* 80030B34  34 1E 01 C8 */	addic. r0, r30, 0x1c8
/* 80030B38  41 82 00 24 */	beq lbl_80030B5C
/* 80030B3C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80030B40  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80030B44  90 1E 01 E4 */	stw r0, 0x1e4(r30)
/* 80030B48  34 1E 01 C8 */	addic. r0, r30, 0x1c8
/* 80030B4C  41 82 00 10 */	beq lbl_80030B5C
/* 80030B50  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 80030B54  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 80030B58  90 1E 01 E0 */	stw r0, 0x1e0(r30)
lbl_80030B5C:
/* 80030B5C  38 7E 01 88 */	addi r3, r30, 0x188
/* 80030B60  3C 80 80 03 */	lis r4, __dt__12dCcMassS_ObjFv@ha /* 0x800300F4@ha */
/* 80030B64  38 84 00 F4 */	addi r4, r4, __dt__12dCcMassS_ObjFv@l /* 0x800300F4@l */
/* 80030B68  38 A0 00 20 */	li r5, 0x20
/* 80030B6C  38 C0 00 02 */	li r6, 2
/* 80030B70  48 33 11 79 */	bl __destroy_arr
/* 80030B74  38 7E 00 44 */	addi r3, r30, 0x44
/* 80030B78  3C 80 80 03 */	lis r4, __dt__12dCcMassS_ObjFv@ha /* 0x800300F4@ha */
/* 80030B7C  38 84 00 F4 */	addi r4, r4, __dt__12dCcMassS_ObjFv@l /* 0x800300F4@l */
/* 80030B80  38 A0 00 20 */	li r5, 0x20
/* 80030B84  38 C0 00 0A */	li r6, 0xa
/* 80030B88  48 33 11 61 */	bl __destroy_arr
/* 80030B8C  28 1E 00 00 */	cmplwi r30, 0
/* 80030B90  41 82 00 20 */	beq lbl_80030BB0
/* 80030B94  3C 60 80 3A */	lis r3, __vt__15cCcD_DivideArea@ha /* 0x803A7200@ha */
/* 80030B98  38 03 72 00 */	addi r0, r3, __vt__15cCcD_DivideArea@l /* 0x803A7200@l */
/* 80030B9C  90 1E 00 18 */	stw r0, 0x18(r30)
/* 80030BA0  41 82 00 10 */	beq lbl_80030BB0
/* 80030BA4  3C 60 80 3A */	lis r3, __vt__8cM3dGAab@ha /* 0x803A7218@ha */
/* 80030BA8  38 03 72 18 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x803A7218@l */
/* 80030BAC  90 1E 00 18 */	stw r0, 0x18(r30)
lbl_80030BB0:
/* 80030BB0  7F E0 07 35 */	extsh. r0, r31
/* 80030BB4  40 81 00 0C */	ble lbl_80030BC0
/* 80030BB8  7F C3 F3 78 */	mr r3, r30
/* 80030BBC  48 29 E1 81 */	bl __dl__FPv
lbl_80030BC0:
/* 80030BC0  7F C3 F3 78 */	mr r3, r30
/* 80030BC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80030BC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80030BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030BD0  7C 08 03 A6 */	mtlr r0
/* 80030BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80030BD8  4E 80 00 20 */	blr 
