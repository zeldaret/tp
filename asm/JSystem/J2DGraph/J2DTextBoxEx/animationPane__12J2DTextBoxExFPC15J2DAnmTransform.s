lbl_8030896C:
/* 8030896C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80308970  7C 08 02 A6 */	mflr r0
/* 80308974  90 01 00 24 */	stw r0, 0x24(r1)
/* 80308978  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8030897C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80308980  7C 7E 1B 78 */	mr r30, r3
/* 80308984  7C 9F 23 78 */	mr r31, r4
/* 80308988  80 63 01 44 */	lwz r3, 0x144(r3)
/* 8030898C  28 03 00 00 */	cmplwi r3, 0
/* 80308990  41 82 00 38 */	beq lbl_803089C8
/* 80308994  A0 9E 01 3C */	lhz r4, 0x13c(r30)
/* 80308998  28 04 FF FF */	cmplwi r4, 0xffff
/* 8030899C  41 82 00 2C */	beq lbl_803089C8
/* 803089A0  38 A1 00 08 */	addi r5, r1, 8
/* 803089A4  48 00 36 A5 */	bl getVisibility__20J2DAnmVisibilityFullCFUsPUc
/* 803089A8  88 01 00 08 */	lbz r0, 8(r1)
/* 803089AC  28 00 00 00 */	cmplwi r0, 0
/* 803089B0  41 82 00 10 */	beq lbl_803089C0
/* 803089B4  38 00 00 01 */	li r0, 1
/* 803089B8  98 1E 00 B0 */	stb r0, 0xb0(r30)
/* 803089BC  48 00 00 0C */	b lbl_803089C8
lbl_803089C0:
/* 803089C0  38 00 00 00 */	li r0, 0
/* 803089C4  98 1E 00 B0 */	stb r0, 0xb0(r30)
lbl_803089C8:
/* 803089C8  7F C3 F3 78 */	mr r3, r30
/* 803089CC  7F E4 FB 78 */	mr r4, r31
/* 803089D0  4B FE F8 59 */	bl animationPane__7J2DPaneFPC15J2DAnmTransform
/* 803089D4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803089D8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803089DC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803089E0  7C 08 03 A6 */	mtlr r0
/* 803089E4  38 21 00 20 */	addi r1, r1, 0x20
/* 803089E8  4E 80 00 20 */	blr 
