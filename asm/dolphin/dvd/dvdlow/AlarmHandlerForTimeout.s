lbl_80347A18:
/* 80347A18  7C 08 02 A6 */	mflr r0
/* 80347A1C  38 60 04 00 */	li r3, 0x400
/* 80347A20  90 01 00 04 */	stw r0, 4(r1)
/* 80347A24  94 21 FD 20 */	stwu r1, -0x2e0(r1)
/* 80347A28  93 E1 02 DC */	stw r31, 0x2dc(r1)
/* 80347A2C  3B E4 00 00 */	addi r31, r4, 0
/* 80347A30  4B FF 60 8D */	bl __OSMaskInterrupts
/* 80347A34  38 61 00 10 */	addi r3, r1, 0x10
/* 80347A38  4B FF 45 C9 */	bl OSClearContext
/* 80347A3C  38 61 00 10 */	addi r3, r1, 0x10
/* 80347A40  4B FF 43 F9 */	bl OSSetCurrentContext
/* 80347A44  81 8D 91 98 */	lwz r12, Callback(r13)
/* 80347A48  38 00 00 00 */	li r0, 0
/* 80347A4C  28 0C 00 00 */	cmplwi r12, 0
/* 80347A50  90 0D 91 98 */	stw r0, Callback(r13)
/* 80347A54  41 82 00 10 */	beq lbl_80347A64
/* 80347A58  7D 88 03 A6 */	mtlr r12
/* 80347A5C  38 60 00 10 */	li r3, 0x10
/* 80347A60  4E 80 00 21 */	blrl 
lbl_80347A64:
/* 80347A64  38 61 00 10 */	addi r3, r1, 0x10
/* 80347A68  4B FF 45 99 */	bl OSClearContext
/* 80347A6C  7F E3 FB 78 */	mr r3, r31
/* 80347A70  4B FF 43 C9 */	bl OSSetCurrentContext
/* 80347A74  80 01 02 E4 */	lwz r0, 0x2e4(r1)
/* 80347A78  83 E1 02 DC */	lwz r31, 0x2dc(r1)
/* 80347A7C  38 21 02 E0 */	addi r1, r1, 0x2e0
/* 80347A80  7C 08 03 A6 */	mtlr r0
/* 80347A84  4E 80 00 20 */	blr 
