lbl_80C1F7F4:
/* 80C1F7F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1F7F8  7C 08 02 A6 */	mflr r0
/* 80C1F7FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1F800  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1F804  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C1F808  41 82 00 30 */	beq lbl_80C1F838
/* 80C1F80C  3C 60 80 C2 */	lis r3, __vt__16daHsTarget_HIO_c@ha /* 0x80C1F940@ha */
/* 80C1F810  38 03 F9 40 */	addi r0, r3, __vt__16daHsTarget_HIO_c@l /* 0x80C1F940@l */
/* 80C1F814  90 1F 00 00 */	stw r0, 0(r31)
/* 80C1F818  41 82 00 10 */	beq lbl_80C1F828
/* 80C1F81C  3C 60 80 C2 */	lis r3, __vt__14mDoHIO_entry_c@ha /* 0x80C1F94C@ha */
/* 80C1F820  38 03 F9 4C */	addi r0, r3, __vt__14mDoHIO_entry_c@l /* 0x80C1F94C@l */
/* 80C1F824  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C1F828:
/* 80C1F828  7C 80 07 35 */	extsh. r0, r4
/* 80C1F82C  40 81 00 0C */	ble lbl_80C1F838
/* 80C1F830  7F E3 FB 78 */	mr r3, r31
/* 80C1F834  4B 6A F5 09 */	bl __dl__FPv
lbl_80C1F838:
/* 80C1F838  7F E3 FB 78 */	mr r3, r31
/* 80C1F83C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1F840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1F844  7C 08 03 A6 */	mtlr r0
/* 80C1F848  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1F84C  4E 80 00 20 */	blr 
