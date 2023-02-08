lbl_80C8E9E0:
/* 80C8E9E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8E9E4  7C 08 02 A6 */	mflr r0
/* 80C8E9E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8E9EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8E9F0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8E9F4  41 82 00 1C */	beq lbl_80C8EA10
/* 80C8E9F8  3C A0 80 C9 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C8FCAC@ha */
/* 80C8E9FC  38 05 FC AC */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C8FCAC@l */
/* 80C8EA00  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8EA04  7C 80 07 35 */	extsh. r0, r4
/* 80C8EA08  40 81 00 08 */	ble lbl_80C8EA10
/* 80C8EA0C  4B 64 03 31 */	bl __dl__FPv
lbl_80C8EA10:
/* 80C8EA10  7F E3 FB 78 */	mr r3, r31
/* 80C8EA14  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8EA18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8EA1C  7C 08 03 A6 */	mtlr r0
/* 80C8EA20  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8EA24  4E 80 00 20 */	blr 
