lbl_80255CAC:
/* 80255CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80255CB0  7C 08 02 A6 */	mflr r0
/* 80255CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80255CB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80255CBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80255CC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80255CC4  7C 9F 23 78 */	mr r31, r4
/* 80255CC8  41 82 00 64 */	beq lbl_80255D2C
/* 80255CCC  3C 60 80 3C */	lis r3, __vt__17CPaneMgrAlphaMorf@ha
/* 80255CD0  38 03 2E 18 */	addi r0, r3, __vt__17CPaneMgrAlphaMorf@l
/* 80255CD4  90 1E 00 00 */	stw r0, 0(r30)
/* 80255CD8  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 80255CDC  28 04 00 00 */	cmplwi r4, 0
/* 80255CE0  41 82 00 14 */	beq lbl_80255CF4
/* 80255CE4  80 7E 00 08 */	lwz r3, 8(r30)
/* 80255CE8  48 07 88 61 */	bl free__7JKRHeapFPv
/* 80255CEC  38 00 00 00 */	li r0, 0
/* 80255CF0  90 1E 00 1C */	stw r0, 0x1c(r30)
lbl_80255CF4:
/* 80255CF4  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 80255CF8  28 04 00 00 */	cmplwi r4, 0
/* 80255CFC  41 82 00 14 */	beq lbl_80255D10
/* 80255D00  80 7E 00 08 */	lwz r3, 8(r30)
/* 80255D04  48 07 88 45 */	bl free__7JKRHeapFPv
/* 80255D08  38 00 00 00 */	li r0, 0
/* 80255D0C  90 1E 00 24 */	stw r0, 0x24(r30)
lbl_80255D10:
/* 80255D10  7F C3 F3 78 */	mr r3, r30
/* 80255D14  38 80 00 00 */	li r4, 0
/* 80255D18  4B FF F7 55 */	bl __dt__13CPaneMgrAlphaFv
/* 80255D1C  7F E0 07 35 */	extsh. r0, r31
/* 80255D20  40 81 00 0C */	ble lbl_80255D2C
/* 80255D24  7F C3 F3 78 */	mr r3, r30
/* 80255D28  48 07 90 15 */	bl __dl__FPv
lbl_80255D2C:
/* 80255D2C  7F C3 F3 78 */	mr r3, r30
/* 80255D30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80255D34  83 C1 00 08 */	lwz r30, 8(r1)
/* 80255D38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80255D3C  7C 08 03 A6 */	mtlr r0
/* 80255D40  38 21 00 10 */	addi r1, r1, 0x10
/* 80255D44  4E 80 00 20 */	blr 
