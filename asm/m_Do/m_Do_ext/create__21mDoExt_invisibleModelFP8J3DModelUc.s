lbl_8000E53C:
/* 8000E53C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000E540  7C 08 02 A6 */	mflr r0
/* 8000E544  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000E548  39 61 00 20 */	addi r11, r1, 0x20
/* 8000E54C  48 35 3C 89 */	bl _savegpr_27
/* 8000E550  7C 7B 1B 78 */	mr r27, r3
/* 8000E554  7C 9C 23 78 */	mr r28, r4
/* 8000E558  7C BD 2B 78 */	mr r29, r5
/* 8000E55C  83 C4 00 04 */	lwz r30, 4(r4)
/* 8000E560  A3 FE 00 2C */	lhz r31, 0x2c(r30)
/* 8000E564  1C 7F 00 18 */	mulli r3, r31, 0x18
/* 8000E568  38 63 00 10 */	addi r3, r3, 0x10
/* 8000E56C  48 2C 07 59 */	bl __nwa__FUl
/* 8000E570  3C 80 80 01 */	lis r4, __ct__19mDoExt_invJntPacketFv@ha /* 0x8000E654@ha */
/* 8000E574  38 84 E6 54 */	addi r4, r4, __ct__19mDoExt_invJntPacketFv@l /* 0x8000E654@l */
/* 8000E578  3C A0 80 01 */	lis r5, __dt__19mDoExt_invJntPacketFv@ha /* 0x8000E5F8@ha */
/* 8000E57C  38 A5 E5 F8 */	addi r5, r5, __dt__19mDoExt_invJntPacketFv@l /* 0x8000E5F8@l */
/* 8000E580  38 C0 00 18 */	li r6, 0x18
/* 8000E584  7F E7 FB 78 */	mr r7, r31
/* 8000E588  48 35 39 8D */	bl __construct_new_array
/* 8000E58C  90 7B 00 04 */	stw r3, 4(r27)
/* 8000E590  80 1B 00 04 */	lwz r0, 4(r27)
/* 8000E594  28 00 00 00 */	cmplwi r0, 0
/* 8000E598  40 82 00 0C */	bne lbl_8000E5A4
/* 8000E59C  38 60 00 00 */	li r3, 0
/* 8000E5A0  48 00 00 40 */	b lbl_8000E5E0
lbl_8000E5A4:
/* 8000E5A4  93 9B 00 00 */	stw r28, 0(r27)
/* 8000E5A8  80 9B 00 04 */	lwz r4, 4(r27)
/* 8000E5AC  38 A0 00 00 */	li r5, 0
/* 8000E5B0  48 00 00 1C */	b lbl_8000E5CC
lbl_8000E5B4:
/* 8000E5B4  80 1B 00 00 */	lwz r0, 0(r27)
/* 8000E5B8  90 04 00 10 */	stw r0, 0x10(r4)
/* 8000E5BC  B0 A4 00 14 */	sth r5, 0x14(r4)
/* 8000E5C0  9B A4 00 16 */	stb r29, 0x16(r4)
/* 8000E5C4  38 84 00 18 */	addi r4, r4, 0x18
/* 8000E5C8  38 A5 00 01 */	addi r5, r5, 1
lbl_8000E5CC:
/* 8000E5CC  54 A3 04 3E */	clrlwi r3, r5, 0x10
/* 8000E5D0  A0 1E 00 2C */	lhz r0, 0x2c(r30)
/* 8000E5D4  7C 03 00 40 */	cmplw r3, r0
/* 8000E5D8  41 80 FF DC */	blt lbl_8000E5B4
/* 8000E5DC  38 60 00 01 */	li r3, 1
lbl_8000E5E0:
/* 8000E5E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8000E5E4  48 35 3C 3D */	bl _restgpr_27
/* 8000E5E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000E5EC  7C 08 03 A6 */	mtlr r0
/* 8000E5F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8000E5F4  4E 80 00 20 */	blr 
