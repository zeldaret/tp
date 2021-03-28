lbl_80C9F45C:
/* 80C9F45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9F460  7C 08 02 A6 */	mflr r0
/* 80C9F464  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9F468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9F46C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C9F470  41 82 00 30 */	beq lbl_80C9F4A0
/* 80C9F474  3C 60 80 CA */	lis r3, __vt__10dCcD_GStts@ha
/* 80C9F478  38 03 04 98 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80C9F47C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C9F480  41 82 00 10 */	beq lbl_80C9F490
/* 80C9F484  3C 60 80 CA */	lis r3, __vt__10cCcD_GStts@ha
/* 80C9F488  38 03 04 8C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80C9F48C  90 1F 00 00 */	stw r0, 0(r31)
lbl_80C9F490:
/* 80C9F490  7C 80 07 35 */	extsh. r0, r4
/* 80C9F494  40 81 00 0C */	ble lbl_80C9F4A0
/* 80C9F498  7F E3 FB 78 */	mr r3, r31
/* 80C9F49C  4B 62 F8 A0 */	b __dl__FPv
lbl_80C9F4A0:
/* 80C9F4A0  7F E3 FB 78 */	mr r3, r31
/* 80C9F4A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9F4A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9F4AC  7C 08 03 A6 */	mtlr r0
/* 80C9F4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9F4B4  4E 80 00 20 */	blr 
