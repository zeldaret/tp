lbl_80A3C17C:
/* 80A3C17C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3C180  7C 08 02 A6 */	mflr r0
/* 80A3C184  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3C188  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A3C18C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A3C190  41 82 00 1C */	beq lbl_80A3C1AC
/* 80A3C194  3C A0 80 A4 */	lis r5, __vt__13daNpcT_Path_c@ha /* 0x80A43234@ha */
/* 80A3C198  38 05 32 34 */	addi r0, r5, __vt__13daNpcT_Path_c@l /* 0x80A43234@l */
/* 80A3C19C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80A3C1A0  7C 80 07 35 */	extsh. r0, r4
/* 80A3C1A4  40 81 00 08 */	ble lbl_80A3C1AC
/* 80A3C1A8  4B 89 2B 95 */	bl __dl__FPv
lbl_80A3C1AC:
/* 80A3C1AC  7F E3 FB 78 */	mr r3, r31
/* 80A3C1B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A3C1B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3C1B8  7C 08 03 A6 */	mtlr r0
/* 80A3C1BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3C1C0  4E 80 00 20 */	blr 
