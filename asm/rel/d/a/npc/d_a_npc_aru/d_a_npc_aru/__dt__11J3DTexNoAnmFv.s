lbl_80951EC8:
/* 80951EC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80951ECC  7C 08 02 A6 */	mflr r0
/* 80951ED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80951ED4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80951ED8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80951EDC  41 82 00 1C */	beq lbl_80951EF8
/* 80951EE0  3C A0 80 95 */	lis r5, __vt__11J3DTexNoAnm@ha
/* 80951EE4  38 05 7F A8 */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 80951EE8  90 1F 00 00 */	stw r0, 0(r31)
/* 80951EEC  7C 80 07 35 */	extsh. r0, r4
/* 80951EF0  40 81 00 08 */	ble lbl_80951EF8
/* 80951EF4  4B 97 CE 48 */	b __dl__FPv
lbl_80951EF8:
/* 80951EF8  7F E3 FB 78 */	mr r3, r31
/* 80951EFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80951F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80951F04  7C 08 03 A6 */	mtlr r0
/* 80951F08  38 21 00 10 */	addi r1, r1, 0x10
/* 80951F0C  4E 80 00 20 */	blr 
