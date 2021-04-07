lbl_805F4A4C:
/* 805F4A4C  3C 80 80 60 */	lis r4, lit_3815@ha /* 0x80602664@ha */
/* 805F4A50  38 A4 26 64 */	addi r5, r4, lit_3815@l /* 0x80602664@l */
/* 805F4A54  3C 80 80 60 */	lis r4, __vt__13daB_GND_HIO_c@ha /* 0x80602F54@ha */
/* 805F4A58  38 04 2F 54 */	addi r0, r4, __vt__13daB_GND_HIO_c@l /* 0x80602F54@l */
/* 805F4A5C  90 03 00 00 */	stw r0, 0(r3)
/* 805F4A60  38 00 FF FF */	li r0, -1
/* 805F4A64  98 03 00 04 */	stb r0, 4(r3)
/* 805F4A68  C0 05 00 00 */	lfs f0, 0(r5)
/* 805F4A6C  D0 03 00 08 */	stfs f0, 8(r3)
/* 805F4A70  C0 05 00 04 */	lfs f0, 4(r5)
/* 805F4A74  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 805F4A78  C0 05 00 08 */	lfs f0, 8(r5)
/* 805F4A7C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805F4A80  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 805F4A84  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 805F4A88  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 805F4A8C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805F4A90  4E 80 00 20 */	blr 
