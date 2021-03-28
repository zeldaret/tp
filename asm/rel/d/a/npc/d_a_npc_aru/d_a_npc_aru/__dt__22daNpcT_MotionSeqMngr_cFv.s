lbl_80956DDC:
/* 80956DDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80956DE0  7C 08 02 A6 */	mflr r0
/* 80956DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80956DE8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80956DEC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80956DF0  41 82 00 1C */	beq lbl_80956E0C
/* 80956DF4  3C A0 80 96 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80956DF8  38 05 80 08 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80956DFC  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80956E00  7C 80 07 35 */	extsh. r0, r4
/* 80956E04  40 81 00 08 */	ble lbl_80956E0C
/* 80956E08  4B 97 7F 34 */	b __dl__FPv
lbl_80956E0C:
/* 80956E0C  7F E3 FB 78 */	mr r3, r31
/* 80956E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80956E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80956E18  7C 08 03 A6 */	mtlr r0
/* 80956E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80956E20  4E 80 00 20 */	blr 
