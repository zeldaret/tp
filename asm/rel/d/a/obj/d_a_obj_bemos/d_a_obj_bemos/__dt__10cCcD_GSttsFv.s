lbl_80BB3448:
/* 80BB3448  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB344C  7C 08 02 A6 */	mflr r0
/* 80BB3450  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB3454  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB3458  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB345C  41 82 00 1C */	beq lbl_80BB3478
/* 80BB3460  3C A0 80 BB */	lis r5, __vt__10cCcD_GStts@ha /* 0x80BB3DE0@ha */
/* 80BB3464  38 05 3D E0 */	addi r0, r5, __vt__10cCcD_GStts@l /* 0x80BB3DE0@l */
/* 80BB3468  90 1F 00 00 */	stw r0, 0(r31)
/* 80BB346C  7C 80 07 35 */	extsh. r0, r4
/* 80BB3470  40 81 00 08 */	ble lbl_80BB3478
/* 80BB3474  4B 71 B8 C9 */	bl __dl__FPv
lbl_80BB3478:
/* 80BB3478  7F E3 FB 78 */	mr r3, r31
/* 80BB347C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB3480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB3484  7C 08 03 A6 */	mtlr r0
/* 80BB3488  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB348C  4E 80 00 20 */	blr 
