lbl_80D5F1E0:
/* 80D5F1E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5F1E4  7C 08 02 A6 */	mflr r0
/* 80D5F1E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5F1EC  4B FF FD A9 */	bl draw__12daTagRetRm_cFv
/* 80D5F1F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5F1F4  7C 08 03 A6 */	mtlr r0
/* 80D5F1F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5F1FC  4E 80 00 20 */	blr 
