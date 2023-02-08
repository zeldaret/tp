lbl_80AA510C:
/* 80AA510C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AA5110  7C 08 02 A6 */	mflr r0
/* 80AA5114  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AA5118  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AA511C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80AA5120  7C 7E 1B 78 */	mr r30, r3
/* 80AA5124  3C 80 80 AA */	lis r4, lit_4109@ha /* 0x80AA698C@ha */
/* 80AA5128  3B E4 69 8C */	addi r31, r4, lit_4109@l /* 0x80AA698C@l */
/* 80AA512C  88 03 0B 22 */	lbz r0, 0xb22(r3)
/* 80AA5130  28 00 00 00 */	cmplwi r0, 0
/* 80AA5134  41 82 00 5C */	beq lbl_80AA5190
/* 80AA5138  38 80 00 12 */	li r4, 0x12
/* 80AA513C  80 BE 0B 00 */	lwz r5, 0xb00(r30)
/* 80AA5140  4B 6B 2F B1 */	bl getAnmP__10daNpcCd2_cFii
/* 80AA5144  7C 64 1B 78 */	mr r4, r3
/* 80AA5148  7F C3 F3 78 */	mr r3, r30
/* 80AA514C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80AA5150  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 80AA5154  38 A0 00 02 */	li r5, 2
/* 80AA5158  38 C0 00 00 */	li r6, 0
/* 80AA515C  38 E0 FF FF */	li r7, -1
/* 80AA5160  4B 6B 3D A1 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 80AA5164  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80AA5168  FC 40 08 90 */	fmr f2, f1
/* 80AA516C  48 00 08 51 */	bl func_80AA59BC
/* 80AA5170  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 80AA5174  EC 00 08 2A */	fadds f0, f0, f1
/* 80AA5178  FC 00 00 1E */	fctiwz f0, f0
/* 80AA517C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80AA5180  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80AA5184  90 1E 0A A0 */	stw r0, 0xaa0(r30)
/* 80AA5188  38 00 00 00 */	li r0, 0
/* 80AA518C  98 1E 0B 22 */	stb r0, 0xb22(r30)
lbl_80AA5190:
/* 80AA5190  80 1E 0A A0 */	lwz r0, 0xaa0(r30)
/* 80AA5194  7C 00 00 34 */	cntlzw r0, r0
/* 80AA5198  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80AA519C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AA51A0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80AA51A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AA51A8  7C 08 03 A6 */	mtlr r0
/* 80AA51AC  38 21 00 20 */	addi r1, r1, 0x20
/* 80AA51B0  4E 80 00 20 */	blr 
