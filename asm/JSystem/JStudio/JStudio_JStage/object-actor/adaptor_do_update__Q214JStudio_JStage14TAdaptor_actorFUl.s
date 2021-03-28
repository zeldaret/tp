lbl_8028A92C:
/* 8028A92C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028A930  7C 08 02 A6 */	mflr r0
/* 8028A934  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028A938  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028A93C  7C 7F 1B 78 */	mr r31, r3
/* 8028A940  80 83 00 04 */	lwz r4, 4(r3)
/* 8028A944  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8028A948  48 00 03 F1 */	bl setJSG_SRT___Q214JStudio_JStage14TAdaptor_actorFPCQ27JStudio8TControl
/* 8028A94C  80 7F 01 2C */	lwz r3, 0x12c(r31)
/* 8028A950  81 83 00 00 */	lwz r12, 0(r3)
/* 8028A954  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028A958  7D 89 03 A6 */	mtctr r12
/* 8028A95C  4E 80 04 21 */	bctrl 
/* 8028A960  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028A964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028A968  7C 08 03 A6 */	mtlr r0
/* 8028A96C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028A970  4E 80 00 20 */	blr 
