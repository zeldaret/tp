lbl_80AE17AC:
/* 80AE17AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE17B0  7C 08 02 A6 */	mflr r0
/* 80AE17B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE17B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE17BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE17C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AE17C4  7C 9F 23 78 */	mr r31, r4
/* 80AE17C8  41 82 00 98 */	beq lbl_80AE1860
/* 80AE17CC  3C 60 80 AE */	lis r3, __vt__15daNpcF_Lookat_c@ha /* 0x80AE2C98@ha */
/* 80AE17D0  38 03 2C 98 */	addi r0, r3, __vt__15daNpcF_Lookat_c@l /* 0x80AE2C98@l */
/* 80AE17D4  90 1E 00 98 */	stw r0, 0x98(r30)
/* 80AE17D8  38 7E 00 7C */	addi r3, r30, 0x7c
/* 80AE17DC  3C 80 80 AE */	lis r4, __dt__5csXyzFv@ha /* 0x80AE187C@ha */
/* 80AE17E0  38 84 18 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AE187C@l */
/* 80AE17E4  38 A0 00 06 */	li r5, 6
/* 80AE17E8  38 C0 00 04 */	li r6, 4
/* 80AE17EC  4B 88 04 FD */	bl __destroy_arr
/* 80AE17F0  38 7E 00 64 */	addi r3, r30, 0x64
/* 80AE17F4  3C 80 80 AE */	lis r4, __dt__5csXyzFv@ha /* 0x80AE187C@ha */
/* 80AE17F8  38 84 18 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AE187C@l */
/* 80AE17FC  38 A0 00 06 */	li r5, 6
/* 80AE1800  38 C0 00 04 */	li r6, 4
/* 80AE1804  4B 88 04 E5 */	bl __destroy_arr
/* 80AE1808  38 7E 00 4C */	addi r3, r30, 0x4c
/* 80AE180C  3C 80 80 AE */	lis r4, __dt__5csXyzFv@ha /* 0x80AE187C@ha */
/* 80AE1810  38 84 18 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AE187C@l */
/* 80AE1814  38 A0 00 06 */	li r5, 6
/* 80AE1818  38 C0 00 04 */	li r6, 4
/* 80AE181C  4B 88 04 CD */	bl __destroy_arr
/* 80AE1820  38 7E 00 34 */	addi r3, r30, 0x34
/* 80AE1824  3C 80 80 AE */	lis r4, __dt__5csXyzFv@ha /* 0x80AE187C@ha */
/* 80AE1828  38 84 18 7C */	addi r4, r4, __dt__5csXyzFv@l /* 0x80AE187C@l */
/* 80AE182C  38 A0 00 06 */	li r5, 6
/* 80AE1830  38 C0 00 04 */	li r6, 4
/* 80AE1834  4B 88 04 B5 */	bl __destroy_arr
/* 80AE1838  7F C3 F3 78 */	mr r3, r30
/* 80AE183C  3C 80 80 AE */	lis r4, __dt__4cXyzFv@ha /* 0x80AE18BC@ha */
/* 80AE1840  38 84 18 BC */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AE18BC@l */
/* 80AE1844  38 A0 00 0C */	li r5, 0xc
/* 80AE1848  38 C0 00 04 */	li r6, 4
/* 80AE184C  4B 88 04 9D */	bl __destroy_arr
/* 80AE1850  7F E0 07 35 */	extsh. r0, r31
/* 80AE1854  40 81 00 0C */	ble lbl_80AE1860
/* 80AE1858  7F C3 F3 78 */	mr r3, r30
/* 80AE185C  4B 7E D4 E1 */	bl __dl__FPv
lbl_80AE1860:
/* 80AE1860  7F C3 F3 78 */	mr r3, r30
/* 80AE1864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE1868  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE186C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE1870  7C 08 03 A6 */	mtlr r0
/* 80AE1874  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE1878  4E 80 00 20 */	blr 
