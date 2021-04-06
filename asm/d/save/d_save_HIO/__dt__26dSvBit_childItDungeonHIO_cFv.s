lbl_8025C44C:
/* 8025C44C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C450  7C 08 02 A6 */	mflr r0
/* 8025C454  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C458  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C45C  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C460  41 82 00 1C */	beq lbl_8025C47C
/* 8025C464  3C A0 80 3C */	lis r5, __vt__26dSvBit_childItDungeonHIO_c@ha /* 0x803C3348@ha */
/* 8025C468  38 05 33 48 */	addi r0, r5, __vt__26dSvBit_childItDungeonHIO_c@l /* 0x803C3348@l */
/* 8025C46C  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C470  7C 80 07 35 */	extsh. r0, r4
/* 8025C474  40 81 00 08 */	ble lbl_8025C47C
/* 8025C478  48 07 28 C5 */	bl __dl__FPv
lbl_8025C47C:
/* 8025C47C  7F E3 FB 78 */	mr r3, r31
/* 8025C480  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C484  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C488  7C 08 03 A6 */	mtlr r0
/* 8025C48C  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C490  4E 80 00 20 */	blr 
