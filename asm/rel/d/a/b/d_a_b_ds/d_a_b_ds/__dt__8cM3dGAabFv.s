lbl_805DC6AC:
/* 805DC6AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC6B0  7C 08 02 A6 */	mflr r0
/* 805DC6B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC6B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC6BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 805DC6C0  41 82 00 1C */	beq lbl_805DC6DC
/* 805DC6C4  3C A0 80 5E */	lis r5, __vt__8cM3dGAab@ha /* 0x805DDA20@ha */
/* 805DC6C8  38 05 DA 20 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x805DDA20@l */
/* 805DC6CC  90 1F 00 18 */	stw r0, 0x18(r31)
/* 805DC6D0  7C 80 07 35 */	extsh. r0, r4
/* 805DC6D4  40 81 00 08 */	ble lbl_805DC6DC
/* 805DC6D8  4B CF 26 65 */	bl __dl__FPv
lbl_805DC6DC:
/* 805DC6DC  7F E3 FB 78 */	mr r3, r31
/* 805DC6E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC6E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC6E8  7C 08 03 A6 */	mtlr r0
/* 805DC6EC  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC6F0  4E 80 00 20 */	blr 
