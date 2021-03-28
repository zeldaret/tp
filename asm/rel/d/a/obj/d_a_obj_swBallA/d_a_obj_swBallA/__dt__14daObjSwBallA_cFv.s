lbl_80CF4354:
/* 80CF4354  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF4358  7C 08 02 A6 */	mflr r0
/* 80CF435C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF4360  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CF4364  93 C1 00 08 */	stw r30, 8(r1)
/* 80CF4368  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CF436C  7C 9F 23 78 */	mr r31, r4
/* 80CF4370  41 82 00 48 */	beq lbl_80CF43B8
/* 80CF4374  3C 60 80 CF */	lis r3, __vt__14daObjSwBallA_c@ha
/* 80CF4378  38 63 44 BC */	addi r3, r3, __vt__14daObjSwBallA_c@l
/* 80CF437C  90 7E 05 78 */	stw r3, 0x578(r30)
/* 80CF4380  38 03 00 08 */	addi r0, r3, 8
/* 80CF4384  90 1E 05 68 */	stw r0, 0x568(r30)
/* 80CF4388  34 1E 05 68 */	addic. r0, r30, 0x568
/* 80CF438C  41 82 00 10 */	beq lbl_80CF439C
/* 80CF4390  3C 60 80 CF */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80CF4394  38 03 44 E0 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80CF4398  90 1E 05 68 */	stw r0, 0x568(r30)
lbl_80CF439C:
/* 80CF439C  7F C3 F3 78 */	mr r3, r30
/* 80CF43A0  38 80 00 00 */	li r4, 0
/* 80CF43A4  4B 32 48 E8 */	b __dt__10fopAc_ac_cFv
/* 80CF43A8  7F E0 07 35 */	extsh. r0, r31
/* 80CF43AC  40 81 00 0C */	ble lbl_80CF43B8
/* 80CF43B0  7F C3 F3 78 */	mr r3, r30
/* 80CF43B4  4B 5D A9 88 */	b __dl__FPv
lbl_80CF43B8:
/* 80CF43B8  7F C3 F3 78 */	mr r3, r30
/* 80CF43BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CF43C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CF43C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF43C8  7C 08 03 A6 */	mtlr r0
/* 80CF43CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF43D0  4E 80 00 20 */	blr 
