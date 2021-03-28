lbl_80C58484:
/* 80C58484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C58488  7C 08 02 A6 */	mflr r0
/* 80C5848C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C58490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C58494  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C58498  41 82 00 30 */	beq lbl_80C584C8
/* 80C5849C  3C 60 80 C6 */	lis r3, __vt__17daLv3Candle_HIO_c@ha
/* 80C584A0  38 03 86 A0 */	addi r0, r3, __vt__17daLv3Candle_HIO_c@l
/* 80C584A4  90 1F 00 00 */	stw r0, 0(r31)
/* 80C584A8  41 82 00 10 */	beq lbl_80C584B8
/* 80C584AC  3C 60 80 C6 */	lis r3, __vt__14mDoHIO_entry_c@ha
/* 80C584B0  38 03 86 AC */	addi r0, r3, __vt__14mDoHIO_entry_c@l
/* 80C584B4  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C584B8:
/* 80C584B8  7C 80 07 35 */	extsh. r0, r4
/* 80C584BC  40 81 00 0C */	ble lbl_80C584C8
/* 80C584C0  7F E3 FB 78 */	mr r3, r31
/* 80C584C4  4B 67 68 78 */	b __dl__FPv
lbl_80C584C8:
/* 80C584C8  7F E3 FB 78 */	mr r3, r31
/* 80C584CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C584D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C584D4  7C 08 03 A6 */	mtlr r0
/* 80C584D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C584DC  4E 80 00 20 */	blr 
