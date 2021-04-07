lbl_80D1A8BC:
/* 80D1A8BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D1A8C0  7C 08 02 A6 */	mflr r0
/* 80D1A8C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1A8C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1A8CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D1A8D0  41 82 00 1C */	beq lbl_80D1A8EC
/* 80D1A8D4  3C A0 80 D2 */	lis r5, __vt__8cM3dGPla@ha /* 0x80D1B884@ha */
/* 80D1A8D8  38 05 B8 84 */	addi r0, r5, __vt__8cM3dGPla@l /* 0x80D1B884@l */
/* 80D1A8DC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80D1A8E0  7C 80 07 35 */	extsh. r0, r4
/* 80D1A8E4  40 81 00 08 */	ble lbl_80D1A8EC
/* 80D1A8E8  4B 5B 44 55 */	bl __dl__FPv
lbl_80D1A8EC:
/* 80D1A8EC  7F E3 FB 78 */	mr r3, r31
/* 80D1A8F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1A8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D1A8F8  7C 08 03 A6 */	mtlr r0
/* 80D1A8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D1A900  4E 80 00 20 */	blr 
