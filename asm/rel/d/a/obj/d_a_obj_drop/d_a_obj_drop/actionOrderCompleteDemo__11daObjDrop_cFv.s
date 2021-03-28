lbl_80BE1930:
/* 80BE1930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE1934  7C 08 02 A6 */	mflr r0
/* 80BE1938  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE193C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE1940  7C 7F 1B 78 */	mr r31, r3
/* 80BE1944  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80BE1948  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80BE194C  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 80BE1950  7C 00 07 74 */	extsb r0, r0
/* 80BE1954  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80BE1958  7C 84 02 14 */	add r4, r4, r0
/* 80BE195C  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 80BE1960  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 80BE1964  28 00 00 02 */	cmplwi r0, 2
/* 80BE1968  40 82 00 34 */	bne lbl_80BE199C
/* 80BE196C  38 64 02 48 */	addi r3, r4, 0x248
/* 80BE1970  38 80 00 01 */	li r4, 1
/* 80BE1974  4B 58 16 B4 */	b SetTrimTypeForce__9dCamera_cFl
/* 80BE1978  38 00 00 02 */	li r0, 2
/* 80BE197C  98 1F 06 BA */	stb r0, 0x6ba(r31)
/* 80BE1980  38 00 00 87 */	li r0, 0x87
/* 80BE1984  98 1F 06 BB */	stb r0, 0x6bb(r31)
/* 80BE1988  38 00 00 01 */	li r0, 1
/* 80BE198C  98 1F 06 B9 */	stb r0, 0x6b9(r31)
/* 80BE1990  7F E3 FB 78 */	mr r3, r31
/* 80BE1994  4B FF E9 C5 */	bl dropGet__11daObjDrop_cFv
/* 80BE1998  48 00 00 20 */	b lbl_80BE19B8
lbl_80BE199C:
/* 80BE199C  38 80 00 02 */	li r4, 2
/* 80BE19A0  38 A0 00 00 */	li r5, 0
/* 80BE19A4  38 C0 00 00 */	li r6, 0
/* 80BE19A8  4B 43 9F 60 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80BE19AC  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 80BE19B0  60 00 00 02 */	ori r0, r0, 2
/* 80BE19B4  B0 1F 00 FA */	sth r0, 0xfa(r31)
lbl_80BE19B8:
/* 80BE19B8  38 60 00 01 */	li r3, 1
/* 80BE19BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE19C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE19C4  7C 08 03 A6 */	mtlr r0
/* 80BE19C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE19CC  4E 80 00 20 */	blr 
