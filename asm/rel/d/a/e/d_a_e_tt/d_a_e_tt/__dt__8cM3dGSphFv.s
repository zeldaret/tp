lbl_807C17FC:
/* 807C17FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C1800  7C 08 02 A6 */	mflr r0
/* 807C1804  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C1808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807C180C  7C 7F 1B 79 */	or. r31, r3, r3
/* 807C1810  41 82 00 1C */	beq lbl_807C182C
/* 807C1814  3C A0 80 7C */	lis r5, __vt__8cM3dGSph@ha
/* 807C1818  38 05 23 20 */	addi r0, r5, __vt__8cM3dGSph@l
/* 807C181C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 807C1820  7C 80 07 35 */	extsh. r0, r4
/* 807C1824  40 81 00 08 */	ble lbl_807C182C
/* 807C1828  4B B0 D5 14 */	b __dl__FPv
lbl_807C182C:
/* 807C182C  7F E3 FB 78 */	mr r3, r31
/* 807C1830  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807C1834  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C1838  7C 08 03 A6 */	mtlr r0
/* 807C183C  38 21 00 10 */	addi r1, r1, 0x10
/* 807C1840  4E 80 00 20 */	blr 
