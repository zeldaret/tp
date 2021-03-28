lbl_80CE0214:
/* 80CE0214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE0218  7C 08 02 A6 */	mflr r0
/* 80CE021C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE0220  4B FF F9 A5 */	bl draw__15daObjSnowSoup_cFv
/* 80CE0224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE0228  7C 08 03 A6 */	mtlr r0
/* 80CE022C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE0230  4E 80 00 20 */	blr 
