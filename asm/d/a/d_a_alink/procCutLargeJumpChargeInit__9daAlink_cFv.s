lbl_800D6238:
/* 800D6238  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D623C  7C 08 02 A6 */	mflr r0
/* 800D6240  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D6244  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D6248  7C 7F 1B 78 */	mr r31, r3
/* 800D624C  38 80 00 2F */	li r4, 0x2f
/* 800D6250  4B FE BD 1D */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800D6254  7F E3 FB 78 */	mr r3, r31
/* 800D6258  38 80 01 8B */	li r4, 0x18b
/* 800D625C  3C A0 80 39 */	lis r5, m__26daAlinkHIO_cutLargeJump_c0@ha /* 0x8038DE18@ha */
/* 800D6260  38 A5 DE 18 */	addi r5, r5, m__26daAlinkHIO_cutLargeJump_c0@l /* 0x8038DE18@l */
/* 800D6264  4B FD 6E 91 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D6268  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800D626C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800D6270  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800D6274  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800D6278  3C 60 80 39 */	lis r3, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 800D627C  38 63 DE 8C */	addi r3, r3, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 800D6280  A8 03 00 56 */	lha r0, 0x56(r3)
/* 800D6284  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800D6288  38 60 00 01 */	li r3, 1
/* 800D628C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D6290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D6294  7C 08 03 A6 */	mtlr r0
/* 800D6298  38 21 00 10 */	addi r1, r1, 0x10
/* 800D629C  4E 80 00 20 */	blr 
