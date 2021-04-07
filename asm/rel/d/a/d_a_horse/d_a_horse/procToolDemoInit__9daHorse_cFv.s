lbl_808439C8:
/* 808439C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808439CC  7C 08 02 A6 */	mflr r0
/* 808439D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 808439D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 808439D8  7C 7F 1B 78 */	mr r31, r3
/* 808439DC  3C 80 80 84 */	lis r4, lit_10185@ha /* 0x80845A24@ha */
/* 808439E0  38 A4 5A 24 */	addi r5, r4, lit_10185@l /* 0x80845A24@l */
/* 808439E4  80 85 00 00 */	lwz r4, 0(r5)
/* 808439E8  80 05 00 04 */	lwz r0, 4(r5)
/* 808439EC  90 83 18 A4 */	stw r4, 0x18a4(r3)
/* 808439F0  90 03 18 A8 */	stw r0, 0x18a8(r3)
/* 808439F4  80 05 00 08 */	lwz r0, 8(r5)
/* 808439F8  90 03 18 AC */	stw r0, 0x18ac(r3)
/* 808439FC  38 00 00 07 */	li r0, 7
/* 80843A00  98 03 16 B4 */	stb r0, 0x16b4(r3)
/* 80843A04  3C 80 80 84 */	lis r4, lit_4306@ha /* 0x808455FC@ha */
/* 80843A08  C0 04 55 FC */	lfs f0, lit_4306@l(r4)  /* 0x808455FC@l */
/* 80843A0C  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 80843A10  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80843A14  4B FF D2 91 */	bl resetNeckAnime__9daHorse_cFv
/* 80843A18  80 9F 17 44 */	lwz r4, 0x1744(r31)
/* 80843A1C  3C 60 FF FF */	lis r3, 0xFFFF /* 0xFFFEF5FF@ha */
/* 80843A20  38 03 F5 FF */	addi r0, r3, 0xF5FF /* 0xFFFEF5FF@l */
/* 80843A24  7C 80 00 38 */	and r0, r4, r0
/* 80843A28  90 1F 17 44 */	stw r0, 0x1744(r31)
/* 80843A2C  38 60 00 01 */	li r3, 1
/* 80843A30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80843A34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80843A38  7C 08 03 A6 */	mtlr r0
/* 80843A3C  38 21 00 10 */	addi r1, r1, 0x10
/* 80843A40  4E 80 00 20 */	blr 
