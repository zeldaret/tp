lbl_80D5F14C:
/* 80D5F14C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5F150  7C 08 02 A6 */	mflr r0
/* 80D5F154  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5F158  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5F15C  7C 7F 1B 78 */	mr r31, r3
/* 80D5F160  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D5F164  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D5F168  40 82 00 1C */	bne lbl_80D5F184
/* 80D5F16C  28 1F 00 00 */	cmplwi r31, 0
/* 80D5F170  41 82 00 08 */	beq lbl_80D5F178
/* 80D5F174  4B FF FD 25 */	bl __ct__12daTagRetRm_cFv
lbl_80D5F178:
/* 80D5F178  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D5F17C  60 00 00 08 */	ori r0, r0, 8
/* 80D5F180  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D5F184:
/* 80D5F184  7F E3 FB 78 */	mr r3, r31
/* 80D5F188  4B FF FD AD */	bl create__12daTagRetRm_cFv
/* 80D5F18C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5F190  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5F194  7C 08 03 A6 */	mtlr r0
/* 80D5F198  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5F19C  4E 80 00 20 */	blr 
