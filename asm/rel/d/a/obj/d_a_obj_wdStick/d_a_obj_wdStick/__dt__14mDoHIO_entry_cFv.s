lbl_80D31B88:
/* 80D31B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D31B8C  7C 08 02 A6 */	mflr r0
/* 80D31B90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D31B94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D31B98  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D31B9C  41 82 00 1C */	beq lbl_80D31BB8
/* 80D31BA0  3C A0 80 D3 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80D31BA4  38 05 44 04 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80D31BA8  90 1F 00 00 */	stw r0, 0(r31)
/* 80D31BAC  7C 80 07 35 */	extsh. r0, r4
/* 80D31BB0  40 81 00 08 */	ble lbl_80D31BB8
/* 80D31BB4  4B 59 D1 88 */	b __dl__FPv
lbl_80D31BB8:
/* 80D31BB8  7F E3 FB 78 */	mr r3, r31
/* 80D31BBC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D31BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D31BC4  7C 08 03 A6 */	mtlr r0
/* 80D31BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D31BCC  4E 80 00 20 */	blr 
