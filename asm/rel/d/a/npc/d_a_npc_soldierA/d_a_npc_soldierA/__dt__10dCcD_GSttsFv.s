lbl_80AF2460:
/* 80AF2460  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF2464  7C 08 02 A6 */	mflr r0
/* 80AF2468  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF246C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF2470  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AF2474  41 82 00 30 */	beq lbl_80AF24A4
/* 80AF2478  3C 60 80 AF */	lis r3, __vt__10dCcD_GStts@ha /* 0x80AF2A90@ha */
/* 80AF247C  38 03 2A 90 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80AF2A90@l */
/* 80AF2480  90 1F 00 00 */	stw r0, 0(r31)
/* 80AF2484  41 82 00 10 */	beq lbl_80AF2494
/* 80AF2488  3C 60 80 AF */	lis r3, __vt__10cCcD_GStts@ha /* 0x80AF2A84@ha */
/* 80AF248C  38 03 2A 84 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80AF2A84@l */
/* 80AF2490  90 1F 00 00 */	stw r0, 0(r31)
lbl_80AF2494:
/* 80AF2494  7C 80 07 35 */	extsh. r0, r4
/* 80AF2498  40 81 00 0C */	ble lbl_80AF24A4
/* 80AF249C  7F E3 FB 78 */	mr r3, r31
/* 80AF24A0  4B 7D C8 9D */	bl __dl__FPv
lbl_80AF24A4:
/* 80AF24A4  7F E3 FB 78 */	mr r3, r31
/* 80AF24A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF24AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF24B0  7C 08 03 A6 */	mtlr r0
/* 80AF24B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF24B8  4E 80 00 20 */	blr 
