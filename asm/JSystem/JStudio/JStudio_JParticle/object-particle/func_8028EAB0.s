lbl_8028EAB0:
/* 8028EAB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EAB4  7C 08 02 A6 */	mflr r0
/* 8028EAB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028EAC0  7C 7F 1B 78 */	mr r31, r3
/* 8028EAC4  2C 04 00 02 */	cmpwi r4, 2
/* 8028EAC8  41 82 00 08 */	beq lbl_8028EAD0
/* 8028EACC  48 00 00 18 */	b lbl_8028EAE4
lbl_8028EAD0:
/* 8028EAD0  C0 25 00 00 */	lfs f1, 0(r5)
/* 8028EAD4  48 0D 35 D9 */	bl __cvt_fp2unsigned
/* 8028EAD8  90 7F 01 C8 */	stw r3, 0x1c8(r31)
/* 8028EADC  7F E3 FB 78 */	mr r3, r31
/* 8028EAE0  48 00 06 29 */	bl beginParticle_fadeIn___Q217JStudio_JParticle17TAdaptor_particleFv
lbl_8028EAE4:
/* 8028EAE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028EAE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EAEC  7C 08 03 A6 */	mtlr r0
/* 8028EAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EAF4  4E 80 00 20 */	blr 
