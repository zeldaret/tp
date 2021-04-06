lbl_8024F59C:
/* 8024F59C  3C 80 80 3C */	lis r4, cNullVec__6Z2Calc@ha /* 0x803C1F50@ha */
/* 8024F5A0  38 A4 1F 50 */	addi r5, r4, cNullVec__6Z2Calc@l /* 0x803C1F50@l */
/* 8024F5A4  88 03 02 A9 */	lbz r0, 0x2a9(r3)
/* 8024F5A8  2C 00 00 01 */	cmpwi r0, 1
/* 8024F5AC  41 82 00 40 */	beq lbl_8024F5EC
/* 8024F5B0  40 80 00 10 */	bge lbl_8024F5C0
/* 8024F5B4  2C 00 00 00 */	cmpwi r0, 0
/* 8024F5B8  40 80 00 14 */	bge lbl_8024F5CC
/* 8024F5BC  48 00 00 6C */	b lbl_8024F628
lbl_8024F5C0:
/* 8024F5C0  2C 00 00 03 */	cmpwi r0, 3
/* 8024F5C4  40 80 00 64 */	bge lbl_8024F628
/* 8024F5C8  48 00 00 44 */	b lbl_8024F60C
lbl_8024F5CC:
/* 8024F5CC  88 83 02 A7 */	lbz r4, 0x2a7(r3)
/* 8024F5D0  88 03 02 A5 */	lbz r0, 0x2a5(r3)
/* 8024F5D4  1C 00 00 05 */	mulli r0, r0, 5
/* 8024F5D8  7C 04 02 14 */	add r0, r4, r0
/* 8024F5DC  54 00 10 3A */	slwi r0, r0, 2
/* 8024F5E0  38 65 00 0C */	addi r3, r5, 0xc
/* 8024F5E4  7C 63 00 2E */	lwzx r3, r3, r0
/* 8024F5E8  48 00 00 40 */	b lbl_8024F628
lbl_8024F5EC:
/* 8024F5EC  88 83 02 A7 */	lbz r4, 0x2a7(r3)
/* 8024F5F0  88 03 02 A5 */	lbz r0, 0x2a5(r3)
/* 8024F5F4  1C 00 00 05 */	mulli r0, r0, 5
/* 8024F5F8  7C 04 02 14 */	add r0, r4, r0
/* 8024F5FC  54 00 10 3A */	slwi r0, r0, 2
/* 8024F600  38 65 03 18 */	addi r3, r5, 0x318
/* 8024F604  7C 63 00 2E */	lwzx r3, r3, r0
/* 8024F608  48 00 00 20 */	b lbl_8024F628
lbl_8024F60C:
/* 8024F60C  88 83 02 A7 */	lbz r4, 0x2a7(r3)
/* 8024F610  88 03 02 A5 */	lbz r0, 0x2a5(r3)
/* 8024F614  1C 00 00 05 */	mulli r0, r0, 5
/* 8024F618  7C 04 02 14 */	add r0, r4, r0
/* 8024F61C  54 00 10 3A */	slwi r0, r0, 2
/* 8024F620  38 65 06 24 */	addi r3, r5, 0x624
/* 8024F624  7C 63 00 2E */	lwzx r3, r3, r0
lbl_8024F628:
/* 8024F628  88 63 00 00 */	lbz r3, 0(r3)
/* 8024F62C  7C 63 07 74 */	extsb r3, r3
/* 8024F630  4E 80 00 20 */	blr 
