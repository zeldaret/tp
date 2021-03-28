lbl_8025EB20:
/* 8025EB20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025EB24  7C 08 02 A6 */	mflr r0
/* 8025EB28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025EB2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025EB30  93 C1 00 08 */	stw r30, 8(r1)
/* 8025EB34  7C 7E 1B 78 */	mr r30, r3
/* 8025EB38  39 00 00 00 */	li r8, 0
/* 8025EB3C  38 60 00 00 */	li r3, 0
/* 8025EB40  38 A0 00 00 */	li r5, 0
lbl_8025EB44:
/* 8025EB44  38 80 00 00 */	li r4, 0
/* 8025EB48  7C DE 1A 14 */	add r6, r30, r3
/* 8025EB4C  38 00 00 02 */	li r0, 2
/* 8025EB50  7C 09 03 A6 */	mtctr r0
lbl_8025EB54:
/* 8025EB54  38 04 00 5C */	addi r0, r4, 0x5c
/* 8025EB58  7C E6 00 2E */	lwzx r7, r6, r0
/* 8025EB5C  28 07 00 00 */	cmplwi r7, 0
/* 8025EB60  41 82 00 08 */	beq lbl_8025EB68
/* 8025EB64  98 A7 00 B0 */	stb r5, 0xb0(r7)
lbl_8025EB68:
/* 8025EB68  38 84 00 04 */	addi r4, r4, 4
/* 8025EB6C  42 00 FF E8 */	bdnz lbl_8025EB54
/* 8025EB70  39 08 00 01 */	addi r8, r8, 1
/* 8025EB74  2C 08 00 02 */	cmpwi r8, 2
/* 8025EB78  38 63 00 08 */	addi r3, r3, 8
/* 8025EB7C  41 80 FF C8 */	blt lbl_8025EB44
/* 8025EB80  80 1E 03 C8 */	lwz r0, 0x3c8(r30)
/* 8025EB84  2C 00 00 08 */	cmpwi r0, 8
/* 8025EB88  40 82 00 58 */	bne lbl_8025EBE0
/* 8025EB8C  80 7E 00 04 */	lwz r3, 4(r30)
/* 8025EB90  3C 80 73 6C */	lis r4, 0x736C /* 0x736C5F73@ha */
/* 8025EB94  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x736C5F73@l */
/* 8025EB98  38 A0 6E 5F */	li r5, 0x6e5f
/* 8025EB9C  81 83 00 00 */	lwz r12, 0(r3)
/* 8025EBA0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025EBA4  7D 89 03 A6 */	mtctr r12
/* 8025EBA8  4E 80 04 21 */	bctrl 
/* 8025EBAC  38 00 00 00 */	li r0, 0
/* 8025EBB0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8025EBB4  80 7E 00 04 */	lwz r3, 4(r30)
/* 8025EBB8  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F736C@ha */
/* 8025EBBC  38 C4 73 6C */	addi r6, r4, 0x736C /* 0x6E5F736C@l */
/* 8025EBC0  38 A0 00 00 */	li r5, 0
/* 8025EBC4  81 83 00 00 */	lwz r12, 0(r3)
/* 8025EBC8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025EBCC  7D 89 03 A6 */	mtctr r12
/* 8025EBD0  4E 80 04 21 */	bctrl 
/* 8025EBD4  38 00 00 00 */	li r0, 0
/* 8025EBD8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8025EBDC  48 00 00 68 */	b lbl_8025EC44
lbl_8025EBE0:
/* 8025EBE0  80 7E 00 04 */	lwz r3, 4(r30)
/* 8025EBE4  3C 80 73 6C */	lis r4, 0x736C /* 0x736C5F73@ha */
/* 8025EBE8  38 C4 5F 73 */	addi r6, r4, 0x5F73 /* 0x736C5F73@l */
/* 8025EBEC  38 A0 63 5F */	li r5, 0x635f
/* 8025EBF0  81 83 00 00 */	lwz r12, 0(r3)
/* 8025EBF4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025EBF8  7D 89 03 A6 */	mtctr r12
/* 8025EBFC  4E 80 04 21 */	bctrl 
/* 8025EC00  7C 7F 1B 78 */	mr r31, r3
/* 8025EC04  80 7E 00 04 */	lwz r3, 4(r30)
/* 8025EC08  3C 80 63 5F */	lis r4, 0x635F /* 0x635F736C@ha */
/* 8025EC0C  38 C4 73 6C */	addi r6, r4, 0x736C /* 0x635F736C@l */
/* 8025EC10  38 A0 00 00 */	li r5, 0
/* 8025EC14  81 83 00 00 */	lwz r12, 0(r3)
/* 8025EC18  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025EC1C  7D 89 03 A6 */	mtctr r12
/* 8025EC20  4E 80 04 21 */	bctrl 
/* 8025EC24  28 1F 00 00 */	cmplwi r31, 0
/* 8025EC28  41 82 00 0C */	beq lbl_8025EC34
/* 8025EC2C  38 00 00 00 */	li r0, 0
/* 8025EC30  98 1F 00 B0 */	stb r0, 0xb0(r31)
lbl_8025EC34:
/* 8025EC34  28 03 00 00 */	cmplwi r3, 0
/* 8025EC38  41 82 00 0C */	beq lbl_8025EC44
/* 8025EC3C  38 00 00 00 */	li r0, 0
/* 8025EC40  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_8025EC44:
/* 8025EC44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025EC48  83 C1 00 08 */	lwz r30, 8(r1)
/* 8025EC4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025EC50  7C 08 03 A6 */	mtlr r0
/* 8025EC54  38 21 00 10 */	addi r1, r1, 0x10
/* 8025EC58  4E 80 00 20 */	blr 
