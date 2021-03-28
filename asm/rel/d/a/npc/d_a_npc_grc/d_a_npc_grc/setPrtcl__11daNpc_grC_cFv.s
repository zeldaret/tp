lbl_809CEB50:
/* 809CEB50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 809CEB54  7C 08 02 A6 */	mflr r0
/* 809CEB58  90 01 00 34 */	stw r0, 0x34(r1)
/* 809CEB5C  7C 6B 1B 78 */	mr r11, r3
/* 809CEB60  3C 60 80 9D */	lis r3, lit_4454@ha
/* 809CEB64  C0 23 F5 98 */	lfs f1, lit_4454@l(r3)
/* 809CEB68  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 809CEB6C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 809CEB70  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 809CEB74  C0 0B 08 E4 */	lfs f0, 0x8e4(r11)
/* 809CEB78  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 809CEB7C  C0 0B 08 E8 */	lfs f0, 0x8e8(r11)
/* 809CEB80  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809CEB84  C0 0B 08 EC */	lfs f0, 0x8ec(r11)
/* 809CEB88  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 809CEB8C  C0 0B 04 D4 */	lfs f0, 0x4d4(r11)
/* 809CEB90  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 809CEB94  88 0B 04 E2 */	lbz r0, 0x4e2(r11)
/* 809CEB98  7C 00 07 74 */	extsb r0, r0
/* 809CEB9C  90 01 00 08 */	stw r0, 8(r1)
/* 809CEBA0  38 6B 0C 78 */	addi r3, r11, 0xc78
/* 809CEBA4  38 8B 01 0C */	addi r4, r11, 0x10c
/* 809CEBA8  38 A1 00 10 */	addi r5, r1, 0x10
/* 809CEBAC  38 C0 00 01 */	li r6, 1
/* 809CEBB0  3C E0 00 04 */	lis r7, 0x0004 /* 0x00040002@ha */
/* 809CEBB4  38 E7 00 02 */	addi r7, r7, 0x0002 /* 0x00040002@l */
/* 809CEBB8  39 00 00 00 */	li r8, 0
/* 809CEBBC  39 20 00 00 */	li r9, 0
/* 809CEBC0  39 41 00 1C */	addi r10, r1, 0x1c
/* 809CEBC4  C0 4B 05 2C */	lfs f2, 0x52c(r11)
/* 809CEBC8  4B 68 24 40 */	b setEffectCenter__7dPaPo_cFPC12dKy_tevstr_cPC4cXyzUlUlPC4cXyzPC5csXyzPC4cXyzScff
/* 809CEBCC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 809CEBD0  7C 08 03 A6 */	mtlr r0
/* 809CEBD4  38 21 00 30 */	addi r1, r1, 0x30
/* 809CEBD8  4E 80 00 20 */	blr 
