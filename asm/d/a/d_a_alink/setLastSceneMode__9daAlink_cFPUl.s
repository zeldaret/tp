lbl_800BDE48:
/* 800BDE48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BDE4C  7C 08 02 A6 */	mflr r0
/* 800BDE50  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BDE54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800BDE58  93 C1 00 08 */	stw r30, 8(r1)
/* 800BDE5C  7C 7E 1B 78 */	mr r30, r3
/* 800BDE60  7C 9F 23 78 */	mr r31, r4
/* 800BDE64  80 03 05 70 */	lwz r0, 0x570(r3)
/* 800BDE68  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800BDE6C  41 82 00 10 */	beq lbl_800BDE7C
/* 800BDE70  80 1F 00 00 */	lwz r0, 0(r31)
/* 800BDE74  64 00 00 40 */	oris r0, r0, 0x40
/* 800BDE78  90 1F 00 00 */	stw r0, 0(r31)
lbl_800BDE7C:
/* 800BDE7C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800BDE80  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800BDE84  41 82 00 10 */	beq lbl_800BDE94
/* 800BDE88  80 1F 00 00 */	lwz r0, 0(r31)
/* 800BDE8C  64 00 00 80 */	oris r0, r0, 0x80
/* 800BDE90  90 1F 00 00 */	stw r0, 0(r31)
lbl_800BDE94:
/* 800BDE94  80 1E 05 78 */	lwz r0, 0x578(r30)
/* 800BDE98  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800BDE9C  41 82 00 1C */	beq lbl_800BDEB8
/* 800BDEA0  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800BDEA4  28 00 00 48 */	cmplwi r0, 0x48
/* 800BDEA8  41 82 00 10 */	beq lbl_800BDEB8
/* 800BDEAC  80 1F 00 00 */	lwz r0, 0(r31)
/* 800BDEB0  64 00 00 20 */	oris r0, r0, 0x20
/* 800BDEB4  90 1F 00 00 */	stw r0, 0(r31)
lbl_800BDEB8:
/* 800BDEB8  A0 1E 2F DC */	lhz r0, 0x2fdc(r30)
/* 800BDEBC  28 00 01 03 */	cmplwi r0, 0x103
/* 800BDEC0  40 82 00 14 */	bne lbl_800BDED4
/* 800BDEC4  80 1F 00 00 */	lwz r0, 0(r31)
/* 800BDEC8  64 00 28 00 */	oris r0, r0, 0x2800
/* 800BDECC  90 1F 00 00 */	stw r0, 0(r31)
/* 800BDED0  48 00 00 1C */	b lbl_800BDEEC
lbl_800BDED4:
/* 800BDED4  28 00 00 FF */	cmplwi r0, 0xff
/* 800BDED8  40 80 00 14 */	bge lbl_800BDEEC
/* 800BDEDC  80 7F 00 00 */	lwz r3, 0(r31)
/* 800BDEE0  54 00 C0 0E */	slwi r0, r0, 0x18
/* 800BDEE4  7C 60 03 78 */	or r0, r3, r0
/* 800BDEE8  90 1F 00 00 */	stw r0, 0(r31)
lbl_800BDEEC:
/* 800BDEEC  80 7E 28 30 */	lwz r3, 0x2830(r30)
/* 800BDEF0  28 03 00 00 */	cmplwi r3, 0
/* 800BDEF4  41 82 00 38 */	beq lbl_800BDF2C
/* 800BDEF8  48 02 59 39 */	bl daAlink_checkLightBallA__FP10fopAc_ac_c
/* 800BDEFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BDF00  41 82 00 10 */	beq lbl_800BDF10
/* 800BDF04  80 1F 00 00 */	lwz r0, 0(r31)
/* 800BDF08  64 00 00 10 */	oris r0, r0, 0x10
/* 800BDF0C  90 1F 00 00 */	stw r0, 0(r31)
lbl_800BDF10:
/* 800BDF10  80 7E 28 30 */	lwz r3, 0x2830(r30)
/* 800BDF14  48 02 59 45 */	bl daAlink_checkLightBallB__FP10fopAc_ac_c
/* 800BDF18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800BDF1C  41 82 00 10 */	beq lbl_800BDF2C
/* 800BDF20  80 1F 00 00 */	lwz r0, 0(r31)
/* 800BDF24  64 00 00 08 */	oris r0, r0, 8
/* 800BDF28  90 1F 00 00 */	stw r0, 0(r31)
lbl_800BDF2C:
/* 800BDF2C  A0 1E 05 6E */	lhz r0, 0x56e(r30)
/* 800BDF30  28 00 00 00 */	cmplwi r0, 0
/* 800BDF34  41 82 00 14 */	beq lbl_800BDF48
/* 800BDF38  80 7F 00 00 */	lwz r3, 0(r31)
/* 800BDF3C  54 00 51 A8 */	rlwinm r0, r0, 0xa, 6, 0x14
/* 800BDF40  7C 60 03 78 */	or r0, r3, r0
/* 800BDF44  90 1F 00 00 */	stw r0, 0(r31)
lbl_800BDF48:
/* 800BDF48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BDF4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800BDF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BDF54  7C 08 03 A6 */	mtlr r0
/* 800BDF58  38 21 00 10 */	addi r1, r1, 0x10
/* 800BDF5C  4E 80 00 20 */	blr 
