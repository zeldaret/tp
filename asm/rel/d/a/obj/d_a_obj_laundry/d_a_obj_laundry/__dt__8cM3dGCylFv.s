lbl_80C51EC4:
/* 80C51EC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C51EC8  7C 08 02 A6 */	mflr r0
/* 80C51ECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C51ED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C51ED4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C51ED8  41 82 00 1C */	beq lbl_80C51EF4
/* 80C51EDC  3C A0 80 C5 */	lis r5, __vt__8cM3dGCyl@ha
/* 80C51EE0  38 05 21 68 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80C51EE4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80C51EE8  7C 80 07 35 */	extsh. r0, r4
/* 80C51EEC  40 81 00 08 */	ble lbl_80C51EF4
/* 80C51EF0  4B 67 CE 4C */	b __dl__FPv
lbl_80C51EF4:
/* 80C51EF4  7F E3 FB 78 */	mr r3, r31
/* 80C51EF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C51EFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C51F00  7C 08 03 A6 */	mtlr r0
/* 80C51F04  38 21 00 10 */	addi r1, r1, 0x10
/* 80C51F08  4E 80 00 20 */	blr 
