lbl_8028CB50:
/* 8028CB50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028CB54  7C 08 02 A6 */	mflr r0
/* 8028CB58  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028CB5C  39 61 00 20 */	addi r11, r1, 0x20
/* 8028CB60  48 0D 56 7D */	bl _savegpr_29
/* 8028CB64  7C 7D 1B 78 */	mr r29, r3
/* 8028CB68  7C 9E 23 78 */	mr r30, r4
/* 8028CB6C  7C BF 2B 78 */	mr r31, r5
/* 8028CB70  7F A5 EB 78 */	mr r5, r29
/* 8028CB74  3C 60 80 3C */	lis r3, __vt__Q27JStudio8TAdaptor@ha /* 0x803C5610@ha */
/* 8028CB78  38 03 56 10 */	addi r0, r3, __vt__Q27JStudio8TAdaptor@l /* 0x803C5610@l */
/* 8028CB7C  90 1D 00 00 */	stw r0, 0(r29)
/* 8028CB80  38 00 00 00 */	li r0, 0
/* 8028CB84  90 1D 00 04 */	stw r0, 4(r29)
/* 8028CB88  38 65 00 10 */	addi r3, r5, 0x10
/* 8028CB8C  90 7D 00 08 */	stw r3, 8(r29)
/* 8028CB90  38 00 00 0D */	li r0, 0xd
/* 8028CB94  90 1D 00 0C */	stw r0, 0xc(r29)
/* 8028CB98  3C 80 80 3C */	lis r4, __vt__Q27JStudio14TAdaptor_light@ha /* 0x803C547C@ha */
/* 8028CB9C  38 04 54 7C */	addi r0, r4, __vt__Q27JStudio14TAdaptor_light@l /* 0x803C547C@l */
/* 8028CBA0  90 1D 00 00 */	stw r0, 0(r29)
/* 8028CBA4  3C 80 80 29 */	lis r4, __ct__Q27JStudio14TVariableValueFv@ha /* 0x8028B568@ha */
/* 8028CBA8  38 84 B5 68 */	addi r4, r4, __ct__Q27JStudio14TVariableValueFv@l /* 0x8028B568@l */
/* 8028CBAC  38 A0 00 00 */	li r5, 0
/* 8028CBB0  38 C0 00 14 */	li r6, 0x14
/* 8028CBB4  38 E0 00 0D */	li r7, 0xd
/* 8028CBB8  48 0D 51 A9 */	bl __construct_array
/* 8028CBBC  93 DD 01 14 */	stw r30, 0x114(r29)
/* 8028CBC0  93 FD 01 18 */	stw r31, 0x118(r29)
/* 8028CBC4  3C 60 80 3C */	lis r3, __vt__Q214JStudio_JStage14TAdaptor_light@ha /* 0x803C5A40@ha */
/* 8028CBC8  38 03 5A 40 */	addi r0, r3, __vt__Q214JStudio_JStage14TAdaptor_light@l /* 0x803C5A40@l */
/* 8028CBCC  90 1D 00 00 */	stw r0, 0(r29)
/* 8028CBD0  38 00 00 00 */	li r0, 0
/* 8028CBD4  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 8028CBD8  7F A3 EB 78 */	mr r3, r29
/* 8028CBDC  39 61 00 20 */	addi r11, r1, 0x20
/* 8028CBE0  48 0D 56 49 */	bl _restgpr_29
/* 8028CBE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028CBE8  7C 08 03 A6 */	mtlr r0
/* 8028CBEC  38 21 00 20 */	addi r1, r1, 0x20
/* 8028CBF0  4E 80 00 20 */	blr 
