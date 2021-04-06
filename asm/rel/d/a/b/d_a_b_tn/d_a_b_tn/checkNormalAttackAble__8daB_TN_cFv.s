lbl_80620E90:
/* 80620E90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80620E94  7C 08 02 A6 */	mflr r0
/* 80620E98  90 01 00 24 */	stw r0, 0x24(r1)
/* 80620E9C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80620EA0  7C 7F 1B 78 */	mr r31, r3
/* 80620EA4  88 03 0A A5 */	lbz r0, 0xaa5(r3)
/* 80620EA8  28 00 00 01 */	cmplwi r0, 1
/* 80620EAC  40 82 00 DC */	bne lbl_80620F88
/* 80620EB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80620EB4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80620EB8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80620EBC  88 03 05 69 */	lbz r0, 0x569(r3)
/* 80620EC0  28 00 00 00 */	cmplwi r0, 0
/* 80620EC4  41 82 00 34 */	beq lbl_80620EF8
/* 80620EC8  3C 60 80 63 */	lis r3, lit_4375@ha /* 0x8062E6AC@ha */
/* 80620ECC  C0 23 E6 AC */	lfs f1, lit_4375@l(r3)  /* 0x8062E6AC@l */
/* 80620ED0  4B C4 6A 85 */	bl cM_rndF__Ff
/* 80620ED4  3C 60 80 63 */	lis r3, lit_4957@ha /* 0x8062E6E0@ha */
/* 80620ED8  C0 03 E6 E0 */	lfs f0, lit_4957@l(r3)  /* 0x8062E6E0@l */
/* 80620EDC  EC 00 08 2A */	fadds f0, f0, f1
/* 80620EE0  FC 00 00 1E */	fctiwz f0, f0
/* 80620EE4  D8 01 00 08 */	stfd f0, 8(r1)
/* 80620EE8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80620EEC  90 1F 0A 70 */	stw r0, 0xa70(r31)
/* 80620EF0  38 60 00 00 */	li r3, 0
/* 80620EF4  48 00 00 98 */	b lbl_80620F8C
lbl_80620EF8:
/* 80620EF8  3C 60 80 63 */	lis r3, m_attack_tn@ha /* 0x8062F2FC@ha */
/* 80620EFC  80 03 F2 FC */	lwz r0, m_attack_tn@l(r3)  /* 0x8062F2FC@l */
/* 80620F00  28 00 00 00 */	cmplwi r0, 0
/* 80620F04  41 82 00 3C */	beq lbl_80620F40
/* 80620F08  7C 00 F8 40 */	cmplw r0, r31
/* 80620F0C  41 82 00 34 */	beq lbl_80620F40
/* 80620F10  3C 60 80 63 */	lis r3, lit_4375@ha /* 0x8062E6AC@ha */
/* 80620F14  C0 23 E6 AC */	lfs f1, lit_4375@l(r3)  /* 0x8062E6AC@l */
/* 80620F18  4B C4 6A 3D */	bl cM_rndF__Ff
/* 80620F1C  3C 60 80 63 */	lis r3, lit_4957@ha /* 0x8062E6E0@ha */
/* 80620F20  C0 03 E6 E0 */	lfs f0, lit_4957@l(r3)  /* 0x8062E6E0@l */
/* 80620F24  EC 00 08 2A */	fadds f0, f0, f1
/* 80620F28  FC 00 00 1E */	fctiwz f0, f0
/* 80620F2C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80620F30  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80620F34  90 1F 0A 70 */	stw r0, 0xa70(r31)
/* 80620F38  38 60 00 00 */	li r3, 0
/* 80620F3C  48 00 00 50 */	b lbl_80620F8C
lbl_80620F40:
/* 80620F40  3C 60 80 63 */	lis r3, m_attack_timer@ha /* 0x8062F300@ha */
/* 80620F44  84 03 F3 00 */	lwzu r0, m_attack_timer@l(r3)  /* 0x8062F300@l */
/* 80620F48  2C 00 00 00 */	cmpwi r0, 0
/* 80620F4C  41 82 00 34 */	beq lbl_80620F80
/* 80620F50  3C 60 80 63 */	lis r3, lit_4375@ha /* 0x8062E6AC@ha */
/* 80620F54  C0 23 E6 AC */	lfs f1, lit_4375@l(r3)  /* 0x8062E6AC@l */
/* 80620F58  4B C4 69 FD */	bl cM_rndF__Ff
/* 80620F5C  3C 60 80 63 */	lis r3, lit_4957@ha /* 0x8062E6E0@ha */
/* 80620F60  C0 03 E6 E0 */	lfs f0, lit_4957@l(r3)  /* 0x8062E6E0@l */
/* 80620F64  EC 00 08 2A */	fadds f0, f0, f1
/* 80620F68  FC 00 00 1E */	fctiwz f0, f0
/* 80620F6C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80620F70  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80620F74  90 1F 0A 70 */	stw r0, 0xa70(r31)
/* 80620F78  38 60 00 00 */	li r3, 0
/* 80620F7C  48 00 00 10 */	b lbl_80620F8C
lbl_80620F80:
/* 80620F80  38 00 00 1E */	li r0, 0x1e
/* 80620F84  90 03 00 00 */	stw r0, 0(r3)
lbl_80620F88:
/* 80620F88  38 60 00 01 */	li r3, 1
lbl_80620F8C:
/* 80620F8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80620F90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80620F94  7C 08 03 A6 */	mtlr r0
/* 80620F98  38 21 00 20 */	addi r1, r1, 0x20
/* 80620F9C  4E 80 00 20 */	blr 
