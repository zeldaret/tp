lbl_80483FA8:
/* 80483FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80483FAC  7C 08 02 A6 */	mflr r0
/* 80483FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80483FB4  38 00 00 01 */	li r0, 1
/* 80483FB8  90 03 05 B0 */	stw r0, 0x5b0(r3)
/* 80483FBC  3C 80 80 48 */	lis r4, lit_3879@ha
/* 80483FC0  C0 24 4E 28 */	lfs f1, lit_3879@l(r4)
/* 80483FC4  D0 23 05 CC */	stfs f1, 0x5cc(r3)
/* 80483FC8  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 80483FCC  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 80483FD0  3C 80 80 48 */	lis r4, M_attr__Q211daObjSwpush5Act_c@ha
/* 80483FD4  38 A4 4D 2C */	addi r5, r4, M_attr__Q211daObjSwpush5Act_c@l
/* 80483FD8  7C 85 02 14 */	add r4, r5, r0
/* 80483FDC  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80483FE0  D0 03 05 D4 */	stfs f0, 0x5d4(r3)
/* 80483FE4  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 80483FE8  1C 00 00 2C */	mulli r0, r0, 0x2c
/* 80483FEC  7C 85 02 14 */	add r4, r5, r0
/* 80483FF0  A8 84 00 18 */	lha r4, 0x18(r4)
/* 80483FF4  4B FF FB 7D */	bl top_bg_aim_req__Q211daObjSwpush5Act_cFfs
/* 80483FF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80483FFC  7C 08 03 A6 */	mtlr r0
/* 80484000  38 21 00 10 */	addi r1, r1, 0x10
/* 80484004  4E 80 00 20 */	blr 
