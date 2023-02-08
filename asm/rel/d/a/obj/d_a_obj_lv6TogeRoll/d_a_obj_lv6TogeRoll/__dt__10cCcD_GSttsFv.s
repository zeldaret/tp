lbl_80C79888:
/* 80C79888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7988C  7C 08 02 A6 */	mflr r0
/* 80C79890  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C79894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C79898  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7989C  41 82 00 1C */	beq lbl_80C798B8
/* 80C798A0  3C A0 80 C8 */	lis r5, __vt__10cCcD_GStts@ha /* 0x80C79CC0@ha */
/* 80C798A4  38 05 9C C0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80C79CC0@l */
/* 80C798A8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C798AC  7C 80 07 35 */	extsh. r0, r4
/* 80C798B0  40 81 00 08 */	ble lbl_80C798B8
/* 80C798B4  4B 65 54 89 */	bl __dl__FPv
lbl_80C798B8:
/* 80C798B8  7F E3 FB 78 */	mr r3, r31
/* 80C798BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C798C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C798C4  7C 08 03 A6 */	mtlr r0
/* 80C798C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C798CC  4E 80 00 20 */	blr 
