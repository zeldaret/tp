lbl_80973EB4:
/* 80973EB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80973EB8  7C 08 02 A6 */	mflr r0
/* 80973EBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80973EC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80973EC4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80973EC8  41 82 00 1C */	beq lbl_80973EE4
/* 80973ECC  3C A0 80 98 */	lis r5, __vt__11J3DTexNoAnm@ha /* 0x80978A8C@ha */
/* 80973ED0  38 05 8A 8C */	addi r0, r5, __vt__11J3DTexNoAnm@l /* 0x80978A8C@l */
/* 80973ED4  90 1F 00 00 */	stw r0, 0(r31)
/* 80973ED8  7C 80 07 35 */	extsh. r0, r4
/* 80973EDC  40 81 00 08 */	ble lbl_80973EE4
/* 80973EE0  4B 95 AE 5D */	bl __dl__FPv
lbl_80973EE4:
/* 80973EE4  7F E3 FB 78 */	mr r3, r31
/* 80973EE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80973EEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80973EF0  7C 08 03 A6 */	mtlr r0
/* 80973EF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80973EF8  4E 80 00 20 */	blr 
