lbl_802A87E0:
/* 802A87E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A87E4  7C 08 02 A6 */	mflr r0
/* 802A87E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A87EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A87F0  93 C1 00 08 */	stw r30, 8(r1)
/* 802A87F4  7C 7E 1B 78 */	mr r30, r3
/* 802A87F8  7C A8 2B 78 */	mr r8, r5
/* 802A87FC  54 87 86 3E */	rlwinm r7, r4, 0x10, 0x18, 0x1f
/* 802A8800  54 9F 04 3E */	clrlwi r31, r4, 0x10
/* 802A8804  38 07 FF 09 */	addi r0, r7, -247
/* 802A8808  28 00 00 08 */	cmplwi r0, 8
/* 802A880C  41 81 00 FC */	bgt lbl_802A8908
/* 802A8810  3C E0 80 3D */	lis r7, lit_1418@ha /* 0x803C9B70@ha */
/* 802A8814  38 E7 9B 70 */	addi r7, r7, lit_1418@l /* 0x803C9B70@l */
/* 802A8818  54 00 10 3A */	slwi r0, r0, 2
/* 802A881C  7C 07 00 2E */	lwzx r0, r7, r0
/* 802A8820  7C 09 03 A6 */	mtctr r0
/* 802A8824  4E 80 04 20 */	bctr 
/* 802A8828  2C 1F 00 06 */	cmpwi r31, 6
/* 802A882C  41 82 00 28 */	beq lbl_802A8854
/* 802A8830  40 80 00 18 */	bge lbl_802A8848
/* 802A8834  2C 1F 00 04 */	cmpwi r31, 4
/* 802A8838  40 80 00 30 */	bge lbl_802A8868
/* 802A883C  2C 1F 00 00 */	cmpwi r31, 0
/* 802A8840  40 80 00 D4 */	bge lbl_802A8914
/* 802A8844  48 00 00 24 */	b lbl_802A8868
lbl_802A8848:
/* 802A8848  2C 1F 00 08 */	cmpwi r31, 8
/* 802A884C  40 80 00 1C */	bge lbl_802A8868
/* 802A8850  48 00 00 C4 */	b lbl_802A8914
lbl_802A8854:
/* 802A8854  80 A8 00 00 */	lwz r5, 0(r8)
/* 802A8858  3C 80 80 2B */	lis r4, process_onJump___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessor@ha /* 0x802A89EC@ha */
/* 802A885C  38 84 89 EC */	addi r4, r4, process_onJump___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessor@l /* 0x802A89EC@l */
/* 802A8860  4B FF FD 71 */	bl on_jump_register__Q28JMessage18TSequenceProcessorFPFPCQ28JMessage18TSequenceProcessor_PCvUl
/* 802A8864  48 00 00 B0 */	b lbl_802A8914
lbl_802A8868:
/* 802A8868  7F C3 F3 78 */	mr r3, r30
/* 802A886C  7D 05 43 78 */	mr r5, r8
/* 802A8870  4B FF F8 21 */	bl do_tag___Q28JMessage10TProcessorFUlPCvUl
/* 802A8874  48 00 00 A0 */	b lbl_802A8914
/* 802A8878  3C 80 80 2B */	lis r4, process_onJump_limited___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessor@ha /* 0x802A89B8@ha */
/* 802A887C  38 84 89 B8 */	addi r4, r4, process_onJump_limited___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessor@l /* 0x802A89B8@l */
/* 802A8880  7F E5 FB 78 */	mr r5, r31
/* 802A8884  4B FF FD 4D */	bl on_jump_register__Q28JMessage18TSequenceProcessorFPFPCQ28JMessage18TSequenceProcessor_PCvUl
/* 802A8888  48 00 00 8C */	b lbl_802A8914
/* 802A888C  3C 80 80 2B */	lis r4, process_onBranch_limited___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUl@ha /* 0x802A8A18@ha */
/* 802A8890  38 84 8A 18 */	addi r4, r4, process_onBranch_limited___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUl@l /* 0x802A8A18@l */
/* 802A8894  7F E6 FB 78 */	mr r6, r31
/* 802A8898  4B FF FD F9 */	bl on_branch_register__Q28JMessage18TSequenceProcessorFPFPCQ28JMessage18TSequenceProcessorUl_PCvPCvUl
/* 802A889C  48 00 00 78 */	b lbl_802A8914
/* 802A88A0  3C 80 80 2B */	lis r4, process_onBranch___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUl@ha /* 0x802A8A50@ha */
/* 802A88A4  38 84 8A 50 */	addi r4, r4, process_onBranch___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUl@l /* 0x802A8A50@l */
/* 802A88A8  7F E6 FB 78 */	mr r6, r31
/* 802A88AC  4B FF FD E5 */	bl on_branch_register__Q28JMessage18TSequenceProcessorFPFPCQ28JMessage18TSequenceProcessorUl_PCvPCvUl
/* 802A88B0  48 00 00 64 */	b lbl_802A8914
/* 802A88B4  7F E4 FB 78 */	mr r4, r31
/* 802A88B8  4B FF FD E9 */	bl on_branch_query__Q28JMessage18TSequenceProcessorFUl
/* 802A88BC  48 00 00 58 */	b lbl_802A8914
/* 802A88C0  3C 80 80 2B */	lis r4, process_onBranch_limited___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUl@ha /* 0x802A8A18@ha */
/* 802A88C4  38 84 8A 18 */	addi r4, r4, process_onBranch_limited___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUl@l /* 0x802A8A18@l */
/* 802A88C8  38 A8 00 02 */	addi r5, r8, 2
/* 802A88CC  A0 C8 00 00 */	lhz r6, 0(r8)
/* 802A88D0  4B FF FD C1 */	bl on_branch_register__Q28JMessage18TSequenceProcessorFPFPCQ28JMessage18TSequenceProcessorUl_PCvPCvUl
/* 802A88D4  7F C3 F3 78 */	mr r3, r30
/* 802A88D8  7F E4 FB 78 */	mr r4, r31
/* 802A88DC  4B FF FD C5 */	bl on_branch_query__Q28JMessage18TSequenceProcessorFUl
/* 802A88E0  48 00 00 34 */	b lbl_802A8914
/* 802A88E4  3C 80 80 2B */	lis r4, process_onBranch___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUl@ha /* 0x802A8A50@ha */
/* 802A88E8  38 84 8A 50 */	addi r4, r4, process_onBranch___Q28JMessage18TSequenceProcessorFPCQ28JMessage18TSequenceProcessorUl@l /* 0x802A8A50@l */
/* 802A88EC  38 A8 00 02 */	addi r5, r8, 2
/* 802A88F0  A0 C8 00 00 */	lhz r6, 0(r8)
/* 802A88F4  4B FF FD 9D */	bl on_branch_register__Q28JMessage18TSequenceProcessorFPFPCQ28JMessage18TSequenceProcessorUl_PCvPCvUl
/* 802A88F8  7F C3 F3 78 */	mr r3, r30
/* 802A88FC  7F E4 FB 78 */	mr r4, r31
/* 802A8900  4B FF FD A1 */	bl on_branch_query__Q28JMessage18TSequenceProcessorFUl
/* 802A8904  48 00 00 10 */	b lbl_802A8914
lbl_802A8908:
/* 802A8908  7F C3 F3 78 */	mr r3, r30
/* 802A890C  7D 05 43 78 */	mr r5, r8
/* 802A8910  4B FF F7 81 */	bl do_tag___Q28JMessage10TProcessorFUlPCvUl
lbl_802A8914:
/* 802A8914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A8918  83 C1 00 08 */	lwz r30, 8(r1)
/* 802A891C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A8920  7C 08 03 A6 */	mtlr r0
/* 802A8924  38 21 00 10 */	addi r1, r1, 0x10
/* 802A8928  4E 80 00 20 */	blr 
