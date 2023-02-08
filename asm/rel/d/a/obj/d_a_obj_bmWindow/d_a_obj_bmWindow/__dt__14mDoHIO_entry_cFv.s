lbl_80BB8308:
/* 80BB8308  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB830C  7C 08 02 A6 */	mflr r0
/* 80BB8310  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB8314  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB8318  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BB831C  41 82 00 1C */	beq lbl_80BB8338
/* 80BB8320  3C A0 80 BC */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80BB9978@ha */
/* 80BB8324  38 05 99 78 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80BB9978@l */
/* 80BB8328  90 1F 00 00 */	stw r0, 0(r31)
/* 80BB832C  7C 80 07 35 */	extsh. r0, r4
/* 80BB8330  40 81 00 08 */	ble lbl_80BB8338
/* 80BB8334  4B 71 6A 09 */	bl __dl__FPv
lbl_80BB8338:
/* 80BB8338  7F E3 FB 78 */	mr r3, r31
/* 80BB833C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB8340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB8344  7C 08 03 A6 */	mtlr r0
/* 80BB8348  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB834C  4E 80 00 20 */	blr 
