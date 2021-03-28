lbl_800C6798:
/* 800C6798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C679C  7C 08 02 A6 */	mflr r0
/* 800C67A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C67A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C67A8  7C 7F 1B 78 */	mr r31, r3
/* 800C67AC  38 9F 1F D0 */	addi r4, r31, 0x1fd0
/* 800C67B0  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 800C67B4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800C67B8  41 82 00 0C */	beq lbl_800C67C4
/* 800C67BC  4B FF E1 91 */	bl procFrontRollInit__9daAlink_cFv
/* 800C67C0  48 00 00 7C */	b lbl_800C683C
lbl_800C67C4:
/* 800C67C4  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800C67C8  2C 00 00 00 */	cmpwi r0, 0
/* 800C67CC  40 82 00 40 */	bne lbl_800C680C
/* 800C67D0  7C 83 23 78 */	mr r3, r4
/* 800C67D4  48 09 7C F9 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C67D8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C67DC  41 82 00 5C */	beq lbl_800C6838
/* 800C67E0  7F E3 FB 78 */	mr r3, r31
/* 800C67E4  38 80 01 9B */	li r4, 0x19b
/* 800C67E8  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha
/* 800C67EC  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l
/* 800C67F0  38 A5 00 3C */	addi r5, r5, 0x3c
/* 800C67F4  4B FE 69 01 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800C67F8  38 00 00 01 */	li r0, 1
/* 800C67FC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800C6800  38 00 00 02 */	li r0, 2
/* 800C6804  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800C6808  48 00 00 30 */	b lbl_800C6838
lbl_800C680C:
/* 800C680C  38 00 00 02 */	li r0, 2
/* 800C6810  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800C6814  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 800C6818  C0 02 92 C4 */	lfs f0, lit_6109(r2)
/* 800C681C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C6820  4C 41 13 82 */	cror 2, 1, 2
/* 800C6824  40 82 00 14 */	bne lbl_800C6838
/* 800C6828  38 7F 33 98 */	addi r3, r31, 0x3398
/* 800C682C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C6830  C0 42 92 98 */	lfs f2, lit_5943(r2)
/* 800C6834  48 1A 9F 0D */	bl cLib_chaseF__FPfff
lbl_800C6838:
/* 800C6838  38 60 00 01 */	li r3, 1
lbl_800C683C:
/* 800C683C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C6840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C6844  7C 08 03 A6 */	mtlr r0
/* 800C6848  38 21 00 10 */	addi r1, r1, 0x10
/* 800C684C  4E 80 00 20 */	blr 
