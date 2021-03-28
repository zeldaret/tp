lbl_8023DBE4:
/* 8023DBE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8023DBE8  7C 08 02 A6 */	mflr r0
/* 8023DBEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023DBF0  39 61 00 20 */	addi r11, r1, 0x20
/* 8023DBF4  48 12 45 E9 */	bl _savegpr_29
/* 8023DBF8  7C 7D 1B 78 */	mr r29, r3
/* 8023DBFC  3B E0 00 00 */	li r31, 0
/* 8023DC00  B3 E3 00 5A */	sth r31, 0x5a(r3)
/* 8023DC04  C0 02 B1 B8 */	lfs f0, lit_3978(r2)
/* 8023DC08  D0 03 00 48 */	stfs f0, 0x48(r3)
/* 8023DC0C  3B C0 00 00 */	li r30, 0
lbl_8023DC10:
/* 8023DC10  38 1F 00 20 */	addi r0, r31, 0x20
/* 8023DC14  7C 7D 00 2E */	lwzx r3, r29, r0
/* 8023DC18  C0 22 B1 C0 */	lfs f1, lit_3980(r2)
/* 8023DC1C  48 01 7B B5 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8023DC20  3B DE 00 01 */	addi r30, r30, 1
/* 8023DC24  2C 1E 00 02 */	cmpwi r30, 2
/* 8023DC28  3B FF 00 04 */	addi r31, r31, 4
/* 8023DC2C  41 80 FF E4 */	blt lbl_8023DC10
/* 8023DC30  38 00 00 51 */	li r0, 0x51
/* 8023DC34  90 01 00 08 */	stw r0, 8(r1)
/* 8023DC38  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8023DC3C  38 81 00 08 */	addi r4, r1, 8
/* 8023DC40  38 A0 00 00 */	li r5, 0
/* 8023DC44  38 C0 00 00 */	li r6, 0
/* 8023DC48  38 E0 00 00 */	li r7, 0
/* 8023DC4C  C0 22 B1 E0 */	lfs f1, lit_4211(r2)
/* 8023DC50  FC 40 08 90 */	fmr f2, f1
/* 8023DC54  C0 62 B1 D0 */	lfs f3, lit_4121(r2)
/* 8023DC58  FC 80 18 90 */	fmr f4, f3
/* 8023DC5C  39 00 00 00 */	li r8, 0
/* 8023DC60  48 06 DD 25 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8023DC64  39 61 00 20 */	addi r11, r1, 0x20
/* 8023DC68  48 12 45 C1 */	bl _restgpr_29
/* 8023DC6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8023DC70  7C 08 03 A6 */	mtlr r0
/* 8023DC74  38 21 00 20 */	addi r1, r1, 0x20
/* 8023DC78  4E 80 00 20 */	blr 
