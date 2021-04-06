lbl_80CA6AE0:
/* 80CA6AE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA6AE4  7C 08 02 A6 */	mflr r0
/* 80CA6AE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA6AEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA6AF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA6AF4  41 82 00 1C */	beq lbl_80CA6B10
/* 80CA6AF8  3C A0 80 CA */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80CA7AB8@ha */
/* 80CA6AFC  38 05 7A B8 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80CA7AB8@l */
/* 80CA6B00  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA6B04  7C 80 07 35 */	extsh. r0, r4
/* 80CA6B08  40 81 00 08 */	ble lbl_80CA6B10
/* 80CA6B0C  4B 62 82 31 */	bl __dl__FPv
lbl_80CA6B10:
/* 80CA6B10  7F E3 FB 78 */	mr r3, r31
/* 80CA6B14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA6B18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6B1C  7C 08 03 A6 */	mtlr r0
/* 80CA6B20  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA6B24  4E 80 00 20 */	blr 
