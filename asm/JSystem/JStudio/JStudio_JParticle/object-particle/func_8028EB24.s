lbl_8028EB24:
/* 8028EB24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028EB28  7C 08 02 A6 */	mflr r0
/* 8028EB2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028EB30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028EB34  7C 7F 1B 78 */	mr r31, r3
/* 8028EB38  2C 04 00 02 */	cmpwi r4, 2
/* 8028EB3C  41 82 00 08 */	beq lbl_8028EB44
/* 8028EB40  48 00 00 18 */	b lbl_8028EB58
lbl_8028EB44:
/* 8028EB44  C0 25 00 00 */	lfs f1, 0(r5)
/* 8028EB48  48 0D 35 65 */	bl __cvt_fp2unsigned
/* 8028EB4C  7C 64 1B 78 */	mr r4, r3
/* 8028EB50  7F E3 FB 78 */	mr r3, r31
/* 8028EB54  48 00 06 6D */	bl endParticle_fadeOut___Q217JStudio_JParticle17TAdaptor_particleFUl
lbl_8028EB58:
/* 8028EB58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028EB5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028EB60  7C 08 03 A6 */	mtlr r0
/* 8028EB64  38 21 00 10 */	addi r1, r1, 0x10
/* 8028EB68  4E 80 00 20 */	blr 
