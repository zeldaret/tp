lbl_80BF41F0:
/* 80BF41F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF41F4  7C 08 02 A6 */	mflr r0
/* 80BF41F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF41FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BF4200  7C 7F 1B 78 */	mr r31, r3
/* 80BF4204  38 7F 09 D4 */	addi r3, r31, 0x9d4
/* 80BF4208  38 80 00 00 */	li r4, 0
/* 80BF420C  38 1F 0A 47 */	addi r0, r31, 0xa47
/* 80BF4210  7C A3 00 50 */	subf r5, r3, r0
/* 80BF4214  4B 40 F2 45 */	bl memset
/* 80BF4218  88 1F 09 D0 */	lbz r0, 0x9d0(r31)
/* 80BF421C  2C 00 00 02 */	cmpwi r0, 2
/* 80BF4220  40 80 00 18 */	bge lbl_80BF4238
/* 80BF4224  2C 00 00 00 */	cmpwi r0, 0
/* 80BF4228  40 80 00 08 */	bge lbl_80BF4230
/* 80BF422C  48 00 00 0C */	b lbl_80BF4238
lbl_80BF4230:
/* 80BF4230  38 00 00 01 */	li r0, 1
/* 80BF4234  98 1F 0A 44 */	stb r0, 0xa44(r31)
lbl_80BF4238:
/* 80BF4238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BF423C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF4240  7C 08 03 A6 */	mtlr r0
/* 80BF4244  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF4248  4E 80 00 20 */	blr 
