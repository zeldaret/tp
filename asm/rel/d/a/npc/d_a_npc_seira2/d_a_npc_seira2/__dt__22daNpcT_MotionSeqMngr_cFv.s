lbl_80AD40F4:
/* 80AD40F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD40F8  7C 08 02 A6 */	mflr r0
/* 80AD40FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD4100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD4104  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD4108  41 82 00 1C */	beq lbl_80AD4124
/* 80AD410C  3C A0 80 AD */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AD54F4@ha */
/* 80AD4110  38 05 54 F4 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AD54F4@l */
/* 80AD4114  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80AD4118  7C 80 07 35 */	extsh. r0, r4
/* 80AD411C  40 81 00 08 */	ble lbl_80AD4124
/* 80AD4120  4B 7F AC 1D */	bl __dl__FPv
lbl_80AD4124:
/* 80AD4124  7F E3 FB 78 */	mr r3, r31
/* 80AD4128  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD412C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD4130  7C 08 03 A6 */	mtlr r0
/* 80AD4134  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD4138  4E 80 00 20 */	blr 
