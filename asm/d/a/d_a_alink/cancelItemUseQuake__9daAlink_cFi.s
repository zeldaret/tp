lbl_800B7190:
/* 800B7190  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7194  7C 08 02 A6 */	mflr r0
/* 800B7198  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B719C  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 800B71A0  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800B71A4  41 82 00 38 */	beq lbl_800B71DC
/* 800B71A8  2C 04 00 00 */	cmpwi r4, 0
/* 800B71AC  40 82 00 10 */	bne lbl_800B71BC
/* 800B71B0  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800B71B4  28 00 00 C6 */	cmplwi r0, 0xc6
/* 800B71B8  41 82 00 24 */	beq lbl_800B71DC
lbl_800B71BC:
/* 800B71BC  80 03 05 7C */	lwz r0, 0x57c(r3)
/* 800B71C0  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 800B71C4  90 03 05 7C */	stw r0, 0x57c(r3)
/* 800B71C8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B71CC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B71D0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 800B71D4  38 80 00 1F */	li r4, 0x1f
/* 800B71D8  4B FB 8B BD */	bl StopQuake__12dVibration_cFi
lbl_800B71DC:
/* 800B71DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B71E0  7C 08 03 A6 */	mtlr r0
/* 800B71E4  38 21 00 10 */	addi r1, r1, 0x10
/* 800B71E8  4E 80 00 20 */	blr 
