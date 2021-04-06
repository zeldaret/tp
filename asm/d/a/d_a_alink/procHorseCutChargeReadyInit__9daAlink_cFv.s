lbl_800F1894:
/* 800F1894  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F1898  7C 08 02 A6 */	mflr r0
/* 800F189C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F18A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F18A4  7C 7F 1B 78 */	mr r31, r3
/* 800F18A8  38 80 00 42 */	li r4, 0x42
/* 800F18AC  4B FD 06 C1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800F18B0  7F E3 FB 78 */	mr r3, r31
/* 800F18B4  38 80 00 96 */	li r4, 0x96
/* 800F18B8  38 A0 00 02 */	li r5, 2
/* 800F18BC  3C C0 80 39 */	lis r6, m__25daAlinkHIO_hoCutCharge_c0@ha /* 0x8038DC9C@ha */
/* 800F18C0  38 C6 DC 9C */	addi r6, r6, m__25daAlinkHIO_hoCutCharge_c0@l /* 0x8038DC9C@l */
/* 800F18C4  4B FB BE 2D */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800F18C8  7F E3 FB 78 */	mr r3, r31
/* 800F18CC  38 80 00 E8 */	li r4, 0xe8
/* 800F18D0  38 A0 00 01 */	li r5, 1
/* 800F18D4  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000FFFF@ha */
/* 800F18D8  38 C6 FF FF */	addi r6, r6, 0xFFFF /* 0x0000FFFF@l */
/* 800F18DC  4B FB DB D5 */	bl setFaceBck__9daAlink_cFUsiUs
/* 800F18E0  38 00 00 02 */	li r0, 2
/* 800F18E4  98 1F 2F 96 */	stb r0, 0x2f96(r31)
/* 800F18E8  7F E3 FB 78 */	mr r3, r31
/* 800F18EC  38 80 00 01 */	li r4, 1
/* 800F18F0  4B FF D0 29 */	bl setSyncRide__9daAlink_cFi
/* 800F18F4  A0 1F 1F 80 */	lhz r0, 0x1f80(r31)
/* 800F18F8  28 00 00 19 */	cmplwi r0, 0x19
/* 800F18FC  40 82 00 14 */	bne lbl_800F1910
/* 800F1900  7F E3 FB 78 */	mr r3, r31
/* 800F1904  38 80 00 02 */	li r4, 2
/* 800F1908  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F190C  4B FB C1 E1 */	bl resetUnderAnime__9daAlink_cFQ29daAlink_c13daAlink_UNDERf
lbl_800F1910:
/* 800F1910  3C 60 80 39 */	lis r3, m__17daAlinkHIO_cut_c0@ha /* 0x8038DE8C@ha */
/* 800F1914  38 63 DE 8C */	addi r3, r3, m__17daAlinkHIO_cut_c0@l /* 0x8038DE8C@l */
/* 800F1918  A8 03 00 56 */	lha r0, 0x56(r3)
/* 800F191C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800F1920  38 00 00 00 */	li r0, 0
/* 800F1924  B0 1F 30 04 */	sth r0, 0x3004(r31)
/* 800F1928  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800F192C  64 00 10 00 */	oris r0, r0, 0x1000
/* 800F1930  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800F1934  38 60 00 01 */	li r3, 1
/* 800F1938  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F193C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F1940  7C 08 03 A6 */	mtlr r0
/* 800F1944  38 21 00 10 */	addi r1, r1, 0x10
/* 800F1948  4E 80 00 20 */	blr 
