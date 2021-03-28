lbl_8015CC88:
/* 8015CC88  38 00 00 01 */	li r0, 1
/* 8015CC8C  98 03 09 49 */	stb r0, 0x949(r3)
/* 8015CC90  C0 02 9B 50 */	lfs f0, lit_3857(r2)
/* 8015CC94  D0 03 04 F8 */	stfs f0, 0x4f8(r3)
/* 8015CC98  D0 03 04 FC */	stfs f0, 0x4fc(r3)
/* 8015CC9C  D0 03 05 00 */	stfs f0, 0x500(r3)
/* 8015CCA0  D0 03 05 2C */	stfs f0, 0x52c(r3)
/* 8015CCA4  38 00 00 00 */	li r0, 0
/* 8015CCA8  B0 03 04 E8 */	sth r0, 0x4e8(r3)
/* 8015CCAC  B0 03 04 E4 */	sth r0, 0x4e4(r3)
/* 8015CCB0  B0 03 09 40 */	sth r0, 0x940(r3)
/* 8015CCB4  C0 03 09 30 */	lfs f0, 0x930(r3)
/* 8015CCB8  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 8015CCBC  C0 03 09 34 */	lfs f0, 0x934(r3)
/* 8015CCC0  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 8015CCC4  C0 03 09 38 */	lfs f0, 0x938(r3)
/* 8015CCC8  D0 03 04 F4 */	stfs f0, 0x4f4(r3)
/* 8015CCCC  4E 80 00 20 */	blr 
