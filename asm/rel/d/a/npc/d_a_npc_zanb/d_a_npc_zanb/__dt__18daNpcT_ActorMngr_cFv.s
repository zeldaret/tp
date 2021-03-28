lbl_80B6B468:
/* 80B6B468  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6B46C  7C 08 02 A6 */	mflr r0
/* 80B6B470  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6B474  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6B478  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B6B47C  41 82 00 1C */	beq lbl_80B6B498
/* 80B6B480  3C A0 80 B7 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80B6B484  38 05 BF 9C */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80B6B488  90 1F 00 04 */	stw r0, 4(r31)
/* 80B6B48C  7C 80 07 35 */	extsh. r0, r4
/* 80B6B490  40 81 00 08 */	ble lbl_80B6B498
/* 80B6B494  4B 76 38 A8 */	b __dl__FPv
lbl_80B6B498:
/* 80B6B498  7F E3 FB 78 */	mr r3, r31
/* 80B6B49C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6B4A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6B4A4  7C 08 03 A6 */	mtlr r0
/* 80B6B4A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6B4AC  4E 80 00 20 */	blr 
