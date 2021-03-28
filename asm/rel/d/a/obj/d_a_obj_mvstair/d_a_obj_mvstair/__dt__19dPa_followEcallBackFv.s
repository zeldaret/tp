lbl_80C9E704:
/* 80C9E704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9E708  7C 08 02 A6 */	mflr r0
/* 80C9E70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9E710  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9E714  93 C1 00 08 */	stw r30, 8(r1)
/* 80C9E718  7C 7E 1B 79 */	or. r30, r3, r3
/* 80C9E71C  7C 9F 23 78 */	mr r31, r4
/* 80C9E720  41 82 00 4C */	beq lbl_80C9E76C
/* 80C9E724  3C 80 80 3B */	lis r4, __vt__19dPa_followEcallBack@ha
/* 80C9E728  38 04 85 2C */	addi r0, r4, __vt__19dPa_followEcallBack@l
/* 80C9E72C  90 1E 00 00 */	stw r0, 0(r30)
/* 80C9E730  41 82 00 2C */	beq lbl_80C9E75C
/* 80C9E734  3C 80 80 CA */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 80C9E738  38 04 EA 58 */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 80C9E73C  90 1E 00 00 */	stw r0, 0(r30)
/* 80C9E740  81 83 00 00 */	lwz r12, 0(r3)
/* 80C9E744  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80C9E748  7D 89 03 A6 */	mtctr r12
/* 80C9E74C  4E 80 04 21 */	bctrl 
/* 80C9E750  7F C3 F3 78 */	mr r3, r30
/* 80C9E754  38 80 00 00 */	li r4, 0
/* 80C9E758  4B 5D FF 4C */	b __dt__18JPAEmitterCallBackFv
lbl_80C9E75C:
/* 80C9E75C  7F E0 07 35 */	extsh. r0, r31
/* 80C9E760  40 81 00 0C */	ble lbl_80C9E76C
/* 80C9E764  7F C3 F3 78 */	mr r3, r30
/* 80C9E768  4B 63 05 D4 */	b __dl__FPv
lbl_80C9E76C:
/* 80C9E76C  7F C3 F3 78 */	mr r3, r30
/* 80C9E770  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9E774  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C9E778  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9E77C  7C 08 03 A6 */	mtlr r0
/* 80C9E780  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9E784  4E 80 00 20 */	blr 
