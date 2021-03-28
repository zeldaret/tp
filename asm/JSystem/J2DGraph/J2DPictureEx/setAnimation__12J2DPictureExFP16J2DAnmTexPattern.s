lbl_80306B1C:
/* 80306B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80306B20  7C 08 02 A6 */	mflr r0
/* 80306B24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80306B28  80 63 01 50 */	lwz r3, 0x150(r3)
/* 80306B2C  28 03 00 00 */	cmplwi r3, 0
/* 80306B30  41 82 00 08 */	beq lbl_80306B38
/* 80306B34  4B FE 3E F9 */	bl setAnimation__11J2DMaterialFP16J2DAnmTexPattern
lbl_80306B38:
/* 80306B38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80306B3C  7C 08 03 A6 */	mtlr r0
/* 80306B40  38 21 00 10 */	addi r1, r1, 0x10
/* 80306B44  4E 80 00 20 */	blr 
