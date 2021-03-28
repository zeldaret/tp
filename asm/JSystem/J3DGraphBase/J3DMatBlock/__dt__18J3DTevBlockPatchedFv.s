lbl_80322C10:
/* 80322C10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80322C14  7C 08 02 A6 */	mflr r0
/* 80322C18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80322C1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80322C20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80322C24  41 82 00 30 */	beq lbl_80322C54
/* 80322C28  3C 60 80 3D */	lis r3, __vt__18J3DTevBlockPatched@ha
/* 80322C2C  38 03 E4 58 */	addi r0, r3, __vt__18J3DTevBlockPatched@l
/* 80322C30  90 1F 00 00 */	stw r0, 0(r31)
/* 80322C34  41 82 00 10 */	beq lbl_80322C44
/* 80322C38  3C 60 80 3D */	lis r3, __vt__11J3DTevBlock@ha
/* 80322C3C  38 03 E9 58 */	addi r0, r3, __vt__11J3DTevBlock@l
/* 80322C40  90 1F 00 00 */	stw r0, 0(r31)
lbl_80322C44:
/* 80322C44  7C 80 07 35 */	extsh. r0, r4
/* 80322C48  40 81 00 0C */	ble lbl_80322C54
/* 80322C4C  7F E3 FB 78 */	mr r3, r31
/* 80322C50  4B FA C0 ED */	bl __dl__FPv
lbl_80322C54:
/* 80322C54  7F E3 FB 78 */	mr r3, r31
/* 80322C58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80322C5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80322C60  7C 08 03 A6 */	mtlr r0
/* 80322C64  38 21 00 10 */	addi r1, r1, 0x10
/* 80322C68  4E 80 00 20 */	blr 
