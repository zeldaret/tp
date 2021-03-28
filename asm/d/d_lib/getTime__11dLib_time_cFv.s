lbl_80032804:
/* 80032804  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80032808  7C 08 02 A6 */	mflr r0
/* 8003280C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80032810  88 0D 88 68 */	lbz r0, data_80450DE8(r13)
/* 80032814  28 00 00 00 */	cmplwi r0, 0
/* 80032818  40 82 00 1C */	bne lbl_80032834
/* 8003281C  48 30 FE E1 */	bl OSGetTime
/* 80032820  80 0D 88 58 */	lwz r0, m_diffTime__11dLib_time_c(r13)
/* 80032824  80 AD 88 5C */	lwz r5, data_80450DDC(r13)
/* 80032828  7C 85 20 10 */	subfc r4, r5, r4
/* 8003282C  7C 60 19 10 */	subfe r3, r0, r3
/* 80032830  48 00 00 40 */	b lbl_80032870
lbl_80032834:
/* 80032834  48 30 FE C9 */	bl OSGetTime
/* 80032838  80 CD 88 58 */	lwz r6, m_diffTime__11dLib_time_c(r13)
/* 8003283C  80 ED 88 5C */	lwz r7, data_80450DDC(r13)
/* 80032840  80 0D 88 60 */	lwz r0, m_stopTime__11dLib_time_c(r13)
/* 80032844  80 AD 88 64 */	lwz r5, data_80450DE4(r13)
/* 80032848  7C A5 20 10 */	subfc r5, r5, r4
/* 8003284C  7C 00 19 10 */	subfe r0, r0, r3
/* 80032850  7C A7 28 14 */	addc r5, r7, r5
/* 80032854  7C 06 01 14 */	adde r0, r6, r0
/* 80032858  90 AD 88 5C */	stw r5, data_80450DDC(r13)
/* 8003285C  90 0D 88 58 */	stw r0, m_diffTime__11dLib_time_c(r13)
/* 80032860  90 8D 88 64 */	stw r4, data_80450DE4(r13)
/* 80032864  90 6D 88 60 */	stw r3, m_stopTime__11dLib_time_c(r13)
/* 80032868  7C 85 20 10 */	subfc r4, r5, r4
/* 8003286C  7C 60 19 10 */	subfe r3, r0, r3
lbl_80032870:
/* 80032870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80032874  7C 08 03 A6 */	mtlr r0
/* 80032878  38 21 00 10 */	addi r1, r1, 0x10
/* 8003287C  4E 80 00 20 */	blr 
