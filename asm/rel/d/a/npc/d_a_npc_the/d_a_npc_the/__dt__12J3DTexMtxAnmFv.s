lbl_80AF806C:
/* 80AF806C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF8070  7C 08 02 A6 */	mflr r0
/* 80AF8074  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF8078  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF807C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF8080  41 82 00 10 */	beq lbl_80AF8090
/* 80AF8084  7C 80 07 35 */	extsh. r0, r4
/* 80AF8088  40 81 00 08 */	ble lbl_80AF8090
/* 80AF808C  4B 7D 6C B1 */	bl __dl__FPv
lbl_80AF8090:
/* 80AF8090  7F E3 FB 78 */	mr r3, r31
/* 80AF8094  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF8098  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF809C  7C 08 03 A6 */	mtlr r0
/* 80AF80A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF80A4  4E 80 00 20 */	blr 
