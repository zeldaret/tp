lbl_80C07CF0:
/* 80C07CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C07CF4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80C07CF8  54 00 96 BE */	rlwinm r0, r0, 0x12, 0x1a, 0x1f
/* 80C07CFC  28 00 00 3F */	cmplwi r0, 0x3f
/* 80C07D00  40 82 00 14 */	bne lbl_80C07D14
/* 80C07D04  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha
/* 80C07D08  38 63 FA 7C */	addi r3, r3, m__17daObj_GrA_Param_c@l
/* 80C07D0C  C0 23 00 84 */	lfs f1, 0x84(r3)
/* 80C07D10  48 00 00 20 */	b lbl_80C07D30
lbl_80C07D14:
/* 80C07D14  3C 60 80 C1 */	lis r3, lit_7443@ha
/* 80C07D18  C8 23 FD 2C */	lfd f1, lit_7443@l(r3)
/* 80C07D1C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C07D20  3C 00 43 30 */	lis r0, 0x4330
/* 80C07D24  90 01 00 08 */	stw r0, 8(r1)
/* 80C07D28  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C07D2C  EC 20 08 28 */	fsubs f1, f0, f1
lbl_80C07D30:
/* 80C07D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80C07D34  4E 80 00 20 */	blr 
