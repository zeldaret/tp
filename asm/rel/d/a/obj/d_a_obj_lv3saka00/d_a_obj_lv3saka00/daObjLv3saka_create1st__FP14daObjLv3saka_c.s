lbl_80C5C2F0:
/* 80C5C2F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C2F4  7C 08 02 A6 */	mflr r0
/* 80C5C2F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C2FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C5C300  7C 7F 1B 78 */	mr r31, r3
/* 80C5C304  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C5C308  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C5C30C  40 82 00 28 */	bne lbl_80C5C334
/* 80C5C310  28 1F 00 00 */	cmplwi r31, 0
/* 80C5C314  41 82 00 14 */	beq lbl_80C5C328
/* 80C5C318  4B 41 C3 0D */	bl __ct__16dBgS_MoveBgActorFv
/* 80C5C31C  3C 60 80 C6 */	lis r3, __vt__14daObjLv3saka_c@ha /* 0x80C5C448@ha */
/* 80C5C320  38 03 C4 48 */	addi r0, r3, __vt__14daObjLv3saka_c@l /* 0x80C5C448@l */
/* 80C5C324  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80C5C328:
/* 80C5C328  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C5C32C  60 00 00 08 */	ori r0, r0, 8
/* 80C5C330  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C5C334:
/* 80C5C334  7F E3 FB 78 */	mr r3, r31
/* 80C5C338  4B FF FD 21 */	bl create1st__14daObjLv3saka_cFv
/* 80C5C33C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C5C340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C344  7C 08 03 A6 */	mtlr r0
/* 80C5C348  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C34C  4E 80 00 20 */	blr 
