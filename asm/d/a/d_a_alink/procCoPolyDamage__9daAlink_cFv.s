lbl_800DAD90:
/* 800DAD90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DAD94  7C 08 02 A6 */	mflr r0
/* 800DAD98  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DAD9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DADA0  7C 7F 1B 78 */	mr r31, r3
/* 800DADA4  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800DADA8  48 08 37 25 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800DADAC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800DADB0  41 82 00 14 */	beq lbl_800DADC4
/* 800DADB4  7F E3 FB 78 */	mr r3, r31
/* 800DADB8  38 80 00 00 */	li r4, 0
/* 800DADBC  4B FD F2 E1 */	bl commonCheckNextAction__9daAlink_cFi
/* 800DADC0  48 00 00 38 */	b lbl_800DADF8
lbl_800DADC4:
/* 800DADC4  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 800DADC8  C0 1F 34 78 */	lfs f0, 0x3478(r31)
/* 800DADCC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800DADD0  40 81 00 28 */	ble lbl_800DADF8
/* 800DADD4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800DADD8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800DADDC  40 82 00 10 */	bne lbl_800DADEC
/* 800DADE0  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800DADE4  60 00 00 04 */	ori r0, r0, 4
/* 800DADE8  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_800DADEC:
/* 800DADEC  7F E3 FB 78 */	mr r3, r31
/* 800DADF0  38 80 00 01 */	li r4, 1
/* 800DADF4  4B FD F2 A9 */	bl commonCheckNextAction__9daAlink_cFi
lbl_800DADF8:
/* 800DADF8  38 60 00 01 */	li r3, 1
/* 800DADFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DAE00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DAE04  7C 08 03 A6 */	mtlr r0
/* 800DAE08  38 21 00 10 */	addi r1, r1, 0x10
/* 800DAE0C  4E 80 00 20 */	blr 
