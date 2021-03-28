lbl_802A8090:
/* 802A8090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A8094  7C 08 02 A6 */	mflr r0
/* 802A8098  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A809C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A80A0  7C 7F 1B 78 */	mr r31, r3
/* 802A80A4  54 80 86 3E */	rlwinm r0, r4, 0x10, 0x18, 0x1f
/* 802A80A8  54 87 04 3E */	clrlwi r7, r4, 0x10
/* 802A80AC  2C 00 00 FD */	cmpwi r0, 0xfd
/* 802A80B0  41 82 00 B0 */	beq lbl_802A8160
/* 802A80B4  40 80 00 1C */	bge lbl_802A80D0
/* 802A80B8  2C 00 00 F6 */	cmpwi r0, 0xf6
/* 802A80BC  41 82 00 F8 */	beq lbl_802A81B4
/* 802A80C0  40 80 01 18 */	bge lbl_802A81D8
/* 802A80C4  2C 00 00 F5 */	cmpwi r0, 0xf5
/* 802A80C8  40 80 01 00 */	bge lbl_802A81C8
/* 802A80CC  48 00 01 0C */	b lbl_802A81D8
lbl_802A80D0:
/* 802A80D0  2C 00 00 FF */	cmpwi r0, 0xff
/* 802A80D4  41 82 00 0C */	beq lbl_802A80E0
/* 802A80D8  40 80 01 00 */	bge lbl_802A81D8
/* 802A80DC  48 00 00 5C */	b lbl_802A8138
lbl_802A80E0:
/* 802A80E0  2C 07 00 05 */	cmpwi r7, 5
/* 802A80E4  41 82 00 3C */	beq lbl_802A8120
/* 802A80E8  40 80 00 F0 */	bge lbl_802A81D8
/* 802A80EC  2C 07 00 04 */	cmpwi r7, 4
/* 802A80F0  40 80 00 08 */	bge lbl_802A80F8
/* 802A80F4  48 00 00 E4 */	b lbl_802A81D8
lbl_802A80F8:
/* 802A80F8  80 85 00 00 */	lwz r4, 0(r5)
/* 802A80FC  80 7F 00 04 */	lwz r3, 4(r31)
/* 802A8100  81 83 00 00 */	lwz r12, 0(r3)
/* 802A8104  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A8108  7D 89 03 A6 */	mtctr r12
/* 802A810C  4E 80 04 21 */	bctrl 
/* 802A8110  7C 64 1B 78 */	mr r4, r3
/* 802A8114  7F E3 FB 78 */	mr r3, r31
/* 802A8118  4B FF FA E1 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802A811C  48 00 00 BC */	b lbl_802A81D8
lbl_802A8120:
/* 802A8120  80 85 00 00 */	lwz r4, 0(r5)
/* 802A8124  48 00 0B 01 */	bl on_message__Q28JMessage10TProcessorCFUl
/* 802A8128  7C 64 1B 78 */	mr r4, r3
/* 802A812C  7F E3 FB 78 */	mr r3, r31
/* 802A8130  4B FF FA C9 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802A8134  48 00 00 A4 */	b lbl_802A81D8
lbl_802A8138:
/* 802A8138  80 7F 00 04 */	lwz r3, 4(r31)
/* 802A813C  7C E4 3B 78 */	mr r4, r7
/* 802A8140  81 83 00 00 */	lwz r12, 0(r3)
/* 802A8144  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802A8148  7D 89 03 A6 */	mtctr r12
/* 802A814C  4E 80 04 21 */	bctrl 
/* 802A8150  7C 64 1B 78 */	mr r4, r3
/* 802A8154  7F E3 FB 78 */	mr r3, r31
/* 802A8158  4B FF FA A1 */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802A815C  48 00 00 7C */	b lbl_802A81D8
lbl_802A8160:
/* 802A8160  80 7F 00 08 */	lwz r3, 8(r31)
/* 802A8164  80 83 00 0C */	lwz r4, 0xc(r3)
/* 802A8168  A0 04 00 08 */	lhz r0, 8(r4)
/* 802A816C  7C 07 00 40 */	cmplw r7, r0
/* 802A8170  40 80 00 18 */	bge lbl_802A8188
/* 802A8174  A0 04 00 0A */	lhz r0, 0xa(r4)
/* 802A8178  7C 07 01 D6 */	mullw r0, r7, r0
/* 802A817C  7C 84 02 14 */	add r4, r4, r0
/* 802A8180  38 84 00 10 */	addi r4, r4, 0x10
/* 802A8184  48 00 00 08 */	b lbl_802A818C
lbl_802A8188:
/* 802A8188  38 80 00 00 */	li r4, 0
lbl_802A818C:
/* 802A818C  28 04 00 00 */	cmplwi r4, 0
/* 802A8190  40 82 00 0C */	bne lbl_802A819C
/* 802A8194  38 80 00 00 */	li r4, 0
/* 802A8198  48 00 00 10 */	b lbl_802A81A8
lbl_802A819C:
/* 802A819C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 802A81A0  80 04 00 00 */	lwz r0, 0(r4)
/* 802A81A4  7C 83 02 14 */	add r4, r3, r0
lbl_802A81A8:
/* 802A81A8  7F E3 FB 78 */	mr r3, r31
/* 802A81AC  4B FF FA 4D */	bl stack_pushCurrent__Q28JMessage10TProcessorFPCc
/* 802A81B0  48 00 00 28 */	b lbl_802A81D8
lbl_802A81B4:
/* 802A81B4  3C 80 80 2B */	lis r4, process_onSelect_limited___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@ha
/* 802A81B8  38 84 83 3C */	addi r4, r4, process_onSelect_limited___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@l
/* 802A81BC  7C C5 32 14 */	add r6, r5, r6
/* 802A81C0  4B FF FC 79 */	bl on_select_begin__Q28JMessage10TProcessorFPFPQ28JMessage10TProcessor_PCcPCvPCcUl
/* 802A81C4  48 00 00 14 */	b lbl_802A81D8
lbl_802A81C8:
/* 802A81C8  3C 80 80 2B */	lis r4, process_onSelect___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@ha
/* 802A81CC  38 84 83 58 */	addi r4, r4, process_onSelect___Q28JMessage10TProcessorFPQ28JMessage10TProcessor@l
/* 802A81D0  7C C5 32 14 */	add r6, r5, r6
/* 802A81D4  4B FF FC 65 */	bl on_select_begin__Q28JMessage10TProcessorFPFPQ28JMessage10TProcessor_PCcPCvPCcUl
lbl_802A81D8:
/* 802A81D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A81DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A81E0  7C 08 03 A6 */	mtlr r0
/* 802A81E4  38 21 00 10 */	addi r1, r1, 0x10
/* 802A81E8  4E 80 00 20 */	blr 
