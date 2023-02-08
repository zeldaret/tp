lbl_80BDE5F8:
/* 80BDE5F8  88 03 06 2F */	lbz r0, 0x62f(r3)
/* 80BDE5FC  28 00 00 00 */	cmplwi r0, 0
/* 80BDE600  41 82 00 40 */	beq lbl_80BDE640
/* 80BDE604  88 03 06 31 */	lbz r0, 0x631(r3)
/* 80BDE608  28 00 00 00 */	cmplwi r0, 0
/* 80BDE60C  41 82 00 10 */	beq lbl_80BDE61C
/* 80BDE610  38 00 00 08 */	li r0, 8
/* 80BDE614  98 03 06 2E */	stb r0, 0x62e(r3)
/* 80BDE618  48 00 00 60 */	b lbl_80BDE678
lbl_80BDE61C:
/* 80BDE61C  88 83 06 2E */	lbz r4, 0x62e(r3)
/* 80BDE620  38 04 00 01 */	addi r0, r4, 1
/* 80BDE624  98 03 06 2E */	stb r0, 0x62e(r3)
/* 80BDE628  88 03 06 2E */	lbz r0, 0x62e(r3)
/* 80BDE62C  28 00 00 08 */	cmplwi r0, 8
/* 80BDE630  40 81 00 48 */	ble lbl_80BDE678
/* 80BDE634  38 00 00 01 */	li r0, 1
/* 80BDE638  98 03 06 31 */	stb r0, 0x631(r3)
/* 80BDE63C  48 00 00 3C */	b lbl_80BDE678
lbl_80BDE640:
/* 80BDE640  88 03 06 31 */	lbz r0, 0x631(r3)
/* 80BDE644  28 00 00 00 */	cmplwi r0, 0
/* 80BDE648  41 82 00 28 */	beq lbl_80BDE670
/* 80BDE64C  88 83 06 2E */	lbz r4, 0x62e(r3)
/* 80BDE650  38 04 FF FF */	addi r0, r4, -1
/* 80BDE654  98 03 06 2E */	stb r0, 0x62e(r3)
/* 80BDE658  88 03 06 2E */	lbz r0, 0x62e(r3)
/* 80BDE65C  28 00 00 00 */	cmplwi r0, 0
/* 80BDE660  40 82 00 18 */	bne lbl_80BDE678
/* 80BDE664  38 00 00 00 */	li r0, 0
/* 80BDE668  98 03 06 31 */	stb r0, 0x631(r3)
/* 80BDE66C  48 00 00 0C */	b lbl_80BDE678
lbl_80BDE670:
/* 80BDE670  38 00 00 00 */	li r0, 0
/* 80BDE674  98 03 06 2E */	stb r0, 0x62e(r3)
lbl_80BDE678:
/* 80BDE678  88 03 06 34 */	lbz r0, 0x634(r3)
/* 80BDE67C  28 00 00 00 */	cmplwi r0, 0
/* 80BDE680  41 82 00 40 */	beq lbl_80BDE6C0
/* 80BDE684  88 03 06 36 */	lbz r0, 0x636(r3)
/* 80BDE688  28 00 00 00 */	cmplwi r0, 0
/* 80BDE68C  41 82 00 10 */	beq lbl_80BDE69C
/* 80BDE690  38 00 00 0E */	li r0, 0xe
/* 80BDE694  98 03 06 37 */	stb r0, 0x637(r3)
/* 80BDE698  4E 80 00 20 */	blr 
lbl_80BDE69C:
/* 80BDE69C  88 83 06 37 */	lbz r4, 0x637(r3)
/* 80BDE6A0  38 04 00 01 */	addi r0, r4, 1
/* 80BDE6A4  98 03 06 37 */	stb r0, 0x637(r3)
/* 80BDE6A8  88 03 06 37 */	lbz r0, 0x637(r3)
/* 80BDE6AC  28 00 00 08 */	cmplwi r0, 8
/* 80BDE6B0  4C 81 00 20 */	blelr 
/* 80BDE6B4  38 00 00 01 */	li r0, 1
/* 80BDE6B8  98 03 06 36 */	stb r0, 0x636(r3)
/* 80BDE6BC  4E 80 00 20 */	blr 
lbl_80BDE6C0:
/* 80BDE6C0  88 03 06 36 */	lbz r0, 0x636(r3)
/* 80BDE6C4  28 00 00 00 */	cmplwi r0, 0
/* 80BDE6C8  41 82 00 28 */	beq lbl_80BDE6F0
/* 80BDE6CC  88 83 06 37 */	lbz r4, 0x637(r3)
/* 80BDE6D0  38 04 FF FF */	addi r0, r4, -1
/* 80BDE6D4  98 03 06 37 */	stb r0, 0x637(r3)
/* 80BDE6D8  88 03 06 37 */	lbz r0, 0x637(r3)
/* 80BDE6DC  28 00 00 00 */	cmplwi r0, 0
/* 80BDE6E0  4C 82 00 20 */	bnelr 
/* 80BDE6E4  38 00 00 00 */	li r0, 0
/* 80BDE6E8  98 03 06 36 */	stb r0, 0x636(r3)
/* 80BDE6EC  4E 80 00 20 */	blr 
lbl_80BDE6F0:
/* 80BDE6F0  38 00 00 00 */	li r0, 0
/* 80BDE6F4  98 03 06 37 */	stb r0, 0x637(r3)
/* 80BDE6F8  4E 80 00 20 */	blr 
