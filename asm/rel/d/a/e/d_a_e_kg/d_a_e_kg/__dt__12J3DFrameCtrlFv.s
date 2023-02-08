lbl_806F99B8:
/* 806F99B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806F99BC  7C 08 02 A6 */	mflr r0
/* 806F99C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806F99C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806F99C8  7C 7F 1B 79 */	or. r31, r3, r3
/* 806F99CC  41 82 00 1C */	beq lbl_806F99E8
/* 806F99D0  3C A0 80 70 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x806FA5C8@ha */
/* 806F99D4  38 05 A5 C8 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x806FA5C8@l */
/* 806F99D8  90 1F 00 00 */	stw r0, 0(r31)
/* 806F99DC  7C 80 07 35 */	extsh. r0, r4
/* 806F99E0  40 81 00 08 */	ble lbl_806F99E8
/* 806F99E4  4B BD 53 59 */	bl __dl__FPv
lbl_806F99E8:
/* 806F99E8  7F E3 FB 78 */	mr r3, r31
/* 806F99EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806F99F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806F99F4  7C 08 03 A6 */	mtlr r0
/* 806F99F8  38 21 00 10 */	addi r1, r1, 0x10
/* 806F99FC  4E 80 00 20 */	blr 
