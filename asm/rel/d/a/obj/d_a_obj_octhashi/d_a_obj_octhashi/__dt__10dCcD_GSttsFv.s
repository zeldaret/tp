lbl_80CA61F0:
/* 80CA61F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA61F4  7C 08 02 A6 */	mflr r0
/* 80CA61F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA61FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA6200  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA6204  41 82 00 30 */	beq lbl_80CA6234
/* 80CA6208  3C 60 80 CA */	lis r3, __vt__10dCcD_GStts@ha
/* 80CA620C  38 03 66 28 */	addi r0, r3, __vt__10dCcD_GStts@l
/* 80CA6210  90 1F 00 00 */	stw r0, 0(r31)
/* 80CA6214  41 82 00 10 */	beq lbl_80CA6224
/* 80CA6218  3C 60 80 CA */	lis r3, __vt__10cCcD_GStts@ha
/* 80CA621C  38 03 66 1C */	addi r0, r3, __vt__10cCcD_GStts@l
/* 80CA6220  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CA6224:
/* 80CA6224  7C 80 07 35 */	extsh. r0, r4
/* 80CA6228  40 81 00 0C */	ble lbl_80CA6234
/* 80CA622C  7F E3 FB 78 */	mr r3, r31
/* 80CA6230  4B 62 8B 0C */	b __dl__FPv
lbl_80CA6234:
/* 80CA6234  7F E3 FB 78 */	mr r3, r31
/* 80CA6238  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA623C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6240  7C 08 03 A6 */	mtlr r0
/* 80CA6244  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA6248  4E 80 00 20 */	blr 
