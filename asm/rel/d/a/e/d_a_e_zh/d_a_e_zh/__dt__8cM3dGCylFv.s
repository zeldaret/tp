lbl_8082EEE0:
/* 8082EEE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8082EEE4  7C 08 02 A6 */	mflr r0
/* 8082EEE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8082EEEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8082EEF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8082EEF4  41 82 00 1C */	beq lbl_8082EF10
/* 8082EEF8  3C A0 80 83 */	lis r5, __vt__8cM3dGCyl@ha /* 0x8082F680@ha */
/* 8082EEFC  38 05 F6 80 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x8082F680@l */
/* 8082EF00  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8082EF04  7C 80 07 35 */	extsh. r0, r4
/* 8082EF08  40 81 00 08 */	ble lbl_8082EF10
/* 8082EF0C  4B A9 FE 31 */	bl __dl__FPv
lbl_8082EF10:
/* 8082EF10  7F E3 FB 78 */	mr r3, r31
/* 8082EF14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8082EF18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8082EF1C  7C 08 03 A6 */	mtlr r0
/* 8082EF20  38 21 00 10 */	addi r1, r1, 0x10
/* 8082EF24  4E 80 00 20 */	blr 
