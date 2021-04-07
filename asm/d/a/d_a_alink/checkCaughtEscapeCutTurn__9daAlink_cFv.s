lbl_800D70A0:
/* 800D70A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D70A4  7C 08 02 A6 */	mflr r0
/* 800D70A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D70AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D70B0  7C 7F 1B 78 */	mr r31, r3
/* 800D70B4  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 800D70B8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800D70BC  41 82 00 8C */	beq lbl_800D7148
/* 800D70C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D70C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D70C8  88 03 00 14 */	lbz r0, 0x14(r3)
/* 800D70CC  28 00 00 FF */	cmplwi r0, 0xff
/* 800D70D0  40 82 00 10 */	bne lbl_800D70E0
/* 800D70D4  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D70D8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D70DC  41 82 00 6C */	beq lbl_800D7148
lbl_800D70E0:
/* 800D70E0  7F E3 FB 78 */	mr r3, r31
/* 800D70E4  4B FF B2 85 */	bl checkCutTurnInputTrigger__9daAlink_cFv
/* 800D70E8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D70EC  41 82 00 5C */	beq lbl_800D7148
/* 800D70F0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800D70F4  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D70F8  41 82 00 18 */	beq lbl_800D7110
/* 800D70FC  7F E3 FB 78 */	mr r3, r31
/* 800D7100  38 80 00 02 */	li r4, 2
/* 800D7104  38 A0 00 00 */	li r5, 0
/* 800D7108  48 06 41 99 */	bl procWolfRollAttackInit__9daAlink_cFii
/* 800D710C  48 00 00 40 */	b lbl_800D714C
lbl_800D7110:
/* 800D7110  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800D7114  28 00 01 03 */	cmplwi r0, 0x103
/* 800D7118  41 82 00 1C */	beq lbl_800D7134
/* 800D711C  7F E3 FB 78 */	mr r3, r31
/* 800D7120  38 80 00 00 */	li r4, 0
/* 800D7124  38 A0 00 00 */	li r5, 0
/* 800D7128  4B FE A1 B5 */	bl deleteEquipItem__9daAlink_cFii
/* 800D712C  7F E3 FB 78 */	mr r3, r31
/* 800D7130  4B FF A1 39 */	bl setSwordModel__9daAlink_cFv
lbl_800D7134:
/* 800D7134  7F E3 FB 78 */	mr r3, r31
/* 800D7138  38 80 00 01 */	li r4, 1
/* 800D713C  38 A0 00 02 */	li r5, 2
/* 800D7140  4B FF D6 9D */	bl procCutTurnInit__9daAlink_cFii
/* 800D7144  48 00 00 08 */	b lbl_800D714C
lbl_800D7148:
/* 800D7148  38 60 00 00 */	li r3, 0
lbl_800D714C:
/* 800D714C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D7150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D7154  7C 08 03 A6 */	mtlr r0
/* 800D7158  38 21 00 10 */	addi r1, r1, 0x10
/* 800D715C  4E 80 00 20 */	blr 
