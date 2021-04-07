lbl_80C8B900:
/* 80C8B900  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8B904  7C 08 02 A6 */	mflr r0
/* 80C8B908  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8B90C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8B910  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8B914  41 82 00 30 */	beq lbl_80C8B944
/* 80C8B918  3C 60 80 C9 */	lis r3, __vt__16daOptiLift_HIO_c@ha /* 0x80C8BBC0@ha */
/* 80C8B91C  38 03 BB C0 */	addi r0, r3, __vt__16daOptiLift_HIO_c@l /* 0x80C8BBC0@l */
/* 80C8B920  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8B924  41 82 00 10 */	beq lbl_80C8B934
/* 80C8B928  3C 60 80 C9 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C8BBCC@ha */
/* 80C8B92C  38 03 BB CC */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C8BBCC@l */
/* 80C8B930  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C8B934:
/* 80C8B934  7C 80 07 35 */	extsh. r0, r4
/* 80C8B938  40 81 00 0C */	ble lbl_80C8B944
/* 80C8B93C  7F E3 FB 78 */	mr r3, r31
/* 80C8B940  4B 64 33 FD */	bl __dl__FPv
lbl_80C8B944:
/* 80C8B944  7F E3 FB 78 */	mr r3, r31
/* 80C8B948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8B94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8B950  7C 08 03 A6 */	mtlr r0
/* 80C8B954  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8B958  4E 80 00 20 */	blr 
