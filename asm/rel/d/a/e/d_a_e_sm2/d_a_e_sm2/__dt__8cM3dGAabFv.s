lbl_8079CCC0:
/* 8079CCC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8079CCC4  7C 08 02 A6 */	mflr r0
/* 8079CCC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8079CCCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8079CCD0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8079CCD4  41 82 00 1C */	beq lbl_8079CCF0
/* 8079CCD8  3C A0 80 7A */	lis r5, __vt__8cM3dGAab@ha
/* 8079CCDC  38 05 DA E0 */	addi r0, r5, __vt__8cM3dGAab@l
/* 8079CCE0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8079CCE4  7C 80 07 35 */	extsh. r0, r4
/* 8079CCE8  40 81 00 08 */	ble lbl_8079CCF0
/* 8079CCEC  4B B3 20 50 */	b __dl__FPv
lbl_8079CCF0:
/* 8079CCF0  7F E3 FB 78 */	mr r3, r31
/* 8079CCF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8079CCF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079CCFC  7C 08 03 A6 */	mtlr r0
/* 8079CD00  38 21 00 10 */	addi r1, r1, 0x10
/* 8079CD04  4E 80 00 20 */	blr 
