lbl_805CB22C:
/* 805CB22C  3C 80 80 5E */	lis r4, lit_3932@ha /* 0x805DCA54@ha */
/* 805CB230  38 A4 CA 54 */	addi r5, r4, lit_3932@l /* 0x805DCA54@l */
/* 805CB234  3C 80 80 5E */	lis r4, __vt__12daB_DS_HIO_c@ha /* 0x805DDA5C@ha */
/* 805CB238  38 04 DA 5C */	addi r0, r4, __vt__12daB_DS_HIO_c@l /* 0x805DDA5C@l */
/* 805CB23C  90 03 00 00 */	stw r0, 0(r3)
/* 805CB240  38 00 FF FF */	li r0, -1
/* 805CB244  98 03 00 04 */	stb r0, 4(r3)
/* 805CB248  C0 05 00 08 */	lfs f0, 8(r5)
/* 805CB24C  D0 03 00 08 */	stfs f0, 8(r3)
/* 805CB250  C0 25 00 2C */	lfs f1, 0x2c(r5)
/* 805CB254  D0 23 00 0C */	stfs f1, 0xc(r3)
/* 805CB258  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 805CB25C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 805CB260  D0 23 00 14 */	stfs f1, 0x14(r3)
/* 805CB264  C0 05 00 34 */	lfs f0, 0x34(r5)
/* 805CB268  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 805CB26C  C0 05 00 38 */	lfs f0, 0x38(r5)
/* 805CB270  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 805CB274  C0 05 00 3C */	lfs f0, 0x3c(r5)
/* 805CB278  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 805CB27C  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 805CB280  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 805CB284  38 00 00 FA */	li r0, 0xfa
/* 805CB288  B0 03 00 28 */	sth r0, 0x28(r3)
/* 805CB28C  38 00 00 C8 */	li r0, 0xc8
/* 805CB290  B0 03 00 2A */	sth r0, 0x2a(r3)
/* 805CB294  38 00 00 32 */	li r0, 0x32
/* 805CB298  B0 03 00 2C */	sth r0, 0x2c(r3)
/* 805CB29C  38 A0 00 05 */	li r5, 5
/* 805CB2A0  B0 A3 00 2E */	sth r5, 0x2e(r3)
/* 805CB2A4  38 00 03 52 */	li r0, 0x352
/* 805CB2A8  B0 03 00 30 */	sth r0, 0x30(r3)
/* 805CB2AC  38 80 00 00 */	li r4, 0
/* 805CB2B0  B0 83 00 32 */	sth r4, 0x32(r3)
/* 805CB2B4  38 00 01 2C */	li r0, 0x12c
/* 805CB2B8  B0 03 00 34 */	sth r0, 0x34(r3)
/* 805CB2BC  38 00 00 46 */	li r0, 0x46
/* 805CB2C0  B0 03 00 36 */	sth r0, 0x36(r3)
/* 805CB2C4  38 00 00 0A */	li r0, 0xa
/* 805CB2C8  B0 03 00 38 */	sth r0, 0x38(r3)
/* 805CB2CC  38 00 02 58 */	li r0, 0x258
/* 805CB2D0  B0 03 00 3A */	sth r0, 0x3a(r3)
/* 805CB2D4  B0 03 00 3C */	sth r0, 0x3c(r3)
/* 805CB2D8  38 00 00 0C */	li r0, 0xc
/* 805CB2DC  B0 03 00 3E */	sth r0, 0x3e(r3)
/* 805CB2E0  38 00 00 0E */	li r0, 0xe
/* 805CB2E4  B0 03 00 40 */	sth r0, 0x40(r3)
/* 805CB2E8  B0 A3 00 42 */	sth r5, 0x42(r3)
/* 805CB2EC  38 00 00 64 */	li r0, 0x64
/* 805CB2F0  B0 03 00 44 */	sth r0, 0x44(r3)
/* 805CB2F4  38 00 04 00 */	li r0, 0x400
/* 805CB2F8  B0 03 00 46 */	sth r0, 0x46(r3)
/* 805CB2FC  38 00 18 00 */	li r0, 0x1800
/* 805CB300  B0 03 00 48 */	sth r0, 0x48(r3)
/* 805CB304  38 00 04 38 */	li r0, 0x438
/* 805CB308  B0 03 00 4A */	sth r0, 0x4a(r3)
/* 805CB30C  98 83 00 4C */	stb r4, 0x4c(r3)
/* 805CB310  4E 80 00 20 */	blr 
