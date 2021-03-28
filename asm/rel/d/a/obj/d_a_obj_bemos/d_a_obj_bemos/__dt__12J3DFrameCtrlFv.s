lbl_80BAEF90:
/* 80BAEF90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAEF94  7C 08 02 A6 */	mflr r0
/* 80BAEF98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAEF9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BAEFA0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BAEFA4  41 82 00 1C */	beq lbl_80BAEFC0
/* 80BAEFA8  3C A0 80 BB */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80BAEFAC  38 05 3E 4C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80BAEFB0  90 1F 00 00 */	stw r0, 0(r31)
/* 80BAEFB4  7C 80 07 35 */	extsh. r0, r4
/* 80BAEFB8  40 81 00 08 */	ble lbl_80BAEFC0
/* 80BAEFBC  4B 71 FD 80 */	b __dl__FPv
lbl_80BAEFC0:
/* 80BAEFC0  7F E3 FB 78 */	mr r3, r31
/* 80BAEFC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAEFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAEFCC  7C 08 03 A6 */	mtlr r0
/* 80BAEFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAEFD4  4E 80 00 20 */	blr 
