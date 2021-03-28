lbl_80D23CE0:
/* 80D23CE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D23CE4  7C 08 02 A6 */	mflr r0
/* 80D23CE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D23CEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D23CF0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D23CF4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D23CF8  7C 9F 23 78 */	mr r31, r4
/* 80D23CFC  41 82 00 3C */	beq lbl_80D23D38
/* 80D23D00  3C 80 80 D2 */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 80D23D04  38 04 40 84 */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 80D23D08  90 1E 00 00 */	stw r0, 0(r30)
/* 80D23D0C  81 83 00 00 */	lwz r12, 0(r3)
/* 80D23D10  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80D23D14  7D 89 03 A6 */	mtctr r12
/* 80D23D18  4E 80 04 21 */	bctrl 
/* 80D23D1C  7F C3 F3 78 */	mr r3, r30
/* 80D23D20  38 80 00 00 */	li r4, 0
/* 80D23D24  4B 55 A9 80 */	b __dt__18JPAEmitterCallBackFv
/* 80D23D28  7F E0 07 35 */	extsh. r0, r31
/* 80D23D2C  40 81 00 0C */	ble lbl_80D23D38
/* 80D23D30  7F C3 F3 78 */	mr r3, r30
/* 80D23D34  4B 5A B0 08 */	b __dl__FPv
lbl_80D23D38:
/* 80D23D38  7F C3 F3 78 */	mr r3, r30
/* 80D23D3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D23D40  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D23D44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D23D48  7C 08 03 A6 */	mtlr r0
/* 80D23D4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D23D50  4E 80 00 20 */	blr 
