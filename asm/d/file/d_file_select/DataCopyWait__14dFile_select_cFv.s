lbl_8018A4D0:
/* 8018A4D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018A4D4  7C 08 02 A6 */	mflr r0
/* 8018A4D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018A4DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8018A4E0  7C 7F 1B 78 */	mr r31, r3
/* 8018A4E4  A8 63 03 AC */	lha r3, 0x3ac(r3)
/* 8018A4E8  2C 03 00 00 */	cmpwi r3, 0
/* 8018A4EC  41 82 00 0C */	beq lbl_8018A4F8
/* 8018A4F0  38 03 FF FF */	addi r0, r3, -1
/* 8018A4F4  B0 1F 03 AC */	sth r0, 0x3ac(r31)
lbl_8018A4F8:
/* 8018A4F8  38 00 00 A9 */	li r0, 0xa9
/* 8018A4FC  90 01 00 08 */	stw r0, 8(r1)
/* 8018A500  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8018A504  38 81 00 08 */	addi r4, r1, 8
/* 8018A508  38 A0 00 00 */	li r5, 0
/* 8018A50C  38 C0 00 00 */	li r6, 0
/* 8018A510  38 E0 00 00 */	li r7, 0
/* 8018A514  C0 22 9F 40 */	lfs f1, lit_4611(r2)
/* 8018A518  FC 40 08 90 */	fmr f2, f1
/* 8018A51C  C0 62 9F 44 */	lfs f3, lit_4612(r2)
/* 8018A520  FC 80 18 90 */	fmr f4, f3
/* 8018A524  39 00 00 00 */	li r8, 0
/* 8018A528  48 12 1F E5 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8018A52C  3C 60 80 3F */	lis r3, g_mDoMemCd_control@ha
/* 8018A530  38 63 AF 40 */	addi r3, r3, g_mDoMemCd_control@l
/* 8018A534  4B E8 C7 AD */	bl SaveSync__15mDoMemCd_Ctrl_cFv
/* 8018A538  90 7F 03 B4 */	stw r3, 0x3b4(r31)
/* 8018A53C  80 1F 03 B4 */	lwz r0, 0x3b4(r31)
/* 8018A540  2C 00 00 00 */	cmpwi r0, 0
/* 8018A544  41 82 00 0C */	beq lbl_8018A550
/* 8018A548  38 00 00 22 */	li r0, 0x22
/* 8018A54C  98 1F 02 6F */	stb r0, 0x26f(r31)
lbl_8018A550:
/* 8018A550  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8018A554  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018A558  7C 08 03 A6 */	mtlr r0
/* 8018A55C  38 21 00 20 */	addi r1, r1, 0x20
/* 8018A560  4E 80 00 20 */	blr 
