lbl_8099A858:
/* 8099A858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099A85C  7C 08 02 A6 */	mflr r0
/* 8099A860  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099A864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099A868  7C 7F 1B 79 */	or. r31, r3, r3
/* 8099A86C  41 82 00 1C */	beq lbl_8099A888
/* 8099A870  3C A0 80 9A */	lis r5, __vt__11J3DTexNoAnm@ha
/* 8099A874  38 05 D4 D0 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 8099A878  90 1F 00 00 */	stw r0, 0(r31)
/* 8099A87C  7C 80 07 35 */	extsh. r0, r4
/* 8099A880  40 81 00 08 */	ble lbl_8099A888
/* 8099A884  4B 93 44 B8 */	b __dl__FPv
lbl_8099A888:
/* 8099A888  7F E3 FB 78 */	mr r3, r31
/* 8099A88C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8099A890  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099A894  7C 08 03 A6 */	mtlr r0
/* 8099A898  38 21 00 10 */	addi r1, r1, 0x10
/* 8099A89C  4E 80 00 20 */	blr 
