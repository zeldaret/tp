lbl_8071F460:
/* 8071F460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8071F464  7C 08 02 A6 */	mflr r0
/* 8071F468  90 01 00 14 */	stw r0, 0x14(r1)
/* 8071F46C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8071F470  7C 7F 1B 79 */	or. r31, r3, r3
/* 8071F474  41 82 00 30 */	beq lbl_8071F4A4
/* 8071F478  3C 60 80 72 */	lis r3, __vt__10dCcD_GStts@ha /* 0x8071F7C4@ha */
/* 8071F47C  38 03 F7 C4 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x8071F7C4@l */
/* 8071F480  90 1F 00 00 */	stw r0, 0(r31)
/* 8071F484  41 82 00 10 */	beq lbl_8071F494
/* 8071F488  3C 60 80 72 */	lis r3, __vt__10cCcD_GStts@ha /* 0x8071F7B8@ha */
/* 8071F48C  38 03 F7 B8 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x8071F7B8@l */
/* 8071F490  90 1F 00 00 */	stw r0, 0(r31)
lbl_8071F494:
/* 8071F494  7C 80 07 35 */	extsh. r0, r4
/* 8071F498  40 81 00 0C */	ble lbl_8071F4A4
/* 8071F49C  7F E3 FB 78 */	mr r3, r31
/* 8071F4A0  4B BA F8 9D */	bl __dl__FPv
lbl_8071F4A4:
/* 8071F4A4  7F E3 FB 78 */	mr r3, r31
/* 8071F4A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8071F4AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8071F4B0  7C 08 03 A6 */	mtlr r0
/* 8071F4B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8071F4B8  4E 80 00 20 */	blr 
