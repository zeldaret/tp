lbl_80C8A368:
/* 80C8A368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8A36C  7C 08 02 A6 */	mflr r0
/* 80C8A370  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8A374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C8A378  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C8A37C  41 82 00 1C */	beq lbl_80C8A398
/* 80C8A380  3C A0 80 C9 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C8BBCC@ha */
/* 80C8A384  38 05 BB CC */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C8BBCC@l */
/* 80C8A388  90 1F 00 00 */	stw r0, 0(r31)
/* 80C8A38C  7C 80 07 35 */	extsh. r0, r4
/* 80C8A390  40 81 00 08 */	ble lbl_80C8A398
/* 80C8A394  4B 64 49 A9 */	bl __dl__FPv
lbl_80C8A398:
/* 80C8A398  7F E3 FB 78 */	mr r3, r31
/* 80C8A39C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C8A3A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8A3A4  7C 08 03 A6 */	mtlr r0
/* 80C8A3A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8A3AC  4E 80 00 20 */	blr 
