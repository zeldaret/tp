lbl_8025C494:
/* 8025C494  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C498  7C 08 02 A6 */	mflr r0
/* 8025C49C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C4A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C4A4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C4A8  41 82 00 1C */	beq lbl_8025C4C4
/* 8025C4AC  3C A0 80 3C */	lis r5, __vt__29dSvBit_childItPerfectionHIO_c@ha /* 0x803C3354@ha */
/* 8025C4B0  38 05 33 54 */	addi r0, r5, __vt__29dSvBit_childItPerfectionHIO_c@l /* 0x803C3354@l */
/* 8025C4B4  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C4B8  7C 80 07 35 */	extsh. r0, r4
/* 8025C4BC  40 81 00 08 */	ble lbl_8025C4C4
/* 8025C4C0  48 07 28 7D */	bl __dl__FPv
lbl_8025C4C4:
/* 8025C4C4  7F E3 FB 78 */	mr r3, r31
/* 8025C4C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C4CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C4D0  7C 08 03 A6 */	mtlr r0
/* 8025C4D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C4D8  4E 80 00 20 */	blr 
