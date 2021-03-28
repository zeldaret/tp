lbl_80B23BF4:
/* 80B23BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B23BF8  7C 08 02 A6 */	mflr r0
/* 80B23BFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B23C00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B23C04  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B23C08  41 82 00 1C */	beq lbl_80B23C24
/* 80B23C0C  3C A0 80 B2 */	lis r5, __vt__8cM3dGCyl@ha
/* 80B23C10  38 05 57 50 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80B23C14  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80B23C18  7C 80 07 35 */	extsh. r0, r4
/* 80B23C1C  40 81 00 08 */	ble lbl_80B23C24
/* 80B23C20  4B 7A B1 1C */	b __dl__FPv
lbl_80B23C24:
/* 80B23C24  7F E3 FB 78 */	mr r3, r31
/* 80B23C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B23C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B23C30  7C 08 03 A6 */	mtlr r0
/* 80B23C34  38 21 00 10 */	addi r1, r1, 0x10
/* 80B23C38  4E 80 00 20 */	blr 
