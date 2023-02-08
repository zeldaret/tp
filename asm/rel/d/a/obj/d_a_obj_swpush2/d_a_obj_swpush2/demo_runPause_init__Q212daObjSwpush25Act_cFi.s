lbl_80CFF2EC:
/* 80CFF2EC  38 00 00 02 */	li r0, 2
/* 80CFF2F0  90 03 05 C8 */	stw r0, 0x5c8(r3)
/* 80CFF2F4  2C 04 00 00 */	cmpwi r4, 0
/* 80CFF2F8  4D 82 00 20 */	beqlr 
/* 80CFF2FC  80 03 05 C0 */	lwz r0, 0x5c0(r3)
/* 80CFF300  1C A0 00 38 */	mulli r5, r0, 0x38
/* 80CFF304  3C 80 80 D0 */	lis r4, M_attr__Q212daObjSwpush25Act_c@ha /* 0x80CFFC00@ha */
/* 80CFF308  38 04 FC 00 */	addi r0, r4, M_attr__Q212daObjSwpush25Act_c@l /* 0x80CFFC00@l */
/* 80CFF30C  7C 80 2A 14 */	add r4, r0, r5
/* 80CFF310  A8 04 00 30 */	lha r0, 0x30(r4)
/* 80CFF314  B0 03 05 CC */	sth r0, 0x5cc(r3)
/* 80CFF318  4E 80 00 20 */	blr 
