lbl_80BF9AD4:
/* 80BF9AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF9AD8  7C 08 02 A6 */	mflr r0
/* 80BF9ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF9AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF9AE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BF9AE8  41 82 00 1C */	beq lbl_80BF9B04
/* 80BF9AEC  3C A0 80 C0 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80BFAB70@ha */
/* 80BF9AF0  38 05 AB 70 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80BFAB70@l */
/* 80BF9AF4  90 1F 00 00 */	stw r0, 0(r31)
/* 80BF9AF8  7C 80 07 35 */	extsh. r0, r4
/* 80BF9AFC  40 81 00 08 */	ble lbl_80BF9B04
/* 80BF9B00  4B 6D 52 3D */	bl __dl__FPv
lbl_80BF9B04:
/* 80BF9B04  7F E3 FB 78 */	mr r3, r31
/* 80BF9B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF9B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF9B10  7C 08 03 A6 */	mtlr r0
/* 80BF9B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF9B18  4E 80 00 20 */	blr 
