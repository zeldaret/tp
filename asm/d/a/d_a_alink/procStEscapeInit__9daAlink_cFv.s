lbl_800DB5B0:
/* 800DB5B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DB5B4  7C 08 02 A6 */	mflr r0
/* 800DB5B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DB5BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DB5C0  7C 7F 1B 78 */	mr r31, r3
/* 800DB5C4  38 80 00 77 */	li r4, 0x77
/* 800DB5C8  4B FE 69 A5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800DB5CC  7F E3 FB 78 */	mr r3, r31
/* 800DB5D0  38 80 00 BA */	li r4, 0xba
/* 800DB5D4  3C A0 80 39 */	lis r5, m__23daAlinkHIO_damCaught_c0@ha
/* 800DB5D8  38 A5 E4 9C */	addi r5, r5, m__23daAlinkHIO_damCaught_c0@l
/* 800DB5DC  4B FD 1B 19 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800DB5E0  C0 02 93 74 */	lfs f0, lit_8502(r2)
/* 800DB5E4  D0 1F 1F E0 */	stfs f0, 0x1fe0(r31)
/* 800DB5E8  80 7F 1F 2C */	lwz r3, 0x1f2c(r31)
/* 800DB5EC  D0 03 00 08 */	stfs f0, 8(r3)
/* 800DB5F0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800DB5F4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800DB5F8  38 60 00 01 */	li r3, 1
/* 800DB5FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DB600  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DB604  7C 08 03 A6 */	mtlr r0
/* 800DB608  38 21 00 10 */	addi r1, r1, 0x10
/* 800DB60C  4E 80 00 20 */	blr 
