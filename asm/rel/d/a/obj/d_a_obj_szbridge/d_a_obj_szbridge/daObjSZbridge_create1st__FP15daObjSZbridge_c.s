lbl_80D04AC4:
/* 80D04AC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D04AC8  7C 08 02 A6 */	mflr r0
/* 80D04ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04AD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D04AD4  7C 7F 1B 78 */	mr r31, r3
/* 80D04AD8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D04ADC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D04AE0  40 82 00 28 */	bne lbl_80D04B08
/* 80D04AE4  28 1F 00 00 */	cmplwi r31, 0
/* 80D04AE8  41 82 00 14 */	beq lbl_80D04AFC
/* 80D04AEC  4B 37 3B 38 */	b __ct__16dBgS_MoveBgActorFv
/* 80D04AF0  3C 60 80 D0 */	lis r3, __vt__15daObjSZbridge_c@ha
/* 80D04AF4  38 03 4D 40 */	addi r0, r3, __vt__15daObjSZbridge_c@l
/* 80D04AF8  90 1F 05 9C */	stw r0, 0x59c(r31)
lbl_80D04AFC:
/* 80D04AFC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D04B00  60 00 00 08 */	ori r0, r0, 8
/* 80D04B04  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D04B08:
/* 80D04B08  7F E3 FB 78 */	mr r3, r31
/* 80D04B0C  4B FF F9 19 */	bl create1st__15daObjSZbridge_cFv
/* 80D04B10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D04B14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D04B18  7C 08 03 A6 */	mtlr r0
/* 80D04B1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04B20  4E 80 00 20 */	blr 
