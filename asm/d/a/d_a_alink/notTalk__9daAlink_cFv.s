lbl_800B4950:
/* 800B4950  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B4954  7C 08 02 A6 */	mflr r0
/* 800B4958  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B495C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B4960  93 C1 00 08 */	stw r30, 8(r1)
/* 800B4964  7C 7E 1B 78 */	mr r30, r3
/* 800B4968  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800B496C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800B4970  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800B4974  38 9E 1A 60 */	addi r4, r30, 0x1a60
/* 800B4978  4B FB FC E9 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800B497C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B4980  41 82 00 1C */	beq lbl_800B499C
/* 800B4984  38 7E 1A 60 */	addi r3, r30, 0x1a60
/* 800B4988  4B FC 13 F5 */	bl dBgS_CheckBGroundPoly__FRC13cBgS_PolyInfo
/* 800B498C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B4990  41 82 00 0C */	beq lbl_800B499C
/* 800B4994  3B E0 00 01 */	li r31, 1
/* 800B4998  48 00 00 08 */	b lbl_800B49A0
lbl_800B499C:
/* 800B499C  3B E0 00 00 */	li r31, 0
lbl_800B49A0:
/* 800B49A0  88 1E 2F B2 */	lbz r0, 0x2fb2(r30)
/* 800B49A4  28 00 00 00 */	cmplwi r0, 0
/* 800B49A8  40 82 00 3C */	bne lbl_800B49E4
/* 800B49AC  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800B49B0  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B49B4  41 82 00 14 */	beq lbl_800B49C8
/* 800B49B8  C0 3E 36 AC */	lfs f1, 0x36ac(r30)
/* 800B49BC  48 1B 38 29 */	bl cBgW_CheckBGround__Ff
/* 800B49C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B49C4  41 82 00 20 */	beq lbl_800B49E4
lbl_800B49C8:
/* 800B49C8  80 9E 31 A0 */	lwz r4, 0x31a0(r30)
/* 800B49CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800B49D0  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800B49D4  7C 80 00 39 */	and. r0, r4, r0
/* 800B49D8  40 82 00 14 */	bne lbl_800B49EC
/* 800B49DC  2C 1F 00 00 */	cmpwi r31, 0
/* 800B49E0  40 82 00 0C */	bne lbl_800B49EC
lbl_800B49E4:
/* 800B49E4  38 60 00 01 */	li r3, 1
/* 800B49E8  48 00 00 08 */	b lbl_800B49F0
lbl_800B49EC:
/* 800B49EC  38 60 00 00 */	li r3, 0
lbl_800B49F0:
/* 800B49F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B49F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 800B49F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B49FC  7C 08 03 A6 */	mtlr r0
/* 800B4A00  38 21 00 10 */	addi r1, r1, 0x10
/* 800B4A04  4E 80 00 20 */	blr 
