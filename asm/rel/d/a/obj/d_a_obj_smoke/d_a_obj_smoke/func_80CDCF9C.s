lbl_80CDCF9C:
/* 80CDCF9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDCFA0  7C 08 02 A6 */	mflr r0
/* 80CDCFA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDCFA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CDCFAC  7C 7F 1B 78 */	mr r31, r3
/* 80CDCFB0  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CDCFB4  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CDCFB8  40 82 00 1C */	bne lbl_80CDCFD4
/* 80CDCFBC  28 1F 00 00 */	cmplwi r31, 0
/* 80CDCFC0  41 82 00 08 */	beq lbl_80CDCFC8
/* 80CDCFC4  4B 33 BB A1 */	bl __ct__10fopAc_ac_cFv
lbl_80CDCFC8:
/* 80CDCFC8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CDCFCC  60 00 00 08 */	ori r0, r0, 8
/* 80CDCFD0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CDCFD4:
/* 80CDCFD4  7F E3 FB 78 */	mr r3, r31
/* 80CDCFD8  4B FF FF 19 */	bl Create__12daObjSmoke_cFv
/* 80CDCFDC  2C 03 00 00 */	cmpwi r3, 0
/* 80CDCFE0  40 82 00 0C */	bne lbl_80CDCFEC
/* 80CDCFE4  38 60 00 05 */	li r3, 5
/* 80CDCFE8  48 00 00 08 */	b lbl_80CDCFF0
lbl_80CDCFEC:
/* 80CDCFEC  38 60 00 04 */	li r3, 4
lbl_80CDCFF0:
/* 80CDCFF0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CDCFF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDCFF8  7C 08 03 A6 */	mtlr r0
/* 80CDCFFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDD000  4E 80 00 20 */	blr 
