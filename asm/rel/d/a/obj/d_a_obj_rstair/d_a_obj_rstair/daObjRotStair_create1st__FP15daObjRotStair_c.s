lbl_80CC262C:
/* 80CC262C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC2630  7C 08 02 A6 */	mflr r0
/* 80CC2634  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC2638  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CC263C  7C 7F 1B 78 */	mr r31, r3
/* 80CC2640  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CC2644  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CC2648  40 82 00 28 */	bne lbl_80CC2670
/* 80CC264C  28 1F 00 00 */	cmplwi r31, 0
/* 80CC2650  41 82 00 14 */	beq lbl_80CC2664
/* 80CC2654  4B 3B 5F D0 */	b __ct__16dBgS_MoveBgActorFv
/* 80CC2658  3C 60 80 CC */	lis r3, __vt__15daObjRotStair_c@ha
/* 80CC265C  38 03 28 58 */	addi r0, r3, __vt__15daObjRotStair_c@l
/* 80CC2660  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80CC2664:
/* 80CC2664  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CC2668  60 00 00 08 */	ori r0, r0, 8
/* 80CC266C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CC2670:
/* 80CC2670  7F E3 FB 78 */	mr r3, r31
/* 80CC2674  4B FF F3 B5 */	bl create1st__15daObjRotStair_cFv
/* 80CC2678  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CC267C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC2680  7C 08 03 A6 */	mtlr r0
/* 80CC2684  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC2688  4E 80 00 20 */	blr 
