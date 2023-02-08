lbl_80ACF534:
/* 80ACF534  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACF538  7C 08 02 A6 */	mflr r0
/* 80ACF53C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACF540  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACF544  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACF548  41 82 00 30 */	beq lbl_80ACF578
/* 80ACF54C  3C 60 80 AD */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AD09CC@ha */
/* 80ACF550  38 03 09 CC */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AD09CC@l */
/* 80ACF554  90 1F 00 00 */	stw r0, 0(r31)
/* 80ACF558  41 82 00 10 */	beq lbl_80ACF568
/* 80ACF55C  3C 60 80 AD */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AD09C0@ha */
/* 80ACF560  38 03 09 C0 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AD09C0@l */
/* 80ACF564  90 1F 00 00 */	stw r0, 0(r31)
lbl_80ACF568:
/* 80ACF568  7C 80 07 35 */	extsh. r0, r4
/* 80ACF56C  40 81 00 0C */	ble lbl_80ACF578
/* 80ACF570  7F E3 FB 78 */	mr r3, r31
/* 80ACF574  4B 7F F7 C9 */	bl __dl__FPv
lbl_80ACF578:
/* 80ACF578  7F E3 FB 78 */	mr r3, r31
/* 80ACF57C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACF580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACF584  7C 08 03 A6 */	mtlr r0
/* 80ACF588  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACF58C  4E 80 00 20 */	blr 
