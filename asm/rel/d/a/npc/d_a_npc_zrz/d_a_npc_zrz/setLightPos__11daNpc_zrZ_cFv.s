lbl_80B971BC:
/* 80B971BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80B971C0  7C 08 02 A6 */	mflr r0
/* 80B971C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80B971C8  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80B971CC  7C 7F 1B 78 */	mr r31, r3
/* 80B971D0  3C 60 80 B9 */	lis r3, s_sub__FPvPv@ha
/* 80B971D4  38 63 51 60 */	addi r3, r3, s_sub__FPvPv@l
/* 80B971D8  7F E4 FB 78 */	mr r4, r31
/* 80B971DC  4B 48 A1 5C */	b fpcEx_Search__FPFPvPv_PvPv
/* 80B971E0  7C 65 1B 79 */	or. r5, r3, r3
/* 80B971E4  41 82 00 44 */	beq lbl_80B97228
/* 80B971E8  3C 60 80 BA */	lis r3, lit_4522@ha
/* 80B971EC  C0 03 B0 84 */	lfs f0, lit_4522@l(r3)
/* 80B971F0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B971F4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B971F8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B971FC  38 61 00 08 */	addi r3, r1, 8
/* 80B97200  38 85 04 D0 */	addi r4, r5, 0x4d0
/* 80B97204  A8 A5 04 DE */	lha r5, 0x4de(r5)
/* 80B97208  38 C1 00 14 */	addi r6, r1, 0x14
/* 80B9720C  4B 6D 9B B4 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80B97210  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 80B97214  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 80B97218  C0 01 00 08 */	lfs f0, 8(r1)
/* 80B9721C  D0 1F 14 68 */	stfs f0, 0x1468(r31)
/* 80B97220  D0 3F 14 6C */	stfs f1, 0x146c(r31)
/* 80B97224  D0 5F 14 70 */	stfs f2, 0x1470(r31)
lbl_80B97228:
/* 80B97228  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80B9722C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80B97230  7C 08 03 A6 */	mtlr r0
/* 80B97234  38 21 00 30 */	addi r1, r1, 0x30
/* 80B97238  4E 80 00 20 */	blr 
