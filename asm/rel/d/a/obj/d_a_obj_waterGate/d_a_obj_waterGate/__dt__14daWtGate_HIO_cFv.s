lbl_80D2C3C0:
/* 80D2C3C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2C3C4  7C 08 02 A6 */	mflr r0
/* 80D2C3C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2C3CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D2C3D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D2C3D4  41 82 00 30 */	beq lbl_80D2C404
/* 80D2C3D8  3C 60 80 D3 */	lis r3, __vt__14daWtGate_HIO_c@ha /* 0x80D2C590@ha */
/* 80D2C3DC  38 03 C5 90 */	addi r0, r3, __vt__14daWtGate_HIO_c@l /* 0x80D2C590@l */
/* 80D2C3E0  90 1F 00 00 */	stw r0, 0(r31)
/* 80D2C3E4  41 82 00 10 */	beq lbl_80D2C3F4
/* 80D2C3E8  3C 60 80 D3 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80D2C59C@ha */
/* 80D2C3EC  38 03 C5 9C */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80D2C59C@l */
/* 80D2C3F0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80D2C3F4:
/* 80D2C3F4  7C 80 07 35 */	extsh. r0, r4
/* 80D2C3F8  40 81 00 0C */	ble lbl_80D2C404
/* 80D2C3FC  7F E3 FB 78 */	mr r3, r31
/* 80D2C400  4B 5A 29 3D */	bl __dl__FPv
lbl_80D2C404:
/* 80D2C404  7F E3 FB 78 */	mr r3, r31
/* 80D2C408  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D2C40C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2C410  7C 08 03 A6 */	mtlr r0
/* 80D2C414  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2C418  4E 80 00 20 */	blr 
