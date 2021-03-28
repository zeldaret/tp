lbl_80014BDC:
/* 80014BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80014BE0  7C 08 02 A6 */	mflr r0
/* 80014BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80014BE8  80 6D 86 E0 */	lwz r3, mDoExt_font2_getCount(r13)
/* 80014BEC  2C 03 00 00 */	cmpwi r3, 0
/* 80014BF0  40 81 00 54 */	ble lbl_80014C44
/* 80014BF4  34 03 FF FF */	addic. r0, r3, -1
/* 80014BF8  90 0D 86 E0 */	stw r0, mDoExt_font2_getCount(r13)
/* 80014BFC  40 82 00 48 */	bne lbl_80014C44
/* 80014C00  80 6D 86 DC */	lwz r3, mDoExt_font2(r13)
/* 80014C04  28 03 00 00 */	cmplwi r3, 0
/* 80014C08  41 82 00 18 */	beq lbl_80014C20
/* 80014C0C  38 80 00 01 */	li r4, 1
/* 80014C10  81 83 00 00 */	lwz r12, 0(r3)
/* 80014C14  81 8C 00 08 */	lwz r12, 8(r12)
/* 80014C18  7D 89 03 A6 */	mtctr r12
/* 80014C1C  4E 80 04 21 */	bctrl 
lbl_80014C20:
/* 80014C20  38 00 00 00 */	li r0, 0
/* 80014C24  90 0D 86 DC */	stw r0, mDoExt_font2(r13)
/* 80014C28  80 6D 86 E4 */	lwz r3, mDoExt_resfont2(r13)
/* 80014C2C  28 03 00 00 */	cmplwi r3, 0
/* 80014C30  41 82 00 14 */	beq lbl_80014C44
/* 80014C34  38 80 00 00 */	li r4, 0
/* 80014C38  48 2B 98 C9 */	bl free__7JKRHeapFPvP7JKRHeap
/* 80014C3C  38 00 00 00 */	li r0, 0
/* 80014C40  90 0D 86 E4 */	stw r0, mDoExt_resfont2(r13)
lbl_80014C44:
/* 80014C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80014C48  7C 08 03 A6 */	mtlr r0
/* 80014C4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80014C50  4E 80 00 20 */	blr 
