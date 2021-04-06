lbl_80467ADC:
/* 80467ADC  38 00 00 00 */	li r0, 0
/* 80467AE0  B0 03 05 B8 */	sth r0, 0x5b8(r3)
/* 80467AE4  3C 80 80 46 */	lis r4, lit_3781@ha /* 0x80467F28@ha */
/* 80467AE8  C0 04 7F 28 */	lfs f0, lit_3781@l(r4)  /* 0x80467F28@l */
/* 80467AEC  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 80467AF0  3C 80 80 45 */	lis r4, CLOSE_ACCEL__7daDsh_c@ha /* 0x80451D44@ha */
/* 80467AF4  C0 04 1D 44 */	lfs f0, CLOSE_ACCEL__7daDsh_c@l(r4)  /* 0x80451D44@l */
/* 80467AF8  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 80467AFC  38 60 00 01 */	li r3, 1
/* 80467B00  4E 80 00 20 */	blr 
