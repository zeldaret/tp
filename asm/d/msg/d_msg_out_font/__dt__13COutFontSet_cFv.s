lbl_80225BF4:
/* 80225BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80225BF8  7C 08 02 A6 */	mflr r0
/* 80225BFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80225C00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80225C04  7C 7F 1B 79 */	or. r31, r3, r3
/* 80225C08  41 82 00 1C */	beq lbl_80225C24
/* 80225C0C  3C A0 80 3C */	lis r5, __vt__13COutFontSet_c@ha /* 0x803BFDE8@ha */
/* 80225C10  38 05 FD E8 */	addi r0, r5, __vt__13COutFontSet_c@l /* 0x803BFDE8@l */
/* 80225C14  90 1F 00 00 */	stw r0, 0(r31)
/* 80225C18  7C 80 07 35 */	extsh. r0, r4
/* 80225C1C  40 81 00 08 */	ble lbl_80225C24
/* 80225C20  48 0A 91 1D */	bl __dl__FPv
lbl_80225C24:
/* 80225C24  7F E3 FB 78 */	mr r3, r31
/* 80225C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80225C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80225C30  7C 08 03 A6 */	mtlr r0
/* 80225C34  38 21 00 10 */	addi r1, r1, 0x10
/* 80225C38  4E 80 00 20 */	blr 
