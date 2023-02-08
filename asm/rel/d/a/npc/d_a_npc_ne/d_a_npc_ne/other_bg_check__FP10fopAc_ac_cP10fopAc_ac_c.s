lbl_80A8919C:
/* 80A8919C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80A891A0  7C 08 02 A6 */	mflr r0
/* 80A891A4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80A891A8  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 80A891AC  93 C1 00 98 */	stw r30, 0x98(r1)
/* 80A891B0  7C 7E 1B 78 */	mr r30, r3
/* 80A891B4  7C 9F 23 78 */	mr r31, r4
/* 80A891B8  38 61 00 20 */	addi r3, r1, 0x20
/* 80A891BC  4B 5E EA AD */	bl __ct__11dBgS_LinChkFv
/* 80A891C0  28 1F 00 00 */	cmplwi r31, 0
/* 80A891C4  41 82 00 AC */	beq lbl_80A89270
/* 80A891C8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80A891CC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A891D0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80A891D4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80A891D8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80A891DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A891E0  3C 60 80 A9 */	lis r3, lit_4139@ha /* 0x80A92434@ha */
/* 80A891E4  C0 03 24 34 */	lfs f0, lit_4139@l(r3)  /* 0x80A92434@l */
/* 80A891E8  EC 01 00 2A */	fadds f0, f1, f0
/* 80A891EC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80A891F0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80A891F4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A891F8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 80A891FC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A89200  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80A89204  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A89208  3C 60 80 A9 */	lis r3, lit_4183@ha /* 0x80A9243C@ha */
/* 80A8920C  C0 03 24 3C */	lfs f0, lit_4183@l(r3)  /* 0x80A9243C@l */
/* 80A89210  EC 01 00 2A */	fadds f0, f1, f0
/* 80A89214  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A89218  38 61 00 20 */	addi r3, r1, 0x20
/* 80A8921C  38 81 00 14 */	addi r4, r1, 0x14
/* 80A89220  38 A1 00 08 */	addi r5, r1, 8
/* 80A89224  7F C6 F3 78 */	mr r6, r30
/* 80A89228  4B 5E EB 3D */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A8922C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A89230  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A89234  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80A89238  38 81 00 20 */	addi r4, r1, 0x20
/* 80A8923C  4B 5E B1 79 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 80A89240  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A89244  41 82 00 18 */	beq lbl_80A8925C
/* 80A89248  38 61 00 20 */	addi r3, r1, 0x20
/* 80A8924C  38 80 FF FF */	li r4, -1
/* 80A89250  4B 5E EA 8D */	bl __dt__11dBgS_LinChkFv
/* 80A89254  38 60 00 01 */	li r3, 1
/* 80A89258  48 00 00 28 */	b lbl_80A89280
lbl_80A8925C:
/* 80A8925C  38 61 00 20 */	addi r3, r1, 0x20
/* 80A89260  38 80 FF FF */	li r4, -1
/* 80A89264  4B 5E EA 79 */	bl __dt__11dBgS_LinChkFv
/* 80A89268  38 60 00 00 */	li r3, 0
/* 80A8926C  48 00 00 14 */	b lbl_80A89280
lbl_80A89270:
/* 80A89270  38 61 00 20 */	addi r3, r1, 0x20
/* 80A89274  38 80 FF FF */	li r4, -1
/* 80A89278  4B 5E EA 65 */	bl __dt__11dBgS_LinChkFv
/* 80A8927C  38 60 00 01 */	li r3, 1
lbl_80A89280:
/* 80A89280  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 80A89284  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 80A89288  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80A8928C  7C 08 03 A6 */	mtlr r0
/* 80A89290  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80A89294  4E 80 00 20 */	blr 
