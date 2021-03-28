lbl_8025B0F0:
/* 8025B0F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025B0F4  7C 08 02 A6 */	mflr r0
/* 8025B0F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025B0FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025B100  7C 7F 1B 78 */	mr r31, r3
/* 8025B104  A8 03 00 0E */	lha r0, 0xe(r3)
/* 8025B108  2C 00 02 DC */	cmpwi r0, 0x2dc
/* 8025B10C  41 82 00 2C */	beq lbl_8025B138
/* 8025B110  4B DB DB D1 */	bl fopAc_IsActor__FPv
/* 8025B114  2C 03 00 00 */	cmpwi r3, 0
/* 8025B118  41 82 00 18 */	beq lbl_8025B130
/* 8025B11C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8025B120  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8025B124  40 82 00 0C */	bne lbl_8025B130
/* 8025B128  38 60 00 00 */	li r3, 0
/* 8025B12C  48 00 00 10 */	b lbl_8025B13C
lbl_8025B130:
/* 8025B130  7F E3 FB 78 */	mr r3, r31
/* 8025B134  4B DC 6F E5 */	bl fpcM_Delete__FPv
lbl_8025B138:
/* 8025B138  38 60 00 00 */	li r3, 0
lbl_8025B13C:
/* 8025B13C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025B140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025B144  7C 08 03 A6 */	mtlr r0
/* 8025B148  38 21 00 10 */	addi r1, r1, 0x10
/* 8025B14C  4E 80 00 20 */	blr 
