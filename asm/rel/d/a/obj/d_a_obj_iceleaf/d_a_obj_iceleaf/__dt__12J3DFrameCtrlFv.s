lbl_80C24DCC:
/* 80C24DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C24DD0  7C 08 02 A6 */	mflr r0
/* 80C24DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C24DD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C24DDC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C24DE0  41 82 00 1C */	beq lbl_80C24DFC
/* 80C24DE4  3C A0 80 C2 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C25F88@ha */
/* 80C24DE8  38 05 5F 88 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C25F88@l */
/* 80C24DEC  90 1F 00 00 */	stw r0, 0(r31)
/* 80C24DF0  7C 80 07 35 */	extsh. r0, r4
/* 80C24DF4  40 81 00 08 */	ble lbl_80C24DFC
/* 80C24DF8  4B 6A 9F 45 */	bl __dl__FPv
lbl_80C24DFC:
/* 80C24DFC  7F E3 FB 78 */	mr r3, r31
/* 80C24E00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C24E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C24E08  7C 08 03 A6 */	mtlr r0
/* 80C24E0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C24E10  4E 80 00 20 */	blr 
