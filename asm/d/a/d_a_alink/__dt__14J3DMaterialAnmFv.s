lbl_800A4820:
/* 800A4820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A4824  7C 08 02 A6 */	mflr r0
/* 800A4828  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A482C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A4830  93 C1 00 08 */	stw r30, 8(r1)
/* 800A4834  7C 7E 1B 79 */	or. r30, r3, r3
/* 800A4838  7C 9F 23 78 */	mr r31, r4
/* 800A483C  41 82 00 98 */	beq lbl_800A48D4
/* 800A4840  3C 60 80 3D */	lis r3, __vt__14J3DMaterialAnm@ha /* 0x803CEE60@ha */
/* 800A4844  38 03 EE 60 */	addi r0, r3, __vt__14J3DMaterialAnm@l /* 0x803CEE60@l */
/* 800A4848  90 1E 00 00 */	stw r0, 0(r30)
/* 800A484C  38 7E 00 D4 */	addi r3, r30, 0xd4
/* 800A4850  3C 80 80 04 */	lis r4, __dt__15J3DTevKColorAnmFv@ha /* 0x8003B150@ha */
/* 800A4854  38 84 B1 50 */	addi r4, r4, __dt__15J3DTevKColorAnmFv@l /* 0x8003B150@l */
/* 800A4858  38 A0 00 08 */	li r5, 8
/* 800A485C  38 C0 00 04 */	li r6, 4
/* 800A4860  48 2B D4 89 */	bl __destroy_arr
/* 800A4864  38 7E 00 B4 */	addi r3, r30, 0xb4
/* 800A4868  3C 80 80 04 */	lis r4, __dt__14J3DTevColorAnmFv@ha /* 0x8003B1A4@ha */
/* 800A486C  38 84 B1 A4 */	addi r4, r4, __dt__14J3DTevColorAnmFv@l /* 0x8003B1A4@l */
/* 800A4870  38 A0 00 08 */	li r5, 8
/* 800A4874  38 C0 00 04 */	li r6, 4
/* 800A4878  48 2B D4 71 */	bl __destroy_arr
/* 800A487C  38 7E 00 54 */	addi r3, r30, 0x54
/* 800A4880  3C 80 80 04 */	lis r4, __dt__11J3DTexNoAnmFv@ha /* 0x8003B1F8@ha */
/* 800A4884  38 84 B1 F8 */	addi r4, r4, __dt__11J3DTexNoAnmFv@l /* 0x8003B1F8@l */
/* 800A4888  38 A0 00 0C */	li r5, 0xc
/* 800A488C  38 C0 00 08 */	li r6, 8
/* 800A4890  48 2B D4 59 */	bl __destroy_arr
/* 800A4894  38 7E 00 14 */	addi r3, r30, 0x14
/* 800A4898  3C 80 80 04 */	lis r4, __dt__12J3DTexMtxAnmFv@ha /* 0x8003B264@ha */
/* 800A489C  38 84 B2 64 */	addi r4, r4, __dt__12J3DTexMtxAnmFv@l /* 0x8003B264@l */
/* 800A48A0  38 A0 00 08 */	li r5, 8
/* 800A48A4  38 C0 00 08 */	li r6, 8
/* 800A48A8  48 2B D4 41 */	bl __destroy_arr
/* 800A48AC  38 7E 00 04 */	addi r3, r30, 4
/* 800A48B0  3C 80 80 04 */	lis r4, __dt__14J3DMatColorAnmFv@ha /* 0x8003B2B8@ha */
/* 800A48B4  38 84 B2 B8 */	addi r4, r4, __dt__14J3DMatColorAnmFv@l /* 0x8003B2B8@l */
/* 800A48B8  38 A0 00 08 */	li r5, 8
/* 800A48BC  38 C0 00 02 */	li r6, 2
/* 800A48C0  48 2B D4 29 */	bl __destroy_arr
/* 800A48C4  7F E0 07 35 */	extsh. r0, r31
/* 800A48C8  40 81 00 0C */	ble lbl_800A48D4
/* 800A48CC  7F C3 F3 78 */	mr r3, r30
/* 800A48D0  48 22 A4 6D */	bl __dl__FPv
lbl_800A48D4:
/* 800A48D4  7F C3 F3 78 */	mr r3, r30
/* 800A48D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A48DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A48E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A48E4  7C 08 03 A6 */	mtlr r0
/* 800A48E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800A48EC  4E 80 00 20 */	blr 
