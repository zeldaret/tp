lbl_80C30DF0:
/* 80C30DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C30DF4  7C 08 02 A6 */	mflr r0
/* 80C30DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C30DFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C30E00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C30E04  41 82 00 30 */	beq lbl_80C30E34
/* 80C30E08  3C 60 80 C3 */	lis r3, __vt__10dCcD_GStts@ha /* 0x80C313D4@ha */
/* 80C30E0C  38 03 13 D4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80C313D4@l */
/* 80C30E10  90 1F 00 00 */	stw r0, 0(r31)
/* 80C30E14  41 82 00 10 */	beq lbl_80C30E24
/* 80C30E18  3C 60 80 C3 */	lis r3, __vt__10cCcD_GStts@ha /* 0x80C313C8@ha */
/* 80C30E1C  38 03 13 C8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80C313C8@l */
/* 80C30E20  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C30E24:
/* 80C30E24  7C 80 07 35 */	extsh. r0, r4
/* 80C30E28  40 81 00 0C */	ble lbl_80C30E34
/* 80C30E2C  7F E3 FB 78 */	mr r3, r31
/* 80C30E30  4B 69 DF 0D */	bl __dl__FPv
lbl_80C30E34:
/* 80C30E34  7F E3 FB 78 */	mr r3, r31
/* 80C30E38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C30E3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C30E40  7C 08 03 A6 */	mtlr r0
/* 80C30E44  38 21 00 10 */	addi r1, r1, 0x10
/* 80C30E48  4E 80 00 20 */	blr 
