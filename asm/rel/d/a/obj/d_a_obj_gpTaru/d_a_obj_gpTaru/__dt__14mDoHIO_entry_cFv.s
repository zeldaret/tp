lbl_8057D1B0:
/* 8057D1B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D1B4  7C 08 02 A6 */	mflr r0
/* 8057D1B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D1BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D1C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8057D1C4  41 82 00 1C */	beq lbl_8057D1E0
/* 8057D1C8  3C A0 80 58 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x8057F8C0@ha */
/* 8057D1CC  38 05 F8 C0 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x8057F8C0@l */
/* 8057D1D0  90 1F 00 00 */	stw r0, 0(r31)
/* 8057D1D4  7C 80 07 35 */	extsh. r0, r4
/* 8057D1D8  40 81 00 08 */	ble lbl_8057D1E0
/* 8057D1DC  4B D5 1B 61 */	bl __dl__FPv
lbl_8057D1E0:
/* 8057D1E0  7F E3 FB 78 */	mr r3, r31
/* 8057D1E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D1E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D1EC  7C 08 03 A6 */	mtlr r0
/* 8057D1F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D1F4  4E 80 00 20 */	blr 
