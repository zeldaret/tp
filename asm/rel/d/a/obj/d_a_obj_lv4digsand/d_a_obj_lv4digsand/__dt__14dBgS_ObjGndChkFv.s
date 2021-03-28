lbl_80C66F84:
/* 80C66F84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C66F88  7C 08 02 A6 */	mflr r0
/* 80C66F8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C66F90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C66F94  93 C1 00 08 */	stw r30, 8(r1)
/* 80C66F98  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C66F9C  7C 9F 23 78 */	mr r31, r4
/* 80C66FA0  41 82 00 40 */	beq lbl_80C66FE0
/* 80C66FA4  3C 80 80 C6 */	lis r4, __vt__14dBgS_ObjGndChk@ha
/* 80C66FA8  38 84 77 08 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l
/* 80C66FAC  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C66FB0  38 04 00 0C */	addi r0, r4, 0xc
/* 80C66FB4  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80C66FB8  38 04 00 18 */	addi r0, r4, 0x18
/* 80C66FBC  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80C66FC0  38 04 00 24 */	addi r0, r4, 0x24
/* 80C66FC4  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C66FC8  38 80 00 00 */	li r4, 0
/* 80C66FCC  4B 41 06 24 */	b __dt__11dBgS_GndChkFv
/* 80C66FD0  7F E0 07 35 */	extsh. r0, r31
/* 80C66FD4  40 81 00 0C */	ble lbl_80C66FE0
/* 80C66FD8  7F C3 F3 78 */	mr r3, r30
/* 80C66FDC  4B 66 7D 60 */	b __dl__FPv
lbl_80C66FE0:
/* 80C66FE0  7F C3 F3 78 */	mr r3, r30
/* 80C66FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C66FE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C66FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C66FF0  7C 08 03 A6 */	mtlr r0
/* 80C66FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C66FF8  4E 80 00 20 */	blr 
