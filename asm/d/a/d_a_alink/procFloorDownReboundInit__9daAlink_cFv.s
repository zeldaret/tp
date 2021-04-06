lbl_800C8460:
/* 800C8460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C8464  7C 08 02 A6 */	mflr r0
/* 800C8468  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C846C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C8470  7C 7F 1B 78 */	mr r31, r3
/* 800C8474  38 80 00 BD */	li r4, 0xbd
/* 800C8478  4B FF 9A F5 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C847C  7F E3 FB 78 */	mr r3, r31
/* 800C8480  38 80 00 33 */	li r4, 0x33
/* 800C8484  C0 22 93 A8 */	lfs f1, lit_9652(r2)
/* 800C8488  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha /* 0x8038E068@ha */
/* 800C848C  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l /* 0x8038E068@l */
/* 800C8490  C0 45 00 1C */	lfs f2, 0x1c(r5)
/* 800C8494  A8 A5 00 14 */	lha r5, 0x14(r5)
/* 800C8498  C0 62 93 30 */	lfs f3, lit_7625(r2)
/* 800C849C  4B FE 4B 71 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800C84A0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C84A4  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C84A8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800C84AC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800C84B0  38 00 00 04 */	li r0, 4
/* 800C84B4  98 1F 2F 98 */	stb r0, 0x2f98(r31)
/* 800C84B8  38 60 00 01 */	li r3, 1
/* 800C84BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C84C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C84C4  7C 08 03 A6 */	mtlr r0
/* 800C84C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800C84CC  4E 80 00 20 */	blr 
