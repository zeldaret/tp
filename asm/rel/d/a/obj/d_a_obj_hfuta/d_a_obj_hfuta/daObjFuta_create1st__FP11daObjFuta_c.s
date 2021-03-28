lbl_80C1ED9C:
/* 80C1ED9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1EDA0  7C 08 02 A6 */	mflr r0
/* 80C1EDA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1EDA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1EDAC  7C 7F 1B 78 */	mr r31, r3
/* 80C1EDB0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C1EDB4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C1EDB8  40 82 00 28 */	bne lbl_80C1EDE0
/* 80C1EDBC  28 1F 00 00 */	cmplwi r31, 0
/* 80C1EDC0  41 82 00 14 */	beq lbl_80C1EDD4
/* 80C1EDC4  4B 45 98 60 */	b __ct__16dBgS_MoveBgActorFv
/* 80C1EDC8  3C 60 80 C2 */	lis r3, __vt__11daObjFuta_c@ha
/* 80C1EDCC  38 03 EF 60 */	addi r0, r3, __vt__11daObjFuta_c@l
/* 80C1EDD0  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80C1EDD4:
/* 80C1EDD4  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C1EDD8  60 00 00 08 */	ori r0, r0, 8
/* 80C1EDDC  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C1EDE0:
/* 80C1EDE0  7F E3 FB 78 */	mr r3, r31
/* 80C1EDE4  4B FF F1 B9 */	bl create1st__11daObjFuta_cFv
/* 80C1EDE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1EDEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1EDF0  7C 08 03 A6 */	mtlr r0
/* 80C1EDF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1EDF8  4E 80 00 20 */	blr 
