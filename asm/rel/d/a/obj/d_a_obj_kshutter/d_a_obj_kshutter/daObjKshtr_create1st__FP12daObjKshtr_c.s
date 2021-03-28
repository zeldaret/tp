lbl_80C49BB8:
/* 80C49BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C49BBC  7C 08 02 A6 */	mflr r0
/* 80C49BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C49BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C49BC8  7C 7F 1B 78 */	mr r31, r3
/* 80C49BCC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C49BD0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C49BD4  40 82 00 28 */	bne lbl_80C49BFC
/* 80C49BD8  28 1F 00 00 */	cmplwi r31, 0
/* 80C49BDC  41 82 00 14 */	beq lbl_80C49BF0
/* 80C49BE0  4B 42 EA 44 */	b __ct__16dBgS_MoveBgActorFv
/* 80C49BE4  3C 60 80 C5 */	lis r3, __vt__12daObjKshtr_c@ha
/* 80C49BE8  38 03 A0 BC */	addi r0, r3, __vt__12daObjKshtr_c@l
/* 80C49BEC  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80C49BF0:
/* 80C49BF0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80C49BF4  60 00 00 08 */	ori r0, r0, 8
/* 80C49BF8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80C49BFC:
/* 80C49BFC  7F E3 FB 78 */	mr r3, r31
/* 80C49C00  4B FF E7 29 */	bl create1st__12daObjKshtr_cFv
/* 80C49C04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C49C08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C49C0C  7C 08 03 A6 */	mtlr r0
/* 80C49C10  38 21 00 10 */	addi r1, r1, 0x10
/* 80C49C14  4E 80 00 20 */	blr 
