lbl_802AB64C:
/* 802AB64C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802AB650  7C 08 02 A6 */	mflr r0
/* 802AB654  90 01 00 14 */	stw r0, 0x14(r1)
/* 802AB658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802AB65C  7C 7F 1B 78 */	mr r31, r3
/* 802AB660  93 ED 86 08 */	stw r31, data_80450B88(r13)
/* 802AB664  3C 80 80 2A */	lis r4, __ct__14JAISoundHandleFv@ha
/* 802AB668  38 84 4A C4 */	addi r4, r4, __ct__14JAISoundHandleFv@l
/* 802AB66C  3C A0 80 00 */	lis r5, __dt__14JAISoundHandleFv@ha
/* 802AB670  38 A5 78 38 */	addi r5, r5, __dt__14JAISoundHandleFv@l
/* 802AB674  38 C0 00 04 */	li r6, 4
/* 802AB678  38 E0 00 18 */	li r7, 0x18
/* 802AB67C  48 0B 66 E5 */	bl __construct_array
/* 802AB680  93 FF 00 60 */	stw r31, 0x60(r31)
/* 802AB684  38 00 00 18 */	li r0, 0x18
/* 802AB688  90 1F 00 64 */	stw r0, 0x64(r31)
/* 802AB68C  38 7F 00 68 */	addi r3, r31, 0x68
/* 802AB690  3C 80 80 2B */	lis r4, __ct__12Z2MultiSeObjFv@ha
/* 802AB694  38 84 B7 10 */	addi r4, r4, __ct__12Z2MultiSeObjFv@l
/* 802AB698  3C A0 80 00 */	lis r5, __dt__12Z2MultiSeObjFv@ha
/* 802AB69C  38 A5 78 88 */	addi r5, r5, __dt__12Z2MultiSeObjFv@l
/* 802AB6A0  38 C0 00 24 */	li r6, 0x24
/* 802AB6A4  38 E0 00 0A */	li r7, 0xa
/* 802AB6A8  48 0B 66 B9 */	bl __construct_array
/* 802AB6AC  38 7F 01 D4 */	addi r3, r31, 0x1d4
/* 802AB6B0  3C 80 80 2B */	lis r4, __ct__12Z2MultiSeObjFv@ha
/* 802AB6B4  38 84 B7 10 */	addi r4, r4, __ct__12Z2MultiSeObjFv@l
/* 802AB6B8  3C A0 80 00 */	lis r5, __dt__12Z2MultiSeObjFv@ha
/* 802AB6BC  38 A5 78 88 */	addi r5, r5, __dt__12Z2MultiSeObjFv@l
/* 802AB6C0  38 C0 00 24 */	li r6, 0x24
/* 802AB6C4  38 E0 00 0A */	li r7, 0xa
/* 802AB6C8  48 0B 66 99 */	bl __construct_array
/* 802AB6CC  38 00 00 00 */	li r0, 0
/* 802AB6D0  98 1F 03 C0 */	stb r0, 0x3c0(r31)
/* 802AB6D4  98 1F 03 C1 */	stb r0, 0x3c1(r31)
/* 802AB6D8  98 1F 03 C2 */	stb r0, 0x3c2(r31)
/* 802AB6DC  98 1F 03 C3 */	stb r0, 0x3c3(r31)
/* 802AB6E0  98 1F 03 C4 */	stb r0, 0x3c4(r31)
/* 802AB6E4  98 1F 03 C5 */	stb r0, 0x3c5(r31)
/* 802AB6E8  98 1F 03 C9 */	stb r0, 0x3c9(r31)
/* 802AB6EC  98 1F 03 CA */	stb r0, 0x3ca(r31)
/* 802AB6F0  98 1F 03 CB */	stb r0, 0x3cb(r31)
/* 802AB6F4  98 1F 03 CC */	stb r0, 0x3cc(r31)
/* 802AB6F8  7F E3 FB 78 */	mr r3, r31
/* 802AB6FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802AB700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802AB704  7C 08 03 A6 */	mtlr r0
/* 802AB708  38 21 00 10 */	addi r1, r1, 0x10
/* 802AB70C  4E 80 00 20 */	blr 
