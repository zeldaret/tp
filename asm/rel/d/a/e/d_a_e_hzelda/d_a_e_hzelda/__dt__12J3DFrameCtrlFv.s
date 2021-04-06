lbl_806F4AD4:
/* 806F4AD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F4AD8  7C 08 02 A6 */	mflr r0
/* 806F4ADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F4AE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F4AE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F4AE8  41 82 00 1C */	beq lbl_806F4B04
/* 806F4AEC  3C A0 80 6F */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x806F5904@ha */
/* 806F4AF0  38 05 59 04 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x806F5904@l */
/* 806F4AF4  90 1F 00 00 */	stw r0, 0(r31)
/* 806F4AF8  7C 80 07 35 */	extsh. r0, r4
/* 806F4AFC  40 81 00 08 */	ble lbl_806F4B04
/* 806F4B00  4B BD A2 3D */	bl __dl__FPv
lbl_806F4B04:
/* 806F4B04  7F E3 FB 78 */	mr r3, r31
/* 806F4B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F4B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F4B10  7C 08 03 A6 */	mtlr r0
/* 806F4B14  38 21 00 10 */	addi r1, r1, 0x10
/* 806F4B18  4E 80 00 20 */	blr 
