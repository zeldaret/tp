lbl_80C83618:
/* 80C83618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8361C  7C 08 02 A6 */	mflr r0
/* 80C83620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C83624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C83628  7C 7F 1B 78 */	mr r31, r3
/* 80C8362C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C83630  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C83634  40 82 00 48 */	bne lbl_80C8367C
/* 80C83638  28 1F 00 00 */	cmplwi r31, 0
/* 80C8363C  41 82 00 34 */	beq lbl_80C83670
/* 80C83640  4B 3F 4F E4 */	b __ct__16dBgS_MoveBgActorFv
/* 80C83644  3C 60 80 C8 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80C83648  38 03 38 A8 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80C8364C  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80C83650  93 FF 05 AC */	stw r31, 0x5ac(r31)
/* 80C83654  38 00 00 00 */	li r0, 0
/* 80C83658  90 1F 05 B0 */	stw r0, 0x5b0(r31)
/* 80C8365C  3C 60 80 C8 */	lis r3, __vt__16daObjLv6ElevtA_c@ha
/* 80C83660  38 63 38 C0 */	addi r3, r3, __vt__16daObjLv6ElevtA_c@l
/* 80C83664  90 7F 05 9C */	stw r3, 0x59c(r31)
/* 80C83668  38 03 00 28 */	addi r0, r3, 0x28
/* 80C8366C  90 1F 05 A8 */	stw r0, 0x5a8(r31)
lbl_80C83670:
/* 80C83670  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C83674  60 00 00 08 */	ori r0, r0, 8
/* 80C83678  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C8367C:
/* 80C8367C  7F E3 FB 78 */	mr r3, r31
/* 80C83680  4B FF F6 B9 */	bl create1st__16daObjLv6ElevtA_cFv
/* 80C83684  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C83688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8368C  7C 08 03 A6 */	mtlr r0
/* 80C83690  38 21 00 10 */	addi r1, r1, 0x10
/* 80C83694  4E 80 00 20 */	blr 
