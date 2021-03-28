lbl_80155ED0:
/* 80155ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80155ED4  7C 08 02 A6 */	mflr r0
/* 80155ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80155EDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80155EE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80155EE4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80155EE8  7C 9F 23 78 */	mr r31, r4
/* 80155EEC  41 82 00 A8 */	beq lbl_80155F94
/* 80155EF0  3C 60 80 3B */	lis r3, __vt__15daNpcF_MatAnm_c@ha
/* 80155EF4  38 03 39 20 */	addi r0, r3, __vt__15daNpcF_MatAnm_c@l
/* 80155EF8  90 1E 00 00 */	stw r0, 0(r30)
/* 80155EFC  41 82 00 88 */	beq lbl_80155F84
/* 80155F00  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 80155F04  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 80155F08  90 1E 00 00 */	stw r0, 0(r30)
/* 80155F0C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 80155F10  3C 80 80 04 */	lis r4, __dt__15J3DTevKColorAnmFv@ha
/* 80155F14  38 84 B1 50 */	addi r4, r4, __dt__15J3DTevKColorAnmFv@l
/* 80155F18  38 A0 00 08 */	li r5, 8
/* 80155F1C  38 C0 00 04 */	li r6, 4
/* 80155F20  48 20 BD C9 */	bl __destroy_arr
/* 80155F24  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 80155F28  3C 80 80 04 */	lis r4, __dt__14J3DTevColorAnmFv@ha
/* 80155F2C  38 84 B1 A4 */	addi r4, r4, __dt__14J3DTevColorAnmFv@l
/* 80155F30  38 A0 00 08 */	li r5, 8
/* 80155F34  38 C0 00 04 */	li r6, 4
/* 80155F38  48 20 BD B1 */	bl __destroy_arr
/* 80155F3C  38 7E 00 54 */	addi r3, r30, 0x54
/* 80155F40  3C 80 80 04 */	lis r4, __dt__11J3DTexNoAnmFv@ha
/* 80155F44  38 84 B1 F8 */	addi r4, r4, __dt__11J3DTexNoAnmFv@l
/* 80155F48  38 A0 00 0C */	li r5, 0xc
/* 80155F4C  38 C0 00 08 */	li r6, 8
/* 80155F50  48 20 BD 99 */	bl __destroy_arr
/* 80155F54  38 7E 00 14 */	addi r3, r30, 0x14
/* 80155F58  3C 80 80 04 */	lis r4, __dt__12J3DTexMtxAnmFv@ha
/* 80155F5C  38 84 B2 64 */	addi r4, r4, __dt__12J3DTexMtxAnmFv@l
/* 80155F60  38 A0 00 08 */	li r5, 8
/* 80155F64  38 C0 00 08 */	li r6, 8
/* 80155F68  48 20 BD 81 */	bl __destroy_arr
/* 80155F6C  38 7E 00 04 */	addi r3, r30, 4
/* 80155F70  3C 80 80 04 */	lis r4, __dt__14J3DMatColorAnmFv@ha
/* 80155F74  38 84 B2 B8 */	addi r4, r4, __dt__14J3DMatColorAnmFv@l
/* 80155F78  38 A0 00 08 */	li r5, 8
/* 80155F7C  38 C0 00 02 */	li r6, 2
/* 80155F80  48 20 BD 69 */	bl __destroy_arr
lbl_80155F84:
/* 80155F84  7F E0 07 35 */	extsh. r0, r31
/* 80155F88  40 81 00 0C */	ble lbl_80155F94
/* 80155F8C  7F C3 F3 78 */	mr r3, r30
/* 80155F90  48 17 8D AD */	bl __dl__FPv
lbl_80155F94:
/* 80155F94  7F C3 F3 78 */	mr r3, r30
/* 80155F98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80155F9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80155FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80155FA4  7C 08 03 A6 */	mtlr r0
/* 80155FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80155FAC  4E 80 00 20 */	blr 
