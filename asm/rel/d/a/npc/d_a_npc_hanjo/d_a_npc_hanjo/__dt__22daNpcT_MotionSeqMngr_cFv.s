lbl_809FF8BC:
/* 809FF8BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809FF8C0  7C 08 02 A6 */	mflr r0
/* 809FF8C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809FF8C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809FF8CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 809FF8D0  41 82 00 1C */	beq lbl_809FF8EC
/* 809FF8D4  3C A0 80 A0 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80A01164@ha */
/* 809FF8D8  38 05 11 64 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80A01164@l */
/* 809FF8DC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 809FF8E0  7C 80 07 35 */	extsh. r0, r4
/* 809FF8E4  40 81 00 08 */	ble lbl_809FF8EC
/* 809FF8E8  4B 8C F4 55 */	bl __dl__FPv
lbl_809FF8EC:
/* 809FF8EC  7F E3 FB 78 */	mr r3, r31
/* 809FF8F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809FF8F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809FF8F8  7C 08 03 A6 */	mtlr r0
/* 809FF8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 809FF900  4E 80 00 20 */	blr 
