lbl_8098CBD0:
/* 8098CBD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098CBD4  7C 08 02 A6 */	mflr r0
/* 8098CBD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098CBDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8098CBE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8098CBE4  41 82 00 1C */	beq lbl_8098CC00
/* 8098CBE8  3C A0 80 99 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x8099232C@ha */
/* 8098CBEC  38 05 23 2C */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x8099232C@l */
/* 8098CBF0  90 1F 00 00 */	stw r0, 0(r31)
/* 8098CBF4  7C 80 07 35 */	extsh. r0, r4
/* 8098CBF8  40 81 00 08 */	ble lbl_8098CC00
/* 8098CBFC  4B 94 21 41 */	bl __dl__FPv
lbl_8098CC00:
/* 8098CC00  7F E3 FB 78 */	mr r3, r31
/* 8098CC04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8098CC08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098CC0C  7C 08 03 A6 */	mtlr r0
/* 8098CC10  38 21 00 10 */	addi r1, r1, 0x10
/* 8098CC14  4E 80 00 20 */	blr 
