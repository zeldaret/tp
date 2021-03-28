lbl_80A47BEC:
/* 80A47BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A47BF0  7C 08 02 A6 */	mflr r0
/* 80A47BF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A47BF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A47BFC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A47C00  41 82 00 1C */	beq lbl_80A47C1C
/* 80A47C04  3C A0 80 A5 */	lis r5, __vt__8cM3dGAab@ha
/* 80A47C08  38 05 8D 8C */	addi r0, r5, __vt__8cM3dGAab@l
/* 80A47C0C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80A47C10  7C 80 07 35 */	extsh. r0, r4
/* 80A47C14  40 81 00 08 */	ble lbl_80A47C1C
/* 80A47C18  4B 88 71 24 */	b __dl__FPv
lbl_80A47C1C:
/* 80A47C1C  7F E3 FB 78 */	mr r3, r31
/* 80A47C20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A47C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A47C28  7C 08 03 A6 */	mtlr r0
/* 80A47C2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A47C30  4E 80 00 20 */	blr 
