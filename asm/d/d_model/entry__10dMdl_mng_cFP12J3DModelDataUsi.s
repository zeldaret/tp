lbl_8009C8D8:
/* 8009C8D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8009C8DC  7C 08 02 A6 */	mflr r0
/* 8009C8E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8009C8E4  7C 68 1B 78 */	mr r8, r3
/* 8009C8E8  7C 87 23 78 */	mr r7, r4
/* 8009C8EC  80 6D 8A 20 */	lwz r3, m_myObj__10dMdl_mng_c(r13)
/* 8009C8F0  28 03 00 00 */	cmplwi r3, 0
/* 8009C8F4  40 82 00 0C */	bne lbl_8009C900
/* 8009C8F8  38 60 00 00 */	li r3, 0
/* 8009C8FC  48 00 00 24 */	b lbl_8009C920
lbl_8009C900:
/* 8009C900  1C A5 04 04 */	mulli r5, r5, 0x404
/* 8009C904  3C 80 80 3F */	lis r4, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8009C908  38 04 60 94 */	addi r0, r4, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8009C90C  7C 80 2A 14 */	add r4, r0, r5
/* 8009C910  38 C4 00 6C */	addi r6, r4, 0x6c
/* 8009C914  7D 04 43 78 */	mr r4, r8
/* 8009C918  7C E5 3B 78 */	mr r5, r7
/* 8009C91C  4B FF FE 09 */	bl entry__10dMdl_mng_cFP12J3DModelDataUsP12dKy_tevstr_c
lbl_8009C920:
/* 8009C920  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8009C924  7C 08 03 A6 */	mtlr r0
/* 8009C928  38 21 00 10 */	addi r1, r1, 0x10
/* 8009C92C  4E 80 00 20 */	blr 
