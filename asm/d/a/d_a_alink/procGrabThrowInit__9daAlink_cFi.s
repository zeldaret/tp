lbl_800E63F0:
/* 800E63F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800E63F4  7C 08 02 A6 */	mflr r0
/* 800E63F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800E63FC  39 61 00 20 */	addi r11, r1, 0x20
/* 800E6400  48 27 BD DD */	bl _savegpr_29
/* 800E6404  7C 7F 1B 78 */	mr r31, r3
/* 800E6408  7C 9D 23 78 */	mr r29, r4
/* 800E640C  3C 80 80 39 */	lis r4, lit_3757@ha /* 0x8038D658@ha */
/* 800E6410  3B C4 D6 58 */	addi r30, r4, lit_3757@l /* 0x8038D658@l */
/* 800E6414  80 03 31 A0 */	lwz r0, 0x31a0(r3)
/* 800E6418  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800E641C  41 82 00 98 */	beq lbl_800E64B4
/* 800E6420  4B FF D9 4D */	bl checkGrabHeavyActor__9daAlink_cFv
/* 800E6424  2C 03 00 00 */	cmpwi r3, 0
/* 800E6428  41 82 00 28 */	beq lbl_800E6450
/* 800E642C  7F E3 FB 78 */	mr r3, r31
/* 800E6430  38 80 01 7B */	li r4, 0x17b
/* 800E6434  38 A0 00 02 */	li r5, 2
/* 800E6438  38 DE 15 F0 */	addi r6, r30, 0x15f0
/* 800E643C  38 C6 00 C8 */	addi r6, r6, 0xc8
/* 800E6440  4B FC 72 B1 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800E6444  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 800E6448  D0 1F 34 3C */	stfs f0, 0x343c(r31)
/* 800E644C  48 00 00 54 */	b lbl_800E64A0
lbl_800E6450:
/* 800E6450  A0 1F 1F BC */	lhz r0, 0x1fbc(r31)
/* 800E6454  28 00 00 50 */	cmplwi r0, 0x50
/* 800E6458  40 82 00 28 */	bne lbl_800E6480
/* 800E645C  7F E3 FB 78 */	mr r3, r31
/* 800E6460  38 80 00 51 */	li r4, 0x51
/* 800E6464  38 A0 00 02 */	li r5, 2
/* 800E6468  38 DE 15 F0 */	addi r6, r30, 0x15f0
/* 800E646C  38 C6 00 B4 */	addi r6, r6, 0xb4
/* 800E6470  4B FC 72 81 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800E6474  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 800E6478  D0 1F 34 3C */	stfs f0, 0x343c(r31)
/* 800E647C  48 00 00 24 */	b lbl_800E64A0
lbl_800E6480:
/* 800E6480  7F E3 FB 78 */	mr r3, r31
/* 800E6484  38 80 01 70 */	li r4, 0x170
/* 800E6488  38 A0 00 02 */	li r5, 2
/* 800E648C  38 DE 15 F0 */	addi r6, r30, 0x15f0
/* 800E6490  38 C6 00 3C */	addi r6, r6, 0x3c
/* 800E6494  4B FC 72 5D */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800E6498  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800E649C  D0 1F 34 3C */	stfs f0, 0x343c(r31)
lbl_800E64A0:
/* 800E64A0  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800E64A4  64 00 10 00 */	oris r0, r0, 0x1000
/* 800E64A8  90 1F 05 74 */	stw r0, 0x574(r31)
/* 800E64AC  38 60 00 01 */	li r3, 1
/* 800E64B0  48 00 01 30 */	b lbl_800E65E0
lbl_800E64B4:
/* 800E64B4  38 80 00 6F */	li r4, 0x6f
/* 800E64B8  4B FD C8 ED */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E64BC  2C 03 00 00 */	cmpwi r3, 0
/* 800E64C0  40 82 00 0C */	bne lbl_800E64CC
/* 800E64C4  38 60 00 00 */	li r3, 0
/* 800E64C8  48 00 01 18 */	b lbl_800E65E0
lbl_800E64CC:
/* 800E64CC  7F E3 FB 78 */	mr r3, r31
/* 800E64D0  4B FF D8 9D */	bl checkGrabHeavyActor__9daAlink_cFv
/* 800E64D4  2C 03 00 00 */	cmpwi r3, 0
/* 800E64D8  41 82 00 38 */	beq lbl_800E6510
/* 800E64DC  7F E3 FB 78 */	mr r3, r31
/* 800E64E0  38 80 00 B2 */	li r4, 0xb2
/* 800E64E4  38 BE 15 F0 */	addi r5, r30, 0x15f0
/* 800E64E8  38 A5 00 C8 */	addi r5, r5, 0xc8
/* 800E64EC  4B FC 6C 09 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800E64F0  C0 02 93 48 */	lfs f0, lit_8130(r2)
/* 800E64F4  D0 1F 34 3C */	stfs f0, 0x343c(r31)
/* 800E64F8  38 7E 15 F0 */	addi r3, r30, 0x15f0
/* 800E64FC  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 800E6500  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 800E6504  38 00 00 02 */	li r0, 2
/* 800E6508  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800E650C  48 00 00 B0 */	b lbl_800E65BC
lbl_800E6510:
/* 800E6510  7F E3 FB 78 */	mr r3, r31
/* 800E6514  4B FF D8 81 */	bl checkGrabSideActor__9daAlink_cFv
/* 800E6518  2C 03 00 00 */	cmpwi r3, 0
/* 800E651C  41 82 00 70 */	beq lbl_800E658C
/* 800E6520  7F E3 FB 78 */	mr r3, r31
/* 800E6524  38 80 00 11 */	li r4, 0x11
/* 800E6528  80 1F 27 EC */	lwz r0, 0x27ec(r31)
/* 800E652C  28 00 00 00 */	cmplwi r0, 0
/* 800E6530  41 82 00 10 */	beq lbl_800E6540
/* 800E6534  38 BE 00 BC */	addi r5, r30, 0xbc
/* 800E6538  C0 25 00 08 */	lfs f1, 8(r5)
/* 800E653C  48 00 00 0C */	b lbl_800E6548
lbl_800E6540:
/* 800E6540  38 BE 01 10 */	addi r5, r30, 0x110
/* 800E6544  C0 25 00 08 */	lfs f1, 8(r5)
lbl_800E6548:
/* 800E6548  38 BE 00 0C */	addi r5, r30, 0xc
/* 800E654C  C0 45 00 18 */	lfs f2, 0x18(r5)
/* 800E6550  4B FC 6A 91 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800E6554  7F E3 FB 78 */	mr r3, r31
/* 800E6558  38 80 00 51 */	li r4, 0x51
/* 800E655C  38 A0 00 00 */	li r5, 0
/* 800E6560  38 DE 15 F0 */	addi r6, r30, 0x15f0
/* 800E6564  38 C6 00 B4 */	addi r6, r6, 0xb4
/* 800E6568  4B FC 71 89 */	bl setUpperAnimeParam__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERPC16daAlinkHIO_anm_c
/* 800E656C  C0 02 93 24 */	lfs f0, lit_7450(r2)
/* 800E6570  D0 1F 34 3C */	stfs f0, 0x343c(r31)
/* 800E6574  38 7E 15 F0 */	addi r3, r30, 0x15f0
/* 800E6578  C0 03 00 C4 */	lfs f0, 0xc4(r3)
/* 800E657C  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 800E6580  38 00 00 01 */	li r0, 1
/* 800E6584  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800E6588  48 00 00 34 */	b lbl_800E65BC
lbl_800E658C:
/* 800E658C  7F E3 FB 78 */	mr r3, r31
/* 800E6590  38 80 00 B1 */	li r4, 0xb1
/* 800E6594  38 BE 15 F0 */	addi r5, r30, 0x15f0
/* 800E6598  38 A5 00 3C */	addi r5, r5, 0x3c
/* 800E659C  4B FC 6B 59 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800E65A0  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800E65A4  D0 1F 34 3C */	stfs f0, 0x343c(r31)
/* 800E65A8  38 7E 15 F0 */	addi r3, r30, 0x15f0
/* 800E65AC  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 800E65B0  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 800E65B4  38 00 00 00 */	li r0, 0
/* 800E65B8  B0 1F 30 0C */	sth r0, 0x300c(r31)
lbl_800E65BC:
/* 800E65BC  93 BF 31 98 */	stw r29, 0x3198(r31)
/* 800E65C0  3C 60 80 42 */	lis r3, l_halfAtnWaitBaseAnime@ha /* 0x80425544@ha */
/* 800E65C4  C4 03 55 44 */	lfsu f0, l_halfAtnWaitBaseAnime@l(r3)  /* 0x80425544@l */
/* 800E65C8  D0 1F 35 88 */	stfs f0, 0x3588(r31)
/* 800E65CC  C0 03 00 04 */	lfs f0, 4(r3)
/* 800E65D0  D0 1F 35 8C */	stfs f0, 0x358c(r31)
/* 800E65D4  C0 03 00 08 */	lfs f0, 8(r3)
/* 800E65D8  D0 1F 35 90 */	stfs f0, 0x3590(r31)
/* 800E65DC  38 60 00 01 */	li r3, 1
lbl_800E65E0:
/* 800E65E0  39 61 00 20 */	addi r11, r1, 0x20
/* 800E65E4  48 27 BC 45 */	bl _restgpr_29
/* 800E65E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800E65EC  7C 08 03 A6 */	mtlr r0
/* 800E65F0  38 21 00 20 */	addi r1, r1, 0x20
/* 800E65F4  4E 80 00 20 */	blr 
