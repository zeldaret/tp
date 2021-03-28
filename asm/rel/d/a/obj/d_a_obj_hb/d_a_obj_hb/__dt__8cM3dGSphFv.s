lbl_80C1B4E8:
/* 80C1B4E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1B4EC  7C 08 02 A6 */	mflr r0
/* 80C1B4F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1B4F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1B4F8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C1B4FC  41 82 00 1C */	beq lbl_80C1B518
/* 80C1B500  3C A0 80 C2 */	lis r5, __vt__8cM3dGSph@ha
/* 80C1B504  38 05 B7 A0 */	addi r0, r5, __vt__8cM3dGSph@l
/* 80C1B508  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C1B50C  7C 80 07 35 */	extsh. r0, r4
/* 80C1B510  40 81 00 08 */	ble lbl_80C1B518
/* 80C1B514  4B 6B 38 28 */	b __dl__FPv
lbl_80C1B518:
/* 80C1B518  7F E3 FB 78 */	mr r3, r31
/* 80C1B51C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1B520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1B524  7C 08 03 A6 */	mtlr r0
/* 80C1B528  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1B52C  4E 80 00 20 */	blr 
