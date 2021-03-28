lbl_8022FB98:
/* 8022FB98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8022FB9C  7C 08 02 A6 */	mflr r0
/* 8022FBA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8022FBA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8022FBA8  7C 7F 1B 78 */	mr r31, r3
/* 8022FBAC  48 07 8E D9 */	bl __ct__Q28JMessage19TRenderingProcessorFPCQ28JMessage10TReference
/* 8022FBB0  3C 60 80 3C */	lis r3, __vt__33jmessage_string_tMeasureProcessor@ha
/* 8022FBB4  38 03 09 A0 */	addi r0, r3, __vt__33jmessage_string_tMeasureProcessor@l
/* 8022FBB8  90 1F 00 00 */	stw r0, 0(r31)
/* 8022FBBC  80 1F 00 04 */	lwz r0, 4(r31)
/* 8022FBC0  90 1F 00 38 */	stw r0, 0x38(r31)
/* 8022FBC4  80 7F 00 38 */	lwz r3, 0x38(r31)
/* 8022FBC8  4B FF FE 6D */	bl resetCharactor__26jmessage_string_tReferenceFv
/* 8022FBCC  7F E3 FB 78 */	mr r3, r31
/* 8022FBD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8022FBD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8022FBD8  7C 08 03 A6 */	mtlr r0
/* 8022FBDC  38 21 00 10 */	addi r1, r1, 0x10
/* 8022FBE0  4E 80 00 20 */	blr 
