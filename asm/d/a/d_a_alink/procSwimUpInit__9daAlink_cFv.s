lbl_801040F8:
/* 801040F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801040FC  7C 08 02 A6 */	mflr r0
/* 80104100  90 01 00 14 */	stw r0, 0x14(r1)
/* 80104104  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80104108  7C 7F 1B 78 */	mr r31, r3
/* 8010410C  38 80 00 79 */	li r4, 0x79
/* 80104110  4B FB DE 5D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80104114  A8 1F 30 00 */	lha r0, 0x3000(r31)
/* 80104118  2C 00 00 00 */	cmpwi r0, 0
/* 8010411C  41 82 00 1C */	beq lbl_80104138
/* 80104120  7F E3 FB 78 */	mr r3, r31
/* 80104124  4B FB BC 8D */	bl checkZoraWearAbility__9daAlink_cCFv
/* 80104128  2C 03 00 00 */	cmpwi r3, 0
/* 8010412C  40 82 00 0C */	bne lbl_80104138
/* 80104130  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80104134  D0 1F 33 98 */	stfs f0, 0x3398(r31)
lbl_80104138:
/* 80104138  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010413C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80104140  C0 1F 33 B4 */	lfs f0, 0x33b4(r31)
/* 80104144  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80104148  38 60 00 00 */	li r3, 0
/* 8010414C  B0 7F 30 80 */	sth r3, 0x3080(r31)
/* 80104150  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80104154  60 00 01 00 */	ori r0, r0, 0x100
/* 80104158  90 1F 05 70 */	stw r0, 0x570(r31)
/* 8010415C  88 1F 2D 73 */	lbz r0, 0x2d73(r31)
/* 80104160  50 60 36 72 */	rlwimi r0, r3, 6, 0x19, 0x19
/* 80104164  98 1F 2D 73 */	stb r0, 0x2d73(r31)
/* 80104168  7F E3 FB 78 */	mr r3, r31
/* 8010416C  38 80 00 C2 */	li r4, 0xc2
/* 80104170  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 80104174  38 A5 ED 2C */	addi r5, r5, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 80104178  4B FA 8F 7D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 8010417C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80104180  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80104184  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80104188  64 00 00 10 */	oris r0, r0, 0x10
/* 8010418C  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80104190  38 00 00 00 */	li r0, 0
/* 80104194  B0 1F 30 08 */	sth r0, 0x3008(r31)
/* 80104198  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 8010419C  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha /* 0x8038ED2C@ha */
/* 801041A0  38 63 ED 2C */	addi r3, r3, m__18daAlinkHIO_swim_c0@l /* 0x8038ED2C@l */
/* 801041A4  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 801041A8  D0 1F 34 80 */	stfs f0, 0x3480(r31)
/* 801041AC  B0 1F 30 00 */	sth r0, 0x3000(r31)
/* 801041B0  7F E3 FB 78 */	mr r3, r31
/* 801041B4  3C 80 00 03 */	lis r4, 0x0003 /* 0x0003001D@ha */
/* 801041B8  38 84 00 1D */	addi r4, r4, 0x001D /* 0x0003001D@l */
/* 801041BC  4B FB AF D9 */	bl seStartMapInfo__9daAlink_cFUl
/* 801041C0  7F E3 FB 78 */	mr r3, r31
/* 801041C4  4B FF D7 71 */	bl swimDeleteItem__9daAlink_cFv
/* 801041C8  38 00 00 0F */	li r0, 0xf
/* 801041CC  98 1F 2F CD */	stb r0, 0x2fcd(r31)
/* 801041D0  38 60 00 01 */	li r3, 1
/* 801041D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801041D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801041DC  7C 08 03 A6 */	mtlr r0
/* 801041E0  38 21 00 10 */	addi r1, r1, 0x10
/* 801041E4  4E 80 00 20 */	blr 
