lbl_8051B04C:
/* 8051B04C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051B050  7C 08 02 A6 */	mflr r0
/* 8051B054  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051B058  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051B05C  7C 7F 1B 78 */	mr r31, r3
/* 8051B060  A8 03 09 92 */	lha r0, 0x992(r3)
/* 8051B064  2C 00 00 00 */	cmpwi r0, 0
/* 8051B068  41 82 00 48 */	beq lbl_8051B0B0
/* 8051B06C  38 00 00 0A */	li r0, 0xa
/* 8051B070  B0 1F 05 E4 */	sth r0, 0x5e4(r31)
/* 8051B074  38 7F 09 98 */	addi r3, r31, 0x998
/* 8051B078  7F E4 FB 78 */	mr r4, r31
/* 8051B07C  38 A0 00 00 */	li r5, 0
/* 8051B080  38 C0 00 00 */	li r6, 0
/* 8051B084  4B D2 F2 55 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 8051B088  2C 03 00 00 */	cmpwi r3, 0
/* 8051B08C  41 82 00 1C */	beq lbl_8051B0A8
/* 8051B090  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051B094  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051B098  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8051B09C  4B B2 73 CD */	bl reset__14dEvt_control_cFv
/* 8051B0A0  38 00 00 00 */	li r0, 0
/* 8051B0A4  B0 1F 09 92 */	sth r0, 0x992(r31)
lbl_8051B0A8:
/* 8051B0A8  38 60 00 01 */	li r3, 1
/* 8051B0AC  48 00 00 B0 */	b lbl_8051B15C
lbl_8051B0B0:
/* 8051B0B0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051B0B4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051B0B8  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8051B0BC  28 00 00 00 */	cmplwi r0, 0
/* 8051B0C0  41 82 00 30 */	beq lbl_8051B0F0
/* 8051B0C4  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 8051B0C8  28 00 00 01 */	cmplwi r0, 1
/* 8051B0CC  40 82 00 24 */	bne lbl_8051B0F0
/* 8051B0D0  38 7F 09 98 */	addi r3, r31, 0x998
/* 8051B0D4  7F E4 FB 78 */	mr r4, r31
/* 8051B0D8  A8 BF 09 94 */	lha r5, 0x994(r31)
/* 8051B0DC  38 C0 00 00 */	li r6, 0
/* 8051B0E0  38 E0 00 00 */	li r7, 0
/* 8051B0E4  4B D2 EE AD */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 8051B0E8  38 00 00 01 */	li r0, 1
/* 8051B0EC  B0 1F 09 92 */	sth r0, 0x992(r31)
lbl_8051B0F0:
/* 8051B0F0  88 1F 09 91 */	lbz r0, 0x991(r31)
/* 8051B0F4  2C 00 00 02 */	cmpwi r0, 2
/* 8051B0F8  40 82 00 44 */	bne lbl_8051B13C
/* 8051B0FC  A8 1F 09 94 */	lha r0, 0x994(r31)
/* 8051B100  2C 00 FF FF */	cmpwi r0, -1
/* 8051B104  41 82 00 38 */	beq lbl_8051B13C
/* 8051B108  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8051B10C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8051B110  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 8051B114  80 03 05 74 */	lwz r0, 0x574(r3)
/* 8051B118  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 8051B11C  41 82 00 20 */	beq lbl_8051B13C
/* 8051B120  80 1F 05 5C */	lwz r0, 0x55c(r31)
/* 8051B124  60 00 00 0A */	ori r0, r0, 0xa
/* 8051B128  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 8051B12C  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 8051B130  60 00 00 01 */	ori r0, r0, 1
/* 8051B134  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 8051B138  48 00 00 20 */	b lbl_8051B158
lbl_8051B13C:
/* 8051B13C  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 8051B140  54 00 00 3E */	slwi r0, r0, 0
/* 8051B144  90 1F 04 9C */	stw r0, 0x49c(r31)
/* 8051B148  80 7F 05 5C */	lwz r3, 0x55c(r31)
/* 8051B14C  38 00 FF F5 */	li r0, -11
/* 8051B150  7C 60 00 38 */	and r0, r3, r0
/* 8051B154  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_8051B158:
/* 8051B158  38 60 00 00 */	li r3, 0
lbl_8051B15C:
/* 8051B15C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051B160  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051B164  7C 08 03 A6 */	mtlr r0
/* 8051B168  38 21 00 10 */	addi r1, r1, 0x10
/* 8051B16C  4E 80 00 20 */	blr 
