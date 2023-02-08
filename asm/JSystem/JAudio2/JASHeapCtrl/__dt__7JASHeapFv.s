lbl_80290B54:
/* 80290B54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80290B58  7C 08 02 A6 */	mflr r0
/* 80290B5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80290B60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80290B64  93 C1 00 08 */	stw r30, 8(r1)
/* 80290B68  7C 7E 1B 79 */	or. r30, r3, r3
/* 80290B6C  7C 9F 23 78 */	mr r31, r4
/* 80290B70  41 82 00 40 */	beq lbl_80290BB0
/* 80290B74  41 82 00 2C */	beq lbl_80290BA0
/* 80290B78  34 1E 00 0C */	addic. r0, r30, 0xc
/* 80290B7C  41 82 00 10 */	beq lbl_80290B8C
/* 80290B80  38 7E 00 0C */	addi r3, r30, 0xc
/* 80290B84  38 80 00 00 */	li r4, 0
/* 80290B88  48 04 B2 8D */	bl __dt__10JSUPtrLinkFv
lbl_80290B8C:
/* 80290B8C  28 1E 00 00 */	cmplwi r30, 0
/* 80290B90  41 82 00 10 */	beq lbl_80290BA0
/* 80290B94  7F C3 F3 78 */	mr r3, r30
/* 80290B98  38 80 00 00 */	li r4, 0
/* 80290B9C  48 04 B3 11 */	bl __dt__10JSUPtrListFv
lbl_80290BA0:
/* 80290BA0  7F E0 07 35 */	extsh. r0, r31
/* 80290BA4  40 81 00 0C */	ble lbl_80290BB0
/* 80290BA8  7F C3 F3 78 */	mr r3, r30
/* 80290BAC  48 03 E1 91 */	bl __dl__FPv
lbl_80290BB0:
/* 80290BB0  7F C3 F3 78 */	mr r3, r30
/* 80290BB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80290BB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80290BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80290BC0  7C 08 03 A6 */	mtlr r0
/* 80290BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80290BC8  4E 80 00 20 */	blr 
