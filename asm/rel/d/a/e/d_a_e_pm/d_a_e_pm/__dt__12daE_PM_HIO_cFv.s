lbl_8074BA68:
/* 8074BA68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8074BA6C  7C 08 02 A6 */	mflr r0
/* 8074BA70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8074BA74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8074BA78  7C 7F 1B 79 */	or. r31, r3, r3
/* 8074BA7C  41 82 00 1C */	beq lbl_8074BA98
/* 8074BA80  3C A0 80 75 */	lis r5, __vt__12daE_PM_HIO_c@ha /* 0x8074C334@ha */
/* 8074BA84  38 05 C3 34 */	addi r0, r5, __vt__12daE_PM_HIO_c@l /* 0x8074C334@l */
/* 8074BA88  90 1F 00 00 */	stw r0, 0(r31)
/* 8074BA8C  7C 80 07 35 */	extsh. r0, r4
/* 8074BA90  40 81 00 08 */	ble lbl_8074BA98
/* 8074BA94  4B B8 32 A9 */	bl __dl__FPv
lbl_8074BA98:
/* 8074BA98  7F E3 FB 78 */	mr r3, r31
/* 8074BA9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8074BAA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8074BAA4  7C 08 03 A6 */	mtlr r0
/* 8074BAA8  38 21 00 10 */	addi r1, r1, 0x10
/* 8074BAAC  4E 80 00 20 */	blr 
