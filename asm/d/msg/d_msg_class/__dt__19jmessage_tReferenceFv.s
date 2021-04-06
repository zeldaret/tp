lbl_80228CB4:
/* 80228CB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80228CB8  7C 08 02 A6 */	mflr r0
/* 80228CBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80228CC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80228CC4  93 C1 00 08 */	stw r30, 8(r1)
/* 80228CC8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80228CCC  7C 9F 23 78 */	mr r31, r4
/* 80228CD0  41 82 00 3C */	beq lbl_80228D0C
/* 80228CD4  3C 60 80 3C */	lis r3, __vt__19jmessage_tReference@ha /* 0x803C0AD4@ha */
/* 80228CD8  38 03 0A D4 */	addi r0, r3, __vt__19jmessage_tReference@l /* 0x803C0AD4@l */
/* 80228CDC  90 1E 00 00 */	stw r0, 0(r30)
/* 80228CE0  80 7E 00 08 */	lwz r3, 8(r30)
/* 80228CE4  48 0A 60 59 */	bl __dl__FPv
/* 80228CE8  38 00 00 00 */	li r0, 0
/* 80228CEC  90 1E 00 08 */	stw r0, 8(r30)
/* 80228CF0  7F C3 F3 78 */	mr r3, r30
/* 80228CF4  38 80 00 00 */	li r4, 0
/* 80228CF8  48 07 EE 01 */	bl __dt__Q28JMessage10TReferenceFv
/* 80228CFC  7F E0 07 35 */	extsh. r0, r31
/* 80228D00  40 81 00 0C */	ble lbl_80228D0C
/* 80228D04  7F C3 F3 78 */	mr r3, r30
/* 80228D08  48 0A 60 35 */	bl __dl__FPv
lbl_80228D0C:
/* 80228D0C  7F C3 F3 78 */	mr r3, r30
/* 80228D10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80228D14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80228D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80228D1C  7C 08 03 A6 */	mtlr r0
/* 80228D20  38 21 00 10 */	addi r1, r1, 0x10
/* 80228D24  4E 80 00 20 */	blr 
