lbl_80D35440:
/* 80D35440  C0 25 04 D0 */	lfs f1, 0x4d0(r5)
/* 80D35444  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 80D35448  EC 41 00 28 */	fsubs f2, f1, f0
/* 80D3544C  C0 25 04 D8 */	lfs f1, 0x4d8(r5)
/* 80D35450  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 80D35454  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D35458  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80D3545C  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D35460  EC 21 00 2A */	fadds f1, f1, f0
/* 80D35464  3C 60 80 D3 */	lis r3, lit_3703@ha
/* 80D35468  C0 03 60 C0 */	lfs f0, lit_3703@l(r3)
/* 80D3546C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D35470  40 81 00 0C */	ble lbl_80D3547C
/* 80D35474  FC 00 08 34 */	frsqrte f0, f1
/* 80D35478  EC 20 00 72 */	fmuls f1, f0, f1
lbl_80D3547C:
/* 80D3547C  D0 24 05 AC */	stfs f1, 0x5ac(r4)
/* 80D35480  C0 24 05 AC */	lfs f1, 0x5ac(r4)
/* 80D35484  3C 60 80 D3 */	lis r3, lit_3704@ha
/* 80D35488  C0 03 60 C4 */	lfs f0, lit_3704@l(r3)
/* 80D3548C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D35490  4C 80 00 20 */	bgelr 
/* 80D35494  A8 05 00 08 */	lha r0, 8(r5)
/* 80D35498  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80D3549C  41 82 00 08 */	beq lbl_80D354A4
/* 80D354A0  40 82 00 48 */	bne lbl_80D354E8
lbl_80D354A4:
/* 80D354A4  A8 04 05 AA */	lha r0, 0x5aa(r4)
/* 80D354A8  2C 00 00 00 */	cmpwi r0, 0
/* 80D354AC  40 82 00 0C */	bne lbl_80D354B8
/* 80D354B0  38 00 00 3C */	li r0, 0x3c
/* 80D354B4  B0 04 05 A8 */	sth r0, 0x5a8(r4)
lbl_80D354B8:
/* 80D354B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D354BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D354C0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D354C4  80 03 05 70 */	lwz r0, 0x570(r3)
/* 80D354C8  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80D354CC  41 82 00 10 */	beq lbl_80D354DC
/* 80D354D0  38 00 00 78 */	li r0, 0x78
/* 80D354D4  B0 04 05 AA */	sth r0, 0x5aa(r4)
/* 80D354D8  4E 80 00 20 */	blr 
lbl_80D354DC:
/* 80D354DC  38 00 00 06 */	li r0, 6
/* 80D354E0  B0 04 05 AA */	sth r0, 0x5aa(r4)
/* 80D354E4  4E 80 00 20 */	blr 
lbl_80D354E8:
/* 80D354E8  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80D354EC  40 82 00 10 */	bne lbl_80D354FC
/* 80D354F0  38 00 00 78 */	li r0, 0x78
/* 80D354F4  B0 04 05 AA */	sth r0, 0x5aa(r4)
/* 80D354F8  4E 80 00 20 */	blr 
lbl_80D354FC:
/* 80D354FC  38 00 00 03 */	li r0, 3
/* 80D35500  B0 04 05 AA */	sth r0, 0x5aa(r4)
/* 80D35504  4E 80 00 20 */	blr 
