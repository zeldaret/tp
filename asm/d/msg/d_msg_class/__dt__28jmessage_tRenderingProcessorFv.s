lbl_8023293C:
/* 8023293C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80232940  7C 08 02 A6 */	mflr r0
/* 80232944  90 01 00 14 */	stw r0, 0x14(r1)
/* 80232948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8023294C  93 C1 00 08 */	stw r30, 8(r1)
/* 80232950  7C 7E 1B 79 */	or. r30, r3, r3
/* 80232954  7C 9F 23 78 */	mr r31, r4
/* 80232958  41 82 00 28 */	beq lbl_80232980
/* 8023295C  3C 80 80 3C */	lis r4, __vt__28jmessage_tRenderingProcessor@ha /* 0x803C09FC@ha */
/* 80232960  38 04 09 FC */	addi r0, r4, __vt__28jmessage_tRenderingProcessor@l /* 0x803C09FC@l */
/* 80232964  90 1E 00 00 */	stw r0, 0(r30)
/* 80232968  38 80 00 00 */	li r4, 0
/* 8023296C  48 07 61 55 */	bl __dt__Q28JMessage19TRenderingProcessorFv
/* 80232970  7F E0 07 35 */	extsh. r0, r31
/* 80232974  40 81 00 0C */	ble lbl_80232980
/* 80232978  7F C3 F3 78 */	mr r3, r30
/* 8023297C  48 09 C3 C1 */	bl __dl__FPv
lbl_80232980:
/* 80232980  7F C3 F3 78 */	mr r3, r30
/* 80232984  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80232988  83 C1 00 08 */	lwz r30, 8(r1)
/* 8023298C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80232990  7C 08 03 A6 */	mtlr r0
/* 80232994  38 21 00 10 */	addi r1, r1, 0x10
/* 80232998  4E 80 00 20 */	blr 
