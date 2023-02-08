lbl_80306B48:
/* 80306B48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80306B4C  7C 08 02 A6 */	mflr r0
/* 80306B50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80306B54  80 63 01 50 */	lwz r3, 0x150(r3)
/* 80306B58  28 03 00 00 */	cmplwi r3, 0
/* 80306B5C  41 82 00 08 */	beq lbl_80306B64
/* 80306B60  4B FE 3F AD */	bl setAnimation__11J2DMaterialFP15J2DAnmTevRegKey
lbl_80306B64:
/* 80306B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80306B68  7C 08 03 A6 */	mtlr r0
/* 80306B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80306B70  4E 80 00 20 */	blr 
