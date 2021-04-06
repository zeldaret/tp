lbl_803406B4:
/* 803406B4  7C 08 02 A6 */	mflr r0
/* 803406B8  3C 60 80 45 */	lis r3, Scb@ha /* 0x8044BB20@ha */
/* 803406BC  90 01 00 04 */	stw r0, 4(r1)
/* 803406C0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 803406C4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803406C8  3B E3 BB 20 */	addi r31, r3, Scb@l /* 0x8044BB20@l */
/* 803406CC  4B FF D0 29 */	bl OSDisableInterrupts
/* 803406D0  80 1F 00 48 */	lwz r0, 0x48(r31)
/* 803406D4  38 9F 00 48 */	addi r4, r31, 0x48
/* 803406D8  2C 00 00 00 */	cmpwi r0, 0
/* 803406DC  41 82 00 10 */	beq lbl_803406EC
/* 803406E0  4B FF D0 3D */	bl OSRestoreInterrupts
/* 803406E4  3B E0 00 00 */	li r31, 0
/* 803406E8  48 00 00 10 */	b lbl_803406F8
lbl_803406EC:
/* 803406EC  90 7F 00 44 */	stw r3, 0x44(r31)
/* 803406F0  38 00 00 01 */	li r0, 1
/* 803406F4  90 04 00 00 */	stw r0, 0(r4)
lbl_803406F8:
/* 803406F8  88 1F 00 13 */	lbz r0, 0x13(r31)
/* 803406FC  38 60 00 00 */	li r3, 0
/* 80340700  38 80 00 00 */	li r4, 0
/* 80340704  54 1F CF FE */	rlwinm r31, r0, 0x19, 0x1f, 0x1f
/* 80340708  4B FF FA F5 */	bl UnlockSram
/* 8034070C  7F E3 FB 78 */	mr r3, r31
/* 80340710  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80340714  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80340718  38 21 00 18 */	addi r1, r1, 0x18
/* 8034071C  7C 08 03 A6 */	mtlr r0
/* 80340720  4E 80 00 20 */	blr 
