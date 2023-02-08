lbl_8028B610:
/* 8028B610  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028B614  7C 08 02 A6 */	mflr r0
/* 8028B618  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028B61C  39 61 00 20 */	addi r11, r1, 0x20
/* 8028B620  48 0D 6B BD */	bl _savegpr_29
/* 8028B624  7C 7D 1B 78 */	mr r29, r3
/* 8028B628  7C 9E 23 78 */	mr r30, r4
/* 8028B62C  7C BF 2B 78 */	mr r31, r5
/* 8028B630  7F A5 EB 78 */	mr r5, r29
/* 8028B634  3C 60 80 3C */	lis r3, __vt__Q27JStudio8TAdaptor@ha /* 0x803C5610@ha */
/* 8028B638  38 03 56 10 */	addi r0, r3, __vt__Q27JStudio8TAdaptor@l /* 0x803C5610@l */
/* 8028B63C  90 1D 00 00 */	stw r0, 0(r29)
/* 8028B640  38 00 00 00 */	li r0, 0
/* 8028B644  90 1D 00 04 */	stw r0, 4(r29)
/* 8028B648  38 65 00 10 */	addi r3, r5, 0x10
/* 8028B64C  90 7D 00 08 */	stw r3, 8(r29)
/* 8028B650  38 00 00 04 */	li r0, 4
/* 8028B654  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8028B658  3C 80 80 3C */	lis r4, __vt__Q27JStudio21TAdaptor_ambientLight@ha /* 0x803C5560@ha */
/* 8028B65C  38 04 55 60 */	addi r0, r4, __vt__Q27JStudio21TAdaptor_ambientLight@l /* 0x803C5560@l */
/* 8028B660  90 1D 00 00 */	stw r0, 0(r29)
/* 8028B664  3C 80 80 29 */	lis r4, __ct__Q27JStudio14TVariableValueFv@ha /* 0x8028B568@ha */
/* 8028B668  38 84 B5 68 */	addi r4, r4, __ct__Q27JStudio14TVariableValueFv@l /* 0x8028B568@l */
/* 8028B66C  38 A0 00 00 */	li r5, 0
/* 8028B670  38 C0 00 14 */	li r6, 0x14
/* 8028B674  38 E0 00 04 */	li r7, 4
/* 8028B678  48 0D 66 E9 */	bl __construct_array
/* 8028B67C  93 DD 00 60 */	stw r30, 0x60(r29)
/* 8028B680  93 FD 00 64 */	stw r31, 0x64(r29)
/* 8028B684  3C 60 80 3C */	lis r3, __vt__Q214JStudio_JStage21TAdaptor_ambientLight@ha /* 0x803C5888@ha */
/* 8028B688  38 03 58 88 */	addi r0, r3, __vt__Q214JStudio_JStage21TAdaptor_ambientLight@l /* 0x803C5888@l */
/* 8028B68C  90 1D 00 00 */	stw r0, 0(r29)
/* 8028B690  7F A3 EB 78 */	mr r3, r29
/* 8028B694  39 61 00 20 */	addi r11, r1, 0x20
/* 8028B698  48 0D 6B 91 */	bl _restgpr_29
/* 8028B69C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028B6A0  7C 08 03 A6 */	mtlr r0
/* 8028B6A4  38 21 00 20 */	addi r1, r1, 0x20
/* 8028B6A8  4E 80 00 20 */	blr 
