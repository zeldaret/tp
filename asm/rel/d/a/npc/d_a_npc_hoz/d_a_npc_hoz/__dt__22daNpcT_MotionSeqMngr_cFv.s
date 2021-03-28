lbl_80A05DF0:
/* 80A05DF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A05DF4  7C 08 02 A6 */	mflr r0
/* 80A05DF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A05DFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A05E00  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A05E04  41 82 00 1C */	beq lbl_80A05E20
/* 80A05E08  3C A0 80 A0 */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 80A05E0C  38 05 77 D4 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 80A05E10  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80A05E14  7C 80 07 35 */	extsh. r0, r4
/* 80A05E18  40 81 00 08 */	ble lbl_80A05E20
/* 80A05E1C  4B 8C 8F 20 */	b __dl__FPv
lbl_80A05E20:
/* 80A05E20  7F E3 FB 78 */	mr r3, r31
/* 80A05E24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A05E28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A05E2C  7C 08 03 A6 */	mtlr r0
/* 80A05E30  38 21 00 10 */	addi r1, r1, 0x10
/* 80A05E34  4E 80 00 20 */	blr 
