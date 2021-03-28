lbl_80BA8D64:
/* 80BA8D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA8D68  7C 08 02 A6 */	mflr r0
/* 80BA8D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA8D70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BA8D74  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BA8D78  41 82 00 1C */	beq lbl_80BA8D94
/* 80BA8D7C  3C A0 80 BB */	lis r5, __vt__19daObj_Balloon_HIO_c@ha
/* 80BA8D80  38 05 8F 98 */	addi r0, r5, __vt__19daObj_Balloon_HIO_c@l
/* 80BA8D84  90 1F 00 00 */	stw r0, 0(r31)
/* 80BA8D88  7C 80 07 35 */	extsh. r0, r4
/* 80BA8D8C  40 81 00 08 */	ble lbl_80BA8D94
/* 80BA8D90  4B 72 5F AC */	b __dl__FPv
lbl_80BA8D94:
/* 80BA8D94  7F E3 FB 78 */	mr r3, r31
/* 80BA8D98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BA8D9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA8DA0  7C 08 03 A6 */	mtlr r0
/* 80BA8DA4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA8DA8  4E 80 00 20 */	blr 
