lbl_80C23FCC:
/* 80C23FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C23FD0  7C 08 02 A6 */	mflr r0
/* 80C23FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C23FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C23FDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80C23FE0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C23FE4  7C 9F 23 78 */	mr r31, r4
/* 80C23FE8  41 82 00 40 */	beq lbl_80C24028
/* 80C23FEC  3C 80 80 C2 */	lis r4, __vt__14dBgS_ObjGndChk@ha /* 0x80C245F8@ha */
/* 80C23FF0  38 84 45 F8 */	addi r4, r4, __vt__14dBgS_ObjGndChk@l /* 0x80C245F8@l */
/* 80C23FF4  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80C23FF8  38 04 00 0C */	addi r0, r4, 0xc
/* 80C23FFC  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80C24000  38 04 00 18 */	addi r0, r4, 0x18
/* 80C24004  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80C24008  38 04 00 24 */	addi r0, r4, 0x24
/* 80C2400C  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80C24010  38 80 00 00 */	li r4, 0
/* 80C24014  4B 45 35 DD */	bl __dt__11dBgS_GndChkFv
/* 80C24018  7F E0 07 35 */	extsh. r0, r31
/* 80C2401C  40 81 00 0C */	ble lbl_80C24028
/* 80C24020  7F C3 F3 78 */	mr r3, r30
/* 80C24024  4B 6A AD 19 */	bl __dl__FPv
lbl_80C24028:
/* 80C24028  7F C3 F3 78 */	mr r3, r30
/* 80C2402C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C24030  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C24034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C24038  7C 08 03 A6 */	mtlr r0
/* 80C2403C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C24040  4E 80 00 20 */	blr 
