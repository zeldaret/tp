lbl_80C724C8:
/* 80C724C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C724CC  7C 08 02 A6 */	mflr r0
/* 80C724D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C724D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C724D8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C724DC  41 82 00 1C */	beq lbl_80C724F8
/* 80C724E0  3C A0 80 C7 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80C724E4  38 05 32 B0 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80C724E8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C724EC  7C 80 07 35 */	extsh. r0, r4
/* 80C724F0  40 81 00 08 */	ble lbl_80C724F8
/* 80C724F4  4B 65 C8 48 */	b __dl__FPv
lbl_80C724F8:
/* 80C724F8  7F E3 FB 78 */	mr r3, r31
/* 80C724FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C72500  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C72504  7C 08 03 A6 */	mtlr r0
/* 80C72508  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7250C  4E 80 00 20 */	blr 
