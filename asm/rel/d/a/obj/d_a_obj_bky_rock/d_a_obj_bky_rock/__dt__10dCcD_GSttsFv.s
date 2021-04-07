lbl_80BB6B00:
/* 80BB6B00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB6B04  7C 08 02 A6 */	mflr r0
/* 80BB6B08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6B0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB6B10  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB6B14  41 82 00 30 */	beq lbl_80BB6B44
/* 80BB6B18  3C 60 80 BC */	lis r3, __vt__10dCcD_GStts@ha /* 0x80BB80F0@ha */
/* 80BB6B1C  38 03 80 F0 */	addi r0, r3, __vt__10dCcD_GStts@l /* 0x80BB80F0@l */
/* 80BB6B20  90 1F 00 00 */	stw r0, 0(r31)
/* 80BB6B24  41 82 00 10 */	beq lbl_80BB6B34
/* 80BB6B28  3C 60 80 BC */	lis r3, __vt__10cCcD_GStts@ha /* 0x80BB80E4@ha */
/* 80BB6B2C  38 03 80 E4 */	addi r0, r3, __vt__10cCcD_GStts@l /* 0x80BB80E4@l */
/* 80BB6B30  90 1F 00 00 */	stw r0, 0(r31)
lbl_80BB6B34:
/* 80BB6B34  7C 80 07 35 */	extsh. r0, r4
/* 80BB6B38  40 81 00 0C */	ble lbl_80BB6B44
/* 80BB6B3C  7F E3 FB 78 */	mr r3, r31
/* 80BB6B40  4B 71 81 FD */	bl __dl__FPv
lbl_80BB6B44:
/* 80BB6B44  7F E3 FB 78 */	mr r3, r31
/* 80BB6B48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB6B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB6B50  7C 08 03 A6 */	mtlr r0
/* 80BB6B54  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6B58  4E 80 00 20 */	blr 
