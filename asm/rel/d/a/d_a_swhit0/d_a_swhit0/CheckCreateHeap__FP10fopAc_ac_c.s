lbl_80486390:
/* 80486390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486394  7C 08 02 A6 */	mflr r0
/* 80486398  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048639C  4B FF FD 51 */	bl CreateHeap__10daSwhit0_cFv
/* 804863A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804863A4  7C 08 03 A6 */	mtlr r0
/* 804863A8  38 21 00 10 */	addi r1, r1, 0x10
/* 804863AC  4E 80 00 20 */	blr 
