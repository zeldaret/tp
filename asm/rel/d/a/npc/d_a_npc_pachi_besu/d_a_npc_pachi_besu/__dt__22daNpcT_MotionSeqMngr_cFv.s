lbl_80A961D4:
/* 80A961D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A961D8  7C 08 02 A6 */	mflr r0
/* 80A961DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A961E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A961E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A961E8  41 82 00 1C */	beq lbl_80A96204
/* 80A961EC  3C A0 80 A9 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A961F0  38 05 79 B0 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A961F4  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80A961F8  7C 80 07 35 */	extsh. r0, r4
/* 80A961FC  40 81 00 08 */	ble lbl_80A96204
/* 80A96200  4B 83 8B 3C */	b __dl__FPv
lbl_80A96204:
/* 80A96204  7F E3 FB 78 */	mr r3, r31
/* 80A96208  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A9620C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A96210  7C 08 03 A6 */	mtlr r0
/* 80A96214  38 21 00 10 */	addi r1, r1, 0x10
/* 80A96218  4E 80 00 20 */	blr 
