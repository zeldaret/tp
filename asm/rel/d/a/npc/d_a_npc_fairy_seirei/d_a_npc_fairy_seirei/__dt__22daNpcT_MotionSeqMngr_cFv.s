lbl_80541898:
/* 80541898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054189C  7C 08 02 A6 */	mflr r0
/* 805418A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805418A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805418A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 805418AC  41 82 00 1C */	beq lbl_805418C8
/* 805418B0  3C A0 80 54 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80541FD4@ha */
/* 805418B4  38 05 1F D4 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80541FD4@l */
/* 805418B8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 805418BC  7C 80 07 35 */	extsh. r0, r4
/* 805418C0  40 81 00 08 */	ble lbl_805418C8
/* 805418C4  4B D8 D4 79 */	bl __dl__FPv
lbl_805418C8:
/* 805418C8  7F E3 FB 78 */	mr r3, r31
/* 805418CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805418D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805418D4  7C 08 03 A6 */	mtlr r0
/* 805418D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805418DC  4E 80 00 20 */	blr 
