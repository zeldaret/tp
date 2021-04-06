lbl_80C40DE4:
/* 80C40DE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C40DE8  7C 08 02 A6 */	mflr r0
/* 80C40DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C40DF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C40DF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C40DF8  41 82 00 1C */	beq lbl_80C40E14
/* 80C40DFC  3C A0 80 C4 */	lis r5, __vt__8cM3dGSph@ha /* 0x80C410E8@ha */
/* 80C40E00  38 05 10 E8 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80C410E8@l */
/* 80C40E04  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80C40E08  7C 80 07 35 */	extsh. r0, r4
/* 80C40E0C  40 81 00 08 */	ble lbl_80C40E14
/* 80C40E10  4B 68 DF 2D */	bl __dl__FPv
lbl_80C40E14:
/* 80C40E14  7F E3 FB 78 */	mr r3, r31
/* 80C40E18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C40E1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C40E20  7C 08 03 A6 */	mtlr r0
/* 80C40E24  38 21 00 10 */	addi r1, r1, 0x10
/* 80C40E28  4E 80 00 20 */	blr 
