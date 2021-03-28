lbl_80BB87EC:
/* 80BB87EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB87F0  7C 08 02 A6 */	mflr r0
/* 80BB87F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB87F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB87FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB8800  41 82 00 1C */	beq lbl_80BB881C
/* 80BB8804  3C A0 80 BC */	lis r5, __vt__8cM3dGCyl@ha
/* 80BB8808  38 05 99 2C */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80BB880C  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80BB8810  7C 80 07 35 */	extsh. r0, r4
/* 80BB8814  40 81 00 08 */	ble lbl_80BB881C
/* 80BB8818  4B 71 65 24 */	b __dl__FPv
lbl_80BB881C:
/* 80BB881C  7F E3 FB 78 */	mr r3, r31
/* 80BB8820  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB8824  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB8828  7C 08 03 A6 */	mtlr r0
/* 80BB882C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB8830  4E 80 00 20 */	blr 
