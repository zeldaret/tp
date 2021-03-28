lbl_80D383FC:
/* 80D383FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D38400  7C 08 02 A6 */	mflr r0
/* 80D38404  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D38408  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D3840C  7C 7F 1B 78 */	mr r31, r3
/* 80D38410  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D38414  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D38418  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D3841C  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80D38420  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D38424  7C 05 07 74 */	extsb r5, r0
/* 80D38428  4B 2F CF 38 */	b isSwitch__10dSv_info_cCFii
/* 80D3842C  2C 03 00 00 */	cmpwi r3, 0
/* 80D38430  41 82 00 0C */	beq lbl_80D3843C
/* 80D38434  38 60 00 00 */	li r3, 0
/* 80D38438  48 00 00 78 */	b lbl_80D384B0
lbl_80D3843C:
/* 80D3843C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D38440  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D38444  A8 63 0D B8 */	lha r3, 0xdb8(r3)
/* 80D38448  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D3844C  54 00 E7 3E */	rlwinm r0, r0, 0x1c, 0x1c, 0x1f
/* 80D38450  7C 00 07 74 */	extsb r0, r0
/* 80D38454  2C 00 00 05 */	cmpwi r0, 5
/* 80D38458  41 82 00 2C */	beq lbl_80D38484
/* 80D3845C  40 80 00 14 */	bge lbl_80D38470
/* 80D38460  2C 00 00 03 */	cmpwi r0, 3
/* 80D38464  41 82 00 20 */	beq lbl_80D38484
/* 80D38468  40 80 00 30 */	bge lbl_80D38498
/* 80D3846C  48 00 00 40 */	b lbl_80D384AC
lbl_80D38470:
/* 80D38470  2C 00 00 09 */	cmpwi r0, 9
/* 80D38474  40 80 00 38 */	bge lbl_80D384AC
/* 80D38478  2C 00 00 07 */	cmpwi r0, 7
/* 80D3847C  40 80 00 08 */	bge lbl_80D38484
/* 80D38480  48 00 00 18 */	b lbl_80D38498
lbl_80D38484:
/* 80D38484  7C 60 07 34 */	extsh r0, r3
/* 80D38488  2C 00 00 64 */	cmpwi r0, 0x64
/* 80D3848C  40 82 00 20 */	bne lbl_80D384AC
/* 80D38490  38 60 00 01 */	li r3, 1
/* 80D38494  48 00 00 1C */	b lbl_80D384B0
lbl_80D38498:
/* 80D38498  7C 60 07 34 */	extsh r0, r3
/* 80D3849C  2C 00 00 65 */	cmpwi r0, 0x65
/* 80D384A0  40 82 00 0C */	bne lbl_80D384AC
/* 80D384A4  38 60 00 01 */	li r3, 1
/* 80D384A8  48 00 00 08 */	b lbl_80D384B0
lbl_80D384AC:
/* 80D384AC  38 60 00 00 */	li r3, 0
lbl_80D384B0:
/* 80D384B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D384B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D384B8  7C 08 03 A6 */	mtlr r0
/* 80D384BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D384C0  4E 80 00 20 */	blr 
