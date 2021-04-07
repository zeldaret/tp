lbl_80CA861C:
/* 80CA861C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA8620  7C 08 02 A6 */	mflr r0
/* 80CA8624  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA8628  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA862C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA8630  41 82 00 30 */	beq lbl_80CA8660
/* 80CA8634  3C 60 80 CB */	lis r3, __vt__18fOpAcm_HIO_entry_c@ha /* 0x80CA9DC8@ha */
/* 80CA8638  38 03 9D C8 */	addi r0, r3, __vt__18fOpAcm_HIO_entry_c@l /* 0x80CA9DC8@l */
/* 80CA863C  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA8640  41 82 00 10 */	beq lbl_80CA8650
/* 80CA8644  3C 60 80 CB */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80CA9DD4@ha */
/* 80CA8648  38 03 9D D4 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80CA9DD4@l */
/* 80CA864C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CA8650:
/* 80CA8650  7C 80 07 35 */	extsh. r0, r4
/* 80CA8654  40 81 00 0C */	ble lbl_80CA8660
/* 80CA8658  7F E3 FB 78 */	mr r3, r31
/* 80CA865C  4B 62 66 E1 */	bl __dl__FPv
lbl_80CA8660:
/* 80CA8660  7F E3 FB 78 */	mr r3, r31
/* 80CA8664  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA8668  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA866C  7C 08 03 A6 */	mtlr r0
/* 80CA8670  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA8674  4E 80 00 20 */	blr 
