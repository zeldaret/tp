lbl_80457C38:
/* 80457C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80457C3C  7C 08 02 A6 */	mflr r0
/* 80457C40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80457C44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80457C48  93 C1 00 08 */	stw r30, 8(r1)
/* 80457C4C  54 80 04 3E */	clrlwi r0, r4, 0x10
/* 80457C50  28 00 FF FF */	cmplwi r0, 0xffff
/* 80457C54  41 82 01 08 */	beq lbl_80457D5C
/* 80457C58  80 63 00 60 */	lwz r3, 0x60(r3)
/* 80457C5C  54 80 13 BA */	rlwinm r0, r4, 2, 0xe, 0x1d
/* 80457C60  7F C3 00 2E */	lwzx r30, r3, r0
/* 80457C64  80 7E 00 3C */	lwz r3, 0x3c(r30)
/* 80457C68  3C 00 C0 00 */	lis r0, 0xc000
/* 80457C6C  7C 03 00 40 */	cmplw r3, r0
/* 80457C70  40 80 00 08 */	bge lbl_80457C78
/* 80457C74  48 00 00 08 */	b lbl_80457C7C
lbl_80457C78:
/* 80457C78  38 60 00 00 */	li r3, 0
lbl_80457C7C:
/* 80457C7C  28 03 00 00 */	cmplwi r3, 0
/* 80457C80  40 82 00 DC */	bne lbl_80457D5C
/* 80457C84  38 60 00 F4 */	li r3, 0xf4
/* 80457C88  4B E7 6F C5 */	bl __nw__FUl
/* 80457C8C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80457C90  41 82 00 B8 */	beq lbl_80457D48
/* 80457C94  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 80457C98  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 80457C9C  90 1F 00 00 */	stw r0, 0(r31)
/* 80457CA0  38 7F 00 04 */	addi r3, r31, 4
/* 80457CA4  3C 80 80 45 */	lis r4, __ct__14J3DMatColorAnmFv@ha /* 0x80457F1C@ha */
/* 80457CA8  38 84 7F 1C */	addi r4, r4, __ct__14J3DMatColorAnmFv@l /* 0x80457F1C@l */
/* 80457CAC  3C A0 80 45 */	lis r5, __dt__14J3DMatColorAnmFv@ha /* 0x80457EE0@ha */
/* 80457CB0  38 A5 7E E0 */	addi r5, r5, __dt__14J3DMatColorAnmFv@l /* 0x80457EE0@l */
/* 80457CB4  38 C0 00 08 */	li r6, 8
/* 80457CB8  38 E0 00 02 */	li r7, 2
/* 80457CBC  4B F0 A0 A5 */	bl __construct_array
/* 80457CC0  38 7F 00 14 */	addi r3, r31, 0x14
/* 80457CC4  3C 80 80 45 */	lis r4, __ct__12J3DTexMtxAnmFv@ha /* 0x80457EC8@ha */
/* 80457CC8  38 84 7E C8 */	addi r4, r4, __ct__12J3DTexMtxAnmFv@l /* 0x80457EC8@l */
/* 80457CCC  3C A0 80 45 */	lis r5, __dt__12J3DTexMtxAnmFv@ha /* 0x80457E8C@ha */
/* 80457CD0  38 A5 7E 8C */	addi r5, r5, __dt__12J3DTexMtxAnmFv@l /* 0x80457E8C@l */
/* 80457CD4  38 C0 00 08 */	li r6, 8
/* 80457CD8  38 E0 00 08 */	li r7, 8
/* 80457CDC  4B F0 A0 85 */	bl __construct_array
/* 80457CE0  38 7F 00 54 */	addi r3, r31, 0x54
/* 80457CE4  3C 80 80 45 */	lis r4, __ct__11J3DTexNoAnmFv@ha /* 0x80457E68@ha */
/* 80457CE8  38 84 7E 68 */	addi r4, r4, __ct__11J3DTexNoAnmFv@l /* 0x80457E68@l */
/* 80457CEC  3C A0 80 45 */	lis r5, __dt__11J3DTexNoAnmFv@ha /* 0x80457E20@ha */
/* 80457CF0  38 A5 7E 20 */	addi r5, r5, __dt__11J3DTexNoAnmFv@l /* 0x80457E20@l */
/* 80457CF4  38 C0 00 0C */	li r6, 0xc
/* 80457CF8  38 E0 00 08 */	li r7, 8
/* 80457CFC  4B F0 A0 65 */	bl __construct_array
/* 80457D00  38 7F 00 B4 */	addi r3, r31, 0xb4
/* 80457D04  3C 80 80 45 */	lis r4, __ct__14J3DTevColorAnmFv@ha /* 0x80457E08@ha */
/* 80457D08  38 84 7E 08 */	addi r4, r4, __ct__14J3DTevColorAnmFv@l /* 0x80457E08@l */
/* 80457D0C  3C A0 80 45 */	lis r5, __dt__14J3DTevColorAnmFv@ha /* 0x80457DCC@ha */
/* 80457D10  38 A5 7D CC */	addi r5, r5, __dt__14J3DTevColorAnmFv@l /* 0x80457DCC@l */
/* 80457D14  38 C0 00 08 */	li r6, 8
/* 80457D18  38 E0 00 04 */	li r7, 4
/* 80457D1C  4B F0 A0 45 */	bl __construct_array
/* 80457D20  38 7F 00 D4 */	addi r3, r31, 0xd4
/* 80457D24  3C 80 80 45 */	lis r4, __ct__15J3DTevKColorAnmFv@ha /* 0x80457DB4@ha */
/* 80457D28  38 84 7D B4 */	addi r4, r4, __ct__15J3DTevKColorAnmFv@l /* 0x80457DB4@l */
/* 80457D2C  3C A0 80 45 */	lis r5, __dt__15J3DTevKColorAnmFv@ha /* 0x80457D78@ha */
/* 80457D30  38 A5 7D 78 */	addi r5, r5, __dt__15J3DTevKColorAnmFv@l /* 0x80457D78@l */
/* 80457D34  38 C0 00 08 */	li r6, 8
/* 80457D38  38 E0 00 04 */	li r7, 4
/* 80457D3C  4B F0 A0 25 */	bl __construct_array
/* 80457D40  7F E3 FB 78 */	mr r3, r31
/* 80457D44  4B ED 45 DD */	bl initialize__14J3DMaterialAnmFv
lbl_80457D48:
/* 80457D48  28 1F 00 00 */	cmplwi r31, 0
/* 80457D4C  40 82 00 0C */	bne lbl_80457D58
/* 80457D50  38 60 00 00 */	li r3, 0
/* 80457D54  48 00 00 0C */	b lbl_80457D60
lbl_80457D58:
/* 80457D58  93 FE 00 3C */	stw r31, 0x3c(r30)
lbl_80457D5C:
/* 80457D5C  38 60 00 01 */	li r3, 1
lbl_80457D60:
/* 80457D60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80457D64  83 C1 00 08 */	lwz r30, 8(r1)
/* 80457D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80457D6C  7C 08 03 A6 */	mtlr r0
/* 80457D70  38 21 00 10 */	addi r1, r1, 0x10
/* 80457D74  4E 80 00 20 */	blr 
