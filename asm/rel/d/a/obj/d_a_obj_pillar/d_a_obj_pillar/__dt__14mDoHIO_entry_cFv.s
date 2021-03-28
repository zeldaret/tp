lbl_80CAF3B0:
/* 80CAF3B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAF3B4  7C 08 02 A6 */	mflr r0
/* 80CAF3B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAF3BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAF3C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CAF3C4  41 82 00 1C */	beq lbl_80CAF3E0
/* 80CAF3C8  3C A0 80 CB */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80CAF3CC  38 05 0C 0C */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80CAF3D0  90 1F 00 00 */	stw r0, 0(r31)
/* 80CAF3D4  7C 80 07 35 */	extsh. r0, r4
/* 80CAF3D8  40 81 00 08 */	ble lbl_80CAF3E0
/* 80CAF3DC  4B 61 F9 60 */	b __dl__FPv
lbl_80CAF3E0:
/* 80CAF3E0  7F E3 FB 78 */	mr r3, r31
/* 80CAF3E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAF3E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAF3EC  7C 08 03 A6 */	mtlr r0
/* 80CAF3F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAF3F4  4E 80 00 20 */	blr 
