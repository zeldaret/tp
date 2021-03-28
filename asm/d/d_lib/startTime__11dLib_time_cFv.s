lbl_800328BC:
/* 800328BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800328C0  7C 08 02 A6 */	mflr r0
/* 800328C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800328C8  88 0D 88 68 */	lbz r0, data_80450DE8(r13)
/* 800328CC  28 00 00 00 */	cmplwi r0, 0
/* 800328D0  41 82 00 38 */	beq lbl_80032908
/* 800328D4  48 30 FE 29 */	bl OSGetTime
/* 800328D8  80 0D 88 60 */	lwz r0, m_stopTime__11dLib_time_c(r13)
/* 800328DC  80 AD 88 64 */	lwz r5, data_80450DE4(r13)
/* 800328E0  7C A5 20 10 */	subfc r5, r5, r4
/* 800328E4  7C 80 19 10 */	subfe r4, r0, r3
/* 800328E8  80 0D 88 58 */	lwz r0, m_diffTime__11dLib_time_c(r13)
/* 800328EC  80 6D 88 5C */	lwz r3, data_80450DDC(r13)
/* 800328F0  7C 63 28 14 */	addc r3, r3, r5
/* 800328F4  7C 00 21 14 */	adde r0, r0, r4
/* 800328F8  90 6D 88 5C */	stw r3, data_80450DDC(r13)
/* 800328FC  90 0D 88 58 */	stw r0, m_diffTime__11dLib_time_c(r13)
/* 80032900  38 00 00 00 */	li r0, 0
/* 80032904  98 0D 88 68 */	stb r0, data_80450DE8(r13)
lbl_80032908:
/* 80032908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003290C  7C 08 03 A6 */	mtlr r0
/* 80032910  38 21 00 10 */	addi r1, r1, 0x10
/* 80032914  4E 80 00 20 */	blr 
