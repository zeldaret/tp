lbl_8046D9C8:
/* 8046D9C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046D9CC  7C 08 02 A6 */	mflr r0
/* 8046D9D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046D9D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046D9D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046D9DC  41 82 00 1C */	beq lbl_8046D9F8
/* 8046D9E0  3C A0 80 47 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8046DAC8@ha */
/* 8046D9E4  38 05 DA C8 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8046DAC8@l */
/* 8046D9E8  90 1F 00 00 */	stw r0, 0(r31)
/* 8046D9EC  7C 80 07 35 */	extsh. r0, r4
/* 8046D9F0  40 81 00 08 */	ble lbl_8046D9F8
/* 8046D9F4  4B E6 13 49 */	bl __dl__FPv
lbl_8046D9F8:
/* 8046D9F8  7F E3 FB 78 */	mr r3, r31
/* 8046D9FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046DA00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046DA04  7C 08 03 A6 */	mtlr r0
/* 8046DA08  38 21 00 10 */	addi r1, r1, 0x10
/* 8046DA0C  4E 80 00 20 */	blr 
