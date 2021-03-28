lbl_80238B94:
/* 80238B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80238B98  7C 08 02 A6 */	mflr r0
/* 80238B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80238BA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80238BA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80238BA8  41 82 00 1C */	beq lbl_80238BC4
/* 80238BAC  3C A0 80 3C */	lis r5, __vt__20dMsgObject_HowlHIO_c@ha
/* 80238BB0  38 05 0B E4 */	addi r0, r5, __vt__20dMsgObject_HowlHIO_c@l
/* 80238BB4  90 1F 00 00 */	stw r0, 0(r31)
/* 80238BB8  7C 80 07 35 */	extsh. r0, r4
/* 80238BBC  40 81 00 08 */	ble lbl_80238BC4
/* 80238BC0  48 09 61 7D */	bl __dl__FPv
lbl_80238BC4:
/* 80238BC4  7F E3 FB 78 */	mr r3, r31
/* 80238BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80238BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80238BD0  7C 08 03 A6 */	mtlr r0
/* 80238BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80238BD8  4E 80 00 20 */	blr 
