lbl_80C017F0:
/* 80C017F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C017F4  7C 08 02 A6 */	mflr r0
/* 80C017F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C017FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C01800  7C 7F 1B 78 */	mr r31, r3
/* 80C01804  A0 03 0A 90 */	lhz r0, 0xa90(r3)
/* 80C01808  28 00 00 16 */	cmplwi r0, 0x16
/* 80C0180C  40 80 00 48 */	bge lbl_80C01854
/* 80C01810  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80C01814  3C 60 80 C1 */	lis r3, mBaseMotionList__11daObj_GrA_c@ha /* 0x80C104DC@ha */
/* 80C01818  38 03 04 DC */	addi r0, r3, mBaseMotionList__11daObj_GrA_c@l /* 0x80C104DC@l */
/* 80C0181C  7C 60 22 14 */	add r3, r0, r4
/* 80C01820  4B 76 07 F9 */	bl __ptmf_test
/* 80C01824  2C 03 00 00 */	cmpwi r3, 0
/* 80C01828  41 82 00 2C */	beq lbl_80C01854
/* 80C0182C  7F E3 FB 78 */	mr r3, r31
/* 80C01830  88 9F 0A 8D */	lbz r4, 0xa8d(r31)
/* 80C01834  A0 1F 0A 90 */	lhz r0, 0xa90(r31)
/* 80C01838  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80C0183C  3C A0 80 C1 */	lis r5, mBaseMotionList__11daObj_GrA_c@ha /* 0x80C104DC@ha */
/* 80C01840  38 05 04 DC */	addi r0, r5, mBaseMotionList__11daObj_GrA_c@l /* 0x80C104DC@l */
/* 80C01844  7D 80 32 14 */	add r12, r0, r6
/* 80C01848  4B 76 08 3D */	bl __ptmf_scall
/* 80C0184C  60 00 00 00 */	nop 
/* 80C01850  90 7F 0A 88 */	stw r3, 0xa88(r31)
lbl_80C01854:
/* 80C01854  A0 1F 0A 92 */	lhz r0, 0xa92(r31)
/* 80C01858  28 00 00 0E */	cmplwi r0, 0xe
/* 80C0185C  40 80 00 44 */	bge lbl_80C018A0
/* 80C01860  1C 80 00 0C */	mulli r4, r0, 0xc
/* 80C01864  3C 60 80 C1 */	lis r3, mFaceMotionList__11daObj_GrA_c@ha /* 0x80C1068C@ha */
/* 80C01868  38 03 06 8C */	addi r0, r3, mFaceMotionList__11daObj_GrA_c@l /* 0x80C1068C@l */
/* 80C0186C  7C 60 22 14 */	add r3, r0, r4
/* 80C01870  4B 76 07 A9 */	bl __ptmf_test
/* 80C01874  2C 03 00 00 */	cmpwi r3, 0
/* 80C01878  41 82 00 28 */	beq lbl_80C018A0
/* 80C0187C  7F E3 FB 78 */	mr r3, r31
/* 80C01880  88 9F 0A 8E */	lbz r4, 0xa8e(r31)
/* 80C01884  A0 1F 0A 92 */	lhz r0, 0xa92(r31)
/* 80C01888  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80C0188C  3C A0 80 C1 */	lis r5, mFaceMotionList__11daObj_GrA_c@ha /* 0x80C1068C@ha */
/* 80C01890  38 05 06 8C */	addi r0, r5, mFaceMotionList__11daObj_GrA_c@l /* 0x80C1068C@l */
/* 80C01894  7D 80 32 14 */	add r12, r0, r6
/* 80C01898  4B 76 07 ED */	bl __ptmf_scall
/* 80C0189C  60 00 00 00 */	nop 
lbl_80C018A0:
/* 80C018A0  38 00 00 00 */	li r0, 0
/* 80C018A4  98 1F 0A 8D */	stb r0, 0xa8d(r31)
/* 80C018A8  98 1F 0A 8E */	stb r0, 0xa8e(r31)
/* 80C018AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C018B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C018B4  7C 08 03 A6 */	mtlr r0
/* 80C018B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C018BC  4E 80 00 20 */	blr 
