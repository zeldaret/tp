lbl_8025B67C:
/* 8025B67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025B680  7C 08 02 A6 */	mflr r0
/* 8025B684  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025B688  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025B68C  7C 7F 1B 78 */	mr r31, r3
/* 8025B690  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025B694  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025B698  85 83 4E 20 */	lwzu r12, 0x4e20(r3)
/* 8025B69C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 8025B6A0  7D 89 03 A6 */	mtctr r12
/* 8025B6A4  4E 80 04 21 */	bctrl 
/* 8025B6A8  28 03 00 00 */	cmplwi r3, 0
/* 8025B6AC  40 82 00 0C */	bne lbl_8025B6B8
/* 8025B6B0  38 60 00 00 */	li r3, 0
/* 8025B6B4  48 00 00 74 */	b lbl_8025B728
lbl_8025B6B8:
/* 8025B6B8  80 03 00 00 */	lwz r0, 0(r3)
/* 8025B6BC  7C 00 F8 00 */	cmpw r0, r31
/* 8025B6C0  41 81 00 0C */	bgt lbl_8025B6CC
/* 8025B6C4  38 60 00 00 */	li r3, 0
/* 8025B6C8  48 00 00 60 */	b lbl_8025B728
lbl_8025B6CC:
/* 8025B6CC  80 83 00 04 */	lwz r4, 4(r3)
/* 8025B6D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025B6D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025B6D8  88 03 4E 18 */	lbz r0, 0x4e18(r3)
/* 8025B6DC  7C 00 07 74 */	extsb r0, r0
/* 8025B6E0  54 00 10 3A */	slwi r0, r0, 2
/* 8025B6E4  7C 64 00 2E */	lwzx r3, r4, r0
/* 8025B6E8  80 83 00 04 */	lwz r4, 4(r3)
/* 8025B6EC  88 03 00 00 */	lbz r0, 0(r3)
/* 8025B6F0  7C 09 03 A6 */	mtctr r0
/* 8025B6F4  2C 00 00 00 */	cmpwi r0, 0
/* 8025B6F8  40 81 00 2C */	ble lbl_8025B724
lbl_8025B6FC:
/* 8025B6FC  88 64 00 00 */	lbz r3, 0(r4)
/* 8025B700  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 8025B704  41 82 00 18 */	beq lbl_8025B71C
/* 8025B708  54 60 06 BE */	clrlwi r0, r3, 0x1a
/* 8025B70C  7C 1F 00 00 */	cmpw r31, r0
/* 8025B710  40 82 00 0C */	bne lbl_8025B71C
/* 8025B714  38 60 00 01 */	li r3, 1
/* 8025B718  48 00 00 10 */	b lbl_8025B728
lbl_8025B71C:
/* 8025B71C  38 84 00 01 */	addi r4, r4, 1
/* 8025B720  42 00 FF DC */	bdnz lbl_8025B6FC
lbl_8025B724:
/* 8025B724  38 60 00 00 */	li r3, 0
lbl_8025B728:
/* 8025B728  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025B72C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025B730  7C 08 03 A6 */	mtlr r0
/* 8025B734  38 21 00 10 */	addi r1, r1, 0x10
/* 8025B738  4E 80 00 20 */	blr 
