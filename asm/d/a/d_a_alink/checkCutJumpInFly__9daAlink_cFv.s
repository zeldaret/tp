lbl_800B69CC:
/* 800B69CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B69D0  7C 08 02 A6 */	mflr r0
/* 800B69D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B69D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B69DC  7C 7F 1B 78 */	mr r31, r3
/* 800B69E0  A0 03 2F DC */	lhz r0, 0x2fdc(r3)
/* 800B69E4  28 00 01 03 */	cmplwi r0, 0x103
/* 800B69E8  40 82 00 10 */	bne lbl_800B69F8
/* 800B69EC  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800B69F0  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800B69F4  40 82 00 14 */	bne lbl_800B6A08
lbl_800B69F8:
/* 800B69F8  7F E3 FB 78 */	mr r3, r31
/* 800B69FC  48 01 B6 B9 */	bl checkForceSwordSwing__9daAlink_cFv
/* 800B6A00  2C 03 00 00 */	cmpwi r3, 0
/* 800B6A04  41 82 00 14 */	beq lbl_800B6A18
lbl_800B6A08:
/* 800B6A08  7F E3 FB 78 */	mr r3, r31
/* 800B6A0C  38 80 00 01 */	li r4, 1
/* 800B6A10  48 01 D8 ED */	bl procCutJumpInit__9daAlink_cFi
/* 800B6A14  48 00 00 08 */	b lbl_800B6A1C
lbl_800B6A18:
/* 800B6A18  38 60 00 00 */	li r3, 0
lbl_800B6A1C:
/* 800B6A1C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B6A20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B6A24  7C 08 03 A6 */	mtlr r0
/* 800B6A28  38 21 00 10 */	addi r1, r1, 0x10
/* 800B6A2C  4E 80 00 20 */	blr 
