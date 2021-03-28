lbl_80C81A10:
/* 80C81A10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C81A14  7C 08 02 A6 */	mflr r0
/* 80C81A18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C81A1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C81A20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C81A24  41 82 00 1C */	beq lbl_80C81A40
/* 80C81A28  3C A0 80 C8 */	lis r5, __vt__8cM3dGSph@ha
/* 80C81A2C  38 05 1F 8C */	addi r0, r5, __vt__8cM3dGSph@l
/* 80C81A30  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C81A34  7C 80 07 35 */	extsh. r0, r4
/* 80C81A38  40 81 00 08 */	ble lbl_80C81A40
/* 80C81A3C  4B 64 D3 00 */	b __dl__FPv
lbl_80C81A40:
/* 80C81A40  7F E3 FB 78 */	mr r3, r31
/* 80C81A44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C81A48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C81A4C  7C 08 03 A6 */	mtlr r0
/* 80C81A50  38 21 00 10 */	addi r1, r1, 0x10
/* 80C81A54  4E 80 00 20 */	blr 
