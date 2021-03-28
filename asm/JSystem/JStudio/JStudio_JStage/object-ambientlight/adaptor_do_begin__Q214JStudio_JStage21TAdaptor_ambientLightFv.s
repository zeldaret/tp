lbl_8028B724:
/* 8028B724  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028B728  7C 08 02 A6 */	mflr r0
/* 8028B72C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028B730  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028B734  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8028B738  7C 7E 1B 78 */	mr r30, r3
/* 8028B73C  83 E3 00 64 */	lwz r31, 0x64(r3)
/* 8028B740  7F E3 FB 78 */	mr r3, r31
/* 8028B744  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028B748  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8028B74C  7D 89 03 A6 */	mtctr r12
/* 8028B750  4E 80 04 21 */	bctrl 
/* 8028B754  60 64 00 01 */	ori r4, r3, 1
/* 8028B758  7F E3 FB 78 */	mr r3, r31
/* 8028B75C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028B760  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8028B764  7D 89 03 A6 */	mtctr r12
/* 8028B768  4E 80 04 21 */	bctrl 
/* 8028B76C  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8028B770  81 83 00 00 */	lwz r12, 0(r3)
/* 8028B774  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8028B778  7D 89 03 A6 */	mtctr r12
/* 8028B77C  4E 80 04 21 */	bctrl 
/* 8028B780  90 61 00 08 */	stw r3, 8(r1)
/* 8028B784  7F C3 F3 78 */	mr r3, r30
/* 8028B788  3C 80 80 3A */	lis r4, sauVariableValue_4_COLOR_RGBA__Q27JStudio21TAdaptor_ambientLight@ha
/* 8028B78C  38 84 AA 98 */	addi r4, r4, sauVariableValue_4_COLOR_RGBA__Q27JStudio21TAdaptor_ambientLight@l
/* 8028B790  38 A1 00 08 */	addi r5, r1, 8
/* 8028B794  4B FF AB 19 */	bl adaptor_setVariableValue_GXColor__Q27JStudio8TAdaptorFPCUlRC8_GXColor
/* 8028B798  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028B79C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8028B7A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028B7A4  7C 08 03 A6 */	mtlr r0
/* 8028B7A8  38 21 00 20 */	addi r1, r1, 0x20
/* 8028B7AC  4E 80 00 20 */	blr 
