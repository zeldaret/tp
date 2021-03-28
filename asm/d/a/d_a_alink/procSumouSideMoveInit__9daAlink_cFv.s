lbl_800EB208:
/* 800EB208  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800EB20C  7C 08 02 A6 */	mflr r0
/* 800EB210  90 01 00 14 */	stw r0, 0x14(r1)
/* 800EB214  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800EB218  7C 7F 1B 78 */	mr r31, r3
/* 800EB21C  38 80 00 D0 */	li r4, 0xd0
/* 800EB220  4B FD 6D 4D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800EB224  38 00 00 16 */	li r0, 0x16
/* 800EB228  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 800EB22C  38 00 00 03 */	li r0, 3
/* 800EB230  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800EB234  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800EB238  38 03 C0 00 */	addi r0, r3, -16384
/* 800EB23C  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800EB240  3C 60 80 39 */	lis r3, m__21daAlinkHIO_atnMove_c0@ha
/* 800EB244  38 63 D7 14 */	addi r3, r3, m__21daAlinkHIO_atnMove_c0@l
/* 800EB248  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800EB24C  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 800EB250  7F E3 FB 78 */	mr r3, r31
/* 800EB254  38 80 01 41 */	li r4, 0x141
/* 800EB258  4B FC 1D 29 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800EB25C  38 00 01 41 */	li r0, 0x141
/* 800EB260  90 1F 31 98 */	stw r0, 0x3198(r31)
/* 800EB264  7F E3 FB 78 */	mr r3, r31
/* 800EB268  4B FF F6 C5 */	bl setSumouPunchStatus__9daAlink_cFv
/* 800EB26C  7F E3 FB 78 */	mr r3, r31
/* 800EB270  38 80 00 15 */	li r4, 0x15
/* 800EB274  4B FC 7F F5 */	bl setDoStatusEmphasys__9daAlink_cFUc
/* 800EB278  38 00 00 05 */	li r0, 5
/* 800EB27C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800EB280  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800EB284  98 03 5E 81 */	stb r0, 0x5e81(r3)
/* 800EB288  38 00 00 0C */	li r0, 0xc
/* 800EB28C  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 800EB290  7F E3 FB 78 */	mr r3, r31
/* 800EB294  38 80 00 05 */	li r4, 5
/* 800EB298  48 03 5F 29 */	bl setFootEffectProcType__9daAlink_cFi
/* 800EB29C  38 00 00 0F */	li r0, 0xf
/* 800EB2A0  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 800EB2A4  38 60 00 01 */	li r3, 1
/* 800EB2A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800EB2AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800EB2B0  7C 08 03 A6 */	mtlr r0
/* 800EB2B4  38 21 00 10 */	addi r1, r1, 0x10
/* 800EB2B8  4E 80 00 20 */	blr 
