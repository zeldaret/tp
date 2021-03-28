lbl_8014CBAC:
/* 8014CBAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8014CBB0  7C 08 02 A6 */	mflr r0
/* 8014CBB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014CBB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8014CBBC  7C 7F 1B 79 */	or. r31, r3, r3
/* 8014CBC0  41 82 00 1C */	beq lbl_8014CBDC
/* 8014CBC4  3C A0 80 3B */	lis r5, __vt__16daNpcT_Hermite_c@ha
/* 8014CBC8  38 05 3B 60 */	addi r0, r5, __vt__16daNpcT_Hermite_c@l
/* 8014CBCC  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8014CBD0  7C 80 07 35 */	extsh. r0, r4
/* 8014CBD4  40 81 00 08 */	ble lbl_8014CBDC
/* 8014CBD8  48 18 21 65 */	bl __dl__FPv
lbl_8014CBDC:
/* 8014CBDC  7F E3 FB 78 */	mr r3, r31
/* 8014CBE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014CBE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8014CBE8  7C 08 03 A6 */	mtlr r0
/* 8014CBEC  38 21 00 10 */	addi r1, r1, 0x10
/* 8014CBF0  4E 80 00 20 */	blr 
