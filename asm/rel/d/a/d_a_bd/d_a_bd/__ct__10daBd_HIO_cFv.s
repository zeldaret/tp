lbl_804D6C4C:
/* 804D6C4C  3C 80 80 4E */	lis r4, lit_3942@ha /* 0x804D9E64@ha */
/* 804D6C50  38 A4 9E 64 */	addi r5, r4, lit_3942@l /* 0x804D9E64@l */
/* 804D6C54  3C 80 80 4E */	lis r4, __vt__10daBd_HIO_c@ha /* 0x804DA30C@ha */
/* 804D6C58  38 04 A3 0C */	addi r0, r4, __vt__10daBd_HIO_c@l /* 0x804DA30C@l */
/* 804D6C5C  90 03 00 00 */	stw r0, 0(r3)
/* 804D6C60  38 00 FF FF */	li r0, -1
/* 804D6C64  98 03 00 04 */	stb r0, 4(r3)
/* 804D6C68  C0 05 00 00 */	lfs f0, 0(r5)
/* 804D6C6C  D0 03 00 08 */	stfs f0, 8(r3)
/* 804D6C70  C0 05 00 04 */	lfs f0, 4(r5)
/* 804D6C74  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804D6C78  C0 05 00 08 */	lfs f0, 8(r5)
/* 804D6C7C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 804D6C80  38 00 01 90 */	li r0, 0x190
/* 804D6C84  B0 03 00 14 */	sth r0, 0x14(r3)
/* 804D6C88  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 804D6C8C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804D6C90  38 00 00 3C */	li r0, 0x3c
/* 804D6C94  B0 03 00 1C */	sth r0, 0x1c(r3)
/* 804D6C98  38 00 00 00 */	li r0, 0
/* 804D6C9C  98 03 00 1E */	stb r0, 0x1e(r3)
/* 804D6CA0  4E 80 00 20 */	blr 
