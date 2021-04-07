lbl_80C57ACC:
/* 80C57ACC  3C 80 80 C6 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x80C586AC@ha */
/* 80C57AD0  38 04 86 AC */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x80C586AC@l */
/* 80C57AD4  90 03 00 00 */	stw r0, 0(r3)
/* 80C57AD8  3C 80 80 C6 */	lis r4, __vt__17daLv3Candle_HIO_c@ha /* 0x80C586A0@ha */
/* 80C57ADC  38 04 86 A0 */	addi r0, r4, __vt__17daLv3Candle_HIO_c@l /* 0x80C586A0@l */
/* 80C57AE0  90 03 00 00 */	stw r0, 0(r3)
/* 80C57AE4  38 00 00 1E */	li r0, 0x1e
/* 80C57AE8  98 03 00 04 */	stb r0, 4(r3)
/* 80C57AEC  4E 80 00 20 */	blr 
