lbl_80BEFF34:
/* 80BEFF34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEFF38  7C 08 02 A6 */	mflr r0
/* 80BEFF3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEFF40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEFF44  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEFF48  41 82 00 1C */	beq lbl_80BEFF64
/* 80BEFF4C  3C A0 80 BF */	lis r5, __vt__8cM3dGSph@ha /* 0x80BF0600@ha */
/* 80BEFF50  38 05 06 00 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80BF0600@l */
/* 80BEFF54  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BEFF58  7C 80 07 35 */	extsh. r0, r4
/* 80BEFF5C  40 81 00 08 */	ble lbl_80BEFF64
/* 80BEFF60  4B 6D ED DD */	bl __dl__FPv
lbl_80BEFF64:
/* 80BEFF64  7F E3 FB 78 */	mr r3, r31
/* 80BEFF68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEFF6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEFF70  7C 08 03 A6 */	mtlr r0
/* 80BEFF74  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEFF78  4E 80 00 20 */	blr 
