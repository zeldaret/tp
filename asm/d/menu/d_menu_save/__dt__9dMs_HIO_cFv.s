lbl_801F6BD4:
/* 801F6BD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F6BD8  7C 08 02 A6 */	mflr r0
/* 801F6BDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801F6BE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801F6BE4  7C 7F 1B 79 */	or. r31, r3, r3
/* 801F6BE8  41 82 00 1C */	beq lbl_801F6C04
/* 801F6BEC  3C A0 80 3C */	lis r5, __vt__9dMs_HIO_c@ha
/* 801F6BF0  38 05 E7 CC */	addi r0, r5, __vt__9dMs_HIO_c@l
/* 801F6BF4  90 1F 00 00 */	stw r0, 0(r31)
/* 801F6BF8  7C 80 07 35 */	extsh. r0, r4
/* 801F6BFC  40 81 00 08 */	ble lbl_801F6C04
/* 801F6C00  48 0D 81 3D */	bl __dl__FPv
lbl_801F6C04:
/* 801F6C04  7F E3 FB 78 */	mr r3, r31
/* 801F6C08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801F6C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801F6C10  7C 08 03 A6 */	mtlr r0
/* 801F6C14  38 21 00 10 */	addi r1, r1, 0x10
/* 801F6C18  4E 80 00 20 */	blr 
