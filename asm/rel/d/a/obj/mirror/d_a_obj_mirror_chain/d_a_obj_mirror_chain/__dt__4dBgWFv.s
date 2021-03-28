lbl_80C97CC4:
/* 80C97CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C97CC8  7C 08 02 A6 */	mflr r0
/* 80C97CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C97CD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C97CD4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C97CD8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C97CDC  7C 9F 23 78 */	mr r31, r4
/* 80C97CE0  41 82 00 28 */	beq lbl_80C97D08
/* 80C97CE4  3C 80 80 3B */	lis r4, __vt__4dBgW@ha
/* 80C97CE8  38 04 BA 80 */	addi r0, r4, __vt__4dBgW@l
/* 80C97CEC  90 1E 00 04 */	stw r0, 4(r30)
/* 80C97CF0  38 80 00 00 */	li r4, 0
/* 80C97CF4  4B 3E 16 48 */	b __dt__4cBgWFv
/* 80C97CF8  7F E0 07 35 */	extsh. r0, r31
/* 80C97CFC  40 81 00 0C */	ble lbl_80C97D08
/* 80C97D00  7F C3 F3 78 */	mr r3, r30
/* 80C97D04  4B 63 70 38 */	b __dl__FPv
lbl_80C97D08:
/* 80C97D08  7F C3 F3 78 */	mr r3, r30
/* 80C97D0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C97D10  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C97D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C97D18  7C 08 03 A6 */	mtlr r0
/* 80C97D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C97D20  4E 80 00 20 */	blr 
