lbl_80C5D07C:
/* 80C5D07C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D080  7C 08 02 A6 */	mflr r0
/* 80C5D084  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D088  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5D08C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5D090  41 82 00 30 */	beq lbl_80C5D0C0
/* 80C5D094  3C 60 80 C6 */	lis r3, __vt__24dalv4CandleDemoTag_HIO_c@ha
/* 80C5D098  38 03 D3 28 */	addi r0, r3, __vt__24dalv4CandleDemoTag_HIO_c@l
/* 80C5D09C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5D0A0  41 82 00 10 */	beq lbl_80C5D0B0
/* 80C5D0A4  3C 60 80 C6 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C5D0A8  38 03 D3 34 */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C5D0AC  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C5D0B0:
/* 80C5D0B0  7C 80 07 35 */	extsh. r0, r4
/* 80C5D0B4  40 81 00 0C */	ble lbl_80C5D0C0
/* 80C5D0B8  7F E3 FB 78 */	mr r3, r31
/* 80C5D0BC  4B 67 1C 80 */	b __dl__FPv
lbl_80C5D0C0:
/* 80C5D0C0  7F E3 FB 78 */	mr r3, r31
/* 80C5D0C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5D0C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5D0CC  7C 08 03 A6 */	mtlr r0
/* 80C5D0D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5D0D4  4E 80 00 20 */	blr 
