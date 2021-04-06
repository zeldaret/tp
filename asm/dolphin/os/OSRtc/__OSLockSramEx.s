lbl_803401A0:
/* 803401A0  7C 08 02 A6 */	mflr r0
/* 803401A4  3C 60 80 45 */	lis r3, Scb@ha /* 0x8044BB20@ha */
/* 803401A8  90 01 00 04 */	stw r0, 4(r1)
/* 803401AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803401B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803401B4  3B E3 BB 20 */	addi r31, r3, Scb@l /* 0x8044BB20@l */
/* 803401B8  4B FF D5 3D */	bl OSDisableInterrupts
/* 803401BC  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 803401C0  38 9F 00 48 */	addi r4, r31, 0x48
/* 803401C4  2C 00 00 00 */	cmpwi r0, 0
/* 803401C8  41 82 00 10 */	beq lbl_803401D8
/* 803401CC  4B FF D5 51 */	bl OSRestoreInterrupts
/* 803401D0  38 60 00 00 */	li r3, 0
/* 803401D4  48 00 00 14 */	b lbl_803401E8
lbl_803401D8:
/* 803401D8  90 7F 00 44 */	stw r3, 0x44(r31)
/* 803401DC  38 00 00 01 */	li r0, 1
/* 803401E0  38 7F 00 14 */	addi r3, r31, 0x14
/* 803401E4  90 04 00 00 */	stw r0, 0(r4)
lbl_803401E8:
/* 803401E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803401EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803401F0  38 21 00 10 */	addi r1, r1, 0x10
/* 803401F4  7C 08 03 A6 */	mtlr r0
/* 803401F8  4E 80 00 20 */	blr 
