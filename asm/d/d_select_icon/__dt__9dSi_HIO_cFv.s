lbl_80195C1C:
/* 80195C1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80195C20  7C 08 02 A6 */	mflr r0
/* 80195C24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80195C28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80195C2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80195C30  41 82 00 1C */	beq lbl_80195C4C
/* 80195C34  3C A0 80 3C */	lis r5, __vt__9dSi_HIO_c@ha /* 0x803BB7B8@ha */
/* 80195C38  38 05 B7 B8 */	addi r0, r5, __vt__9dSi_HIO_c@l /* 0x803BB7B8@l */
/* 80195C3C  90 1F 00 00 */	stw r0, 0(r31)
/* 80195C40  7C 80 07 35 */	extsh. r0, r4
/* 80195C44  40 81 00 08 */	ble lbl_80195C4C
/* 80195C48  48 13 90 F5 */	bl __dl__FPv
lbl_80195C4C:
/* 80195C4C  7F E3 FB 78 */	mr r3, r31
/* 80195C50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80195C54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80195C58  7C 08 03 A6 */	mtlr r0
/* 80195C5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80195C60  4E 80 00 20 */	blr 
