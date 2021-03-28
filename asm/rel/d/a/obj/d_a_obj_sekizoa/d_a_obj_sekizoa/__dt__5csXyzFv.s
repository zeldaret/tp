lbl_80CD4C0C:
/* 80CD4C0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD4C10  7C 08 02 A6 */	mflr r0
/* 80CD4C14  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD4C18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD4C1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD4C20  41 82 00 10 */	beq lbl_80CD4C30
/* 80CD4C24  7C 80 07 35 */	extsh. r0, r4
/* 80CD4C28  40 81 00 08 */	ble lbl_80CD4C30
/* 80CD4C2C  4B 5F A1 10 */	b __dl__FPv
lbl_80CD4C30:
/* 80CD4C30  7F E3 FB 78 */	mr r3, r31
/* 80CD4C34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD4C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD4C3C  7C 08 03 A6 */	mtlr r0
/* 80CD4C40  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD4C44  4E 80 00 20 */	blr 
