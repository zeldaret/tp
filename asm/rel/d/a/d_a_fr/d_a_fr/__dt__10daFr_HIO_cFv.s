lbl_8051B920:
/* 8051B920  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B924  7C 08 02 A6 */	mflr r0
/* 8051B928  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B92C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B930  7C 7F 1B 79 */	or. r31, r3, r3
/* 8051B934  41 82 00 1C */	beq lbl_8051B950
/* 8051B938  3C A0 80 52 */	lis r5, __vt__10daFr_HIO_c@ha /* 0x8051BBF8@ha */
/* 8051B93C  38 05 BB F8 */	addi r0, r5, __vt__10daFr_HIO_c@l /* 0x8051BBF8@l */
/* 8051B940  90 1F 00 00 */	stw r0, 0(r31)
/* 8051B944  7C 80 07 35 */	extsh. r0, r4
/* 8051B948  40 81 00 08 */	ble lbl_8051B950
/* 8051B94C  4B DB 33 F1 */	bl __dl__FPv
lbl_8051B950:
/* 8051B950  7F E3 FB 78 */	mr r3, r31
/* 8051B954  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B958  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B95C  7C 08 03 A6 */	mtlr r0
/* 8051B960  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B964  4E 80 00 20 */	blr 
