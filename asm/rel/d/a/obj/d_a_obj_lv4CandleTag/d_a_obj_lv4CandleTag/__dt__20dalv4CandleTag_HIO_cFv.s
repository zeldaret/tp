lbl_80C5D9C0:
/* 80C5D9C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5D9C4  7C 08 02 A6 */	mflr r0
/* 80C5D9C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5D9CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5D9D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C5D9D4  41 82 00 30 */	beq lbl_80C5DA04
/* 80C5D9D8  3C 60 80 C6 */	lis r3, __vt__20dalv4CandleTag_HIO_c@ha /* 0x80C5DC74@ha */
/* 80C5D9DC  38 03 DC 74 */	addi r0, r3, __vt__20dalv4CandleTag_HIO_c@l /* 0x80C5DC74@l */
/* 80C5D9E0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C5D9E4  41 82 00 10 */	beq lbl_80C5D9F4
/* 80C5D9E8  3C 60 80 C6 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C5DC80@ha */
/* 80C5D9EC  38 03 DC 80 */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C5DC80@l */
/* 80C5D9F0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C5D9F4:
/* 80C5D9F4  7C 80 07 35 */	extsh. r0, r4
/* 80C5D9F8  40 81 00 0C */	ble lbl_80C5DA04
/* 80C5D9FC  7F E3 FB 78 */	mr r3, r31
/* 80C5DA00  4B 67 13 3D */	bl __dl__FPv
lbl_80C5DA04:
/* 80C5DA04  7F E3 FB 78 */	mr r3, r31
/* 80C5DA08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5DA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5DA10  7C 08 03 A6 */	mtlr r0
/* 80C5DA14  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5DA18  4E 80 00 20 */	blr 
