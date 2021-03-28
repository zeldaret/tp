lbl_80C23A08:
/* 80C23A08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C23A0C  7C 08 02 A6 */	mflr r0
/* 80C23A10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C23A14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C23A18  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C23A1C  41 82 00 1C */	beq lbl_80C23A38
/* 80C23A20  3C A0 80 C2 */	lis r5, __vt__8cM3dGPla@ha
/* 80C23A24  38 05 46 64 */	addi r0, r5, __vt__8cM3dGPla@l
/* 80C23A28  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C23A2C  7C 80 07 35 */	extsh. r0, r4
/* 80C23A30  40 81 00 08 */	ble lbl_80C23A38
/* 80C23A34  4B 6A B3 08 */	b __dl__FPv
lbl_80C23A38:
/* 80C23A38  7F E3 FB 78 */	mr r3, r31
/* 80C23A3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C23A40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C23A44  7C 08 03 A6 */	mtlr r0
/* 80C23A48  38 21 00 10 */	addi r1, r1, 0x10
/* 80C23A4C  4E 80 00 20 */	blr 
