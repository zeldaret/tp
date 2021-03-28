lbl_80CED440:
/* 80CED440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CED444  7C 08 02 A6 */	mflr r0
/* 80CED448  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CED44C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CED450  93 C1 00 08 */	stw r30, 8(r1)
/* 80CED454  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CED458  7C 9F 23 78 */	mr r31, r4
/* 80CED45C  41 82 00 4C */	beq lbl_80CED4A8
/* 80CED460  3C 80 80 3B */	lis r4, __vt__19dPa_followEcallBack@ha
/* 80CED464  38 04 85 2C */	addi r0, r4, __vt__19dPa_followEcallBack@l
/* 80CED468  90 1E 00 00 */	stw r0, 0(r30)
/* 80CED46C  41 82 00 2C */	beq lbl_80CED498
/* 80CED470  3C 80 80 CF */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 80CED474  38 04 F1 54 */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 80CED478  90 1E 00 00 */	stw r0, 0(r30)
/* 80CED47C  81 83 00 00 */	lwz r12, 0(r3)
/* 80CED480  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80CED484  7D 89 03 A6 */	mtctr r12
/* 80CED488  4E 80 04 21 */	bctrl 
/* 80CED48C  7F C3 F3 78 */	mr r3, r30
/* 80CED490  38 80 00 00 */	li r4, 0
/* 80CED494  4B 59 12 10 */	b __dt__18JPAEmitterCallBackFv
lbl_80CED498:
/* 80CED498  7F E0 07 35 */	extsh. r0, r31
/* 80CED49C  40 81 00 0C */	ble lbl_80CED4A8
/* 80CED4A0  7F C3 F3 78 */	mr r3, r30
/* 80CED4A4  4B 5E 18 98 */	b __dl__FPv
lbl_80CED4A8:
/* 80CED4A8  7F C3 F3 78 */	mr r3, r30
/* 80CED4AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CED4B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CED4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CED4B8  7C 08 03 A6 */	mtlr r0
/* 80CED4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CED4C0  4E 80 00 20 */	blr 
