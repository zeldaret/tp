lbl_80B11BD0:
/* 80B11BD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B11BD4  7C 08 02 A6 */	mflr r0
/* 80B11BD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B11BDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B11BE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80B11BE4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B11BE8  7C 9F 23 78 */	mr r31, r4
/* 80B11BEC  41 82 00 40 */	beq lbl_80B11C2C
/* 80B11BF0  3C 80 80 B1 */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x80B144AC@ha */
/* 80B11BF4  38 84 44 AC */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x80B144AC@l */
/* 80B11BF8  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B11BFC  38 04 00 0C */	addi r0, r4, 0xc
/* 80B11C00  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80B11C04  38 04 00 18 */	addi r0, r4, 0x18
/* 80B11C08  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80B11C0C  38 04 00 24 */	addi r0, r4, 0x24
/* 80B11C10  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80B11C14  38 80 00 00 */	li r4, 0
/* 80B11C18  4B 56 59 D9 */	bl __dt__11dBgS_GndChkFv
/* 80B11C1C  7F E0 07 35 */	extsh. r0, r31
/* 80B11C20  40 81 00 0C */	ble lbl_80B11C2C
/* 80B11C24  7F C3 F3 78 */	mr r3, r30
/* 80B11C28  4B 7B D1 15 */	bl __dl__FPv
lbl_80B11C2C:
/* 80B11C2C  7F C3 F3 78 */	mr r3, r30
/* 80B11C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B11C34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B11C38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B11C3C  7C 08 03 A6 */	mtlr r0
/* 80B11C40  38 21 00 10 */	addi r1, r1, 0x10
/* 80B11C44  4E 80 00 20 */	blr 
