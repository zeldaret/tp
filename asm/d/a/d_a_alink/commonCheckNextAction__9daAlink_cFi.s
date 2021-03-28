lbl_800BA09C:
/* 800BA09C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800BA0A0  7C 08 02 A6 */	mflr r0
/* 800BA0A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800BA0A8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 800BA0AC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800BA0B0  41 82 00 0C */	beq lbl_800BA0BC
/* 800BA0B4  48 06 FA 91 */	bl checkNextActionWolf__9daAlink_cFi
/* 800BA0B8  48 00 00 08 */	b lbl_800BA0C0
lbl_800BA0BC:
/* 800BA0BC  48 00 00 15 */	bl checkNextAction__9daAlink_cFi
lbl_800BA0C0:
/* 800BA0C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BA0C4  7C 08 03 A6 */	mtlr r0
/* 800BA0C8  38 21 00 10 */	addi r1, r1, 0x10
/* 800BA0CC  4E 80 00 20 */	blr 
