lbl_8028E094:
/* 8028E094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028E098  7C 08 02 A6 */	mflr r0
/* 8028E09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028E0A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028E0A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8028E0A8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028E0AC  7C 9F 23 78 */	mr r31, r4
/* 8028E0B0  41 82 00 28 */	beq lbl_8028E0D8
/* 8028E0B4  3C 80 80 3C */	lis r4, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@ha
/* 8028E0B8  38 04 5A 78 */	addi r0, r4, __vt__Q315JStudio_JAudio214TAdaptor_sound13TVVOSetValue_@l
/* 8028E0BC  90 1E 00 00 */	stw r0, 0(r30)
/* 8028E0C0  38 80 00 00 */	li r4, 0
/* 8028E0C4  4B FF 7D 49 */	bl __dt__Q37JStudio14TVariableValue7TOutputFv
/* 8028E0C8  7F E0 07 35 */	extsh. r0, r31
/* 8028E0CC  40 81 00 0C */	ble lbl_8028E0D8
/* 8028E0D0  7F C3 F3 78 */	mr r3, r30
/* 8028E0D4  48 04 0C 69 */	bl __dl__FPv
lbl_8028E0D8:
/* 8028E0D8  7F C3 F3 78 */	mr r3, r30
/* 8028E0DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028E0E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028E0E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028E0E8  7C 08 03 A6 */	mtlr r0
/* 8028E0EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8028E0F0  4E 80 00 20 */	blr 
