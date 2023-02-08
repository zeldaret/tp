lbl_801C0EE0:
/* 801C0EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801C0EE4  7C 08 02 A6 */	mflr r0
/* 801C0EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801C0EEC  C0 02 A6 60 */	lfs f0, lit_3803(r2)
/* 801C0EF0  C0 23 00 90 */	lfs f1, 0x90(r3)
/* 801C0EF4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801C0EF8  40 82 00 0C */	bne lbl_801C0F04
/* 801C0EFC  C0 22 A6 98 */	lfs f1, lit_3946(r2)
/* 801C0F00  48 00 00 14 */	b lbl_801C0F14
lbl_801C0F04:
/* 801C0F04  C8 42 A6 A0 */	lfd f2, lit_3947(r2)
/* 801C0F08  48 1A B8 59 */	bl fmod
/* 801C0F0C  FC 00 08 18 */	frsp f0, f1
/* 801C0F10  FC 20 00 90 */	fmr f1, f0
lbl_801C0F14:
/* 801C0F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801C0F18  7C 08 03 A6 */	mtlr r0
/* 801C0F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 801C0F20  4E 80 00 20 */	blr 
