lbl_80A85094:
/* 80A85094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A85098  7C 08 02 A6 */	mflr r0
/* 80A8509C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A850A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A850A4  7C 7F 1B 78 */	mr r31, r3
/* 80A850A8  88 03 0E 0C */	lbz r0, 0xe0c(r3)
/* 80A850AC  28 00 00 04 */	cmplwi r0, 4
/* 80A850B0  41 82 00 14 */	beq lbl_80A850C4
/* 80A850B4  28 00 00 00 */	cmplwi r0, 0
/* 80A850B8  41 82 00 0C */	beq lbl_80A850C4
/* 80A850BC  28 00 00 01 */	cmplwi r0, 1
/* 80A850C0  40 82 00 0C */	bne lbl_80A850CC
lbl_80A850C4:
/* 80A850C4  38 60 00 00 */	li r3, 0
/* 80A850C8  48 00 00 84 */	b lbl_80A8514C
lbl_80A850CC:
/* 80A850CC  28 00 00 02 */	cmplwi r0, 2
/* 80A850D0  40 82 00 50 */	bne lbl_80A85120
/* 80A850D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A850D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A850DC  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 80A850E0  3C 80 80 A9 */	lis r4, d_a_npc_myna2__stringBase0@ha /* 0x80A88654@ha */
/* 80A850E4  38 84 86 54 */	addi r4, r4, d_a_npc_myna2__stringBase0@l /* 0x80A88654@l */
/* 80A850E8  38 84 00 54 */	addi r4, r4, 0x54
/* 80A850EC  4B 8E 38 A9 */	bl strcmp
/* 80A850F0  2C 03 00 00 */	cmpwi r3, 0
/* 80A850F4  40 82 00 54 */	bne lbl_80A85148
/* 80A850F8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80A850FC  7C 00 07 75 */	extsb. r0, r0
/* 80A85100  40 82 00 48 */	bne lbl_80A85148
/* 80A85104  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A85108  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A8510C  A8 03 0D B8 */	lha r0, 0xdb8(r3)
/* 80A85110  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A85114  40 82 00 34 */	bne lbl_80A85148
/* 80A85118  38 60 00 00 */	li r3, 0
/* 80A8511C  48 00 00 30 */	b lbl_80A8514C
lbl_80A85120:
/* 80A85120  28 00 00 03 */	cmplwi r0, 3
/* 80A85124  40 82 00 24 */	bne lbl_80A85148
/* 80A85128  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A8512C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A85130  80 03 0D D0 */	lwz r0, 0xdd0(r3)
/* 80A85134  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80A85138  28 00 00 0A */	cmplwi r0, 0xa
/* 80A8513C  40 82 00 0C */	bne lbl_80A85148
/* 80A85140  38 60 00 00 */	li r3, 0
/* 80A85144  48 00 00 08 */	b lbl_80A8514C
lbl_80A85148:
/* 80A85148  38 60 00 01 */	li r3, 1
lbl_80A8514C:
/* 80A8514C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A85150  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A85154  7C 08 03 A6 */	mtlr r0
/* 80A85158  38 21 00 10 */	addi r1, r1, 0x10
/* 80A8515C  4E 80 00 20 */	blr 
