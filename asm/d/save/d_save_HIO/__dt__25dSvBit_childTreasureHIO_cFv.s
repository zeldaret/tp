lbl_8025C874:
/* 8025C874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C878  7C 08 02 A6 */	mflr r0
/* 8025C87C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C884  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C888  41 82 00 34 */	beq lbl_8025C8BC
/* 8025C88C  3C 60 80 3C */	lis r3, __vt__25dSvBit_childTreasureHIO_c@ha
/* 8025C890  38 03 33 90 */	addi r0, r3, __vt__25dSvBit_childTreasureHIO_c@l
/* 8025C894  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C898  34 1F 00 08 */	addic. r0, r31, 8
/* 8025C89C  41 82 00 10 */	beq lbl_8025C8AC
/* 8025C8A0  3C 60 80 3C */	lis r3, __vt__29dSvBit_childTbPerfectionHIO_c@ha
/* 8025C8A4  38 03 33 24 */	addi r0, r3, __vt__29dSvBit_childTbPerfectionHIO_c@l
/* 8025C8A8  90 1F 00 08 */	stw r0, 8(r31)
lbl_8025C8AC:
/* 8025C8AC  7C 80 07 35 */	extsh. r0, r4
/* 8025C8B0  40 81 00 0C */	ble lbl_8025C8BC
/* 8025C8B4  7F E3 FB 78 */	mr r3, r31
/* 8025C8B8  48 07 24 85 */	bl __dl__FPv
lbl_8025C8BC:
/* 8025C8BC  7F E3 FB 78 */	mr r3, r31
/* 8025C8C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C8C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C8C8  7C 08 03 A6 */	mtlr r0
/* 8025C8CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C8D0  4E 80 00 20 */	blr 
