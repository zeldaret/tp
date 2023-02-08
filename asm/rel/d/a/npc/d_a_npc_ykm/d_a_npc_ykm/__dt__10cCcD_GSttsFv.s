lbl_80B5C17C:
/* 80B5C17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5C180  7C 08 02 A6 */	mflr r0
/* 80B5C184  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5C188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5C18C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5C190  41 82 00 1C */	beq lbl_80B5C1AC
/* 80B5C194  3C A0 80 B6 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80B5EBF0@ha */
/* 80B5C198  38 05 EB F0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80B5EBF0@l */
/* 80B5C19C  90 1F 00 00 */	stw r0, 0(r31)
/* 80B5C1A0  7C 80 07 35 */	extsh. r0, r4
/* 80B5C1A4  40 81 00 08 */	ble lbl_80B5C1AC
/* 80B5C1A8  4B 77 2B 95 */	bl __dl__FPv
lbl_80B5C1AC:
/* 80B5C1AC  7F E3 FB 78 */	mr r3, r31
/* 80B5C1B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5C1B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5C1B8  7C 08 03 A6 */	mtlr r0
/* 80B5C1BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5C1C0  4E 80 00 20 */	blr 
