lbl_80CB3DDC:
/* 80CB3DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB3DE0  7C 08 02 A6 */	mflr r0
/* 80CB3DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB3DE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB3DEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB3DF0  41 82 00 1C */	beq lbl_80CB3E0C
/* 80CB3DF4  3C A0 80 CB */	lis r5, __vt__17dEvLib_callback_c@ha
/* 80CB3DF8  38 05 40 D0 */	addi r0, r5, __vt__17dEvLib_callback_c@l
/* 80CB3DFC  90 1F 00 00 */	stw r0, 0(r31)
/* 80CB3E00  7C 80 07 35 */	extsh. r0, r4
/* 80CB3E04  40 81 00 08 */	ble lbl_80CB3E0C
/* 80CB3E08  4B 61 AF 34 */	b __dl__FPv
lbl_80CB3E0C:
/* 80CB3E0C  7F E3 FB 78 */	mr r3, r31
/* 80CB3E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB3E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB3E18  7C 08 03 A6 */	mtlr r0
/* 80CB3E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB3E20  4E 80 00 20 */	blr 
