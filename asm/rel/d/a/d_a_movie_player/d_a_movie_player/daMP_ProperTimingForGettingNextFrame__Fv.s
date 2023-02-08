lbl_80877B48:
/* 80877B48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80877B4C  7C 08 02 A6 */	mflr r0
/* 80877B50  90 01 00 24 */	stw r0, 0x24(r1)
/* 80877B54  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80877B58  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877B5C  38 83 9B D0 */	addi r4, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877B60  80 64 00 88 */	lwz r3, 0x88(r4)
/* 80877B64  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80877B68  41 82 00 18 */	beq lbl_80877B80
/* 80877B6C  4B AD 5D FD */	bl VIGetNextField
/* 80877B70  28 03 00 00 */	cmplwi r3, 0
/* 80877B74  40 82 01 00 */	bne lbl_80877C74
/* 80877B78  38 60 00 01 */	li r3, 1
/* 80877B7C  48 00 00 FC */	b lbl_80877C78
lbl_80877B80:
/* 80877B80  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80877B84  41 82 00 18 */	beq lbl_80877B9C
/* 80877B88  4B AD 5D E1 */	bl VIGetNextField
/* 80877B8C  28 03 00 01 */	cmplwi r3, 1
/* 80877B90  40 82 00 E4 */	bne lbl_80877C74
/* 80877B94  38 60 00 01 */	li r3, 1
/* 80877B98  48 00 00 E0 */	b lbl_80877C78
lbl_80877B9C:
/* 80877B9C  3C 60 80 88 */	lis r3, lit_4465@ha /* 0x808790E0@ha */
/* 80877BA0  C0 23 90 E0 */	lfs f1, lit_4465@l(r3)  /* 0x808790E0@l */
/* 80877BA4  C0 04 00 4C */	lfs f0, 0x4c(r4)
/* 80877BA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80877BAC  FC 00 00 1E */	fctiwz f0, f0
/* 80877BB0  D8 01 00 08 */	stfd f0, 8(r1)
/* 80877BB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80877BB8  4B AD 5E E5 */	bl VIGetTvFormat
/* 80877BBC  28 03 00 01 */	cmplwi r3, 1
/* 80877BC0  40 82 00 4C */	bne lbl_80877C0C
/* 80877BC4  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877BC8  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877BCC  80 83 00 C8 */	lwz r4, 0xc8(r3)
/* 80877BD0  80 C3 00 CC */	lwz r6, 0xcc(r3)
/* 80877BD4  7F E0 FE 70 */	srawi r0, r31, 0x1f
/* 80877BD8  7C 66 F8 16 */	mulhwu r3, r6, r31
/* 80877BDC  7C A4 F9 D6 */	mullw r5, r4, r31
/* 80877BE0  7C 86 F9 D6 */	mullw r4, r6, r31
/* 80877BE4  7C 06 01 D6 */	mullw r0, r6, r0
/* 80877BE8  7C 63 2A 14 */	add r3, r3, r5
/* 80877BEC  7C 63 02 14 */	add r3, r3, r0
/* 80877BF0  38 A0 00 00 */	li r5, 0
/* 80877BF4  38 C0 13 88 */	li r6, 0x1388
/* 80877BF8  4B AE A7 2D */	bl __div2i
/* 80877BFC  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877C00  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877C04  90 83 00 D4 */	stw r4, 0xd4(r3)
/* 80877C08  48 00 00 48 */	b lbl_80877C50
lbl_80877C0C:
/* 80877C0C  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877C10  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877C14  80 83 00 C8 */	lwz r4, 0xc8(r3)
/* 80877C18  80 C3 00 CC */	lwz r6, 0xcc(r3)
/* 80877C1C  7F E0 FE 70 */	srawi r0, r31, 0x1f
/* 80877C20  7C 66 F8 16 */	mulhwu r3, r6, r31
/* 80877C24  7C A4 F9 D6 */	mullw r5, r4, r31
/* 80877C28  7C 86 F9 D6 */	mullw r4, r6, r31
/* 80877C2C  7C 06 01 D6 */	mullw r0, r6, r0
/* 80877C30  7C 63 2A 14 */	add r3, r3, r5
/* 80877C34  7C 63 02 14 */	add r3, r3, r0
/* 80877C38  38 A0 00 00 */	li r5, 0
/* 80877C3C  38 C0 17 6A */	li r6, 0x176a
/* 80877C40  4B AE A6 E5 */	bl __div2i
/* 80877C44  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877C48  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877C4C  90 83 00 D4 */	stw r4, 0xd4(r3)
lbl_80877C50:
/* 80877C50  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha /* 0x80879BD0@ha */
/* 80877C54  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l /* 0x80879BD0@l */
/* 80877C58  80 03 00 D0 */	lwz r0, 0xd0(r3)
/* 80877C5C  80 83 00 D4 */	lwz r4, 0xd4(r3)
/* 80877C60  7C 00 20 00 */	cmpw r0, r4
/* 80877C64  41 82 00 10 */	beq lbl_80877C74
/* 80877C68  90 83 00 D0 */	stw r4, 0xd0(r3)
/* 80877C6C  38 60 00 01 */	li r3, 1
/* 80877C70  48 00 00 08 */	b lbl_80877C78
lbl_80877C74:
/* 80877C74  38 60 00 00 */	li r3, 0
lbl_80877C78:
/* 80877C78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80877C7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80877C80  7C 08 03 A6 */	mtlr r0
/* 80877C84  38 21 00 20 */	addi r1, r1, 0x20
/* 80877C88  4E 80 00 20 */	blr 
