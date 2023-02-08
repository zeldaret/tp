lbl_8099907C:
/* 8099907C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80999080  7C 08 02 A6 */	mflr r0
/* 80999084  90 01 00 14 */	stw r0, 0x14(r1)
/* 80999088  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8099908C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80999090  41 82 00 1C */	beq lbl_809990AC
/* 80999094  3C A0 80 9A */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80999F18@ha */
/* 80999098  38 05 9F 18 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80999F18@l */
/* 8099909C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 809990A0  7C 80 07 35 */	extsh. r0, r4
/* 809990A4  40 81 00 08 */	ble lbl_809990AC
/* 809990A8  4B 93 5C 95 */	bl __dl__FPv
lbl_809990AC:
/* 809990AC  7F E3 FB 78 */	mr r3, r31
/* 809990B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809990B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809990B8  7C 08 03 A6 */	mtlr r0
/* 809990BC  38 21 00 10 */	addi r1, r1, 0x10
/* 809990C0  4E 80 00 20 */	blr 
