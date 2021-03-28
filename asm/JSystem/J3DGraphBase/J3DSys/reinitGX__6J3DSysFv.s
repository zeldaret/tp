lbl_8031073C:
/* 8031073C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80310740  7C 08 02 A6 */	mflr r0
/* 80310744  90 01 00 14 */	stw r0, 0x14(r1)
/* 80310748  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031074C  7C 7F 1B 78 */	mr r31, r3
/* 80310750  48 00 00 4D */	bl reinitGenMode__6J3DSysFv
/* 80310754  7F E3 FB 78 */	mr r3, r31
/* 80310758  48 00 00 91 */	bl reinitLighting__6J3DSysFv
/* 8031075C  7F E3 FB 78 */	mr r3, r31
/* 80310760  48 00 01 35 */	bl reinitTransform__6J3DSysFv
/* 80310764  7F E3 FB 78 */	mr r3, r31
/* 80310768  48 00 02 31 */	bl reinitTexture__6J3DSysFv
/* 8031076C  7F E3 FB 78 */	mr r3, r31
/* 80310770  48 00 02 CD */	bl reinitTevStages__6J3DSysFv
/* 80310774  7F E3 FB 78 */	mr r3, r31
/* 80310778  48 00 05 CD */	bl reinitIndStages__6J3DSysFv
/* 8031077C  7F E3 FB 78 */	mr r3, r31
/* 80310780  48 00 06 BD */	bl reinitPixelProc__6J3DSysFv
/* 80310784  48 04 B7 49 */	bl GXFlush
/* 80310788  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031078C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80310790  7C 08 03 A6 */	mtlr r0
/* 80310794  38 21 00 10 */	addi r1, r1, 0x10
/* 80310798  4E 80 00 20 */	blr 
