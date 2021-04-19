lbl_802F17FC:
/* 802F17FC  A0 02 C7 AE */	lhz r0, j2dDefaultAlphaCmp(r2)
/* 802F1800  B0 03 00 00 */	sth r0, 0(r3)
/* 802F1804  38 00 00 00 */	li r0, 0
/* 802F1808  98 03 00 02 */	stb r0, 2(r3)
/* 802F180C  98 03 00 03 */	stb r0, 3(r3)
/* 802F1810  88 02 C7 A0 */	lbz r0, j2dDefaultBlendInfo(r2)
/* 802F1814  98 03 00 04 */	stb r0, 4(r3)
/* 802F1818  38 82 C7 A0 */	la r4, j2dDefaultBlendInfo(r2) /* 804561A0-_SDA2_BASE_ */
/* 802F181C  88 04 00 01 */	lbz r0, 1(r4)
/* 802F1820  98 03 00 05 */	stb r0, 5(r3)
/* 802F1824  88 04 00 02 */	lbz r0, 2(r4)
/* 802F1828  98 03 00 06 */	stb r0, 6(r3)
/* 802F182C  88 04 00 03 */	lbz r0, 3(r4)
/* 802F1830  98 03 00 07 */	stb r0, 7(r3)
/* 802F1834  88 02 C7 A4 */	lbz r0, data_804561A4(r2)
/* 802F1838  98 03 00 08 */	stb r0, 8(r3)
/* 802F183C  4E 80 00 20 */	blr 
