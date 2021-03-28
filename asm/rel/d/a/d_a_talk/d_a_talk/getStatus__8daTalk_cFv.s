lbl_80D66688:
/* 80D66688  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6668C  7C 08 02 A6 */	mflr r0
/* 80D66690  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66694  4B 4D 1B 98 */	b getStatus__12dMsgObject_cFv
/* 80D66698  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6669C  7C 08 03 A6 */	mtlr r0
/* 80D666A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D666A4  4E 80 00 20 */	blr 
