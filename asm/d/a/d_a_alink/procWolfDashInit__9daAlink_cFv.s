lbl_8012D474:
/* 8012D474  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8012D478  7C 08 02 A6 */	mflr r0
/* 8012D47C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8012D480  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8012D484  7C 7F 1B 78 */	mr r31, r3
/* 8012D488  38 80 00 F3 */	li r4, 0xf3
/* 8012D48C  4B F9 4A E1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8012D490  7F E3 FB 78 */	mr r3, r31
/* 8012D494  38 80 00 73 */	li r4, 0x73
/* 8012D498  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D49C  38 A5 EE 28 */	addi r5, r5, m__20daAlinkHIO_wlMove_c0@l
/* 8012D4A0  38 A5 00 28 */	addi r5, r5, 0x28
/* 8012D4A4  4B FF C3 A5 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8012D4A8  7F E3 FB 78 */	mr r3, r31
/* 8012D4AC  38 80 00 03 */	li r4, 3
/* 8012D4B0  4B FF 3D 11 */	bl setFootEffectProcType__9daAlink_cFi
/* 8012D4B4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8012D4B8  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8012D4BC  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8012D4C0  64 00 00 40 */	oris r0, r0, 0x40
/* 8012D4C4  90 1F 05 74 */	stw r0, 0x574(r31)
/* 8012D4C8  38 00 00 00 */	li r0, 0
/* 8012D4CC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8012D4D0  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8012D4D4  7F E3 FB 78 */	mr r3, r31
/* 8012D4D8  4B FF AA 49 */	bl checkWolfSlowDash__9daAlink_cFv
/* 8012D4DC  2C 03 00 00 */	cmpwi r3, 0
/* 8012D4E0  41 82 00 34 */	beq lbl_8012D514
/* 8012D4E4  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D4E8  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012D4EC  A8 03 00 5A */	lha r0, 0x5a(r3)
/* 8012D4F0  B0 1F 30 D0 */	sth r0, 0x30d0(r31)
/* 8012D4F4  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 8012D4F8  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 8012D4FC  C0 1F 33 98 */	lfs f0, 0x3398(r31)
/* 8012D500  C0 23 00 E4 */	lfs f1, 0xe4(r3)
/* 8012D504  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8012D508  40 80 00 70 */	bge lbl_8012D578
/* 8012D50C  D0 3F 33 98 */	stfs f1, 0x3398(r31)
/* 8012D510  48 00 00 68 */	b lbl_8012D578
lbl_8012D514:
/* 8012D514  88 1F 2F C7 */	lbz r0, 0x2fc7(r31)
/* 8012D518  28 00 00 02 */	cmplwi r0, 2
/* 8012D51C  40 82 00 30 */	bne lbl_8012D54C
/* 8012D520  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D524  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012D528  C0 03 00 F0 */	lfs f0, 0xf0(r3)
/* 8012D52C  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 8012D530  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 8012D534  C0 1F 33 98 */	lfs f0, 0x3398(r31)
/* 8012D538  C0 23 00 F4 */	lfs f1, 0xf4(r3)
/* 8012D53C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8012D540  40 80 00 38 */	bge lbl_8012D578
/* 8012D544  D0 3F 33 98 */	stfs f1, 0x3398(r31)
/* 8012D548  48 00 00 30 */	b lbl_8012D578
lbl_8012D54C:
/* 8012D54C  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlMove_c0@ha
/* 8012D550  38 63 EE 28 */	addi r3, r3, m__20daAlinkHIO_wlMove_c0@l
/* 8012D554  A8 03 00 56 */	lha r0, 0x56(r3)
/* 8012D558  B0 1F 30 D0 */	sth r0, 0x30d0(r31)
/* 8012D55C  C0 03 00 C8 */	lfs f0, 0xc8(r3)
/* 8012D560  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 8012D564  C0 1F 33 98 */	lfs f0, 0x3398(r31)
/* 8012D568  C0 23 00 D4 */	lfs f1, 0xd4(r3)
/* 8012D56C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8012D570  40 80 00 08 */	bge lbl_8012D578
/* 8012D574  D0 3F 33 98 */	stfs f1, 0x3398(r31)
lbl_8012D578:
/* 8012D578  38 60 00 01 */	li r3, 1
/* 8012D57C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8012D580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8012D584  7C 08 03 A6 */	mtlr r0
/* 8012D588  38 21 00 10 */	addi r1, r1, 0x10
/* 8012D58C  4E 80 00 20 */	blr 
