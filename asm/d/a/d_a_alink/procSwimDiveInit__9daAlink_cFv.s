lbl_80104958:
/* 80104958  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8010495C  7C 08 02 A6 */	mflr r0
/* 80104960  90 01 00 24 */	stw r0, 0x24(r1)
/* 80104964  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80104968  7C 7F 1B 78 */	mr r31, r3
/* 8010496C  38 80 00 7C */	li r4, 0x7c
/* 80104970  4B FB D5 FD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80104974  7F E3 FB 78 */	mr r3, r31
/* 80104978  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8010497C  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 80104980  38 80 00 00 */	li r4, 0
/* 80104984  4B FB 6D ED */	bl setSpecialGravity__9daAlink_cFffi
/* 80104988  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8010498C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80104990  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 80104994  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80104998  41 82 00 44 */	beq lbl_801049DC
/* 8010499C  38 00 00 01 */	li r0, 1
/* 801049A0  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 801049A4  7F E3 FB 78 */	mr r3, r31
/* 801049A8  38 80 00 C7 */	li r4, 0xc7
/* 801049AC  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha
/* 801049B0  38 A5 ED 2C */	addi r5, r5, m__18daAlinkHIO_swim_c0@l
/* 801049B4  38 A5 00 14 */	addi r5, r5, 0x14
/* 801049B8  4B FA 87 3D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 801049BC  7F E3 FB 78 */	mr r3, r31
/* 801049C0  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001005B@ha */
/* 801049C4  38 84 00 5B */	addi r4, r4, 0x005B /* 0x0001005B@l */
/* 801049C8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 801049CC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 801049D0  7D 89 03 A6 */	mtctr r12
/* 801049D4  4E 80 04 21 */	bctrl 
/* 801049D8  48 00 00 24 */	b lbl_801049FC
lbl_801049DC:
/* 801049DC  38 00 00 00 */	li r0, 0
/* 801049E0  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 801049E4  7F E3 FB 78 */	mr r3, r31
/* 801049E8  38 80 00 C7 */	li r4, 0xc7
/* 801049EC  3C A0 80 39 */	lis r5, m__18daAlinkHIO_swim_c0@ha
/* 801049F0  38 A5 ED 2C */	addi r5, r5, m__18daAlinkHIO_swim_c0@l
/* 801049F4  38 A5 00 28 */	addi r5, r5, 0x28
/* 801049F8  4B FA 86 FD */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
lbl_801049FC:
/* 801049FC  38 00 00 10 */	li r0, 0x10
/* 80104A00  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 80104A04  3C 60 80 42 */	lis r3, l_waitBaseAnime@ha
/* 80104A08  C4 03 55 14 */	lfsu f0, l_waitBaseAnime@l(r3)
/* 80104A0C  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 80104A10  C0 03 00 04 */	lfs f0, 4(r3)
/* 80104A14  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 80104A18  C0 03 00 08 */	lfs f0, 8(r3)
/* 80104A1C  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 80104A20  3C 60 80 39 */	lis r3, m__18daAlinkHIO_swim_c0@ha
/* 80104A24  38 83 ED 2C */	addi r4, r3, m__18daAlinkHIO_swim_c0@l
/* 80104A28  C0 04 00 60 */	lfs f0, 0x60(r4)
/* 80104A2C  D0 1F 34 80 */	stfs f0, 0x3480(r31)
/* 80104A30  38 00 00 00 */	li r0, 0
/* 80104A34  B0 1F 30 10 */	sth r0, 0x3010(r31)
/* 80104A38  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80104A3C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80104A40  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 80104A44  64 00 00 10 */	oris r0, r0, 0x10
/* 80104A48  90 03 5F 18 */	stw r0, 0x5f18(r3)
/* 80104A4C  38 00 00 1E */	li r0, 0x1e
/* 80104A50  B0 1F 30 00 */	sth r0, 0x3000(r31)
/* 80104A54  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 80104A58  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 80104A5C  C0 42 92 B8 */	lfs f2, lit_6040(r2)
/* 80104A60  A8 04 00 28 */	lha r0, 0x28(r4)
/* 80104A64  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 80104A68  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80104A6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80104A70  3C 00 43 30 */	lis r0, 0x4330
/* 80104A74  90 01 00 08 */	stw r0, 8(r1)
/* 80104A78  C8 01 00 08 */	lfd f0, 8(r1)
/* 80104A7C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80104A80  EC 02 00 24 */	fdivs f0, f2, f0
/* 80104A84  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 80104A88  38 60 00 01 */	li r3, 1
/* 80104A8C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80104A90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80104A94  7C 08 03 A6 */	mtlr r0
/* 80104A98  38 21 00 20 */	addi r1, r1, 0x20
/* 80104A9C  4E 80 00 20 */	blr 
