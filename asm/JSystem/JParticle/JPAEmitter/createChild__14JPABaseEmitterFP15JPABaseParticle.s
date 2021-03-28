lbl_8027EB60:
/* 8027EB60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027EB64  7C 08 02 A6 */	mflr r0
/* 8027EB68  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027EB6C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027EB70  7C 66 1B 78 */	mr r6, r3
/* 8027EB74  7C 85 23 78 */	mr r5, r4
/* 8027EB78  80 83 00 E0 */	lwz r4, 0xe0(r3)
/* 8027EB7C  80 04 00 08 */	lwz r0, 8(r4)
/* 8027EB80  28 00 00 00 */	cmplwi r0, 0
/* 8027EB84  41 82 00 C4 */	beq lbl_8027EC48
/* 8027EB88  3B E0 00 00 */	li r31, 0
/* 8027EB8C  80 04 00 08 */	lwz r0, 8(r4)
/* 8027EB90  28 00 00 01 */	cmplwi r0, 1
/* 8027EB94  40 82 00 24 */	bne lbl_8027EBB8
/* 8027EB98  83 E4 00 00 */	lwz r31, 0(r4)
/* 8027EB9C  38 00 00 00 */	li r0, 0
/* 8027EBA0  90 04 00 04 */	stw r0, 4(r4)
/* 8027EBA4  90 04 00 00 */	stw r0, 0(r4)
/* 8027EBA8  80 64 00 08 */	lwz r3, 8(r4)
/* 8027EBAC  38 03 FF FF */	addi r0, r3, -1
/* 8027EBB0  90 04 00 08 */	stw r0, 8(r4)
/* 8027EBB4  48 00 00 30 */	b lbl_8027EBE4
lbl_8027EBB8:
/* 8027EBB8  28 00 00 00 */	cmplwi r0, 0
/* 8027EBBC  41 82 00 28 */	beq lbl_8027EBE4
/* 8027EBC0  83 E4 00 00 */	lwz r31, 0(r4)
/* 8027EBC4  38 00 00 00 */	li r0, 0
/* 8027EBC8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8027EBCC  90 03 00 00 */	stw r0, 0(r3)
/* 8027EBD0  80 1F 00 04 */	lwz r0, 4(r31)
/* 8027EBD4  90 04 00 00 */	stw r0, 0(r4)
/* 8027EBD8  80 64 00 08 */	lwz r3, 8(r4)
/* 8027EBDC  38 03 FF FF */	addi r0, r3, -1
/* 8027EBE0  90 04 00 08 */	stw r0, 8(r4)
lbl_8027EBE4:
/* 8027EBE4  80 06 00 D4 */	lwz r0, 0xd4(r6)
/* 8027EBE8  28 00 00 00 */	cmplwi r0, 0
/* 8027EBEC  41 82 00 24 */	beq lbl_8027EC10
/* 8027EBF0  38 00 00 00 */	li r0, 0
/* 8027EBF4  90 1F 00 00 */	stw r0, 0(r31)
/* 8027EBF8  80 06 00 D4 */	lwz r0, 0xd4(r6)
/* 8027EBFC  90 1F 00 04 */	stw r0, 4(r31)
/* 8027EC00  80 66 00 D4 */	lwz r3, 0xd4(r6)
/* 8027EC04  93 E3 00 00 */	stw r31, 0(r3)
/* 8027EC08  93 E6 00 D4 */	stw r31, 0xd4(r6)
/* 8027EC0C  48 00 00 18 */	b lbl_8027EC24
lbl_8027EC10:
/* 8027EC10  93 E6 00 D8 */	stw r31, 0xd8(r6)
/* 8027EC14  93 E6 00 D4 */	stw r31, 0xd4(r6)
/* 8027EC18  38 00 00 00 */	li r0, 0
/* 8027EC1C  90 1F 00 00 */	stw r0, 0(r31)
/* 8027EC20  90 1F 00 04 */	stw r0, 4(r31)
lbl_8027EC24:
/* 8027EC24  80 66 00 DC */	lwz r3, 0xdc(r6)
/* 8027EC28  38 03 00 01 */	addi r0, r3, 1
/* 8027EC2C  90 06 00 DC */	stw r0, 0xdc(r6)
/* 8027EC30  38 7F 00 08 */	addi r3, r31, 8
/* 8027EC34  80 86 00 E4 */	lwz r4, 0xe4(r6)
/* 8027EC38  80 84 00 20 */	lwz r4, 0x20(r4)
/* 8027EC3C  48 00 0C 8D */	bl init_c__15JPABaseParticleFP18JPAEmitterWorkDataP15JPABaseParticle
/* 8027EC40  38 7F 00 08 */	addi r3, r31, 8
/* 8027EC44  48 00 00 08 */	b lbl_8027EC4C
lbl_8027EC48:
/* 8027EC48  38 60 00 00 */	li r3, 0
lbl_8027EC4C:
/* 8027EC4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027EC50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027EC54  7C 08 03 A6 */	mtlr r0
/* 8027EC58  38 21 00 10 */	addi r1, r1, 0x10
/* 8027EC5C  4E 80 00 20 */	blr 
