lbl_8048ECAC:
/* 8048ECAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048ECB0  7C 08 02 A6 */	mflr r0
/* 8048ECB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048ECB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048ECBC  93 C1 00 08 */	stw r30, 8(r1)
/* 8048ECC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 8048ECC4  7C 9F 23 78 */	mr r31, r4
/* 8048ECC8  41 82 00 44 */	beq lbl_8048ED0C
/* 8048ECCC  3C 60 80 49 */	lis r3, __vt__15daTag_Lantern_c@ha /* 0x8048F1A4@ha */
/* 8048ECD0  38 03 F1 A4 */	addi r0, r3, __vt__15daTag_Lantern_c@l /* 0x8048F1A4@l */
/* 8048ECD4  90 1E 06 08 */	stw r0, 0x608(r30)
/* 8048ECD8  38 7E 05 B4 */	addi r3, r30, 0x5b4
/* 8048ECDC  38 80 FF FF */	li r4, -1
/* 8048ECE0  4B DD 8F B5 */	bl __dt__11cBgS_GndChkFv
/* 8048ECE4  38 7E 05 68 */	addi r3, r30, 0x568
/* 8048ECE8  38 80 FF FF */	li r4, -1
/* 8048ECEC  4B DB B2 5D */	bl __dt__10dMsgFlow_cFv
/* 8048ECF0  7F C3 F3 78 */	mr r3, r30
/* 8048ECF4  38 80 00 00 */	li r4, 0
/* 8048ECF8  4B B8 9F 95 */	bl __dt__10fopAc_ac_cFv
/* 8048ECFC  7F E0 07 35 */	extsh. r0, r31
/* 8048ED00  40 81 00 0C */	ble lbl_8048ED0C
/* 8048ED04  7F C3 F3 78 */	mr r3, r30
/* 8048ED08  4B E4 00 35 */	bl __dl__FPv
lbl_8048ED0C:
/* 8048ED0C  7F C3 F3 78 */	mr r3, r30
/* 8048ED10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048ED14  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048ED18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048ED1C  7C 08 03 A6 */	mtlr r0
/* 8048ED20  38 21 00 10 */	addi r1, r1, 0x10
/* 8048ED24  4E 80 00 20 */	blr 
