lbl_800E158C:
/* 800E158C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E1590  7C 08 02 A6 */	mflr r0
/* 800E1594  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E1598  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E159C  7C 7F 1B 78 */	mr r31, r3
/* 800E15A0  4B FD 7C B5 */	bl checkNoUpperAnime__9daAlink_cCFv
/* 800E15A4  2C 03 00 00 */	cmpwi r3, 0
/* 800E15A8  41 82 00 40 */	beq lbl_800E15E8
/* 800E15AC  7F E3 FB 78 */	mr r3, r31
/* 800E15B0  4B FF FD C5 */	bl getCopyRodControllActor__9daAlink_cFv
/* 800E15B4  28 03 00 00 */	cmplwi r3, 0
/* 800E15B8  41 82 00 30 */	beq lbl_800E15E8
/* 800E15BC  7F E3 FB 78 */	mr r3, r31
/* 800E15C0  38 80 02 02 */	li r4, 0x202
/* 800E15C4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E15C8  C0 42 92 C4 */	lfs f2, lit_6109(r2)
/* 800E15CC  4B FC BD DD */	bl setUpperAnimeBaseSpeed__9daAlink_cFUsff
/* 800E15D0  38 00 00 02 */	li r0, 2
/* 800E15D4  98 1F 2F 96 */	stb r0, 0x2f96(r31)
/* 800E15D8  38 00 00 05 */	li r0, 5
/* 800E15DC  98 1F 2F 97 */	stb r0, 0x2f97(r31)
/* 800E15E0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E15E4  D0 1F 33 E8 */	stfs f0, 0x33e8(r31)
lbl_800E15E8:
/* 800E15E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E15EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E15F0  7C 08 03 A6 */	mtlr r0
/* 800E15F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800E15F8  4E 80 00 20 */	blr 
