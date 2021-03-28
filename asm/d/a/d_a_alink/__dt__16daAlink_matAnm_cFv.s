lbl_800D0B8C:
/* 800D0B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D0B90  7C 08 02 A6 */	mflr r0
/* 800D0B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D0B98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D0B9C  93 C1 00 08 */	stw r30, 8(r1)
/* 800D0BA0  7C 7E 1B 79 */	or. r30, r3, r3
/* 800D0BA4  7C 9F 23 78 */	mr r31, r4
/* 800D0BA8  41 82 00 A8 */	beq lbl_800D0C50
/* 800D0BAC  3C 60 80 3B */	lis r3, __vt__16daAlink_matAnm_c@ha
/* 800D0BB0  38 03 35 64 */	addi r0, r3, __vt__16daAlink_matAnm_c@l
/* 800D0BB4  90 1E 00 00 */	stw r0, 0(r30)
/* 800D0BB8  41 82 00 88 */	beq lbl_800D0C40
/* 800D0BBC  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 800D0BC0  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 800D0BC4  90 1E 00 00 */	stw r0, 0(r30)
/* 800D0BC8  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 800D0BCC  3C 80 80 04 */	lis r4, __dt__15J3DTevKColorAnmFv@ha
/* 800D0BD0  38 84 B1 50 */	addi r4, r4, __dt__15J3DTevKColorAnmFv@l
/* 800D0BD4  38 A0 00 08 */	li r5, 8
/* 800D0BD8  38 C0 00 04 */	li r6, 4
/* 800D0BDC  48 29 11 0D */	bl __destroy_arr
/* 800D0BE0  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 800D0BE4  3C 80 80 04 */	lis r4, __dt__14J3DTevColorAnmFv@ha
/* 800D0BE8  38 84 B1 A4 */	addi r4, r4, __dt__14J3DTevColorAnmFv@l
/* 800D0BEC  38 A0 00 08 */	li r5, 8
/* 800D0BF0  38 C0 00 04 */	li r6, 4
/* 800D0BF4  48 29 10 F5 */	bl __destroy_arr
/* 800D0BF8  38 7E 00 54 */	addi r3, r30, 0x54
/* 800D0BFC  3C 80 80 04 */	lis r4, __dt__11J3DTexNoAnmFv@ha
/* 800D0C00  38 84 B1 F8 */	addi r4, r4, __dt__11J3DTexNoAnmFv@l
/* 800D0C04  38 A0 00 0C */	li r5, 0xc
/* 800D0C08  38 C0 00 08 */	li r6, 8
/* 800D0C0C  48 29 10 DD */	bl __destroy_arr
/* 800D0C10  38 7E 00 14 */	addi r3, r30, 0x14
/* 800D0C14  3C 80 80 04 */	lis r4, __dt__12J3DTexMtxAnmFv@ha
/* 800D0C18  38 84 B2 64 */	addi r4, r4, __dt__12J3DTexMtxAnmFv@l
/* 800D0C1C  38 A0 00 08 */	li r5, 8
/* 800D0C20  38 C0 00 08 */	li r6, 8
/* 800D0C24  48 29 10 C5 */	bl __destroy_arr
/* 800D0C28  38 7E 00 04 */	addi r3, r30, 4
/* 800D0C2C  3C 80 80 04 */	lis r4, __dt__14J3DMatColorAnmFv@ha
/* 800D0C30  38 84 B2 B8 */	addi r4, r4, __dt__14J3DMatColorAnmFv@l
/* 800D0C34  38 A0 00 08 */	li r5, 8
/* 800D0C38  38 C0 00 02 */	li r6, 2
/* 800D0C3C  48 29 10 AD */	bl __destroy_arr
lbl_800D0C40:
/* 800D0C40  7F E0 07 35 */	extsh. r0, r31
/* 800D0C44  40 81 00 0C */	ble lbl_800D0C50
/* 800D0C48  7F C3 F3 78 */	mr r3, r30
/* 800D0C4C  48 1F E0 F1 */	bl __dl__FPv
lbl_800D0C50:
/* 800D0C50  7F C3 F3 78 */	mr r3, r30
/* 800D0C54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D0C58  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D0C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D0C60  7C 08 03 A6 */	mtlr r0
/* 800D0C64  38 21 00 10 */	addi r1, r1, 0x10
/* 800D0C68  4E 80 00 20 */	blr 
