lbl_80CBFE20:
/* 80CBFE20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBFE24  7C 08 02 A6 */	mflr r0
/* 80CBFE28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBFE2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBFE30  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CBFE34  41 82 00 1C */	beq lbl_80CBFE50
/* 80CBFE38  3C A0 80 CC */	lis r5, __vt__8cM3dGAab@ha
/* 80CBFE3C  38 05 0A 54 */	addi r0, r5, __vt__8cM3dGAab@l
/* 80CBFE40  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80CBFE44  7C 80 07 35 */	extsh. r0, r4
/* 80CBFE48  40 81 00 08 */	ble lbl_80CBFE50
/* 80CBFE4C  4B 60 EE F0 */	b __dl__FPv
lbl_80CBFE50:
/* 80CBFE50  7F E3 FB 78 */	mr r3, r31
/* 80CBFE54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBFE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBFE5C  7C 08 03 A6 */	mtlr r0
/* 80CBFE60  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBFE64  4E 80 00 20 */	blr 
