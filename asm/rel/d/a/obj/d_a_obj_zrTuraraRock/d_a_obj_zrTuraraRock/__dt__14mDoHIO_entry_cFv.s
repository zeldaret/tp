lbl_80D418EC:
/* 80D418EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D418F0  7C 08 02 A6 */	mflr r0
/* 80D418F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D418F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D418FC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D41900  41 82 00 1C */	beq lbl_80D4191C
/* 80D41904  3C A0 80 D4 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80D4258C@ha */
/* 80D41908  38 05 25 8C */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80D4258C@l */
/* 80D4190C  90 1F 00 00 */	stw r0, 0(r31)
/* 80D41910  7C 80 07 35 */	extsh. r0, r4
/* 80D41914  40 81 00 08 */	ble lbl_80D4191C
/* 80D41918  4B 58 D4 25 */	bl __dl__FPv
lbl_80D4191C:
/* 80D4191C  7F E3 FB 78 */	mr r3, r31
/* 80D41920  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D41924  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D41928  7C 08 03 A6 */	mtlr r0
/* 80D4192C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D41930  4E 80 00 20 */	blr 
