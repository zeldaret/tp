lbl_80D220C4:
/* 80D220C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D220C8  7C 08 02 A6 */	mflr r0
/* 80D220CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D220D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D220D4  93 C1 00 08 */	stw r30, 8(r1)
/* 80D220D8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D220DC  7C 9F 23 78 */	mr r31, r4
/* 80D220E0  41 82 00 4C */	beq lbl_80D2212C
/* 80D220E4  3C 80 80 3B */	lis r4, __vt__19dPa_followEcallBack@ha /* 0x803A852C@ha */
/* 80D220E8  38 04 85 2C */	addi r0, r4, __vt__19dPa_followEcallBack@l /* 0x803A852C@l */
/* 80D220EC  90 1E 00 00 */	stw r0, 0(r30)
/* 80D220F0  41 82 00 2C */	beq lbl_80D2211C
/* 80D220F4  3C 80 80 D2 */	lis r4, __vt__18dPa_levelEcallBack@ha /* 0x80D24084@ha */
/* 80D220F8  38 04 40 84 */	addi r0, r4, __vt__18dPa_levelEcallBack@l /* 0x80D24084@l */
/* 80D220FC  90 1E 00 00 */	stw r0, 0(r30)
/* 80D22100  81 83 00 00 */	lwz r12, 0(r3)
/* 80D22104  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80D22108  7D 89 03 A6 */	mtctr r12
/* 80D2210C  4E 80 04 21 */	bctrl 
/* 80D22110  7F C3 F3 78 */	mr r3, r30
/* 80D22114  38 80 00 00 */	li r4, 0
/* 80D22118  4B 55 C5 8D */	bl __dt__18JPAEmitterCallBackFv
lbl_80D2211C:
/* 80D2211C  7F E0 07 35 */	extsh. r0, r31
/* 80D22120  40 81 00 0C */	ble lbl_80D2212C
/* 80D22124  7F C3 F3 78 */	mr r3, r30
/* 80D22128  4B 5A CC 15 */	bl __dl__FPv
lbl_80D2212C:
/* 80D2212C  7F C3 F3 78 */	mr r3, r30
/* 80D22130  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D22134  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D22138  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2213C  7C 08 03 A6 */	mtlr r0
/* 80D22140  38 21 00 10 */	addi r1, r1, 0x10
/* 80D22144  4E 80 00 20 */	blr 
