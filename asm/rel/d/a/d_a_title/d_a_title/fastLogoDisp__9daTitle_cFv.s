lbl_80D676AC:
/* 80D676AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D676B0  7C 08 02 A6 */	mflr r0
/* 80D676B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D676B8  88 83 05 FC */	lbz r4, 0x5fc(r3)
/* 80D676BC  28 04 00 00 */	cmplwi r4, 0
/* 80D676C0  41 82 00 10 */	beq lbl_80D676D0
/* 80D676C4  38 04 FF FF */	addi r0, r4, -1
/* 80D676C8  98 03 05 FC */	stb r0, 0x5fc(r3)
/* 80D676CC  48 00 00 18 */	b lbl_80D676E4
lbl_80D676D0:
/* 80D676D0  38 00 00 01 */	li r0, 1
/* 80D676D4  98 03 05 F9 */	stb r0, 0x5f9(r3)
/* 80D676D8  98 03 05 FA */	stb r0, 0x5fa(r3)
/* 80D676DC  98 03 05 F8 */	stb r0, 0x5f8(r3)
/* 80D676E0  4B FF FD C9 */	bl keyWaitInit__9daTitle_cFv
lbl_80D676E4:
/* 80D676E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D676E8  7C 08 03 A6 */	mtlr r0
/* 80D676EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D676F0  4E 80 00 20 */	blr 
