lbl_8058AAC4:
/* 8058AAC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AAC8  7C 08 02 A6 */	mflr r0
/* 8058AACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AAD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058AAD4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8058AAD8  41 82 00 1C */	beq lbl_8058AAF4
/* 8058AADC  3C A0 80 59 */	lis r5, __vt__10cCcD_GStts@ha
/* 8058AAE0  38 05 AE 4C */	addi r0, r5, __vt__10cCcD_GStts@l
/* 8058AAE4  90 1F 00 00 */	stw r0, 0(r31)
/* 8058AAE8  7C 80 07 35 */	extsh. r0, r4
/* 8058AAEC  40 81 00 08 */	ble lbl_8058AAF4
/* 8058AAF0  4B D4 42 4C */	b __dl__FPv
lbl_8058AAF4:
/* 8058AAF4  7F E3 FB 78 */	mr r3, r31
/* 8058AAF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058AAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AB00  7C 08 03 A6 */	mtlr r0
/* 8058AB04  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AB08  4E 80 00 20 */	blr 
