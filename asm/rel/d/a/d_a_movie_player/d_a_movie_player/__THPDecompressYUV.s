lbl_80873C44:
/* 80873C44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80873C48  7C 08 02 A6 */	mflr r0
/* 80873C4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80873C50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80873C54  93 C1 00 08 */	stw r30, 8(r1)
/* 80873C58  3C C0 80 88 */	lis r6, __THPInfo@ha /* 0x80879BC4@ha */
/* 80873C5C  38 E6 9B C4 */	addi r7, r6, __THPInfo@l /* 0x80879BC4@l */
/* 80873C60  80 C7 00 00 */	lwz r6, 0(r7)
/* 80873C64  90 66 06 B0 */	stw r3, 0x6b0(r6)
/* 80873C68  80 67 00 00 */	lwz r3, 0(r7)
/* 80873C6C  90 83 06 B4 */	stw r4, 0x6b4(r3)
/* 80873C70  80 67 00 00 */	lwz r3, 0(r7)
/* 80873C74  90 A3 06 B8 */	stw r5, 0x6b8(r3)
/* 80873C78  80 67 00 00 */	lwz r3, 0(r7)
/* 80873C7C  A3 E3 06 98 */	lhz r31, 0x698(r3)
/* 80873C80  A3 C3 06 94 */	lhz r30, 0x694(r3)
/* 80873C84  48 00 00 C5 */	bl __THPGQRSetup
/* 80873C88  4B FF FD 7D */	bl __THPPrepBitStream
/* 80873C8C  3C 60 80 88 */	lis r3, __THPInfo@ha /* 0x80879BC4@ha */
/* 80873C90  38 63 9B C4 */	addi r3, r3, __THPInfo@l /* 0x80879BC4@l */
/* 80873C94  80 63 00 00 */	lwz r3, 0(r3)
/* 80873C98  A0 03 06 92 */	lhz r0, 0x692(r3)
/* 80873C9C  28 00 02 00 */	cmplwi r0, 0x200
/* 80873CA0  40 82 00 28 */	bne lbl_80873CC8
/* 80873CA4  28 1E 01 C0 */	cmplwi r30, 0x1c0
/* 80873CA8  40 82 00 20 */	bne lbl_80873CC8
/* 80873CAC  48 00 00 0C */	b lbl_80873CB8
lbl_80873CB0:
/* 80873CB0  48 00 00 CD */	bl __THPDecompressiMCURow512x448
/* 80873CB4  3B FF 00 10 */	addi r31, r31, 0x10
lbl_80873CB8:
/* 80873CB8  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 80873CBC  7C 00 F0 40 */	cmplw r0, r30
/* 80873CC0  41 80 FF F0 */	blt lbl_80873CB0
/* 80873CC4  48 00 00 48 */	b lbl_80873D0C
lbl_80873CC8:
/* 80873CC8  28 00 02 80 */	cmplwi r0, 0x280
/* 80873CCC  40 82 00 34 */	bne lbl_80873D00
/* 80873CD0  28 1E 01 E0 */	cmplwi r30, 0x1e0
/* 80873CD4  40 82 00 2C */	bne lbl_80873D00
/* 80873CD8  48 00 00 0C */	b lbl_80873CE4
lbl_80873CDC:
/* 80873CDC  48 00 0C 19 */	bl __THPDecompressiMCURow640x480
/* 80873CE0  3B FF 00 10 */	addi r31, r31, 0x10
lbl_80873CE4:
/* 80873CE4  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 80873CE8  7C 00 F0 40 */	cmplw r0, r30
/* 80873CEC  41 80 FF F0 */	blt lbl_80873CDC
/* 80873CF0  48 00 00 1C */	b lbl_80873D0C
/* 80873CF4  48 00 00 0C */	b lbl_80873D00
lbl_80873CF8:
/* 80873CF8  48 00 0E 41 */	bl __THPDecompressiMCURowNxN
/* 80873CFC  3B FF 00 10 */	addi r31, r31, 0x10
lbl_80873D00:
/* 80873D00  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 80873D04  7C 00 F0 40 */	cmplw r0, r30
/* 80873D08  41 80 FF F0 */	blt lbl_80873CF8
lbl_80873D0C:
/* 80873D0C  48 00 00 1D */	bl __THPGQRRestore
/* 80873D10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80873D14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80873D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80873D1C  7C 08 03 A6 */	mtlr r0
/* 80873D20  38 21 00 10 */	addi r1, r1, 0x10
/* 80873D24  4E 80 00 20 */	blr 
