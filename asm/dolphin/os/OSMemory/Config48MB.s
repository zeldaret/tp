lbl_8033EE58:
/* 8033EE58  38 E0 00 00 */	li r7, 0
/* 8033EE5C  3C 80 00 00 */	lis r4, 0x0000 /* 0x00000002@ha */
/* 8033EE60  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00000002@l */
/* 8033EE64  3C 60 80 00 */	lis r3, 0x8000 /* 0x800003FF@ha */
/* 8033EE68  38 63 03 FF */	addi r3, r3, 0x03FF /* 0x800003FF@l */
/* 8033EE6C  3C C0 02 00 */	lis r6, 0x0200 /* 0x02000002@ha */
/* 8033EE70  38 C6 00 02 */	addi r6, r6, 0x0002 /* 0x02000002@l */
/* 8033EE74  3C A0 82 00 */	lis r5, 0x8200 /* 0x820001FF@ha */
/* 8033EE78  38 A5 01 FF */	addi r5, r5, 0x01FF /* 0x820001FF@l */
/* 8033EE7C  4C 00 01 2C */	isync 
/* 8033EE80  7C F8 83 A6 */	mtdbatu 0, r7
/* 8033EE84  7C 99 83 A6 */	mtdbatl 0, r4
/* 8033EE88  7C 78 83 A6 */	mtdbatu 0, r3
/* 8033EE8C  4C 00 01 2C */	isync 
/* 8033EE90  7C F0 83 A6 */	mtibatu 0, r7
/* 8033EE94  7C 91 83 A6 */	mtibatl 0, r4
/* 8033EE98  7C 70 83 A6 */	mtibatu 0, r3
/* 8033EE9C  4C 00 01 2C */	isync 
/* 8033EEA0  7C FC 83 A6 */	mtdbatu 2, r7
/* 8033EEA4  7C DD 83 A6 */	mtdbatl 2, r6
/* 8033EEA8  7C BC 83 A6 */	mtdbatu 2, r5
/* 8033EEAC  4C 00 01 2C */	isync 
/* 8033EEB0  7C F4 83 A6 */	mtibatu 2, r7
/* 8033EEB4  7C D5 83 A6 */	mtibatl 2, r6
/* 8033EEB8  7C B4 83 A6 */	mtibatu 2, r5
/* 8033EEBC  4C 00 01 2C */	isync 
/* 8033EEC0  7C 60 00 A6 */	mfmsr r3
/* 8033EEC4  60 63 00 30 */	ori r3, r3, 0x30
/* 8033EEC8  7C 7B 03 A6 */	mtspr 0x1b, r3
/* 8033EECC  7C 68 02 A6 */	mflr r3
/* 8033EED0  7C 7A 03 A6 */	mtspr 0x1a, r3
/* 8033EED4  4C 00 00 64 */	rfi 
