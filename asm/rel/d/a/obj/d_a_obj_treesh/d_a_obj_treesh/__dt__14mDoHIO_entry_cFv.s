lbl_80D1F148:
/* 80D1F148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1F14C  7C 08 02 A6 */	mflr r0
/* 80D1F150  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1F154  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1F158  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1F15C  41 82 00 1C */	beq lbl_80D1F178
/* 80D1F160  3C A0 80 D2 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80D1F97C@ha */
/* 80D1F164  38 05 F9 7C */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80D1F97C@l */
/* 80D1F168  90 1F 00 00 */	stw r0, 0(r31)
/* 80D1F16C  7C 80 07 35 */	extsh. r0, r4
/* 80D1F170  40 81 00 08 */	ble lbl_80D1F178
/* 80D1F174  4B 5A FB C9 */	bl __dl__FPv
lbl_80D1F178:
/* 80D1F178  7F E3 FB 78 */	mr r3, r31
/* 80D1F17C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1F180  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1F184  7C 08 03 A6 */	mtlr r0
/* 80D1F188  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1F18C  4E 80 00 20 */	blr 
