lbl_80D009C0:
/* 80D009C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D009C4  7C 08 02 A6 */	mflr r0
/* 80D009C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D009CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D009D0  7C 7F 1B 78 */	mr r31, r3
/* 80D009D4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D009D8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D009DC  40 82 00 28 */	bne lbl_80D00A04
/* 80D009E0  28 1F 00 00 */	cmplwi r31, 0
/* 80D009E4  41 82 00 14 */	beq lbl_80D009F8
/* 80D009E8  4B 37 7C 3C */	b __ct__16dBgS_MoveBgActorFv
/* 80D009EC  3C 60 80 D0 */	lis r3, __vt__16daObjSwSpinner_c@ha
/* 80D009F0  38 03 0B 34 */	addi r0, r3, __vt__16daObjSwSpinner_c@l
/* 80D009F4  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80D009F8:
/* 80D009F8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D009FC  60 00 00 08 */	ori r0, r0, 8
/* 80D00A00  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D00A04:
/* 80D00A04  7F E3 FB 78 */	mr r3, r31
/* 80D00A08  4B FF FA 91 */	bl create1st__16daObjSwSpinner_cFv
/* 80D00A0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D00A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D00A14  7C 08 03 A6 */	mtlr r0
/* 80D00A18  38 21 00 10 */	addi r1, r1, 0x10
/* 80D00A1C  4E 80 00 20 */	blr 
