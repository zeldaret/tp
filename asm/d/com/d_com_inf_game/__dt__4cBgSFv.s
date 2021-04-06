lbl_80030CCC:
/* 80030CCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80030CD0  7C 08 02 A6 */	mflr r0
/* 80030CD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80030CD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80030CDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80030CE0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80030CE4  7C 9F 23 78 */	mr r31, r4
/* 80030CE8  41 82 00 34 */	beq lbl_80030D1C
/* 80030CEC  3C 80 80 3B */	lis r4, __vt__4cBgS@ha /* 0x803AB61C@ha */
/* 80030CF0  38 04 B6 1C */	addi r0, r4, __vt__4cBgS@l /* 0x803AB61C@l */
/* 80030CF4  90 1E 14 00 */	stw r0, 0x1400(r30)
/* 80030CF8  3C 80 80 03 */	lis r4, __dt__11cBgS_ChkElmFv@ha /* 0x8002FEF8@ha */
/* 80030CFC  38 84 FE F8 */	addi r4, r4, __dt__11cBgS_ChkElmFv@l /* 0x8002FEF8@l */
/* 80030D00  38 A0 00 14 */	li r5, 0x14
/* 80030D04  38 C0 01 00 */	li r6, 0x100
/* 80030D08  48 33 0F E1 */	bl __destroy_arr
/* 80030D0C  7F E0 07 35 */	extsh. r0, r31
/* 80030D10  40 81 00 0C */	ble lbl_80030D1C
/* 80030D14  7F C3 F3 78 */	mr r3, r30
/* 80030D18  48 29 E0 25 */	bl __dl__FPv
lbl_80030D1C:
/* 80030D1C  7F C3 F3 78 */	mr r3, r30
/* 80030D20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80030D24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80030D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80030D2C  7C 08 03 A6 */	mtlr r0
/* 80030D30  38 21 00 10 */	addi r1, r1, 0x10
/* 80030D34  4E 80 00 20 */	blr 
