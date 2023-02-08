lbl_800E6C34:
/* 800E6C34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E6C38  7C 08 02 A6 */	mflr r0
/* 800E6C3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E6C40  39 61 00 20 */	addi r11, r1, 0x20
/* 800E6C44  48 27 B5 99 */	bl _savegpr_29
/* 800E6C48  7C 7D 1B 78 */	mr r29, r3
/* 800E6C4C  80 03 28 30 */	lwz r0, 0x2830(r3)
/* 800E6C50  28 00 00 00 */	cmplwi r0, 0
/* 800E6C54  40 82 00 30 */	bne lbl_800E6C84
/* 800E6C58  4B FF D0 15 */	bl checkGrabAnime__9daAlink_cCFv
/* 800E6C5C  2C 03 00 00 */	cmpwi r3, 0
/* 800E6C60  41 82 00 14 */	beq lbl_800E6C74
/* 800E6C64  7F A3 EB 78 */	mr r3, r29
/* 800E6C68  38 80 00 02 */	li r4, 2
/* 800E6C6C  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800E6C70  4B FC 6A B5 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
lbl_800E6C74:
/* 800E6C74  7F A3 EB 78 */	mr r3, r29
/* 800E6C78  38 80 00 00 */	li r4, 0
/* 800E6C7C  4B FD 34 55 */	bl checkNextAction__9daAlink_cFi
/* 800E6C80  48 00 00 D4 */	b lbl_800E6D54
lbl_800E6C84:
/* 800E6C84  AB DD 04 E6 */	lha r30, 0x4e6(r29)
/* 800E6C88  38 80 00 00 */	li r4, 0
/* 800E6C8C  4B FD 34 45 */	bl checkNextAction__9daAlink_cFi
/* 800E6C90  2C 03 00 00 */	cmpwi r3, 0
/* 800E6C94  40 82 00 A0 */	bne lbl_800E6D34
/* 800E6C98  C0 42 94 78 */	lfs f2, lit_15460(r2)
/* 800E6C9C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 800E6CA0  7C 1E 00 50 */	subf r0, r30, r0
/* 800E6CA4  7C 00 07 34 */	extsh r0, r0
/* 800E6CA8  C8 22 92 B0 */	lfd f1, lit_6025(r2)
/* 800E6CAC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 800E6CB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 800E6CB4  3C 00 43 30 */	lis r0, 0x4330
/* 800E6CB8  90 01 00 08 */	stw r0, 8(r1)
/* 800E6CBC  C8 01 00 08 */	lfd f0, 8(r1)
/* 800E6CC0  EC 00 08 28 */	fsubs f0, f0, f1
/* 800E6CC4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800E6CC8  D0 1D 33 F0 */	stfs f0, 0x33f0(r29)
/* 800E6CCC  83 FD 27 E0 */	lwz r31, 0x27e0(r29)
/* 800E6CD0  3B C0 00 01 */	li r30, 1
/* 800E6CD4  7F E3 FB 78 */	mr r3, r31
/* 800E6CD8  4B F8 CB 0D */	bl LockonTruth__12dAttention_cFv
/* 800E6CDC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E6CE0  40 82 00 14 */	bne lbl_800E6CF4
/* 800E6CE4  80 1F 03 34 */	lwz r0, 0x334(r31)
/* 800E6CE8  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800E6CEC  40 82 00 08 */	bne lbl_800E6CF4
/* 800E6CF0  3B C0 00 00 */	li r30, 0
lbl_800E6CF4:
/* 800E6CF4  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 800E6CF8  41 82 00 2C */	beq lbl_800E6D24
/* 800E6CFC  A0 1D 1F BC */	lhz r0, 0x1fbc(r29)
/* 800E6D00  28 00 01 6C */	cmplwi r0, 0x16c
/* 800E6D04  41 82 00 10 */	beq lbl_800E6D14
/* 800E6D08  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 800E6D0C  28 00 00 50 */	cmplwi r0, 0x50
/* 800E6D10  40 82 00 14 */	bne lbl_800E6D24
lbl_800E6D14:
/* 800E6D14  7F A3 EB 78 */	mr r3, r29
/* 800E6D18  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800E6D1C  4B FC 7D 55 */	bl setBlendAtnMoveAnime__9daAlink_cFf
/* 800E6D20  48 00 00 30 */	b lbl_800E6D50
lbl_800E6D24:
/* 800E6D24  7F A3 EB 78 */	mr r3, r29
/* 800E6D28  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800E6D2C  4B FC 70 E9 */	bl setBlendMoveAnime__9daAlink_cFf
/* 800E6D30  48 00 00 20 */	b lbl_800E6D50
lbl_800E6D34:
/* 800E6D34  7F A3 EB 78 */	mr r3, r29
/* 800E6D38  4B FF CF 35 */	bl checkGrabAnime__9daAlink_cCFv
/* 800E6D3C  2C 03 00 00 */	cmpwi r3, 0
/* 800E6D40  41 82 00 10 */	beq lbl_800E6D50
/* 800E6D44  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E6D48  D0 1D 20 54 */	stfs f0, 0x2054(r29)
/* 800E6D4C  D0 1D 20 58 */	stfs f0, 0x2058(r29)
lbl_800E6D50:
/* 800E6D50  38 60 00 01 */	li r3, 1
lbl_800E6D54:
/* 800E6D54  39 61 00 20 */	addi r11, r1, 0x20
/* 800E6D58  48 27 B4 D1 */	bl _restgpr_29
/* 800E6D5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E6D60  7C 08 03 A6 */	mtlr r0
/* 800E6D64  38 21 00 20 */	addi r1, r1, 0x20
/* 800E6D68  4E 80 00 20 */	blr 
