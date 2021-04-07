lbl_800D6130:
/* 800D6130  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D6134  7C 08 02 A6 */	mflr r0
/* 800D6138  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D613C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D6140  7C 7F 1B 78 */	mr r31, r3
/* 800D6144  38 80 00 2E */	li r4, 0x2e
/* 800D6148  4B FE BE 25 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D614C  7F E3 FB 78 */	mr r3, r31
/* 800D6150  48 00 0E 91 */	bl checkCutLandDamage__9daAlink_cFv
/* 800D6154  7F E3 FB 78 */	mr r3, r31
/* 800D6158  38 80 00 7E */	li r4, 0x7e
/* 800D615C  3C A0 80 39 */	lis r5, m__21daAlinkHIO_cutHead_c0@ha /* 0x8038DDB8@ha */
/* 800D6160  38 A5 DD B8 */	addi r5, r5, m__21daAlinkHIO_cutHead_c0@l /* 0x8038DDB8@l */
/* 800D6164  38 A5 00 28 */	addi r5, r5, 0x28
/* 800D6168  4B FD 6F 8D */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D616C  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D6170  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D6174  38 60 00 01 */	li r3, 1
/* 800D6178  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D617C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D6180  7C 08 03 A6 */	mtlr r0
/* 800D6184  38 21 00 10 */	addi r1, r1, 0x10
/* 800D6188  4E 80 00 20 */	blr 
