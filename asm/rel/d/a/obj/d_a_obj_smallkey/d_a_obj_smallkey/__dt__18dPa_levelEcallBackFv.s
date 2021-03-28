lbl_80CDB73C:
/* 80CDB73C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDB740  7C 08 02 A6 */	mflr r0
/* 80CDB744  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDB748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDB74C  93 C1 00 08 */	stw r30, 8(r1)
/* 80CDB750  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CDB754  7C 9F 23 78 */	mr r31, r4
/* 80CDB758  41 82 00 3C */	beq lbl_80CDB794
/* 80CDB75C  3C 80 80 CE */	lis r4, __vt__18dPa_levelEcallBack@ha
/* 80CDB760  38 04 B9 FC */	addi r0, r4, __vt__18dPa_levelEcallBack@l
/* 80CDB764  90 1E 00 00 */	stw r0, 0(r30)
/* 80CDB768  81 83 00 00 */	lwz r12, 0(r3)
/* 80CDB76C  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80CDB770  7D 89 03 A6 */	mtctr r12
/* 80CDB774  4E 80 04 21 */	bctrl 
/* 80CDB778  7F C3 F3 78 */	mr r3, r30
/* 80CDB77C  38 80 00 00 */	li r4, 0
/* 80CDB780  4B 5A 2F 24 */	b __dt__18JPAEmitterCallBackFv
/* 80CDB784  7F E0 07 35 */	extsh. r0, r31
/* 80CDB788  40 81 00 0C */	ble lbl_80CDB794
/* 80CDB78C  7F C3 F3 78 */	mr r3, r30
/* 80CDB790  4B 5F 35 AC */	b __dl__FPv
lbl_80CDB794:
/* 80CDB794  7F C3 F3 78 */	mr r3, r30
/* 80CDB798  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDB79C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CDB7A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDB7A4  7C 08 03 A6 */	mtlr r0
/* 80CDB7A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDB7AC  4E 80 00 20 */	blr 
