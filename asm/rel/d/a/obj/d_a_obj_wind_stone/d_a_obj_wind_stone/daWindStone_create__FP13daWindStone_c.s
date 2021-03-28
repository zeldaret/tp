lbl_80D3853C:
/* 80D3853C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D38540  7C 08 02 A6 */	mflr r0
/* 80D38544  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D38548  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3854C  7C 7F 1B 78 */	mr r31, r3
/* 80D38550  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D38554  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D38558  40 82 00 1C */	bne lbl_80D38574
/* 80D3855C  28 1F 00 00 */	cmplwi r31, 0
/* 80D38560  41 82 00 08 */	beq lbl_80D38568
/* 80D38564  4B FF F4 B5 */	bl __ct__13daWindStone_cFv
lbl_80D38568:
/* 80D38568  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D3856C  60 00 00 08 */	ori r0, r0, 8
/* 80D38570  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D38574:
/* 80D38574  7F E3 FB 78 */	mr r3, r31
/* 80D38578  4B FF F6 A9 */	bl create__13daWindStone_cFv
/* 80D3857C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D38580  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D38584  7C 08 03 A6 */	mtlr r0
/* 80D38588  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3858C  4E 80 00 20 */	blr 
