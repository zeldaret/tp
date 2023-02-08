lbl_80C61004:
/* 80C61004  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C61008  7C 08 02 A6 */	mflr r0
/* 80C6100C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C61010  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C61014  7C 7F 1B 78 */	mr r31, r3
/* 80C61018  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C6101C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C61020  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C61024  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C61028  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C6102C  7C 05 07 74 */	extsb r5, r0
/* 80C61030  4B 3D 41 D1 */	bl onSwitch__10dSv_info_cFii
/* 80C61034  3C 60 80 C6 */	lis r3, lit_3710@ha /* 0x80C61B3C@ha */
/* 80C61038  C0 03 1B 3C */	lfs f0, lit_3710@l(r3)  /* 0x80C61B3C@l */
/* 80C6103C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80C61040  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 80C61044  38 00 00 00 */	li r0, 0
/* 80C61048  B0 1F 09 58 */	sth r0, 0x958(r31)
/* 80C6104C  38 00 00 01 */	li r0, 1
/* 80C61050  98 1F 09 5A */	stb r0, 0x95a(r31)
/* 80C61054  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C61058  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6105C  7C 08 03 A6 */	mtlr r0
/* 80C61060  38 21 00 10 */	addi r1, r1, 0x10
/* 80C61064  4E 80 00 20 */	blr 
