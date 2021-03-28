lbl_80593D74:
/* 80593D74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80593D78  7C 08 02 A6 */	mflr r0
/* 80593D7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80593D80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80593D84  7C 7F 1B 78 */	mr r31, r3
/* 80593D88  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80593D8C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80593D90  40 82 00 28 */	bne lbl_80593DB8
/* 80593D94  28 1F 00 00 */	cmplwi r31, 0
/* 80593D98  41 82 00 14 */	beq lbl_80593DAC
/* 80593D9C  4B AE 48 88 */	b __ct__16dBgS_MoveBgActorFv
/* 80593DA0  3C 60 80 59 */	lis r3, __vt__12daObjMGate_c@ha
/* 80593DA4  38 03 3F F8 */	addi r0, r3, __vt__12daObjMGate_c@l
/* 80593DA8  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80593DAC:
/* 80593DAC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80593DB0  60 00 00 08 */	ori r0, r0, 8
/* 80593DB4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80593DB8:
/* 80593DB8  7F E3 FB 78 */	mr r3, r31
/* 80593DBC  4B FF FA D1 */	bl create1st__12daObjMGate_cFv
/* 80593DC0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80593DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80593DC8  7C 08 03 A6 */	mtlr r0
/* 80593DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80593DD0  4E 80 00 20 */	blr 
