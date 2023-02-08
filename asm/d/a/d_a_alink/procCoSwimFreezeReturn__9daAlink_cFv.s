lbl_800DC474:
/* 800DC474  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DC478  7C 08 02 A6 */	mflr r0
/* 800DC47C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800DC480  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DC484  7C 7F 1B 78 */	mr r31, r3
/* 800DC488  A8 83 30 0C */	lha r4, 0x300c(r3)
/* 800DC48C  2C 04 00 00 */	cmpwi r4, 0
/* 800DC490  40 82 00 98 */	bne lbl_800DC528
/* 800DC494  38 80 00 04 */	li r4, 4
/* 800DC498  38 A0 00 01 */	li r5, 1
/* 800DC49C  48 03 C6 99 */	bl checkRestartDead__9daAlink_cFii
/* 800DC4A0  2C 03 00 00 */	cmpwi r3, 0
/* 800DC4A4  41 82 00 14 */	beq lbl_800DC4B8
/* 800DC4A8  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800DC4AC  64 00 40 00 */	oris r0, r0, 0x4000
/* 800DC4B0  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800DC4B4  48 00 00 7C */	b lbl_800DC530
lbl_800DC4B8:
/* 800DC4B8  38 00 00 04 */	li r0, 4
/* 800DC4BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 800DC4C0  7F E3 FB 78 */	mr r3, r31
/* 800DC4C4  38 80 00 04 */	li r4, 4
/* 800DC4C8  38 A1 00 0C */	addi r5, r1, 0xc
/* 800DC4CC  4B FE 19 55 */	bl setLastSceneDamage__9daAlink_cFiPUl
/* 800DC4D0  38 00 00 33 */	li r0, 0x33
/* 800DC4D4  90 01 00 08 */	stw r0, 8(r1)
/* 800DC4D8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 800DC4DC  38 81 00 08 */	addi r4, r1, 8
/* 800DC4E0  38 A0 00 00 */	li r5, 0
/* 800DC4E4  38 C0 00 00 */	li r6, 0
/* 800DC4E8  38 E0 00 00 */	li r7, 0
/* 800DC4EC  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800DC4F0  FC 40 08 90 */	fmr f2, f1
/* 800DC4F4  C0 62 92 BC */	lfs f3, lit_6041(r2)
/* 800DC4F8  FC 80 18 90 */	fmr f4, f3
/* 800DC4FC  39 00 00 00 */	li r8, 0
/* 800DC500  48 1C F4 85 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 800DC504  38 60 00 03 */	li r3, 3
/* 800DC508  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800DC50C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 800DC510  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 800DC514  7C 05 07 74 */	extsb r5, r0
/* 800DC518  A8 DF 04 E6 */	lha r6, 0x4e6(r31)
/* 800DC51C  38 E0 FF FF */	li r7, -1
/* 800DC520  4B F4 AC 51 */	bl dStage_changeScene__FifUlScsi
/* 800DC524  48 00 00 0C */	b lbl_800DC530
lbl_800DC528:
/* 800DC528  38 04 FF FF */	addi r0, r4, -1
/* 800DC52C  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_800DC530:
/* 800DC530  38 60 00 01 */	li r3, 1
/* 800DC534  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DC538  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DC53C  7C 08 03 A6 */	mtlr r0
/* 800DC540  38 21 00 20 */	addi r1, r1, 0x20
/* 800DC544  4E 80 00 20 */	blr 
