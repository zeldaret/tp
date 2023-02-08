lbl_80230BC8:
/* 80230BC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80230BCC  7C 08 02 A6 */	mflr r0
/* 80230BD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80230BD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80230BD8  7C 7F 1B 78 */	mr r31, r3
/* 80230BDC  48 07 7E A9 */	bl __ct__Q28JMessage19TRenderingProcessorFPCQ28JMessage10TReference
/* 80230BE0  3C 60 80 3C */	lis r3, __vt__35jmessage_string_tRenderingProcessor@ha /* 0x803C0908@ha */
/* 80230BE4  38 03 09 08 */	addi r0, r3, __vt__35jmessage_string_tRenderingProcessor@l /* 0x803C0908@l */
/* 80230BE8  90 1F 00 00 */	stw r0, 0(r31)
/* 80230BEC  80 1F 00 04 */	lwz r0, 4(r31)
/* 80230BF0  90 1F 00 38 */	stw r0, 0x38(r31)
/* 80230BF4  7F E3 FB 78 */	mr r3, r31
/* 80230BF8  81 9F 00 00 */	lwz r12, 0(r31)
/* 80230BFC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80230C00  7D 89 03 A6 */	mtctr r12
/* 80230C04  4E 80 04 21 */	bctrl 
/* 80230C08  7F E3 FB 78 */	mr r3, r31
/* 80230C0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80230C10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80230C14  7C 08 03 A6 */	mtlr r0
/* 80230C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80230C1C  4E 80 00 20 */	blr 
