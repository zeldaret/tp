lbl_80971FD0:
/* 80971FD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80971FD4  7C 08 02 A6 */	mflr r0
/* 80971FD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80971FDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80971FE0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80971FE4  41 82 00 1C */	beq lbl_80972000
/* 80971FE8  3C A0 80 97 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80973324@ha */
/* 80971FEC  38 05 33 24 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80973324@l */
/* 80971FF0  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80971FF4  7C 80 07 35 */	extsh. r0, r4
/* 80971FF8  40 81 00 08 */	ble lbl_80972000
/* 80971FFC  4B 95 CD 41 */	bl __dl__FPv
lbl_80972000:
/* 80972000  7F E3 FB 78 */	mr r3, r31
/* 80972004  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80972008  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8097200C  7C 08 03 A6 */	mtlr r0
/* 80972010  38 21 00 10 */	addi r1, r1, 0x10
/* 80972014  4E 80 00 20 */	blr 
