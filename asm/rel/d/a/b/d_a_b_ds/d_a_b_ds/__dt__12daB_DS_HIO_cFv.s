lbl_805DC89C:
/* 805DC89C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DC8A0  7C 08 02 A6 */	mflr r0
/* 805DC8A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DC8A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DC8AC  7C 7F 1B 79 */	or. r31, r3, r3
/* 805DC8B0  41 82 00 1C */	beq lbl_805DC8CC
/* 805DC8B4  3C A0 80 5E */	lis r5, __vt__12daB_DS_HIO_c@ha /* 0x805DDA5C@ha */
/* 805DC8B8  38 05 DA 5C */	addi r0, r5, __vt__12daB_DS_HIO_c@l /* 0x805DDA5C@l */
/* 805DC8BC  90 1F 00 00 */	stw r0, 0(r31)
/* 805DC8C0  7C 80 07 35 */	extsh. r0, r4
/* 805DC8C4  40 81 00 08 */	ble lbl_805DC8CC
/* 805DC8C8  4B CF 24 75 */	bl __dl__FPv
lbl_805DC8CC:
/* 805DC8CC  7F E3 FB 78 */	mr r3, r31
/* 805DC8D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DC8D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DC8D8  7C 08 03 A6 */	mtlr r0
/* 805DC8DC  38 21 00 10 */	addi r1, r1, 0x10
/* 805DC8E0  4E 80 00 20 */	blr 
