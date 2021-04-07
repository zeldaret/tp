lbl_80CB17F8:
/* 80CB17F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB17FC  7C 08 02 A6 */	mflr r0
/* 80CB1800  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB1804  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB1808  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB180C  41 82 00 1C */	beq lbl_80CB1828
/* 80CB1810  3C A0 80 CB */	lis r5, __vt__19daObj_Pleaf_Param_c@ha /* 0x80CB195C@ha */
/* 80CB1814  38 05 19 5C */	addi r0, r5, __vt__19daObj_Pleaf_Param_c@l /* 0x80CB195C@l */
/* 80CB1818  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB181C  7C 80 07 35 */	extsh. r0, r4
/* 80CB1820  40 81 00 08 */	ble lbl_80CB1828
/* 80CB1824  4B 61 D5 19 */	bl __dl__FPv
lbl_80CB1828:
/* 80CB1828  7F E3 FB 78 */	mr r3, r31
/* 80CB182C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB1830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB1834  7C 08 03 A6 */	mtlr r0
/* 80CB1838  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB183C  4E 80 00 20 */	blr 
