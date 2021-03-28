lbl_8018CE38:
/* 8018CE38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8018CE3C  7C 08 02 A6 */	mflr r0
/* 8018CE40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8018CE44  39 61 00 20 */	addi r11, r1, 0x20
/* 8018CE48  48 1D 53 91 */	bl _savegpr_28
/* 8018CE4C  7C 7C 1B 78 */	mr r28, r3
/* 8018CE50  C0 02 9F B0 */	lfs f0, lit_7201(r2)
/* 8018CE54  80 63 00 98 */	lwz r3, 0x98(r3)
/* 8018CE58  D0 03 00 08 */	stfs f0, 8(r3)
/* 8018CE5C  3B A0 00 00 */	li r29, 0
/* 8018CE60  3B E0 00 00 */	li r31, 0
lbl_8018CE64:
/* 8018CE64  7F DC FA 14 */	add r30, r28, r31
/* 8018CE68  80 7E 01 64 */	lwz r3, 0x164(r30)
/* 8018CE6C  80 63 00 04 */	lwz r3, 4(r3)
/* 8018CE70  80 9C 00 98 */	lwz r4, 0x98(r28)
/* 8018CE74  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CE78  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8018CE7C  7D 89 03 A6 */	mtctr r12
/* 8018CE80  4E 80 04 21 */	bctrl 
/* 8018CE84  80 7E 01 70 */	lwz r3, 0x170(r30)
/* 8018CE88  80 63 00 04 */	lwz r3, 4(r3)
/* 8018CE8C  80 9C 00 98 */	lwz r4, 0x98(r28)
/* 8018CE90  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CE94  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8018CE98  7D 89 03 A6 */	mtctr r12
/* 8018CE9C  4E 80 04 21 */	bctrl 
/* 8018CEA0  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8018CEA4  80 63 00 04 */	lwz r3, 4(r3)
/* 8018CEA8  80 9C 00 98 */	lwz r4, 0x98(r28)
/* 8018CEAC  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CEB0  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8018CEB4  7D 89 03 A6 */	mtctr r12
/* 8018CEB8  4E 80 04 21 */	bctrl 
/* 8018CEBC  80 7E 01 64 */	lwz r3, 0x164(r30)
/* 8018CEC0  80 63 00 04 */	lwz r3, 4(r3)
/* 8018CEC4  48 16 B1 09 */	bl animationTransform__7J2DPaneFv
/* 8018CEC8  80 7E 01 70 */	lwz r3, 0x170(r30)
/* 8018CECC  80 63 00 04 */	lwz r3, 4(r3)
/* 8018CED0  48 16 B0 FD */	bl animationTransform__7J2DPaneFv
/* 8018CED4  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8018CED8  80 63 00 04 */	lwz r3, 4(r3)
/* 8018CEDC  48 16 B0 F1 */	bl animationTransform__7J2DPaneFv
/* 8018CEE0  80 7E 01 64 */	lwz r3, 0x164(r30)
/* 8018CEE4  38 80 00 00 */	li r4, 0
/* 8018CEE8  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CEEC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018CEF0  7D 89 03 A6 */	mtctr r12
/* 8018CEF4  4E 80 04 21 */	bctrl 
/* 8018CEF8  80 7E 01 70 */	lwz r3, 0x170(r30)
/* 8018CEFC  38 80 00 00 */	li r4, 0
/* 8018CF00  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CF04  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018CF08  7D 89 03 A6 */	mtctr r12
/* 8018CF0C  4E 80 04 21 */	bctrl 
/* 8018CF10  80 7E 01 7C */	lwz r3, 0x17c(r30)
/* 8018CF14  38 80 00 00 */	li r4, 0
/* 8018CF18  81 83 00 00 */	lwz r12, 0(r3)
/* 8018CF1C  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 8018CF20  7D 89 03 A6 */	mtctr r12
/* 8018CF24  4E 80 04 21 */	bctrl 
/* 8018CF28  3B BD 00 01 */	addi r29, r29, 1
/* 8018CF2C  2C 1D 00 03 */	cmpwi r29, 3
/* 8018CF30  3B FF 00 04 */	addi r31, r31, 4
/* 8018CF34  41 80 FF 30 */	blt lbl_8018CE64
/* 8018CF38  39 61 00 20 */	addi r11, r1, 0x20
/* 8018CF3C  48 1D 52 E9 */	bl _restgpr_28
/* 8018CF40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8018CF44  7C 08 03 A6 */	mtlr r0
/* 8018CF48  38 21 00 20 */	addi r1, r1, 0x20
/* 8018CF4C  4E 80 00 20 */	blr 
