lbl_80992B94:
/* 80992B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80992B98  7C 08 02 A6 */	mflr r0
/* 80992B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80992BA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80992BA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80992BA8  41 82 00 10 */	beq lbl_80992BB8
/* 80992BAC  7C 80 07 35 */	extsh. r0, r4
/* 80992BB0  40 81 00 08 */	ble lbl_80992BB8
/* 80992BB4  4B 93 C1 89 */	bl __dl__FPv
lbl_80992BB8:
/* 80992BB8  7F E3 FB 78 */	mr r3, r31
/* 80992BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80992BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80992BC4  7C 08 03 A6 */	mtlr r0
/* 80992BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80992BCC  4E 80 00 20 */	blr 
