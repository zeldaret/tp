lbl_80D64144:
/* 80D64144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D64148  7C 08 02 A6 */	mflr r0
/* 80D6414C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D64150  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D64154  7C 7F 1B 78 */	mr r31, r3
/* 80D64158  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D6415C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D64160  40 82 00 1C */	bne lbl_80D6417C
/* 80D64164  28 1F 00 00 */	cmplwi r31, 0
/* 80D64168  41 82 00 08 */	beq lbl_80D64170
/* 80D6416C  4B FF FD CD */	bl __ct__13daTagWrHowl_cFv
lbl_80D64170:
/* 80D64170  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D64174  60 00 00 08 */	ori r0, r0, 8
/* 80D64178  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D6417C:
/* 80D6417C  7F E3 FB 78 */	mr r3, r31
/* 80D64180  4B FF FE 55 */	bl create__13daTagWrHowl_cFv
/* 80D64184  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D64188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6418C  7C 08 03 A6 */	mtlr r0
/* 80D64190  38 21 00 10 */	addi r1, r1, 0x10
/* 80D64194  4E 80 00 20 */	blr 
