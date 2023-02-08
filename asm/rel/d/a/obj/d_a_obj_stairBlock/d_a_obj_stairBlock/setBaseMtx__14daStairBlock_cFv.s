lbl_80CE81F4:
/* 80CE81F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CE81F8  7C 08 02 A6 */	mflr r0
/* 80CE81FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CE8200  39 61 00 20 */	addi r11, r1, 0x20
/* 80CE8204  4B 67 9F D1 */	bl _savegpr_27
/* 80CE8208  7C 7B 1B 78 */	mr r27, r3
/* 80CE820C  3B 80 00 00 */	li r28, 0
/* 80CE8210  3B E0 00 00 */	li r31, 0
/* 80CE8214  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80CE8218  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80CE821C  7F BE EB 78 */	mr r30, r29
lbl_80CE8220:
/* 80CE8220  7F A3 EB 78 */	mr r3, r29
/* 80CE8224  C0 3B 04 D0 */	lfs f1, 0x4d0(r27)
/* 80CE8228  C0 5B 04 D4 */	lfs f2, 0x4d4(r27)
/* 80CE822C  C0 7B 04 D8 */	lfs f3, 0x4d8(r27)
/* 80CE8230  4B 65 E6 B9 */	bl PSMTXTrans
/* 80CE8234  7F A3 EB 78 */	mr r3, r29
/* 80CE8238  A8 9B 04 E4 */	lha r4, 0x4e4(r27)
/* 80CE823C  A8 BB 04 E6 */	lha r5, 0x4e6(r27)
/* 80CE8240  A8 DB 04 E8 */	lha r6, 0x4e8(r27)
/* 80CE8244  4B 32 40 5D */	bl mDoMtx_ZXYrotM__FPA4_fsss
/* 80CE8248  38 1F 05 74 */	addi r0, r31, 0x574
/* 80CE824C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80CE8250  C0 1B 04 EC */	lfs f0, 0x4ec(r27)
/* 80CE8254  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80CE8258  C0 1B 04 F0 */	lfs f0, 0x4f0(r27)
/* 80CE825C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80CE8260  C0 1B 04 F4 */	lfs f0, 0x4f4(r27)
/* 80CE8264  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 80CE8268  7F C3 F3 78 */	mr r3, r30
/* 80CE826C  7C 9B 00 2E */	lwzx r4, r27, r0
/* 80CE8270  38 84 00 24 */	addi r4, r4, 0x24
/* 80CE8274  4B 65 E2 3D */	bl PSMTXCopy
/* 80CE8278  3B 9C 00 01 */	addi r28, r28, 1
/* 80CE827C  2C 1C 00 0A */	cmpwi r28, 0xa
/* 80CE8280  3B FF 00 04 */	addi r31, r31, 4
/* 80CE8284  41 80 FF 9C */	blt lbl_80CE8220
/* 80CE8288  39 61 00 20 */	addi r11, r1, 0x20
/* 80CE828C  4B 67 9F 95 */	bl _restgpr_27
/* 80CE8290  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CE8294  7C 08 03 A6 */	mtlr r0
/* 80CE8298  38 21 00 20 */	addi r1, r1, 0x20
/* 80CE829C  4E 80 00 20 */	blr 
