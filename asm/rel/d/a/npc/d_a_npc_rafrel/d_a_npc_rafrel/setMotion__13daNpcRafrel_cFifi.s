lbl_80ABBB10:
/* 80ABBB10  7C 87 07 34 */	extsh r7, r4
/* 80ABBB14  2C 07 00 01 */	cmpwi r7, 1
/* 80ABBB18  41 82 00 28 */	beq lbl_80ABBB40
/* 80ABBB1C  40 80 00 34 */	bge lbl_80ABBB50
/* 80ABBB20  2C 07 00 00 */	cmpwi r7, 0
/* 80ABBB24  40 80 00 08 */	bge lbl_80ABBB2C
/* 80ABBB28  48 00 00 28 */	b lbl_80ABBB50
lbl_80ABBB2C:
/* 80ABBB2C  88 03 0E 17 */	lbz r0, 0xe17(r3)
/* 80ABBB30  28 00 00 00 */	cmplwi r0, 0
/* 80ABBB34  40 82 00 1C */	bne lbl_80ABBB50
/* 80ABBB38  38 E0 00 01 */	li r7, 1
/* 80ABBB3C  48 00 00 14 */	b lbl_80ABBB50
lbl_80ABBB40:
/* 80ABBB40  88 03 0E 17 */	lbz r0, 0xe17(r3)
/* 80ABBB44  28 00 00 01 */	cmplwi r0, 1
/* 80ABBB48  40 82 00 08 */	bne lbl_80ABBB50
/* 80ABBB4C  38 E0 00 00 */	li r7, 0
lbl_80ABBB50:
/* 80ABBB50  7C E0 07 35 */	extsh. r0, r7
/* 80ABBB54  40 82 00 18 */	bne lbl_80ABBB6C
/* 80ABBB58  A8 C3 08 F2 */	lha r6, 0x8f2(r3)
/* 80ABBB5C  A8 03 04 B6 */	lha r0, 0x4b6(r3)
/* 80ABBB60  7C 06 00 00 */	cmpw r6, r0
/* 80ABBB64  40 82 00 08 */	bne lbl_80ABBB6C
/* 80ABBB68  38 E0 00 10 */	li r7, 0x10
lbl_80ABBB6C:
/* 80ABBB6C  2C 05 00 00 */	cmpwi r5, 0
/* 80ABBB70  40 82 00 14 */	bne lbl_80ABBB84
/* 80ABBB74  A8 A3 09 E0 */	lha r5, 0x9e0(r3)
/* 80ABBB78  7C E0 07 34 */	extsh r0, r7
/* 80ABBB7C  7C 05 00 00 */	cmpw r5, r0
/* 80ABBB80  4D 82 00 20 */	beqlr 
lbl_80ABBB84:
/* 80ABBB84  2C 04 00 00 */	cmpwi r4, 0
/* 80ABBB88  4D 80 00 20 */	bltlr 
/* 80ABBB8C  2C 04 00 13 */	cmpwi r4, 0x13
/* 80ABBB90  4C 80 00 20 */	bgelr 
/* 80ABBB94  B0 E3 09 E0 */	sth r7, 0x9e0(r3)
/* 80ABBB98  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80ABBB9C  38 00 FF FF */	li r0, -1
/* 80ABBBA0  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80ABBBA4  38 00 00 00 */	li r0, 0
/* 80ABBBA8  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80ABBBAC  4E 80 00 20 */	blr 
