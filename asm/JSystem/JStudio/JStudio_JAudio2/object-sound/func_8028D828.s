lbl_8028D828:
/* 8028D828  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D82C  7C 08 02 A6 */	mflr r0
/* 8028D830  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D834  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028D838  93 C1 00 08 */	stw r30, 8(r1)
/* 8028D83C  7C 7E 1B 78 */	mr r30, r3
/* 8028D840  7C 9F 23 78 */	mr r31, r4
/* 8028D844  7F C5 F3 78 */	mr r5, r30
/* 8028D848  3C 60 80 3C */	lis r3, __vt__Q27JStudio8TAdaptor@ha
/* 8028D84C  38 03 56 10 */	addi r0, r3, __vt__Q27JStudio8TAdaptor@l
/* 8028D850  90 1E 00 00 */	stw r0, 0(r30)
/* 8028D854  38 00 00 00 */	li r0, 0
/* 8028D858  90 1E 00 04 */	stw r0, 4(r30)
/* 8028D85C  38 65 00 10 */	addi r3, r5, 0x10
/* 8028D860  90 7E 00 08 */	stw r3, 8(r30)
/* 8028D864  38 00 00 0D */	li r0, 0xd
/* 8028D868  90 1E 00 0C */	stw r0, 0xc(r30)
/* 8028D86C  3C 80 80 3C */	lis r4, __vt__Q27JStudio14TAdaptor_sound@ha
/* 8028D870  38 04 53 5C */	addi r0, r4, __vt__Q27JStudio14TAdaptor_sound@l
/* 8028D874  90 1E 00 00 */	stw r0, 0(r30)
/* 8028D878  3C 80 80 29 */	lis r4, __ct__Q27JStudio14TVariableValueFv@ha
/* 8028D87C  38 84 B5 68 */	addi r4, r4, __ct__Q27JStudio14TVariableValueFv@l
/* 8028D880  38 A0 00 00 */	li r5, 0
/* 8028D884  38 C0 00 14 */	li r6, 0x14
/* 8028D888  38 E0 00 0D */	li r7, 0xd
/* 8028D88C  48 0D 44 D5 */	bl __construct_array
/* 8028D890  3C 60 80 3C */	lis r3, __vt__Q215JStudio_JAudio214TAdaptor_sound@ha
/* 8028D894  38 03 5A 88 */	addi r0, r3, __vt__Q215JStudio_JAudio214TAdaptor_sound@l
/* 8028D898  90 1E 00 00 */	stw r0, 0(r30)
/* 8028D89C  93 FE 01 14 */	stw r31, 0x114(r30)
/* 8028D8A0  38 60 00 00 */	li r3, 0
/* 8028D8A4  90 7E 01 18 */	stw r3, 0x118(r30)
/* 8028D8A8  98 7E 01 1C */	stb r3, 0x11c(r30)
/* 8028D8AC  98 7E 01 1D */	stb r3, 0x11d(r30)
/* 8028D8B0  98 7E 01 1E */	stb r3, 0x11e(r30)
/* 8028D8B4  98 7E 01 1F */	stb r3, 0x11f(r30)
/* 8028D8B8  98 7E 01 20 */	stb r3, 0x120(r30)
/* 8028D8BC  38 00 FF FF */	li r0, -1
/* 8028D8C0  90 1E 01 24 */	stw r0, 0x124(r30)
/* 8028D8C4  90 7E 01 28 */	stw r3, 0x128(r30)
/* 8028D8C8  90 7E 01 2C */	stw r3, 0x12c(r30)
/* 8028D8CC  90 7E 01 3C */	stw r3, 0x13c(r30)
/* 8028D8D0  90 1E 01 40 */	stw r0, 0x140(r30)
/* 8028D8D4  98 7E 01 44 */	stb r3, 0x144(r30)
/* 8028D8D8  7F C3 F3 78 */	mr r3, r30
/* 8028D8DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028D8E0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028D8E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D8E8  7C 08 03 A6 */	mtlr r0
/* 8028D8EC  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D8F0  4E 80 00 20 */	blr 
