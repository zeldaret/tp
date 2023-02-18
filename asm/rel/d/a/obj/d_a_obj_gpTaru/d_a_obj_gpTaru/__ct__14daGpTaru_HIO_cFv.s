lbl_8057D0CC:
/* 8057D0CC  3C 80 80 58 */	lis r4, lit_3656@ha /* 0x8057F570@ha */
/* 8057D0D0  38 A4 F5 70 */	addi r5, r4, lit_3656@l /* 0x8057F570@l */
/* 8057D0D4  3C 80 80 58 */	lis r4, __vt__14mDoHIO_entry_c@ha /* 0x8057F8C0@ha */
/* 8057D0D8  38 04 F8 C0 */	addi r0, r4, __vt__14mDoHIO_entry_c@l /* 0x8057F8C0@l */
/* 8057D0DC  90 03 00 00 */	stw r0, 0(r3)
/* 8057D0E0  3C 80 80 58 */	lis r4, __vt__18fOpAcm_HIO_entry_c@ha /* 0x8057F8B4@ha */
/* 8057D0E4  38 04 F8 B4 */	addi r0, r4, __vt__18fOpAcm_HIO_entry_c@l /* 0x8057F8B4@l */
/* 8057D0E8  90 03 00 00 */	stw r0, 0(r3)
/* 8057D0EC  3C 80 80 58 */	lis r4, __vt__14daGpTaru_HIO_c@ha /* 0x8057F8A8@ha */
/* 8057D0F0  38 04 F8 A8 */	addi r0, r4, __vt__14daGpTaru_HIO_c@l /* 0x8057F8A8@l */
/* 8057D0F4  90 03 00 00 */	stw r0, 0(r3)
/* 8057D0F8  C0 05 00 00 */	lfs f0, 0(r5)
/* 8057D0FC  D0 03 00 04 */	stfs f0, 4(r3)
/* 8057D100  38 00 00 0F */	li r0, 0xf
/* 8057D104  98 03 00 10 */	stb r0, 0x10(r3)
/* 8057D108  D0 03 00 08 */	stfs f0, 8(r3)
/* 8057D10C  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8057D110  C0 05 00 04 */	lfs f0, 4(r5)
/* 8057D114  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8057D118  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8057D11C  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8057D120  C0 05 00 08 */	lfs f0, 8(r5)
/* 8057D124  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8057D128  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8057D12C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8057D130  C0 05 00 0C */	lfs f0, 0xc(r5)
/* 8057D134  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8057D138  D0 03 00 34 */	stfs f0, 0x34(r3)
/* 8057D13C  D0 03 00 38 */	stfs f0, 0x38(r3)
/* 8057D140  38 00 00 05 */	li r0, 5
/* 8057D144  98 03 00 11 */	stb r0, 0x11(r3)
/* 8057D148  C0 05 00 10 */	lfs f0, 0x10(r5)
/* 8057D14C  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8057D150  4E 80 00 20 */	blr 
