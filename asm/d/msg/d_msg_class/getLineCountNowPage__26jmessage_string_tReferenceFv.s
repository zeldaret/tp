lbl_8022FB24:
/* 8022FB24  38 A0 FF FF */	li r5, -1
/* 8022FB28  88 03 00 83 */	lbz r0, 0x83(r3)
/* 8022FB2C  88 83 00 82 */	lbz r4, 0x82(r3)
/* 8022FB30  7C C0 21 D6 */	mullw r6, r0, r4
/* 8022FB34  7C 86 22 14 */	add r4, r6, r4
/* 8022FB38  A8 03 00 80 */	lha r0, 0x80(r3)
/* 8022FB3C  7C 00 30 00 */	cmpw r0, r6
/* 8022FB40  41 80 00 14 */	blt lbl_8022FB54
/* 8022FB44  7C 00 20 00 */	cmpw r0, r4
/* 8022FB48  40 80 00 0C */	bge lbl_8022FB54
/* 8022FB4C  7C 06 00 50 */	subf r0, r6, r0
/* 8022FB50  7C 05 07 34 */	extsh r5, r0
lbl_8022FB54:
/* 8022FB54  7C A3 2B 78 */	mr r3, r5
/* 8022FB58  4E 80 00 20 */	blr 
