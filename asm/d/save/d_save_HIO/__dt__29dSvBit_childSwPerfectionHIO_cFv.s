lbl_8025C5B4:
/* 8025C5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C5B8  7C 08 02 A6 */	mflr r0
/* 8025C5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C5C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C5C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C5C8  41 82 00 1C */	beq lbl_8025C5E4
/* 8025C5CC  3C A0 80 3C */	lis r5, __vt__29dSvBit_childSwPerfectionHIO_c@ha /* 0x803C3384@ha */
/* 8025C5D0  38 05 33 84 */	addi r0, r5, __vt__29dSvBit_childSwPerfectionHIO_c@l /* 0x803C3384@l */
/* 8025C5D4  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C5D8  7C 80 07 35 */	extsh. r0, r4
/* 8025C5DC  40 81 00 08 */	ble lbl_8025C5E4
/* 8025C5E0  48 07 27 5D */	bl __dl__FPv
lbl_8025C5E4:
/* 8025C5E4  7F E3 FB 78 */	mr r3, r31
/* 8025C5E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C5EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C5F0  7C 08 03 A6 */	mtlr r0
/* 8025C5F4  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C5F8  4E 80 00 20 */	blr 
