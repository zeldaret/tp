lbl_805DC664:
/* 805DC664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC668  7C 08 02 A6 */	mflr r0
/* 805DC66C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC674  7C 7F 1B 79 */	or. r31, r3, r3
/* 805DC678  41 82 00 1C */	beq lbl_805DC694
/* 805DC67C  3C A0 80 5E */	lis r5, __vt__8cM3dGSph@ha /* 0x805DDA14@ha */
/* 805DC680  38 05 DA 14 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x805DDA14@l */
/* 805DC684  90 1F 00 10 */	stw r0, 0x10(r31)
/* 805DC688  7C 80 07 35 */	extsh. r0, r4
/* 805DC68C  40 81 00 08 */	ble lbl_805DC694
/* 805DC690  4B CF 26 AD */	bl __dl__FPv
lbl_805DC694:
/* 805DC694  7F E3 FB 78 */	mr r3, r31
/* 805DC698  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC69C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC6A0  7C 08 03 A6 */	mtlr r0
/* 805DC6A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC6A8  4E 80 00 20 */	blr 
