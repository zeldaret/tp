lbl_80C53F14:
/* 80C53F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C53F18  7C 08 02 A6 */	mflr r0
/* 80C53F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C53F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C53F24  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C53F28  41 82 00 1C */	beq lbl_80C53F44
/* 80C53F2C  3C A0 80 C5 */	lis r5, __vt__16daObj_Lbox_HIO_c@ha /* 0x80C540D4@ha */
/* 80C53F30  38 05 40 D4 */	addi r0, r5, __vt__16daObj_Lbox_HIO_c@l /* 0x80C540D4@l */
/* 80C53F34  90 1F 00 00 */	stw r0, 0(r31)
/* 80C53F38  7C 80 07 35 */	extsh. r0, r4
/* 80C53F3C  40 81 00 08 */	ble lbl_80C53F44
/* 80C53F40  4B 67 AD FD */	bl __dl__FPv
lbl_80C53F44:
/* 80C53F44  7F E3 FB 78 */	mr r3, r31
/* 80C53F48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C53F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C53F50  7C 08 03 A6 */	mtlr r0
/* 80C53F54  38 21 00 10 */	addi r1, r1, 0x10
/* 80C53F58  4E 80 00 20 */	blr 
