lbl_8025C32C:
/* 8025C32C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C330  7C 08 02 A6 */	mflr r0
/* 8025C334  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C338  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C33C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C340  41 82 00 1C */	beq lbl_8025C35C
/* 8025C344  3C A0 80 3C */	lis r5, __vt__25dSvBit_childDarknessHIO_c@ha /* 0x803C3318@ha */
/* 8025C348  38 05 33 18 */	addi r0, r5, __vt__25dSvBit_childDarknessHIO_c@l /* 0x803C3318@l */
/* 8025C34C  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C350  7C 80 07 35 */	extsh. r0, r4
/* 8025C354  40 81 00 08 */	ble lbl_8025C35C
/* 8025C358  48 07 29 E5 */	bl __dl__FPv
lbl_8025C35C:
/* 8025C35C  7F E3 FB 78 */	mr r3, r31
/* 8025C360  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C364  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C368  7C 08 03 A6 */	mtlr r0
/* 8025C36C  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C370  4E 80 00 20 */	blr 
