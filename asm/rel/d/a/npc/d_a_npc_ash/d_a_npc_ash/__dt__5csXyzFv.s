lbl_8095CEE0:
/* 8095CEE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8095CEE4  7C 08 02 A6 */	mflr r0
/* 8095CEE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8095CEEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8095CEF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8095CEF4  41 82 00 10 */	beq lbl_8095CF04
/* 8095CEF8  7C 80 07 35 */	extsh. r0, r4
/* 8095CEFC  40 81 00 08 */	ble lbl_8095CF04
/* 8095CF00  4B 97 1E 3C */	b __dl__FPv
lbl_8095CF04:
/* 8095CF04  7F E3 FB 78 */	mr r3, r31
/* 8095CF08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8095CF0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8095CF10  7C 08 03 A6 */	mtlr r0
/* 8095CF14  38 21 00 10 */	addi r1, r1, 0x10
/* 8095CF18  4E 80 00 20 */	blr 
