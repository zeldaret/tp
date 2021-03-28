lbl_8028D258:
/* 8028D258  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D25C  7C 08 02 A6 */	mflr r0
/* 8028D260  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D264  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028D268  93 C1 00 08 */	stw r30, 8(r1)
/* 8028D26C  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028D270  7C 9F 23 78 */	mr r31, r4
/* 8028D274  41 82 00 28 */	beq lbl_8028D29C
/* 8028D278  3C 80 80 3C */	lis r4, __vt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_@ha
/* 8028D27C  38 04 5A 30 */	addi r0, r4, __vt__Q314JStudio_JStage14TAdaptor_light20TVVOutput_direction_@l
/* 8028D280  90 1E 00 00 */	stw r0, 0(r30)
/* 8028D284  38 80 00 00 */	li r4, 0
/* 8028D288  4B FF 8B 85 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028D28C  7F E0 07 35 */	extsh. r0, r31
/* 8028D290  40 81 00 0C */	ble lbl_8028D29C
/* 8028D294  7F C3 F3 78 */	mr r3, r30
/* 8028D298  48 04 1A A5 */	bl __dl__FPv
lbl_8028D29C:
/* 8028D29C  7F C3 F3 78 */	mr r3, r30
/* 8028D2A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028D2A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028D2A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D2AC  7C 08 03 A6 */	mtlr r0
/* 8028D2B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D2B4  4E 80 00 20 */	blr 
