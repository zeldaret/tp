lbl_8046BD60:
/* 8046BD60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046BD64  3C 60 80 47 */	lis r3, lit_3918@ha
/* 8046BD68  C0 43 C9 B8 */	lfs f2, lit_3918@l(r3)
/* 8046BD6C  EC 01 00 72 */	fmuls f0, f1, f1
/* 8046BD70  EC 01 00 32 */	fmuls f0, f1, f0
/* 8046BD74  EC 02 00 32 */	fmuls f0, f2, f0
/* 8046BD78  FC 00 00 1E */	fctiwz f0, f0
/* 8046BD7C  D8 01 00 08 */	stfd f0, 8(r1)
/* 8046BD80  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8046BD84  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8046BD88  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8046BD8C  80 03 12 9C */	lwz r0, 0x129c(r3)
/* 8046BD90  7C 04 00 00 */	cmpw r4, r0
/* 8046BD94  40 81 00 08 */	ble lbl_8046BD9C
/* 8046BD98  90 83 0E 80 */	stw r4, 0xe80(r3)
lbl_8046BD9C:
/* 8046BD9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8046BDA0  4E 80 00 20 */	blr 
