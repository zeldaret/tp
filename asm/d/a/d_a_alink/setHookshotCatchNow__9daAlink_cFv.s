lbl_80108A3C:
/* 80108A3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80108A40  7C 08 02 A6 */	mflr r0
/* 80108A44  90 01 00 24 */	stw r0, 0x24(r1)
/* 80108A48  38 00 00 05 */	li r0, 5
/* 80108A4C  B0 03 30 26 */	sth r0, 0x3026(r3)
/* 80108A50  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80108A54  D0 21 00 08 */	stfs f1, 8(r1)
/* 80108A58  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80108A5C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80108A60  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80108A64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80108A68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80108A6C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80108A70  38 80 00 04 */	li r4, 4
/* 80108A74  38 A0 00 01 */	li r5, 1
/* 80108A78  38 C1 00 08 */	addi r6, r1, 8
/* 80108A7C  4B F6 6F A9 */	bl StartShock__12dVibration_cFii4cXyz
/* 80108A80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80108A84  7C 08 03 A6 */	mtlr r0
/* 80108A88  38 21 00 20 */	addi r1, r1, 0x20
/* 80108A8C  4E 80 00 20 */	blr 
