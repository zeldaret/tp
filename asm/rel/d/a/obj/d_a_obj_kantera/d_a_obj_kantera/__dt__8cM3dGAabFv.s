lbl_80C38DF4:
/* 80C38DF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C38DF8  7C 08 02 A6 */	mflr r0
/* 80C38DFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C38E00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C38E04  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C38E08  41 82 00 1C */	beq lbl_80C38E24
/* 80C38E0C  3C A0 80 C4 */	lis r5, __vt__8cM3dGAab@ha /* 0x80C397DC@ha */
/* 80C38E10  38 05 97 DC */	addi r0, r5, __vt__8cM3dGAab@l /* 0x80C397DC@l */
/* 80C38E14  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80C38E18  7C 80 07 35 */	extsh. r0, r4
/* 80C38E1C  40 81 00 08 */	ble lbl_80C38E24
/* 80C38E20  4B 69 5F 1D */	bl __dl__FPv
lbl_80C38E24:
/* 80C38E24  7F E3 FB 78 */	mr r3, r31
/* 80C38E28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C38E2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C38E30  7C 08 03 A6 */	mtlr r0
/* 80C38E34  38 21 00 10 */	addi r1, r1, 0x10
/* 80C38E38  4E 80 00 20 */	blr 
