lbl_80AA387C:
/* 80AA387C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA3880  7C 08 02 A6 */	mflr r0
/* 80AA3884  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA3888  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA388C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AA3890  41 82 00 1C */	beq lbl_80AA38AC
/* 80AA3894  3C A0 80 AA */	lis r5, __vt__8cM3dGPla@ha
/* 80AA3898  38 05 73 C0 */	addi r0, r5, __vt__8cM3dGPla@l
/* 80AA389C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80AA38A0  7C 80 07 35 */	extsh. r0, r4
/* 80AA38A4  40 81 00 08 */	ble lbl_80AA38AC
/* 80AA38A8  4B 82 B4 94 */	b __dl__FPv
lbl_80AA38AC:
/* 80AA38AC  7F E3 FB 78 */	mr r3, r31
/* 80AA38B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA38B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA38B8  7C 08 03 A6 */	mtlr r0
/* 80AA38BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA38C0  4E 80 00 20 */	blr 
