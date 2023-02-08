lbl_80306AF0:
/* 80306AF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80306AF4  7C 08 02 A6 */	mflr r0
/* 80306AF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80306AFC  80 63 01 50 */	lwz r3, 0x150(r3)
/* 80306B00  28 03 00 00 */	cmplwi r3, 0
/* 80306B04  41 82 00 08 */	beq lbl_80306B0C
/* 80306B08  4B FE 3E 45 */	bl setAnimation__11J2DMaterialFP19J2DAnmTextureSRTKey
lbl_80306B0C:
/* 80306B0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80306B10  7C 08 03 A6 */	mtlr r0
/* 80306B14  38 21 00 10 */	addi r1, r1, 0x10
/* 80306B18  4E 80 00 20 */	blr 
