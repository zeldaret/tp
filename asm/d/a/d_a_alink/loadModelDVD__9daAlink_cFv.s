lbl_80140070:
/* 80140070  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80140074  7C 08 02 A6 */	mflr r0
/* 80140078  90 01 00 14 */	stw r0, 0x14(r1)
/* 8014007C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80140080  7C 7F 1B 78 */	mr r31, r3
/* 80140084  88 83 2F BF */	lbz r4, 0x2fbf(r3)
/* 80140088  28 04 00 00 */	cmplwi r4, 0
/* 8014008C  41 82 01 4C */	beq lbl_801401D8
/* 80140090  38 04 FF FF */	addi r0, r4, -1
/* 80140094  98 1F 2F BF */	stb r0, 0x2fbf(r31)
/* 80140098  88 1F 2F BF */	lbz r0, 0x2fbf(r31)
/* 8014009C  28 00 00 02 */	cmplwi r0, 2
/* 801400A0  40 82 00 94 */	bne lbl_80140134
/* 801400A4  38 7F 21 88 */	addi r3, r31, 0x2188
/* 801400A8  4B F5 C9 81 */	bl remove__8dEyeHL_cFv
/* 801400AC  38 7F 21 9C */	addi r3, r31, 0x219c
/* 801400B0  4B F5 C9 79 */	bl remove__8dEyeHL_cFv
/* 801400B4  38 00 00 00 */	li r0, 0
/* 801400B8  90 1F 07 9C */	stw r0, 0x79c(r31)
/* 801400BC  90 1F 07 A0 */	stw r0, 0x7a0(r31)
/* 801400C0  90 1F 07 A4 */	stw r0, 0x7a4(r31)
/* 801400C4  90 1F 07 A8 */	stw r0, 0x7a8(r31)
/* 801400C8  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 801400CC  74 00 00 28 */	andis. r0, r0, 0x28
/* 801400D0  40 82 01 10 */	bne lbl_801401E0
/* 801400D4  38 7F 06 2C */	addi r3, r31, 0x62c
/* 801400D8  80 9F 06 34 */	lwz r4, 0x634(r31)
/* 801400DC  4B EE CF 2D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 801400E0  38 7F 06 2C */	addi r3, r31, 0x62c
/* 801400E4  48 12 65 41 */	bl cPhs_Reset__FP30request_of_phase_process_class
/* 801400E8  80 7F 06 38 */	lwz r3, 0x638(r31)
/* 801400EC  48 18 E4 E1 */	bl freeAll__7JKRHeapFv
/* 801400F0  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 801400F4  28 00 01 4D */	cmplwi r0, 0x14d
/* 801400F8  41 82 00 0C */	beq lbl_80140104
/* 801400FC  28 00 01 4E */	cmplwi r0, 0x14e
/* 80140100  40 82 00 20 */	bne lbl_80140120
lbl_80140104:
/* 80140104  7F E3 FB 78 */	mr r3, r31
/* 80140108  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8014010C  54 00 01 8C */	rlwinm r0, r0, 0, 6, 6
/* 80140110  7C 00 00 34 */	cntlzw r0, r0
/* 80140114  54 04 DE 3E */	rlwinm r4, r0, 0x1b, 0x18, 0x1f
/* 80140118  4B FF FE 11 */	bl setArcName__9daAlink_cFi
/* 8014011C  48 00 00 C4 */	b lbl_801401E0
lbl_80140120:
/* 80140120  7F E3 FB 78 */	mr r3, r31
/* 80140124  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80140128  54 04 01 8C */	rlwinm r4, r0, 0, 6, 6
/* 8014012C  4B FF FD FD */	bl setArcName__9daAlink_cFi
/* 80140130  48 00 00 B0 */	b lbl_801401E0
lbl_80140134:
/* 80140134  28 00 00 01 */	cmplwi r0, 1
/* 80140138  40 82 00 A8 */	bne lbl_801401E0
/* 8014013C  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 80140140  74 00 00 28 */	andis. r0, r0, 0x28
/* 80140144  41 82 00 18 */	beq lbl_8014015C
/* 80140148  38 00 00 00 */	li r0, 0
/* 8014014C  98 1F 2F BF */	stb r0, 0x2fbf(r31)
/* 80140150  38 80 00 01 */	li r4, 1
/* 80140154  4B FE 6D E9 */	bl changeLink__9daAlink_cFi
/* 80140158  48 00 00 88 */	b lbl_801401E0
lbl_8014015C:
/* 8014015C  38 7F 06 2C */	addi r3, r31, 0x62c
/* 80140160  80 9F 06 34 */	lwz r4, 0x634(r31)
/* 80140164  80 BF 06 38 */	lwz r5, 0x638(r31)
/* 80140168  4B EE CE 59 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCcP7JKRHeap
/* 8014016C  2C 03 00 04 */	cmpwi r3, 4
/* 80140170  40 82 00 5C */	bne lbl_801401CC
/* 80140174  38 00 00 00 */	li r0, 0
/* 80140178  98 1F 2F BF */	stb r0, 0x2fbf(r31)
/* 8014017C  A0 1F 2F E8 */	lhz r0, 0x2fe8(r31)
/* 80140180  28 00 01 4D */	cmplwi r0, 0x14d
/* 80140184  41 82 00 0C */	beq lbl_80140190
/* 80140188  28 00 01 4E */	cmplwi r0, 0x14e
/* 8014018C  40 82 00 2C */	bne lbl_801401B8
lbl_80140190:
/* 80140190  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 80140194  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80140198  41 82 00 14 */	beq lbl_801401AC
/* 8014019C  7F E3 FB 78 */	mr r3, r31
/* 801401A0  38 80 00 00 */	li r4, 0
/* 801401A4  4B FE 6D 99 */	bl changeLink__9daAlink_cFi
/* 801401A8  48 00 00 1C */	b lbl_801401C4
lbl_801401AC:
/* 801401AC  7F E3 FB 78 */	mr r3, r31
/* 801401B0  4B FE 67 79 */	bl changeWolf__9daAlink_cFv
/* 801401B4  48 00 00 10 */	b lbl_801401C4
lbl_801401B8:
/* 801401B8  7F E3 FB 78 */	mr r3, r31
/* 801401BC  38 80 00 01 */	li r4, 1
/* 801401C0  4B FE 6D 7D */	bl changeLink__9daAlink_cFi
lbl_801401C4:
/* 801401C4  38 60 00 01 */	li r3, 1
/* 801401C8  48 00 00 1C */	b lbl_801401E4
lbl_801401CC:
/* 801401CC  38 00 00 02 */	li r0, 2
/* 801401D0  98 1F 2F BF */	stb r0, 0x2fbf(r31)
/* 801401D4  48 00 00 0C */	b lbl_801401E0
lbl_801401D8:
/* 801401D8  38 60 00 01 */	li r3, 1
/* 801401DC  48 00 00 08 */	b lbl_801401E4
lbl_801401E0:
/* 801401E0  38 60 00 00 */	li r3, 0
lbl_801401E4:
/* 801401E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801401E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801401EC  7C 08 03 A6 */	mtlr r0
/* 801401F0  38 21 00 10 */	addi r1, r1, 0x10
/* 801401F4  4E 80 00 20 */	blr 
