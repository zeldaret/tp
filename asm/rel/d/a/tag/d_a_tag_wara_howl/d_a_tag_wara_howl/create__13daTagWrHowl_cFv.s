lbl_80D63FD4:
/* 80D63FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D63FD8  7C 08 02 A6 */	mflr r0
/* 80D63FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D63FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D63FE4  7C 7F 1B 78 */	mr r31, r3
/* 80D63FE8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D63FEC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D63FF0  40 82 00 1C */	bne lbl_80D6400C
/* 80D63FF4  28 1F 00 00 */	cmplwi r31, 0
/* 80D63FF8  41 82 00 08 */	beq lbl_80D64000
/* 80D63FFC  4B FF FF 3D */	bl __ct__13daTagWrHowl_cFv
lbl_80D64000:
/* 80D64000  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D64004  60 00 00 08 */	ori r0, r0, 8
/* 80D64008  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D6400C:
/* 80D6400C  7F E3 FB 78 */	mr r3, r31
/* 80D64010  48 00 00 81 */	bl init__13daTagWrHowl_cFv
/* 80D64014  38 60 00 04 */	li r3, 4
/* 80D64018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D6401C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D64020  7C 08 03 A6 */	mtlr r0
/* 80D64024  38 21 00 10 */	addi r1, r1, 0x10
/* 80D64028  4E 80 00 20 */	blr 
