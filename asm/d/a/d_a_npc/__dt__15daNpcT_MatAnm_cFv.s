lbl_8014D24C:
/* 8014D24C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014D250  7C 08 02 A6 */	mflr r0
/* 8014D254  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014D258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014D25C  93 C1 00 08 */	stw r30, 8(r1)
/* 8014D260  7C 7E 1B 79 */	or. r30, r3, r3
/* 8014D264  7C 9F 23 78 */	mr r31, r4
/* 8014D268  41 82 00 A8 */	beq lbl_8014D310
/* 8014D26C  3C 60 80 3B */	lis r3, __vt__15daNpcT_MatAnm_c@ha
/* 8014D270  38 03 3B 6C */	addi r0, r3, __vt__15daNpcT_MatAnm_c@l
/* 8014D274  90 1E 00 00 */	stw r0, 0(r30)
/* 8014D278  41 82 00 88 */	beq lbl_8014D300
/* 8014D27C  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha
/* 8014D280  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l
/* 8014D284  90 1E 00 00 */	stw r0, 0(r30)
/* 8014D288  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 8014D28C  3C 80 80 04 */	lis r4, __dt__15J3DTevKColorAnmFv@ha
/* 8014D290  38 84 B1 50 */	addi r4, r4, __dt__15J3DTevKColorAnmFv@l
/* 8014D294  38 A0 00 08 */	li r5, 8
/* 8014D298  38 C0 00 04 */	li r6, 4
/* 8014D29C  48 21 4A 4D */	bl __destroy_arr
/* 8014D2A0  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 8014D2A4  3C 80 80 04 */	lis r4, __dt__14J3DTevColorAnmFv@ha
/* 8014D2A8  38 84 B1 A4 */	addi r4, r4, __dt__14J3DTevColorAnmFv@l
/* 8014D2AC  38 A0 00 08 */	li r5, 8
/* 8014D2B0  38 C0 00 04 */	li r6, 4
/* 8014D2B4  48 21 4A 35 */	bl __destroy_arr
/* 8014D2B8  38 7E 00 54 */	addi r3, r30, 0x54
/* 8014D2BC  3C 80 80 04 */	lis r4, __dt__11J3DTexNoAnmFv@ha
/* 8014D2C0  38 84 B1 F8 */	addi r4, r4, __dt__11J3DTexNoAnmFv@l
/* 8014D2C4  38 A0 00 0C */	li r5, 0xc
/* 8014D2C8  38 C0 00 08 */	li r6, 8
/* 8014D2CC  48 21 4A 1D */	bl __destroy_arr
/* 8014D2D0  38 7E 00 14 */	addi r3, r30, 0x14
/* 8014D2D4  3C 80 80 04 */	lis r4, __dt__12J3DTexMtxAnmFv@ha
/* 8014D2D8  38 84 B2 64 */	addi r4, r4, __dt__12J3DTexMtxAnmFv@l
/* 8014D2DC  38 A0 00 08 */	li r5, 8
/* 8014D2E0  38 C0 00 08 */	li r6, 8
/* 8014D2E4  48 21 4A 05 */	bl __destroy_arr
/* 8014D2E8  38 7E 00 04 */	addi r3, r30, 4
/* 8014D2EC  3C 80 80 04 */	lis r4, __dt__14J3DMatColorAnmFv@ha
/* 8014D2F0  38 84 B2 B8 */	addi r4, r4, __dt__14J3DMatColorAnmFv@l
/* 8014D2F4  38 A0 00 08 */	li r5, 8
/* 8014D2F8  38 C0 00 02 */	li r6, 2
/* 8014D2FC  48 21 49 ED */	bl __destroy_arr
lbl_8014D300:
/* 8014D300  7F E0 07 35 */	extsh. r0, r31
/* 8014D304  40 81 00 0C */	ble lbl_8014D310
/* 8014D308  7F C3 F3 78 */	mr r3, r30
/* 8014D30C  48 18 1A 31 */	bl __dl__FPv
lbl_8014D310:
/* 8014D310  7F C3 F3 78 */	mr r3, r30
/* 8014D314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014D318  83 C1 00 08 */	lwz r30, 8(r1)
/* 8014D31C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014D320  7C 08 03 A6 */	mtlr r0
/* 8014D324  38 21 00 10 */	addi r1, r1, 0x10
/* 8014D328  4E 80 00 20 */	blr 
