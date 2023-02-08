lbl_80CDEEBC:
/* 80CDEEBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDEEC0  7C 08 02 A6 */	mflr r0
/* 80CDEEC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDEEC8  4B FF FA 65 */	bl draw__12daSmWStone_cFv
/* 80CDEECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDEED0  7C 08 03 A6 */	mtlr r0
/* 80CDEED4  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDEED8  4E 80 00 20 */	blr 
