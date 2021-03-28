lbl_800FC178:
/* 800FC178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FC17C  7C 08 02 A6 */	mflr r0
/* 800FC180  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FC184  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FC188  7C 7F 1B 78 */	mr r31, r3
/* 800FC18C  88 03 2F 91 */	lbz r0, 0x2f91(r3)
/* 800FC190  28 00 00 03 */	cmplwi r0, 3
/* 800FC194  40 82 00 20 */	bne lbl_800FC1B4
/* 800FC198  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800FC19C  28 00 00 FF */	cmplwi r0, 0xff
/* 800FC1A0  41 82 00 14 */	beq lbl_800FC1B4
/* 800FC1A4  38 80 00 5C */	li r4, 0x5c
/* 800FC1A8  38 A0 00 00 */	li r5, 0
/* 800FC1AC  4B FC 6C 31 */	bl procPreActionUnequipInit__9daAlink_cFiP10fopAc_ac_c
/* 800FC1B0  48 00 00 7C */	b lbl_800FC22C
lbl_800FC1B4:
/* 800FC1B4  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 800FC1B8  28 00 00 00 */	cmplwi r0, 0
/* 800FC1BC  40 82 00 24 */	bne lbl_800FC1E0
/* 800FC1C0  7F E3 FB 78 */	mr r3, r31
/* 800FC1C4  4B FB 40 F9 */	bl setFrontWallType__9daAlink_cFv
/* 800FC1C8  88 1F 2F 91 */	lbz r0, 0x2f91(r31)
/* 800FC1CC  28 00 00 03 */	cmplwi r0, 3
/* 800FC1D0  41 82 00 10 */	beq lbl_800FC1E0
/* 800FC1D4  7F E3 FB 78 */	mr r3, r31
/* 800FC1D8  4B FB 97 15 */	bl checkWaitAction__9daAlink_cFv
/* 800FC1DC  48 00 00 50 */	b lbl_800FC22C
lbl_800FC1E0:
/* 800FC1E0  7F E3 FB 78 */	mr r3, r31
/* 800FC1E4  38 80 00 5C */	li r4, 0x5c
/* 800FC1E8  4B FC 5D 85 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FC1EC  7F E3 FB 78 */	mr r3, r31
/* 800FC1F0  38 80 00 91 */	li r4, 0x91
/* 800FC1F4  3C A0 80 39 */	lis r5, m__23daAlinkHIO_wallCatch_c0@ha
/* 800FC1F8  38 A5 E1 64 */	addi r5, r5, m__23daAlinkHIO_wallCatch_c0@l
/* 800FC1FC  38 A5 00 3C */	addi r5, r5, 0x3c
/* 800FC200  4B FB 0E F5 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800FC204  A8 7F 30 6E */	lha r3, 0x306e(r31)
/* 800FC208  3C 63 00 01 */	addis r3, r3, 1
/* 800FC20C  38 03 80 00 */	addi r0, r3, -32768
/* 800FC210  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800FC214  88 1F 2F 91 */	lbz r0, 0x2f91(r31)
/* 800FC218  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 800FC21C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FC220  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800FC224  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800FC228  38 60 00 01 */	li r3, 1
lbl_800FC22C:
/* 800FC22C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FC230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FC234  7C 08 03 A6 */	mtlr r0
/* 800FC238  38 21 00 10 */	addi r1, r1, 0x10
/* 800FC23C  4E 80 00 20 */	blr 
