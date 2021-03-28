lbl_80BE0228:
/* 80BE0228  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE022C  7C 08 02 A6 */	mflr r0
/* 80BE0230  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE0234  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE0238  93 C1 00 08 */	stw r30, 8(r1)
/* 80BE023C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80BE0240  7C 9F 23 78 */	mr r31, r4
/* 80BE0244  41 82 00 4C */	beq lbl_80BE0290
/* 80BE0248  3C 80 80 3B */	lis r4, __vt__19dPa_followEcallBack@ha
/* 80BE024C  38 04 85 2C */	addi r0, r4, __vt__19dPa_followEcallBack@l
/* 80BE0250  90 1E 00 00 */	stw r0, 0(r30)
/* 80BE0254  41 82 00 2C */	beq lbl_80BE0280
/* 80BE0258  3C 80 80 BE */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 80BE025C  38 04 21 B4 */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 80BE0260  90 1E 00 00 */	stw r0, 0(r30)
/* 80BE0264  81 83 00 00 */	lwz r12, 0(r3)
/* 80BE0268  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80BE026C  7D 89 03 A6 */	mtctr r12
/* 80BE0270  4E 80 04 21 */	bctrl 
/* 80BE0274  7F C3 F3 78 */	mr r3, r30
/* 80BE0278  38 80 00 00 */	li r4, 0
/* 80BE027C  4B 69 E4 28 */	b __dt__18JPAEmitterCallBackFv
lbl_80BE0280:
/* 80BE0280  7F E0 07 35 */	extsh. r0, r31
/* 80BE0284  40 81 00 0C */	ble lbl_80BE0290
/* 80BE0288  7F C3 F3 78 */	mr r3, r30
/* 80BE028C  4B 6E EA B0 */	b __dl__FPv
lbl_80BE0290:
/* 80BE0290  7F C3 F3 78 */	mr r3, r30
/* 80BE0294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE0298  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BE029C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE02A0  7C 08 03 A6 */	mtlr r0
/* 80BE02A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE02A8  4E 80 00 20 */	blr 
