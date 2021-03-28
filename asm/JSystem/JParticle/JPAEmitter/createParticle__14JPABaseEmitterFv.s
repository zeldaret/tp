lbl_8027EA40:
/* 8027EA40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027EA44  7C 08 02 A6 */	mflr r0
/* 8027EA48  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027EA4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027EA50  93 C1 00 08 */	stw r30, 8(r1)
/* 8027EA54  7C 7E 1B 78 */	mr r30, r3
/* 8027EA58  80 83 00 E0 */	lwz r4, 0xe0(r3)
/* 8027EA5C  80 04 00 08 */	lwz r0, 8(r4)
/* 8027EA60  28 00 00 00 */	cmplwi r0, 0
/* 8027EA64  41 82 00 E0 */	beq lbl_8027EB44
/* 8027EA68  3B E0 00 00 */	li r31, 0
/* 8027EA6C  80 04 00 08 */	lwz r0, 8(r4)
/* 8027EA70  28 00 00 01 */	cmplwi r0, 1
/* 8027EA74  40 82 00 24 */	bne lbl_8027EA98
/* 8027EA78  83 E4 00 00 */	lwz r31, 0(r4)
/* 8027EA7C  38 00 00 00 */	li r0, 0
/* 8027EA80  90 04 00 04 */	stw r0, 4(r4)
/* 8027EA84  90 04 00 00 */	stw r0, 0(r4)
/* 8027EA88  80 64 00 08 */	lwz r3, 8(r4)
/* 8027EA8C  38 03 FF FF */	addi r0, r3, -1
/* 8027EA90  90 04 00 08 */	stw r0, 8(r4)
/* 8027EA94  48 00 00 30 */	b lbl_8027EAC4
lbl_8027EA98:
/* 8027EA98  28 00 00 00 */	cmplwi r0, 0
/* 8027EA9C  41 82 00 28 */	beq lbl_8027EAC4
/* 8027EAA0  83 E4 00 00 */	lwz r31, 0(r4)
/* 8027EAA4  38 00 00 00 */	li r0, 0
/* 8027EAA8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8027EAAC  90 03 00 00 */	stw r0, 0(r3)
/* 8027EAB0  80 1F 00 04 */	lwz r0, 4(r31)
/* 8027EAB4  90 04 00 00 */	stw r0, 0(r4)
/* 8027EAB8  80 64 00 08 */	lwz r3, 8(r4)
/* 8027EABC  38 03 FF FF */	addi r0, r3, -1
/* 8027EAC0  90 04 00 08 */	stw r0, 8(r4)
lbl_8027EAC4:
/* 8027EAC4  80 1E 00 C8 */	lwz r0, 0xc8(r30)
/* 8027EAC8  28 00 00 00 */	cmplwi r0, 0
/* 8027EACC  41 82 00 24 */	beq lbl_8027EAF0
/* 8027EAD0  38 00 00 00 */	li r0, 0
/* 8027EAD4  90 1F 00 00 */	stw r0, 0(r31)
/* 8027EAD8  80 1E 00 C8 */	lwz r0, 0xc8(r30)
/* 8027EADC  90 1F 00 04 */	stw r0, 4(r31)
/* 8027EAE0  80 7E 00 C8 */	lwz r3, 0xc8(r30)
/* 8027EAE4  93 E3 00 00 */	stw r31, 0(r3)
/* 8027EAE8  93 FE 00 C8 */	stw r31, 0xc8(r30)
/* 8027EAEC  48 00 00 18 */	b lbl_8027EB04
lbl_8027EAF0:
/* 8027EAF0  93 FE 00 CC */	stw r31, 0xcc(r30)
/* 8027EAF4  93 FE 00 C8 */	stw r31, 0xc8(r30)
/* 8027EAF8  38 00 00 00 */	li r0, 0
/* 8027EAFC  90 1F 00 00 */	stw r0, 0(r31)
/* 8027EB00  90 1F 00 04 */	stw r0, 4(r31)
lbl_8027EB04:
/* 8027EB04  80 7E 00 D0 */	lwz r3, 0xd0(r30)
/* 8027EB08  38 03 00 01 */	addi r0, r3, 1
/* 8027EB0C  90 1E 00 D0 */	stw r0, 0xd0(r30)
/* 8027EB10  80 7E 00 E8 */	lwz r3, 0xe8(r30)
/* 8027EB14  80 83 00 2C */	lwz r4, 0x2c(r3)
/* 8027EB18  80 7E 00 E4 */	lwz r3, 0xe4(r30)
/* 8027EB1C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8027EB20  81 84 00 04 */	lwz r12, 4(r4)
/* 8027EB24  7D 89 03 A6 */	mtctr r12
/* 8027EB28  4E 80 04 21 */	bctrl 
/* 8027EB2C  38 7F 00 08 */	addi r3, r31, 8
/* 8027EB30  80 9E 00 E4 */	lwz r4, 0xe4(r30)
/* 8027EB34  80 84 00 20 */	lwz r4, 0x20(r4)
/* 8027EB38  48 00 04 B5 */	bl init_p__15JPABaseParticleFP18JPAEmitterWorkData
/* 8027EB3C  38 7F 00 08 */	addi r3, r31, 8
/* 8027EB40  48 00 00 08 */	b lbl_8027EB48
lbl_8027EB44:
/* 8027EB44  38 60 00 00 */	li r3, 0
lbl_8027EB48:
/* 8027EB48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027EB4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8027EB50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027EB54  7C 08 03 A6 */	mtlr r0
/* 8027EB58  38 21 00 10 */	addi r1, r1, 0x10
/* 8027EB5C  4E 80 00 20 */	blr 
