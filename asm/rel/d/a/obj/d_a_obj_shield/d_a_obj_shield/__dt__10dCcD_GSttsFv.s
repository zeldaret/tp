lbl_80CD74B0:
/* 80CD74B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD74B4  7C 08 02 A6 */	mflr r0
/* 80CD74B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD74BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD74C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD74C4  41 82 00 30 */	beq lbl_80CD74F4
/* 80CD74C8  3C 60 80 CE */	lis r3, __vt__10dCcD_GStts@ha /* 0x80CD8484@ha */
/* 80CD74CC  38 03 84 84 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80CD8484@l */
/* 80CD74D0  90 1F 00 00 */	stw r0, 0(r31)
/* 80CD74D4  41 82 00 10 */	beq lbl_80CD74E4
/* 80CD74D8  3C 60 80 CE */	lis r3, __vt__10cCcD_GStts@ha /* 0x80CD8478@ha */
/* 80CD74DC  38 03 84 78 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80CD8478@l */
/* 80CD74E0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80CD74E4:
/* 80CD74E4  7C 80 07 35 */	extsh. r0, r4
/* 80CD74E8  40 81 00 0C */	ble lbl_80CD74F4
/* 80CD74EC  7F E3 FB 78 */	mr r3, r31
/* 80CD74F0  4B 5F 78 4D */	bl __dl__FPv
lbl_80CD74F4:
/* 80CD74F4  7F E3 FB 78 */	mr r3, r31
/* 80CD74F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD74FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD7500  7C 08 03 A6 */	mtlr r0
/* 80CD7504  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD7508  4E 80 00 20 */	blr 
