lbl_8028C574:
/* 8028C574  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028C578  7C 08 02 A6 */	mflr r0
/* 8028C57C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028C580  39 61 00 20 */	addi r11, r1, 0x20
/* 8028C584  48 0D 5C 59 */	bl _savegpr_29
/* 8028C588  7C 7D 1B 78 */	mr r29, r3
/* 8028C58C  7C 9E 23 78 */	mr r30, r4
/* 8028C590  7C BF 2B 78 */	mr r31, r5
/* 8028C594  7F A5 EB 78 */	mr r5, r29
/* 8028C598  3C 60 80 3C */	lis r3, __vt__Q27JStudio8TAdaptor@ha /* 0x803C5610@ha */
/* 8028C59C  38 03 56 10 */	addi r0, r3, __vt__Q27JStudio8TAdaptor@l /* 0x803C5610@l */
/* 8028C5A0  90 1D 00 00 */	stw r0, 0(r29)
/* 8028C5A4  38 00 00 00 */	li r0, 0
/* 8028C5A8  90 1D 00 04 */	stw r0, 4(r29)
/* 8028C5AC  38 65 00 10 */	addi r3, r5, 0x10
/* 8028C5B0  90 7D 00 08 */	stw r3, 8(r29)
/* 8028C5B4  38 00 00 06 */	li r0, 6
/* 8028C5B8  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8028C5BC  3C 80 80 3C */	lis r4, __vt__Q27JStudio12TAdaptor_fog@ha /* 0x803C54C4@ha */
/* 8028C5C0  38 04 54 C4 */	addi r0, r4, __vt__Q27JStudio12TAdaptor_fog@l /* 0x803C54C4@l */
/* 8028C5C4  90 1D 00 00 */	stw r0, 0(r29)
/* 8028C5C8  3C 80 80 29 */	lis r4, __ct__Q27JStudio14TVariableValueFv@ha /* 0x8028B568@ha */
/* 8028C5CC  38 84 B5 68 */	addi r4, r4, __ct__Q27JStudio14TVariableValueFv@l /* 0x8028B568@l */
/* 8028C5D0  38 A0 00 00 */	li r5, 0
/* 8028C5D4  38 C0 00 14 */	li r6, 0x14
/* 8028C5D8  38 E0 00 06 */	li r7, 6
/* 8028C5DC  48 0D 57 85 */	bl __construct_array
/* 8028C5E0  93 DD 00 88 */	stw r30, 0x88(r29)
/* 8028C5E4  93 FD 00 8C */	stw r31, 0x8c(r29)
/* 8028C5E8  3C 60 80 3C */	lis r3, __vt__Q214JStudio_JStage12TAdaptor_fog@ha /* 0x803C59D0@ha */
/* 8028C5EC  38 03 59 D0 */	addi r0, r3, __vt__Q214JStudio_JStage12TAdaptor_fog@l /* 0x803C59D0@l */
/* 8028C5F0  90 1D 00 00 */	stw r0, 0(r29)
/* 8028C5F4  7F A3 EB 78 */	mr r3, r29
/* 8028C5F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8028C5FC  48 0D 5C 2D */	bl _restgpr_29
/* 8028C600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028C604  7C 08 03 A6 */	mtlr r0
/* 8028C608  38 21 00 20 */	addi r1, r1, 0x20
/* 8028C60C  4E 80 00 20 */	blr 
