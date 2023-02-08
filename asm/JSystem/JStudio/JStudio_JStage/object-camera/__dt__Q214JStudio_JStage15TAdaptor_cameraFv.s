lbl_8028B960:
/* 8028B960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028B964  7C 08 02 A6 */	mflr r0
/* 8028B968  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028B96C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028B970  93 C1 00 08 */	stw r30, 8(r1)
/* 8028B974  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028B978  7C 9F 23 78 */	mr r31, r4
/* 8028B97C  41 82 00 3C */	beq lbl_8028B9B8
/* 8028B980  3C 80 80 3C */	lis r4, __vt__Q214JStudio_JStage15TAdaptor_camera@ha /* 0x803C5908@ha */
/* 8028B984  38 04 59 08 */	addi r0, r4, __vt__Q214JStudio_JStage15TAdaptor_camera@l /* 0x803C5908@l */
/* 8028B988  90 1E 00 00 */	stw r0, 0(r30)
/* 8028B98C  81 83 00 00 */	lwz r12, 0(r3)
/* 8028B990  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028B994  7D 89 03 A6 */	mtctr r12
/* 8028B998  4E 80 04 21 */	bctrl 
/* 8028B99C  7F C3 F3 78 */	mr r3, r30
/* 8028B9A0  38 80 00 00 */	li r4, 0
/* 8028B9A4  4B FF B4 79 */	bl __dt__Q27JStudio15TAdaptor_cameraFv
/* 8028B9A8  7F E0 07 35 */	extsh. r0, r31
/* 8028B9AC  40 81 00 0C */	ble lbl_8028B9B8
/* 8028B9B0  7F C3 F3 78 */	mr r3, r30
/* 8028B9B4  48 04 33 89 */	bl __dl__FPv
lbl_8028B9B8:
/* 8028B9B8  7F C3 F3 78 */	mr r3, r30
/* 8028B9BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028B9C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028B9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028B9C8  7C 08 03 A6 */	mtlr r0
/* 8028B9CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8028B9D0  4E 80 00 20 */	blr 
