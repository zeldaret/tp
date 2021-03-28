lbl_80CBFE68:
/* 80CBFE68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBFE6C  7C 08 02 A6 */	mflr r0
/* 80CBFE70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBFE74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBFE78  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBFE7C  41 82 00 30 */	beq lbl_80CBFEAC
/* 80CBFE80  3C 60 80 CC */	lis r3, __vt__10dCcD_GStts@ha
/* 80CBFE84  38 03 0A 48 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CBFE88  90 1F 00 00 */	stw r0, 0(r31)
/* 80CBFE8C  41 82 00 10 */	beq lbl_80CBFE9C
/* 80CBFE90  3C 60 80 CC */	lis r3, __vt__10cCcD_GStts@ha
/* 80CBFE94  38 03 0A 3C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CBFE98  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CBFE9C:
/* 80CBFE9C  7C 80 07 35 */	extsh. r0, r4
/* 80CBFEA0  40 81 00 0C */	ble lbl_80CBFEAC
/* 80CBFEA4  7F E3 FB 78 */	mr r3, r31
/* 80CBFEA8  4B 60 EE 94 */	b __dl__FPv
lbl_80CBFEAC:
/* 80CBFEAC  7F E3 FB 78 */	mr r3, r31
/* 80CBFEB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBFEB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBFEB8  7C 08 03 A6 */	mtlr r0
/* 80CBFEBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBFEC0  4E 80 00 20 */	blr 
