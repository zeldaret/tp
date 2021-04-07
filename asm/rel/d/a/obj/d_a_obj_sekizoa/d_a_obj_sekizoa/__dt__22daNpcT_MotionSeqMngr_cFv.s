lbl_80CD52AC:
/* 80CD52AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD52B0  7C 08 02 A6 */	mflr r0
/* 80CD52B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD52B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CD52BC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CD52C0  41 82 00 1C */	beq lbl_80CD52DC
/* 80CD52C4  3C A0 80 CD */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80CD67C0@ha */
/* 80CD52C8  38 05 67 C0 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80CD67C0@l */
/* 80CD52CC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80CD52D0  7C 80 07 35 */	extsh. r0, r4
/* 80CD52D4  40 81 00 08 */	ble lbl_80CD52DC
/* 80CD52D8  4B 5F 9A 65 */	bl __dl__FPv
lbl_80CD52DC:
/* 80CD52DC  7F E3 FB 78 */	mr r3, r31
/* 80CD52E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CD52E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD52E8  7C 08 03 A6 */	mtlr r0
/* 80CD52EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD52F0  4E 80 00 20 */	blr 
