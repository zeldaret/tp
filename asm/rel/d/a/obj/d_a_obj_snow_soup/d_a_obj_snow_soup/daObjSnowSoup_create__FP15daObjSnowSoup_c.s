lbl_80CE0180:
/* 80CE0180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE0184  7C 08 02 A6 */	mflr r0
/* 80CE0188  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE018C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CE0190  7C 7F 1B 78 */	mr r31, r3
/* 80CE0194  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CE0198  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CE019C  40 82 00 1C */	bne lbl_80CE01B8
/* 80CE01A0  28 1F 00 00 */	cmplwi r31, 0
/* 80CE01A4  41 82 00 08 */	beq lbl_80CE01AC
/* 80CE01A8  4B FF F6 D1 */	bl __ct__15daObjSnowSoup_cFv
lbl_80CE01AC:
/* 80CE01AC  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CE01B0  60 00 00 08 */	ori r0, r0, 8
/* 80CE01B4  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CE01B8:
/* 80CE01B8  7F E3 FB 78 */	mr r3, r31
/* 80CE01BC  4B FF F8 81 */	bl create__15daObjSnowSoup_cFv
/* 80CE01C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CE01C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE01C8  7C 08 03 A6 */	mtlr r0
/* 80CE01CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE01D0  4E 80 00 20 */	blr 
