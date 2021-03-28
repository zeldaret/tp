lbl_800B7090:
/* 800B7090  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B7094  7C 08 02 A6 */	mflr r0
/* 800B7098  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B709C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B70A0  7C 7F 1B 78 */	mr r31, r3
/* 800B70A4  80 03 05 80 */	lwz r0, 0x580(r3)
/* 800B70A8  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 800B70AC  41 82 00 A4 */	beq lbl_800B7150
/* 800B70B0  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800B70B4  28 00 01 03 */	cmplwi r0, 0x103
/* 800B70B8  40 82 00 88 */	bne lbl_800B7140
/* 800B70BC  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800B70C0  54 00 03 5B */	rlwinm. r0, r0, 0, 0xd, 0xd
/* 800B70C4  41 82 00 0C */	beq lbl_800B70D0
/* 800B70C8  38 60 00 00 */	li r3, 0
/* 800B70CC  48 00 00 88 */	b lbl_800B7154
lbl_800B70D0:
/* 800B70D0  38 80 00 02 */	li r4, 2
/* 800B70D4  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800B70D8  4B FF 66 4D */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800B70DC  7F E3 FB 78 */	mr r3, r31
/* 800B70E0  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B70E4  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800B70E8  7D 89 03 A6 */	mtctr r12
/* 800B70EC  4E 80 04 21 */	bctrl 
/* 800B70F0  28 03 00 00 */	cmplwi r3, 0
/* 800B70F4  41 82 00 10 */	beq lbl_800B7104
/* 800B70F8  7F E3 FB 78 */	mr r3, r31
/* 800B70FC  48 04 F5 1D */	bl checkBoardSwordTriggerAction__9daAlink_cFv
/* 800B7100  48 00 00 54 */	b lbl_800B7154
lbl_800B7104:
/* 800B7104  38 00 00 00 */	li r0, 0
/* 800B7108  88 7F 2F AA */	lbz r3, 0x2faa(r31)
/* 800B710C  28 03 00 01 */	cmplwi r3, 1
/* 800B7110  41 82 00 0C */	beq lbl_800B711C
/* 800B7114  28 03 00 02 */	cmplwi r3, 2
/* 800B7118  40 82 00 08 */	bne lbl_800B7120
lbl_800B711C:
/* 800B711C  38 00 00 01 */	li r0, 1
lbl_800B7120:
/* 800B7120  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 800B7124  41 82 00 10 */	beq lbl_800B7134
/* 800B7128  7F E3 FB 78 */	mr r3, r31
/* 800B712C  48 03 A7 69 */	bl procHorseCutChargeReadyInit__9daAlink_cFv
/* 800B7130  48 00 00 24 */	b lbl_800B7154
lbl_800B7134:
/* 800B7134  7F E3 FB 78 */	mr r3, r31
/* 800B7138  48 01 DB 31 */	bl procCutTurnChargeInit__9daAlink_cFv
/* 800B713C  48 00 00 18 */	b lbl_800B7154
lbl_800B7140:
/* 800B7140  4B FF FD E9 */	bl checkItemActionInitStart__9daAlink_cFv
/* 800B7144  2C 03 FF FF */	cmpwi r3, -1
/* 800B7148  41 82 00 08 */	beq lbl_800B7150
/* 800B714C  48 00 00 08 */	b lbl_800B7154
lbl_800B7150:
/* 800B7150  38 60 00 00 */	li r3, 0
lbl_800B7154:
/* 800B7154  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B7158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B715C  7C 08 03 A6 */	mtlr r0
/* 800B7160  38 21 00 10 */	addi r1, r1, 0x10
/* 800B7164  4E 80 00 20 */	blr 
