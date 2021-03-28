lbl_80C7ADC0:
/* 80C7ADC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7ADC4  7C 08 02 A6 */	mflr r0
/* 80C7ADC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7ADCC  88 83 06 0A */	lbz r4, 0x60a(r3)
/* 80C7ADD0  28 04 00 00 */	cmplwi r4, 0
/* 80C7ADD4  41 82 00 10 */	beq lbl_80C7ADE4
/* 80C7ADD8  38 04 FF FF */	addi r0, r4, -1
/* 80C7ADDC  98 03 06 0A */	stb r0, 0x60a(r3)
/* 80C7ADE0  48 00 00 28 */	b lbl_80C7AE08
lbl_80C7ADE4:
/* 80C7ADE4  38 00 00 00 */	li r0, 0
/* 80C7ADE8  98 03 06 0B */	stb r0, 0x60b(r3)
/* 80C7ADEC  C0 03 05 BC */	lfs f0, 0x5bc(r3)
/* 80C7ADF0  D0 03 05 B0 */	stfs f0, 0x5b0(r3)
/* 80C7ADF4  C0 03 05 C0 */	lfs f0, 0x5c0(r3)
/* 80C7ADF8  D0 03 05 B4 */	stfs f0, 0x5b4(r3)
/* 80C7ADFC  C0 03 05 C4 */	lfs f0, 0x5c4(r3)
/* 80C7AE00  D0 03 05 B8 */	stfs f0, 0x5b8(r3)
/* 80C7AE04  48 00 07 FD */	bl init_modeWait__15daLv6TogeTrap_cFv
lbl_80C7AE08:
/* 80C7AE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7AE0C  7C 08 03 A6 */	mtlr r0
/* 80C7AE10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7AE14  4E 80 00 20 */	blr 
