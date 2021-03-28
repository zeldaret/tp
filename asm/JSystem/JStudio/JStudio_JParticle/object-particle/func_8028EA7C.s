lbl_8028EA7C:
/* 8028EA7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EA80  7C 08 02 A6 */	mflr r0
/* 8028EA84  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EA88  2C 04 00 01 */	cmpwi r4, 1
/* 8028EA8C  41 82 00 08 */	beq lbl_8028EA94
/* 8028EA90  48 00 00 10 */	b lbl_8028EAA0
lbl_8028EA94:
/* 8028EA94  38 00 00 00 */	li r0, 0
/* 8028EA98  90 03 01 C8 */	stw r0, 0x1c8(r3)
/* 8028EA9C  48 00 06 6D */	bl beginParticle_fadeIn___Q217JStudio_JParticle17TAdaptor_particleFv
lbl_8028EAA0:
/* 8028EAA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EAA4  7C 08 03 A6 */	mtlr r0
/* 8028EAA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EAAC  4E 80 00 20 */	blr 
