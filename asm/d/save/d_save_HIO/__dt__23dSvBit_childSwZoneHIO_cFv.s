lbl_8025C524:
/* 8025C524  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025C528  7C 08 02 A6 */	mflr r0
/* 8025C52C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025C530  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025C534  7C 7F 1B 79 */	or. r31, r3, r3
/* 8025C538  41 82 00 1C */	beq lbl_8025C554
/* 8025C53C  3C A0 80 3C */	lis r5, __vt__23dSvBit_childSwZoneHIO_c@ha
/* 8025C540  38 05 33 6C */	addi r0, r5, __vt__23dSvBit_childSwZoneHIO_c@l
/* 8025C544  90 1F 00 00 */	stw r0, 0(r31)
/* 8025C548  7C 80 07 35 */	extsh. r0, r4
/* 8025C54C  40 81 00 08 */	ble lbl_8025C554
/* 8025C550  48 07 27 ED */	bl __dl__FPv
lbl_8025C554:
/* 8025C554  7F E3 FB 78 */	mr r3, r31
/* 8025C558  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025C55C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025C560  7C 08 03 A6 */	mtlr r0
/* 8025C564  38 21 00 10 */	addi r1, r1, 0x10
/* 8025C568  4E 80 00 20 */	blr 
