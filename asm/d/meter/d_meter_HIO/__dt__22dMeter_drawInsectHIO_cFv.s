lbl_80200EC0:
/* 80200EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80200EC4  7C 08 02 A6 */	mflr r0
/* 80200EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80200ECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80200ED0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80200ED4  41 82 00 1C */	beq lbl_80200EF0
/* 80200ED8  3C A0 80 3C */	lis r5, __vt__22dMeter_drawInsectHIO_c@ha /* 0x803BF160@ha */
/* 80200EDC  38 05 F1 60 */	addi r0, r5, __vt__22dMeter_drawInsectHIO_c@l /* 0x803BF160@l */
/* 80200EE0  90 1F 00 00 */	stw r0, 0(r31)
/* 80200EE4  7C 80 07 35 */	extsh. r0, r4
/* 80200EE8  40 81 00 08 */	ble lbl_80200EF0
/* 80200EEC  48 0C DE 51 */	bl __dl__FPv
lbl_80200EF0:
/* 80200EF0  7F E3 FB 78 */	mr r3, r31
/* 80200EF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80200EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80200EFC  7C 08 03 A6 */	mtlr r0
/* 80200F00  38 21 00 10 */	addi r1, r1, 0x10
/* 80200F04  4E 80 00 20 */	blr 
