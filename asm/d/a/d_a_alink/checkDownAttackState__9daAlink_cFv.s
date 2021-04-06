lbl_800D29D4:
/* 800D29D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D29D8  7C 08 02 A6 */	mflr r0
/* 800D29DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D29E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D29E4  93 C1 00 08 */	stw r30, 8(r1)
/* 800D29E8  7C 7E 1B 78 */	mr r30, r3
/* 800D29EC  83 E3 27 EC */	lwz r31, 0x27ec(r3)
/* 800D29F0  28 1F 00 00 */	cmplwi r31, 0
/* 800D29F4  41 82 00 AC */	beq lbl_800D2AA0
/* 800D29F8  88 1F 04 96 */	lbz r0, 0x496(r31)
/* 800D29FC  28 00 00 02 */	cmplwi r0, 2
/* 800D2A00  40 82 00 A0 */	bne lbl_800D2AA0
/* 800D2A04  A0 1F 05 8E */	lhz r0, 0x58e(r31)
/* 800D2A08  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800D2A0C  41 82 00 94 */	beq lbl_800D2AA0
/* 800D2A10  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800D2A14  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D2A18  40 82 00 44 */	bne lbl_800D2A5C
/* 800D2A1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D2A20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D2A24  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 800D2A28  38 80 29 04 */	li r4, 0x2904
/* 800D2A2C  4B F6 1F 91 */	bl isEventBit__11dSv_event_cCFUs
/* 800D2A30  2C 03 00 00 */	cmpwi r3, 0
/* 800D2A34  40 82 00 10 */	bne lbl_800D2A44
/* 800D2A38  80 1E 05 7C */	lwz r0, 0x57c(r30)
/* 800D2A3C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800D2A40  41 82 00 1C */	beq lbl_800D2A5C
lbl_800D2A44:
/* 800D2A44  38 7F 05 68 */	addi r3, r31, 0x568
/* 800D2A48  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 800D2A4C  48 27 49 51 */	bl PSVECSquareDistance
/* 800D2A50  C0 02 93 08 */	lfs f0, lit_7174(r2)
/* 800D2A54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D2A58  41 80 00 40 */	blt lbl_800D2A98
lbl_800D2A5C:
/* 800D2A5C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 800D2A60  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 800D2A64  41 82 00 3C */	beq lbl_800D2AA0
/* 800D2A68  80 7E 27 EC */	lwz r3, 0x27ec(r30)
/* 800D2A6C  A8 03 00 08 */	lha r0, 8(r3)
/* 800D2A70  2C 00 01 DA */	cmpwi r0, 0x1da
/* 800D2A74  41 82 00 0C */	beq lbl_800D2A80
/* 800D2A78  2C 00 01 E1 */	cmpwi r0, 0x1e1
/* 800D2A7C  40 82 00 24 */	bne lbl_800D2AA0
lbl_800D2A80:
/* 800D2A80  38 7F 05 68 */	addi r3, r31, 0x568
/* 800D2A84  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 800D2A88  48 27 49 15 */	bl PSVECSquareDistance
/* 800D2A8C  C0 02 93 08 */	lfs f0, lit_7174(r2)
/* 800D2A90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D2A94  40 80 00 0C */	bge lbl_800D2AA0
lbl_800D2A98:
/* 800D2A98  38 60 00 01 */	li r3, 1
/* 800D2A9C  48 00 00 08 */	b lbl_800D2AA4
lbl_800D2AA0:
/* 800D2AA0  38 60 00 00 */	li r3, 0
lbl_800D2AA4:
/* 800D2AA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D2AA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D2AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D2AB0  7C 08 03 A6 */	mtlr r0
/* 800D2AB4  38 21 00 10 */	addi r1, r1, 0x10
/* 800D2AB8  4E 80 00 20 */	blr 
