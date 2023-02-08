lbl_8060F888:
/* 8060F888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060F88C  7C 08 02 A6 */	mflr r0
/* 8060F890  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060F894  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060F898  7C 7F 1B 79 */	or. r31, r3, r3
/* 8060F89C  41 82 00 1C */	beq lbl_8060F8B8
/* 8060F8A0  3C A0 80 61 */	lis r5, __vt__10cCcD_GStts@ha /* 0x806103C0@ha */
/* 8060F8A4  38 05 03 C0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x806103C0@l */
/* 8060F8A8  90 1F 00 00 */	stw r0, 0(r31)
/* 8060F8AC  7C 80 07 35 */	extsh. r0, r4
/* 8060F8B0  40 81 00 08 */	ble lbl_8060F8B8
/* 8060F8B4  4B CB F4 89 */	bl __dl__FPv
lbl_8060F8B8:
/* 8060F8B8  7F E3 FB 78 */	mr r3, r31
/* 8060F8BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060F8C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060F8C4  7C 08 03 A6 */	mtlr r0
/* 8060F8C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8060F8CC  4E 80 00 20 */	blr 
