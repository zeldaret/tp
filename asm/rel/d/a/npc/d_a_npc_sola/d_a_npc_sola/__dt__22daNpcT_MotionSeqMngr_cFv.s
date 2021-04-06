lbl_80AEE8F0:
/* 80AEE8F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEE8F4  7C 08 02 A6 */	mflr r0
/* 80AEE8F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEE8FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEE900  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEE904  41 82 00 1C */	beq lbl_80AEE920
/* 80AEE908  3C A0 80 AF */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha /* 0x80AEF36C@ha */
/* 80AEE90C  38 05 F3 6C */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l /* 0x80AEF36C@l */
/* 80AEE910  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80AEE914  7C 80 07 35 */	extsh. r0, r4
/* 80AEE918  40 81 00 08 */	ble lbl_80AEE920
/* 80AEE91C  4B 7E 04 21 */	bl __dl__FPv
lbl_80AEE920:
/* 80AEE920  7F E3 FB 78 */	mr r3, r31
/* 80AEE924  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEE928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEE92C  7C 08 03 A6 */	mtlr r0
/* 80AEE930  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEE934  4E 80 00 20 */	blr 
