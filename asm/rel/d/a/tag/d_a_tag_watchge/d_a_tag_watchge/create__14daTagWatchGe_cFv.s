lbl_80D643F8:
/* 80D643F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D643FC  7C 08 02 A6 */	mflr r0
/* 80D64400  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D64404  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D64408  7C 7F 1B 78 */	mr r31, r3
/* 80D6440C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D64410  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D64414  40 82 00 1C */	bne lbl_80D64430
/* 80D64418  28 1F 00 00 */	cmplwi r31, 0
/* 80D6441C  41 82 00 08 */	beq lbl_80D64424
/* 80D64420  4B 2B 47 44 */	b __ct__10fopAc_ac_cFv
lbl_80D64424:
/* 80D64424  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D64428  60 00 00 08 */	ori r0, r0, 8
/* 80D6442C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D64430:
/* 80D64430  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D64434  98 1F 05 69 */	stb r0, 0x569(r31)
/* 80D64438  88 1F 05 69 */	lbz r0, 0x569(r31)
/* 80D6443C  28 00 00 FF */	cmplwi r0, 0xff
/* 80D64440  40 82 00 0C */	bne lbl_80D6444C
/* 80D64444  38 60 00 05 */	li r3, 5
/* 80D64448  48 00 00 54 */	b lbl_80D6449C
lbl_80D6444C:
/* 80D6444C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D64450  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80D64454  98 1F 05 68 */	stb r0, 0x568(r31)
/* 80D64458  88 9F 05 68 */	lbz r4, 0x568(r31)
/* 80D6445C  28 04 00 FF */	cmplwi r4, 0xff
/* 80D64460  40 82 00 0C */	bne lbl_80D6446C
/* 80D64464  38 60 00 05 */	li r3, 5
/* 80D64468  48 00 00 34 */	b lbl_80D6449C
lbl_80D6446C:
/* 80D6446C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D64470  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D64474  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D64478  7C 05 07 74 */	extsb r5, r0
/* 80D6447C  4B 2D 0E E4 */	b isSwitch__10dSv_info_cCFii
/* 80D64480  2C 03 00 00 */	cmpwi r3, 0
/* 80D64484  41 82 00 0C */	beq lbl_80D64490
/* 80D64488  38 60 00 05 */	li r3, 5
/* 80D6448C  48 00 00 10 */	b lbl_80D6449C
lbl_80D64490:
/* 80D64490  38 00 00 1E */	li r0, 0x1e
/* 80D64494  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 80D64498  38 60 00 04 */	li r3, 4
lbl_80D6449C:
/* 80D6449C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D644A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D644A4  7C 08 03 A6 */	mtlr r0
/* 80D644A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D644AC  4E 80 00 20 */	blr 
