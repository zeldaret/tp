lbl_80CCD5DC:
/* 80CCD5DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCD5E0  7C 08 02 A6 */	mflr r0
/* 80CCD5E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCD5E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CCD5EC  7C 7F 1B 78 */	mr r31, r3
/* 80CCD5F0  80 03 05 B8 */	lwz r0, 0x5b8(r3)
/* 80CCD5F4  2C 00 00 00 */	cmpwi r0, 0
/* 80CCD5F8  41 82 00 18 */	beq lbl_80CCD610
/* 80CCD5FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCD600  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCD604  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80CCD608  38 80 00 0F */	li r4, 0xf
/* 80CCD60C  4B 3A 27 89 */	bl StopQuake__12dVibration_cFi
lbl_80CCD610:
/* 80CCD610  38 00 00 00 */	li r0, 0
/* 80CCD614  B0 1F 05 B0 */	sth r0, 0x5b0(r31)
/* 80CCD618  B0 1F 05 B2 */	sth r0, 0x5b2(r31)
/* 80CCD61C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 80CCD620  3C 60 80 CD */	lis r3, lit_3956@ha /* 0x80CCDA0C@ha */
/* 80CCD624  C0 03 DA 0C */	lfs f0, lit_3956@l(r3)  /* 0x80CCDA0C@l */
/* 80CCD628  D0 1F 05 BC */	stfs f0, 0x5bc(r31)
/* 80CCD62C  38 00 00 01 */	li r0, 1
/* 80CCD630  98 1F 05 D5 */	stb r0, 0x5d5(r31)
/* 80CCD634  98 1F 05 D4 */	stb r0, 0x5d4(r31)
/* 80CCD638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CCD63C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCD640  7C 08 03 A6 */	mtlr r0
/* 80CCD644  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCD648  4E 80 00 20 */	blr 
