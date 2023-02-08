lbl_80595B9C:
/* 80595B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80595BA0  7C 08 02 A6 */	mflr r0
/* 80595BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80595BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80595BAC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80595BB0  41 82 00 10 */	beq lbl_80595BC0
/* 80595BB4  7C 80 07 35 */	extsh. r0, r4
/* 80595BB8  40 81 00 08 */	ble lbl_80595BC0
/* 80595BBC  4B D3 91 81 */	bl __dl__FPv
lbl_80595BC0:
/* 80595BC0  7F E3 FB 78 */	mr r3, r31
/* 80595BC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80595BC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80595BCC  7C 08 03 A6 */	mtlr r0
/* 80595BD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80595BD4  4E 80 00 20 */	blr 
