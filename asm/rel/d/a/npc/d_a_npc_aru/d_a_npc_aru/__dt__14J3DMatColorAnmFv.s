lbl_80951F88:
/* 80951F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80951F8C  7C 08 02 A6 */	mflr r0
/* 80951F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80951F94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80951F98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80951F9C  41 82 00 10 */	beq lbl_80951FAC
/* 80951FA0  7C 80 07 35 */	extsh. r0, r4
/* 80951FA4  40 81 00 08 */	ble lbl_80951FAC
/* 80951FA8  4B 97 CD 95 */	bl __dl__FPv
lbl_80951FAC:
/* 80951FAC  7F E3 FB 78 */	mr r3, r31
/* 80951FB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80951FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80951FB8  7C 08 03 A6 */	mtlr r0
/* 80951FBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80951FC0  4E 80 00 20 */	blr 
