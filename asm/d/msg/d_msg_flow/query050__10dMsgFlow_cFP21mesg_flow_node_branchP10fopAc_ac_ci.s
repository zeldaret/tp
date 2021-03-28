lbl_8024C2FC:
/* 8024C2FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024C300  7C 08 02 A6 */	mflr r0
/* 8024C304  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024C308  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024C30C  A3 E4 00 04 */	lhz r31, 4(r4)
/* 8024C310  4B FE C7 65 */	bl dMsgObject_getOffering__Fv
/* 8024C314  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8024C318  7F E0 02 78 */	xor r0, r31, r0
/* 8024C31C  7C 03 0E 70 */	srawi r3, r0, 1
/* 8024C320  7C 00 F8 38 */	and r0, r0, r31
/* 8024C324  7C 00 18 50 */	subf r0, r0, r3
/* 8024C328  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8024C32C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024C330  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024C334  7C 08 03 A6 */	mtlr r0
/* 8024C338  38 21 00 10 */	addi r1, r1, 0x10
/* 8024C33C  4E 80 00 20 */	blr 
