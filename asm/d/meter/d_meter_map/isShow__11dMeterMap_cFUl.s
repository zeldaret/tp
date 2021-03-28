lbl_8020E4C8:
/* 8020E4C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020E4CC  7C 08 02 A6 */	mflr r0
/* 8020E4D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020E4D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020E4D8  7C 7F 1B 78 */	mr r31, r3
/* 8020E4DC  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 8020E4E0  40 82 01 20 */	bne lbl_8020E600
/* 8020E4E4  4B E1 00 C5 */	bl fopOvlpM_IsDoingReq__Fv
/* 8020E4E8  2C 03 00 00 */	cmpwi r3, 0
/* 8020E4EC  40 82 01 14 */	bne lbl_8020E600
/* 8020E4F0  57 E0 06 73 */	rlwinm. r0, r31, 0, 0x19, 0x19
/* 8020E4F4  41 82 00 3C */	beq lbl_8020E530
/* 8020E4F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020E4FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020E500  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8020E504  28 00 00 00 */	cmplwi r0, 0
/* 8020E508  41 82 00 10 */	beq lbl_8020E518
/* 8020E50C  A0 03 4F A4 */	lhz r0, 0x4fa4(r3)
/* 8020E510  54 00 05 EE */	rlwinm r0, r0, 0, 0x17, 0x17
/* 8020E514  48 00 00 08 */	b lbl_8020E51C
lbl_8020E518:
/* 8020E518  38 00 00 00 */	li r0, 0
lbl_8020E51C:
/* 8020E51C  54 00 04 3F */	clrlwi. r0, r0, 0x10
/* 8020E520  41 82 00 10 */	beq lbl_8020E530
/* 8020E524  A0 03 4F A0 */	lhz r0, 0x4fa0(r3)
/* 8020E528  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8020E52C  41 82 00 D4 */	beq lbl_8020E600
lbl_8020E530:
/* 8020E530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8020E534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8020E538  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 8020E53C  38 00 00 00 */	li r0, 0
/* 8020E540  88 64 05 6A */	lbz r3, 0x56a(r4)
/* 8020E544  28 03 00 00 */	cmplwi r3, 0
/* 8020E548  41 82 00 10 */	beq lbl_8020E558
/* 8020E54C  28 03 00 26 */	cmplwi r3, 0x26
/* 8020E550  40 80 00 08 */	bge lbl_8020E558
/* 8020E554  38 00 00 01 */	li r0, 1
lbl_8020E558:
/* 8020E558  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8020E55C  40 82 00 A4 */	bne lbl_8020E600
/* 8020E560  57 E0 02 95 */	rlwinm. r0, r31, 0, 0xa, 0xa
/* 8020E564  40 82 00 9C */	bne lbl_8020E600
/* 8020E568  57 E0 05 EF */	rlwinm. r0, r31, 0, 0x17, 0x17
/* 8020E56C  40 82 00 94 */	bne lbl_8020E600
/* 8020E570  57 E0 06 31 */	rlwinm. r0, r31, 0, 0x18, 0x18
/* 8020E574  40 82 00 8C */	bne lbl_8020E600
/* 8020E578  57 E0 00 43 */	rlwinm. r0, r31, 0, 1, 1
/* 8020E57C  40 82 00 84 */	bne lbl_8020E600
/* 8020E580  57 E0 04 E7 */	rlwinm. r0, r31, 0, 0x13, 0x13
/* 8020E584  40 82 00 7C */	bne lbl_8020E600
/* 8020E588  57 E0 02 D7 */	rlwinm. r0, r31, 0, 0xb, 0xb
/* 8020E58C  40 82 00 74 */	bne lbl_8020E600
/* 8020E590  57 E0 03 9D */	rlwinm. r0, r31, 0, 0xe, 0xe
/* 8020E594  40 82 00 6C */	bne lbl_8020E600
/* 8020E598  57 E0 07 39 */	rlwinm. r0, r31, 0, 0x1c, 0x1c
/* 8020E59C  40 82 00 64 */	bne lbl_8020E600
/* 8020E5A0  57 E0 06 F7 */	rlwinm. r0, r31, 0, 0x1b, 0x1b
/* 8020E5A4  40 82 00 5C */	bne lbl_8020E600
/* 8020E5A8  57 E0 01 CF */	rlwinm. r0, r31, 0, 7, 7
/* 8020E5AC  40 82 00 54 */	bne lbl_8020E600
/* 8020E5B0  57 E0 02 11 */	rlwinm. r0, r31, 0, 8, 8
/* 8020E5B4  40 82 00 4C */	bne lbl_8020E600
/* 8020E5B8  57 E0 06 B5 */	rlwinm. r0, r31, 0, 0x1a, 0x1a
/* 8020E5BC  40 82 00 44 */	bne lbl_8020E600
/* 8020E5C0  57 E0 01 4B */	rlwinm. r0, r31, 0, 5, 5
/* 8020E5C4  40 82 00 3C */	bne lbl_8020E600
/* 8020E5C8  57 E0 00 C7 */	rlwinm. r0, r31, 0, 3, 3
/* 8020E5CC  40 82 00 34 */	bne lbl_8020E600
/* 8020E5D0  57 E0 05 29 */	rlwinm. r0, r31, 0, 0x14, 0x14
/* 8020E5D4  40 82 00 2C */	bne lbl_8020E600
/* 8020E5D8  57 E0 00 85 */	rlwinm. r0, r31, 0, 2, 2
/* 8020E5DC  40 82 00 24 */	bne lbl_8020E600
/* 8020E5E0  80 04 05 80 */	lwz r0, 0x580(r4)
/* 8020E5E4  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8020E5E8  40 82 00 18 */	bne lbl_8020E600
/* 8020E5EC  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 8020E5F0  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 8020E5F4  A0 03 00 B0 */	lhz r0, 0xb0(r3)
/* 8020E5F8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8020E5FC  41 82 00 0C */	beq lbl_8020E608
lbl_8020E600:
/* 8020E600  38 60 00 00 */	li r3, 0
/* 8020E604  48 00 00 08 */	b lbl_8020E60C
lbl_8020E608:
/* 8020E608  38 60 00 01 */	li r3, 1
lbl_8020E60C:
/* 8020E60C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020E610  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020E614  7C 08 03 A6 */	mtlr r0
/* 8020E618  38 21 00 10 */	addi r1, r1, 0x10
/* 8020E61C  4E 80 00 20 */	blr 
