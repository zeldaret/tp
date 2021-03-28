lbl_800C3098:
/* 800C3098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C309C  7C 08 02 A6 */	mflr r0
/* 800C30A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C30A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C30A8  7C 7F 1B 78 */	mr r31, r3
/* 800C30AC  38 80 00 01 */	li r4, 1
/* 800C30B0  4B FF EE BD */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C30B4  7F E3 FB 78 */	mr r3, r31
/* 800C30B8  38 80 00 90 */	li r4, 0x90
/* 800C30BC  4B FE 9E C5 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800C30C0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C30C4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C30C8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800C30CC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800C30D0  38 00 00 04 */	li r0, 4
/* 800C30D4  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800C30D8  38 60 00 01 */	li r3, 1
/* 800C30DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C30E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C30E4  7C 08 03 A6 */	mtlr r0
/* 800C30E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800C30EC  4E 80 00 20 */	blr 
