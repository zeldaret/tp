lbl_80167BF8:
/* 80167BF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80167BFC  7C 08 02 A6 */	mflr r0
/* 80167C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80167C04  38 00 00 01 */	li r0, 1
/* 80167C08  98 06 00 54 */	stb r0, 0x54(r6)
/* 80167C0C  98 06 00 53 */	stb r0, 0x53(r6)
/* 80167C10  4B FF DC B1 */	bl lineBGCheck__9dCamera_cFP4cXyzP4cXyzP11dBgS_LinChkUl
/* 80167C14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80167C18  7C 08 03 A6 */	mtlr r0
/* 80167C1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80167C20  4E 80 00 20 */	blr 
