lbl_8008BE50:
/* 8008BE50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8008BE54  7C 08 02 A6 */	mflr r0
/* 8008BE58  90 01 00 14 */	stw r0, 0x14(r1)
/* 8008BE5C  38 80 00 02 */	li r4, 2
/* 8008BE60  48 00 00 39 */	bl transEvCamera__9dCamera_cFi
/* 8008BE64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8008BE68  7C 08 03 A6 */	mtlr r0
/* 8008BE6C  38 21 00 10 */	addi r1, r1, 0x10
/* 8008BE70  4E 80 00 20 */	blr 
