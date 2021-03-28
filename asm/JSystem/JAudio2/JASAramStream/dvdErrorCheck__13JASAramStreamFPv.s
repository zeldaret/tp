lbl_80296D94:
/* 80296D94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80296D98  7C 08 02 A6 */	mflr r0
/* 80296D9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80296DA0  48 0B 44 29 */	bl DVDGetDriveStatus
/* 80296DA4  38 03 00 01 */	addi r0, r3, 1
/* 80296DA8  28 00 00 0C */	cmplwi r0, 0xc
/* 80296DAC  41 81 00 28 */	bgt lbl_80296DD4
/* 80296DB0  3C 60 80 3C */	lis r3, lit_613@ha
/* 80296DB4  38 63 76 70 */	addi r3, r3, lit_613@l
/* 80296DB8  54 00 10 3A */	slwi r0, r0, 2
/* 80296DBC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80296DC0  7C 09 03 A6 */	mtctr r0
/* 80296DC4  4E 80 04 20 */	bctr 
/* 80296DC8  38 00 00 00 */	li r0, 0
/* 80296DCC  98 0D 8C E0 */	stb r0, struct_80451260+0x0(r13)
/* 80296DD0  48 00 00 0C */	b lbl_80296DDC
lbl_80296DD4:
/* 80296DD4  38 00 00 01 */	li r0, 1
/* 80296DD8  98 0D 8C E0 */	stb r0, struct_80451260+0x0(r13)
lbl_80296DDC:
/* 80296DDC  38 60 00 00 */	li r3, 0
/* 80296DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80296DE4  7C 08 03 A6 */	mtlr r0
/* 80296DE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80296DEC  4E 80 00 20 */	blr 
