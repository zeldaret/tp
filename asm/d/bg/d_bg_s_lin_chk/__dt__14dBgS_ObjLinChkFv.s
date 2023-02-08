lbl_80077FB8:
/* 80077FB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80077FBC  7C 08 02 A6 */	mflr r0
/* 80077FC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80077FC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80077FC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80077FCC  7C 7E 1B 79 */	or. r30, r3, r3
/* 80077FD0  7C 9F 23 78 */	mr r31, r4
/* 80077FD4  41 82 00 40 */	beq lbl_80078014
/* 80077FD8  3C 80 80 3B */	lis r4, __vt__14dBgS_ObjLinChk@ha /* 0x803AB8E0@ha */
/* 80077FDC  38 84 B8 E0 */	addi r4, r4, __vt__14dBgS_ObjLinChk@l /* 0x803AB8E0@l */
/* 80077FE0  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80077FE4  38 04 00 0C */	addi r0, r4, 0xc
/* 80077FE8  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80077FEC  38 04 00 18 */	addi r0, r4, 0x18
/* 80077FF0  90 1E 00 58 */	stw r0, 0x58(r30)
/* 80077FF4  38 04 00 24 */	addi r0, r4, 0x24
/* 80077FF8  90 1E 00 68 */	stw r0, 0x68(r30)
/* 80077FFC  38 80 00 00 */	li r4, 0
/* 80078000  4B FF FC DD */	bl __dt__11dBgS_LinChkFv
/* 80078004  7F E0 07 35 */	extsh. r0, r31
/* 80078008  40 81 00 0C */	ble lbl_80078014
/* 8007800C  7F C3 F3 78 */	mr r3, r30
/* 80078010  48 25 6D 2D */	bl __dl__FPv
lbl_80078014:
/* 80078014  7F C3 F3 78 */	mr r3, r30
/* 80078018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007801C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80078020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078024  7C 08 03 A6 */	mtlr r0
/* 80078028  38 21 00 10 */	addi r1, r1, 0x10
/* 8007802C  4E 80 00 20 */	blr 
