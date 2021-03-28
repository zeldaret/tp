lbl_8033EDD8:
/* 8033EDD8  38 E0 00 00 */	li r7, 0
/* 8033EDDC  3C 80 00 00 */	lis r4, 0x0000 /* 0x00000002@ha */
/* 8033EDE0  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00000002@l */
/* 8033EDE4  3C 60 80 00 */	lis r3, 0x8000 /* 0x800001FF@ha */
/* 8033EDE8  38 63 01 FF */	addi r3, r3, 0x01FF /* 0x800001FF@l */
/* 8033EDEC  3C C0 01 00 */	lis r6, 0x0100 /* 0x01000002@ha */
/* 8033EDF0  38 C6 00 02 */	addi r6, r6, 0x0002 /* 0x01000002@l */
/* 8033EDF4  3C A0 81 00 */	lis r5, 0x8100 /* 0x810000FF@ha */
/* 8033EDF8  38 A5 00 FF */	addi r5, r5, 0x00FF /* 0x810000FF@l */
/* 8033EDFC  4C 00 01 2C */	isync 
/* 8033EE00  7C F8 83 A6 */	mtdbatu 0, r7
/* 8033EE04  7C 99 83 A6 */	mtdbatl 0, r4
/* 8033EE08  7C 78 83 A6 */	mtdbatu 0, r3
/* 8033EE0C  4C 00 01 2C */	isync 
/* 8033EE10  7C F0 83 A6 */	mtibatu 0, r7
/* 8033EE14  7C 91 83 A6 */	mtibatl 0, r4
/* 8033EE18  7C 70 83 A6 */	mtibatu 0, r3
/* 8033EE1C  4C 00 01 2C */	isync 
/* 8033EE20  7C FC 83 A6 */	mtdbatu 2, r7
/* 8033EE24  7C DD 83 A6 */	mtdbatl 2, r6
/* 8033EE28  7C BC 83 A6 */	mtdbatu 2, r5
/* 8033EE2C  4C 00 01 2C */	isync 
/* 8033EE30  7C F4 83 A6 */	mtibatu 2, r7
/* 8033EE34  7C D5 83 A6 */	mtibatl 2, r6
/* 8033EE38  7C B4 83 A6 */	mtibatu 2, r5
/* 8033EE3C  4C 00 01 2C */	isync 
/* 8033EE40  7C 60 00 A6 */	mfmsr r3
/* 8033EE44  60 63 00 30 */	ori r3, r3, 0x30
/* 8033EE48  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 8033EE4C  7C 68 02 A6 */	mflr r3
/* 8033EE50  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 8033EE54  4C 00 00 64 */	rfi 
