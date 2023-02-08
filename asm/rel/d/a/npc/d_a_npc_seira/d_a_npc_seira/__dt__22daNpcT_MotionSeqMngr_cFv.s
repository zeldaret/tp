lbl_80ACF47C:
/* 80ACF47C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACF480  7C 08 02 A6 */	mflr r0
/* 80ACF484  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACF488  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80ACF48C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80ACF490  41 82 00 1C */	beq lbl_80ACF4AC
/* 80ACF494  3C A0 80 AD */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AD09D8@ha */
/* 80ACF498  38 05 09 D8 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AD09D8@l */
/* 80ACF49C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80ACF4A0  7C 80 07 35 */	extsh. r0, r4
/* 80ACF4A4  40 81 00 08 */	ble lbl_80ACF4AC
/* 80ACF4A8  4B 7F F8 95 */	bl __dl__FPv
lbl_80ACF4AC:
/* 80ACF4AC  7F E3 FB 78 */	mr r3, r31
/* 80ACF4B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80ACF4B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACF4B8  7C 08 03 A6 */	mtlr r0
/* 80ACF4BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACF4C0  4E 80 00 20 */	blr 
