lbl_80C62F78:
/* 80C62F78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C62F7C  7C 08 02 A6 */	mflr r0
/* 80C62F80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C62F84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C62F88  7C 7F 1B 78 */	mr r31, r3
/* 80C62F8C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C62F90  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C62F94  40 82 00 48 */	bne lbl_80C62FDC
/* 80C62F98  28 1F 00 00 */	cmplwi r31, 0
/* 80C62F9C  41 82 00 34 */	beq lbl_80C62FD0
/* 80C62FA0  4B 41 56 85 */	bl __ct__16dBgS_MoveBgActorFv
/* 80C62FA4  3C 60 80 C6 */	lis r3, __vt__17dEvLib_callback_c@ha /* 0x80C63258@ha */
/* 80C62FA8  38 03 32 58 */	addi r0, r3, __vt__17dEvLib_callback_c@l /* 0x80C63258@l */
/* 80C62FAC  90 1F 05 A0 */	stw r0, 0x5a0(r31)
/* 80C62FB0  93 FF 05 A4 */	stw r31, 0x5a4(r31)
/* 80C62FB4  38 00 00 00 */	li r0, 0
/* 80C62FB8  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80C62FBC  3C 60 80 C6 */	lis r3, __vt__13daObjLv4Brg_c@ha /* 0x80C63270@ha */
/* 80C62FC0  38 63 32 70 */	addi r3, r3, __vt__13daObjLv4Brg_c@l /* 0x80C63270@l */
/* 80C62FC4  90 7F 05 9C */	stw r3, 0x59c(r31)
/* 80C62FC8  38 03 00 28 */	addi r0, r3, 0x28
/* 80C62FCC  90 1F 05 A0 */	stw r0, 0x5a0(r31)
lbl_80C62FD0:
/* 80C62FD0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C62FD4  60 00 00 08 */	ori r0, r0, 8
/* 80C62FD8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C62FDC:
/* 80C62FDC  7F E3 FB 78 */	mr r3, r31
/* 80C62FE0  4B FF FA BD */	bl create1st__13daObjLv4Brg_cFv
/* 80C62FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C62FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C62FEC  7C 08 03 A6 */	mtlr r0
/* 80C62FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C62FF4  4E 80 00 20 */	blr 
