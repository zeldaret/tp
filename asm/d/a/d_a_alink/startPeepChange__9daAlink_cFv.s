lbl_800BDD70:
/* 800BDD70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BDD74  7C 08 02 A6 */	mflr r0
/* 800BDD78  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDD7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BDD80  93 C1 00 08 */	stw r30, 8(r1)
/* 800BDD84  7C 7E 1B 78 */	mr r30, r3
/* 800BDD88  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800BDD8C  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 800BDD90  40 82 00 74 */	bne lbl_800BDE04
/* 800BDD94  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800BDD98  60 00 40 00 */	ori r0, r0, 0x4000
/* 800BDD9C  90 1E 05 70 */	stw r0, 0x570(r30)
/* 800BDDA0  A0 1E 2F E8 */	lhz r0, 0x2fe8(r30)
/* 800BDDA4  28 00 01 40 */	cmplwi r0, 0x140
/* 800BDDA8  40 82 00 0C */	bne lbl_800BDDB4
/* 800BDDAC  3B E0 00 07 */	li r31, 7
/* 800BDDB0  48 00 00 2C */	b lbl_800BDDDC
lbl_800BDDB4:
/* 800BDDB4  3B E0 00 06 */	li r31, 6
/* 800BDDB8  80 FE 00 B0 */	lwz r7, 0xb0(r30)
/* 800BDDBC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 800BDDC0  7C 06 07 74 */	extsb r6, r0
/* 800BDDC4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800BDDC8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800BDDCC  38 63 0E D8 */	addi r3, r3, 0xed8
/* 800BDDD0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 800BDDD4  A8 BE 04 E6 */	lha r5, 0x4e6(r30)
/* 800BDDD8  4B F7 71 CD */	bl set__17dSv_turnRestart_cFRC4cXyzsScUl
lbl_800BDDDC:
/* 800BDDDC  88 7E 2F AD */	lbz r3, 0x2fad(r30)
/* 800BDDE0  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800BDDE4  7F E4 FB 78 */	mr r4, r31
/* 800BDDE8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 800BDDEC  7C 05 07 74 */	extsb r5, r0
/* 800BDDF0  A8 DE 04 E6 */	lha r6, 0x4e6(r30)
/* 800BDDF4  38 E0 FF FF */	li r7, -1
/* 800BDDF8  4B F6 93 79 */	bl dStage_changeScene__FifUlScsi
/* 800BDDFC  38 60 00 01 */	li r3, 1
/* 800BDE00  48 00 00 08 */	b lbl_800BDE08
lbl_800BDE04:
/* 800BDE04  38 60 00 00 */	li r3, 0
lbl_800BDE08:
/* 800BDE08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BDE0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BDE10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BDE14  7C 08 03 A6 */	mtlr r0
/* 800BDE18  38 21 00 10 */	addi r1, r1, 0x10
/* 800BDE1C  4E 80 00 20 */	blr 
