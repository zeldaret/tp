lbl_801159F0:
/* 801159F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801159F4  7C 08 02 A6 */	mflr r0
/* 801159F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 801159FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80115A00  7C 7F 1B 78 */	mr r31, r3
/* 80115A04  38 80 00 DB */	li r4, 0xdb
/* 80115A08  4B FA C5 65 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 80115A0C  A8 1F 30 18 */	lha r0, 0x3018(r31)
/* 80115A10  2C 00 00 08 */	cmpwi r0, 8
/* 80115A14  40 82 00 2C */	bne lbl_80115A40
/* 80115A18  38 00 00 01 */	li r0, 1
/* 80115A1C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 80115A20  7F E3 FB 78 */	mr r3, r31
/* 80115A24  38 80 01 66 */	li r4, 0x166
/* 80115A28  3C A0 80 39 */	lis r5, m__22daAlinkHIO_ironBall_c0@ha /* 0x8038EA70@ha */
/* 80115A2C  38 A5 EA 70 */	addi r5, r5, m__22daAlinkHIO_ironBall_c0@l /* 0x8038EA70@l */
/* 80115A30  4B F9 76 C5 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 80115A34  38 00 00 0C */	li r0, 0xc
/* 80115A38  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 80115A3C  48 00 00 30 */	b lbl_80115A6C
lbl_80115A40:
/* 80115A40  7F E3 FB 78 */	mr r3, r31
/* 80115A44  38 80 01 65 */	li r4, 0x165
/* 80115A48  3C A0 80 39 */	lis r5, m__22daAlinkHIO_ironBall_c0@ha /* 0x8038EA70@ha */
/* 80115A4C  38 A5 EA 70 */	addi r5, r5, m__22daAlinkHIO_ironBall_c0@l /* 0x8038EA70@l */
/* 80115A50  C0 25 00 3C */	lfs f1, 0x3c(r5)
/* 80115A54  C0 45 00 40 */	lfs f2, 0x40(r5)
/* 80115A58  4B F9 75 89 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 80115A5C  38 00 00 0C */	li r0, 0xc
/* 80115A60  98 1F 2F 99 */	stb r0, 0x2f99(r31)
/* 80115A64  38 00 00 00 */	li r0, 0
/* 80115A68  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_80115A6C:
/* 80115A6C  3C 60 80 42 */	lis r3, l_ironBallBaseAnime@ha /* 0x8042552C@ha */
/* 80115A70  C4 03 55 2C */	lfsu f0, l_ironBallBaseAnime@l(r3)  /* 0x8042552C@l */
/* 80115A74  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 80115A78  C0 03 00 04 */	lfs f0, 4(r3)
/* 80115A7C  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 80115A80  C0 03 00 08 */	lfs f0, 8(r3)
/* 80115A84  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 80115A88  38 60 00 01 */	li r3, 1
/* 80115A8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80115A90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80115A94  7C 08 03 A6 */	mtlr r0
/* 80115A98  38 21 00 10 */	addi r1, r1, 0x10
/* 80115A9C  4E 80 00 20 */	blr 
