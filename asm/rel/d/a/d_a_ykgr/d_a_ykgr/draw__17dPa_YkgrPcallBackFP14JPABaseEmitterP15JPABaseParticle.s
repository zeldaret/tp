lbl_805A848C:
/* 805A848C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8490  7C 08 02 A6 */	mflr r0
/* 805A8494  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8498  7C 65 1B 78 */	mr r5, r3
/* 805A849C  38 60 00 01 */	li r3, 1
/* 805A84A0  38 85 00 04 */	addi r4, r5, 4
/* 805A84A4  88 A5 00 1C */	lbz r5, 0x1c(r5)
/* 805A84A8  4B DB 68 85 */	bl GXSetIndTexMtx
/* 805A84AC  38 60 00 00 */	li r3, 0
/* 805A84B0  38 80 00 07 */	li r4, 7
/* 805A84B4  38 A0 00 07 */	li r5, 7
/* 805A84B8  38 C0 00 07 */	li r6, 7
/* 805A84BC  38 E0 00 01 */	li r7, 1
/* 805A84C0  4B DB 6D A9 */	bl GXSetTevAlphaIn
/* 805A84C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A84C8  7C 08 03 A6 */	mtlr r0
/* 805A84CC  38 21 00 10 */	addi r1, r1, 0x10
/* 805A84D0  4E 80 00 20 */	blr 
