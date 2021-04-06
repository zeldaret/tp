lbl_80A26A58:
/* 80A26A58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A26A5C  7C 08 02 A6 */	mflr r0
/* 80A26A60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A26A64  38 00 00 00 */	li r0, 0
/* 80A26A68  98 03 14 67 */	stb r0, 0x1467(r3)
/* 80A26A6C  4B 72 B5 A9 */	bl execute__8daNpcF_cFv
/* 80A26A70  38 60 00 01 */	li r3, 1
/* 80A26A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A26A78  7C 08 03 A6 */	mtlr r0
/* 80A26A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A26A80  4E 80 00 20 */	blr 
