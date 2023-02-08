lbl_80D01F98:
/* 80D01F98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D01F9C  7C 08 02 A6 */	mflr r0
/* 80D01FA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D01FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D01FA8  7C 7F 1B 78 */	mr r31, r3
/* 80D01FAC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D01FB0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D01FB4  40 82 00 28 */	bne lbl_80D01FDC
/* 80D01FB8  28 1F 00 00 */	cmplwi r31, 0
/* 80D01FBC  41 82 00 14 */	beq lbl_80D01FD0
/* 80D01FC0  4B 37 66 65 */	bl __ct__16dBgS_MoveBgActorFv
/* 80D01FC4  3C 60 80 D0 */	lis r3, __vt__13daObjSwTurn_c@ha /* 0x80D02174@ha */
/* 80D01FC8  38 03 21 74 */	addi r0, r3, __vt__13daObjSwTurn_c@l /* 0x80D02174@l */
/* 80D01FCC  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80D01FD0:
/* 80D01FD0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D01FD4  60 00 00 08 */	ori r0, r0, 8
/* 80D01FD8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D01FDC:
/* 80D01FDC  7F E3 FB 78 */	mr r3, r31
/* 80D01FE0  4B FF EF 85 */	bl create1st__13daObjSwTurn_cFv
/* 80D01FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D01FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D01FEC  7C 08 03 A6 */	mtlr r0
/* 80D01FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D01FF4  4E 80 00 20 */	blr 
