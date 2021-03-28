lbl_80347994:
/* 80347994  7C 08 02 A6 */	mflr r0
/* 80347998  3C 60 80 45 */	lis r3, CommandList@ha
/* 8034799C  90 01 00 04 */	stw r0, 4(r1)
/* 803479A0  38 83 C8 30 */	addi r4, r3, CommandList@l
/* 803479A4  94 21 FF F8 */	stwu r1, -8(r1)
/* 803479A8  80 0D 91 D4 */	lwz r0, NextCommandNumber(r13)
/* 803479AC  1C 00 00 14 */	mulli r0, r0, 0x14
/* 803479B0  7C 64 00 2E */	lwzx r3, r4, r0
/* 803479B4  2C 03 00 01 */	cmpwi r3, 1
/* 803479B8  40 82 00 2C */	bne lbl_803479E4
/* 803479BC  80 6D 91 D4 */	lwz r3, NextCommandNumber(r13)
/* 803479C0  7C C4 02 14 */	add r6, r4, r0
/* 803479C4  38 03 00 01 */	addi r0, r3, 1
/* 803479C8  90 0D 91 D4 */	stw r0, NextCommandNumber(r13)
/* 803479CC  80 66 00 04 */	lwz r3, 4(r6)
/* 803479D0  80 86 00 08 */	lwz r4, 8(r6)
/* 803479D4  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 803479D8  80 C6 00 10 */	lwz r6, 0x10(r6)
/* 803479DC  48 00 00 AD */	bl Read
/* 803479E0  48 00 00 28 */	b lbl_80347A08
lbl_803479E4:
/* 803479E4  2C 03 00 02 */	cmpwi r3, 2
/* 803479E8  40 82 00 20 */	bne lbl_80347A08
/* 803479EC  80 6D 91 D4 */	lwz r3, NextCommandNumber(r13)
/* 803479F0  7C 84 02 14 */	add r4, r4, r0
/* 803479F4  38 03 00 01 */	addi r0, r3, 1
/* 803479F8  90 0D 91 D4 */	stw r0, NextCommandNumber(r13)
/* 803479FC  80 64 00 0C */	lwz r3, 0xc(r4)
/* 80347A00  80 84 00 10 */	lwz r4, 0x10(r4)
/* 80347A04  48 00 04 AD */	bl DVDLowSeek
lbl_80347A08:
/* 80347A08  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80347A0C  38 21 00 08 */	addi r1, r1, 8
/* 80347A10  7C 08 03 A6 */	mtlr r0
/* 80347A14  4E 80 00 20 */	blr 
