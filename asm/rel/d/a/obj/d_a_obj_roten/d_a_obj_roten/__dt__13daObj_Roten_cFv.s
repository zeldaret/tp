lbl_80CC1388:
/* 80CC1388  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC138C  7C 08 02 A6 */	mflr r0
/* 80CC1390  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC1394  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC1398  93 C1 00 08 */	stw r30, 8(r1)
/* 80CC139C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CC13A0  7C 9F 23 78 */	mr r31, r4
/* 80CC13A4  41 82 00 38 */	beq lbl_80CC13DC
/* 80CC13A8  3C 80 80 CC */	lis r4, __vt__13daObj_Roten_c@ha
/* 80CC13AC  38 04 14 A8 */	addi r0, r4, __vt__13daObj_Roten_c@l
/* 80CC13B0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CC13B4  41 82 00 18 */	beq lbl_80CC13CC
/* 80CC13B8  3C 80 80 3B */	lis r4, __vt__16dBgS_MoveBgActor@ha
/* 80CC13BC  38 04 B9 A0 */	addi r0, r4, __vt__16dBgS_MoveBgActor@l
/* 80CC13C0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CC13C4  38 80 00 00 */	li r4, 0
/* 80CC13C8  4B 35 78 C4 */	b __dt__10fopAc_ac_cFv
lbl_80CC13CC:
/* 80CC13CC  7F E0 07 35 */	extsh. r0, r31
/* 80CC13D0  40 81 00 0C */	ble lbl_80CC13DC
/* 80CC13D4  7F C3 F3 78 */	mr r3, r30
/* 80CC13D8  4B 60 D9 64 */	b __dl__FPv
lbl_80CC13DC:
/* 80CC13DC  7F C3 F3 78 */	mr r3, r30
/* 80CC13E0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC13E4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CC13E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC13EC  7C 08 03 A6 */	mtlr r0
/* 80CC13F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC13F4  4E 80 00 20 */	blr 
