lbl_80BC9588:
/* 80BC9588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BC958C  7C 08 02 A6 */	mflr r0
/* 80BC9590  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BC9594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BC9598  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BC959C  41 82 00 1C */	beq lbl_80BC95B8
/* 80BC95A0  3C A0 80 BD */	lis r5, __vt__8cM3dGAab@ha
/* 80BC95A4  38 05 A1 98 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80BC95A8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80BC95AC  7C 80 07 35 */	extsh. r0, r4
/* 80BC95B0  40 81 00 08 */	ble lbl_80BC95B8
/* 80BC95B4  4B 70 57 88 */	b __dl__FPv
lbl_80BC95B8:
/* 80BC95B8  7F E3 FB 78 */	mr r3, r31
/* 80BC95BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BC95C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BC95C4  7C 08 03 A6 */	mtlr r0
/* 80BC95C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BC95CC  4E 80 00 20 */	blr 
