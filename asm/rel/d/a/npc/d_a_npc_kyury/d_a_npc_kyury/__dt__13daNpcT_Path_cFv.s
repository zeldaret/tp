lbl_80A62AB8:
/* 80A62AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A62ABC  7C 08 02 A6 */	mflr r0
/* 80A62AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A62AC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A62AC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A62ACC  41 82 00 1C */	beq lbl_80A62AE8
/* 80A62AD0  3C A0 80 A6 */	lis r5, __vt__13daNpcT_Path_c@ha /* 0x80A6413C@ha */
/* 80A62AD4  38 05 41 3C */	addi r0, r5, __vt__13daNpcT_Path_c@l /* 0x80A6413C@l */
/* 80A62AD8  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80A62ADC  7C 80 07 35 */	extsh. r0, r4
/* 80A62AE0  40 81 00 08 */	ble lbl_80A62AE8
/* 80A62AE4  4B 86 C2 59 */	bl __dl__FPv
lbl_80A62AE8:
/* 80A62AE8  7F E3 FB 78 */	mr r3, r31
/* 80A62AEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A62AF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A62AF4  7C 08 03 A6 */	mtlr r0
/* 80A62AF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A62AFC  4E 80 00 20 */	blr 
