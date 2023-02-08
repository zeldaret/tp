lbl_80014A2C:
/* 80014A2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014A30  7C 08 02 A6 */	mflr r0
/* 80014A34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80014A38  80 6D 86 C8 */	lwz r3, mDoExt_font0_getCount(r13)
/* 80014A3C  2C 03 00 00 */	cmpwi r3, 0
/* 80014A40  40 81 00 54 */	ble lbl_80014A94
/* 80014A44  34 03 FF FF */	addic. r0, r3, -1
/* 80014A48  90 0D 86 C8 */	stw r0, mDoExt_font0_getCount(r13)
/* 80014A4C  40 82 00 48 */	bne lbl_80014A94
/* 80014A50  80 6D 86 C4 */	lwz r3, mDoExt_font0(r13)
/* 80014A54  28 03 00 00 */	cmplwi r3, 0
/* 80014A58  41 82 00 18 */	beq lbl_80014A70
/* 80014A5C  38 80 00 01 */	li r4, 1
/* 80014A60  81 83 00 00 */	lwz r12, 0(r3)
/* 80014A64  81 8C 00 08 */	lwz r12, 8(r12)
/* 80014A68  7D 89 03 A6 */	mtctr r12
/* 80014A6C  4E 80 04 21 */	bctrl 
lbl_80014A70:
/* 80014A70  38 00 00 00 */	li r0, 0
/* 80014A74  90 0D 86 C4 */	stw r0, mDoExt_font0(r13)
/* 80014A78  80 6D 86 CC */	lwz r3, mDoExt_resfont0(r13)
/* 80014A7C  28 03 00 00 */	cmplwi r3, 0
/* 80014A80  41 82 00 14 */	beq lbl_80014A94
/* 80014A84  38 80 00 00 */	li r4, 0
/* 80014A88  48 2B 9A 79 */	bl free__7JKRHeapFPvP7JKRHeap
/* 80014A8C  38 00 00 00 */	li r0, 0
/* 80014A90  90 0D 86 CC */	stw r0, mDoExt_resfont0(r13)
lbl_80014A94:
/* 80014A94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80014A98  7C 08 03 A6 */	mtlr r0
/* 80014A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80014AA0  4E 80 00 20 */	blr 
