lbl_80A13CA4:
/* 80A13CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A13CA8  7C 08 02 A6 */	mflr r0
/* 80A13CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A13CB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A13CB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A13CB8  41 82 00 1C */	beq lbl_80A13CD4
/* 80A13CBC  3C A0 80 A1 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80A14560@ha */
/* 80A13CC0  38 05 45 60 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80A14560@l */
/* 80A13CC4  90 1F 00 00 */	stw r0, 0(r31)
/* 80A13CC8  7C 80 07 35 */	extsh. r0, r4
/* 80A13CCC  40 81 00 08 */	ble lbl_80A13CD4
/* 80A13CD0  4B 8B B0 6D */	bl __dl__FPv
lbl_80A13CD4:
/* 80A13CD4  7F E3 FB 78 */	mr r3, r31
/* 80A13CD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A13CDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A13CE0  7C 08 03 A6 */	mtlr r0
/* 80A13CE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A13CE8  4E 80 00 20 */	blr 
