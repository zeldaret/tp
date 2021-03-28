lbl_800D6484:
/* 800D6484  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D6488  7C 08 02 A6 */	mflr r0
/* 800D648C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D6490  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D6494  93 C1 00 08 */	stw r30, 8(r1)
/* 800D6498  7C 7E 1B 78 */	mr r30, r3
/* 800D649C  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 800D64A0  A8 03 30 10 */	lha r0, 0x3010(r3)
/* 800D64A4  2C 00 00 00 */	cmpwi r0, 0
/* 800D64A8  41 82 00 0C */	beq lbl_800D64B4
/* 800D64AC  38 00 00 04 */	li r0, 4
/* 800D64B0  98 1E 2F 99 */	stb r0, 0x2f99(r30)
lbl_800D64B4:
/* 800D64B4  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800D64B8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800D64BC  41 82 00 20 */	beq lbl_800D64DC
/* 800D64C0  7F C3 F3 78 */	mr r3, r30
/* 800D64C4  4B FF AF 21 */	bl checkCutTurnInput__9daAlink_cCFv
/* 800D64C8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D64CC  41 82 00 10 */	beq lbl_800D64DC
/* 800D64D0  7F C3 F3 78 */	mr r3, r30
/* 800D64D4  4B FF AF 51 */	bl getCutTurnDirection__9daAlink_cCFv
/* 800D64D8  90 7E 31 98 */	stw r3, 0x3198(r30)
lbl_800D64DC:
/* 800D64DC  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800D64E0  2C 00 00 00 */	cmpwi r0, 0
/* 800D64E4  40 82 01 0C */	bne lbl_800D65F0
/* 800D64E8  7F E3 FB 78 */	mr r3, r31
/* 800D64EC  48 08 7F E1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800D64F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D64F4  41 82 00 40 */	beq lbl_800D6534
/* 800D64F8  38 00 00 0C */	li r0, 0xc
/* 800D64FC  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800D6500  7F C3 F3 78 */	mr r3, r30
/* 800D6504  38 80 01 8D */	li r4, 0x18d
/* 800D6508  3C A0 80 39 */	lis r5, m__26daAlinkHIO_cutLargeJump_c0@ha
/* 800D650C  38 A5 DE 18 */	addi r5, r5, m__26daAlinkHIO_cutLargeJump_c0@l
/* 800D6510  38 A5 00 28 */	addi r5, r5, 0x28
/* 800D6514  4B FD 6B E1 */	bl setSingleAnimeParam__9daAlink_cFQ29daAlink_c11daAlink_ANMPC16daAlinkHIO_anm_c
/* 800D6518  38 00 00 01 */	li r0, 1
/* 800D651C  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800D6520  7F C3 F3 78 */	mr r3, r30
/* 800D6524  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001009C@ha */
/* 800D6528  38 84 00 9C */	addi r4, r4, 0x009C /* 0x0001009C@l */
/* 800D652C  4B FF BD 59 */	bl setSwordVoiceSe__9daAlink_cFUl
/* 800D6530  48 00 01 74 */	b lbl_800D66A4
lbl_800D6534:
/* 800D6534  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D6538  C0 02 93 14 */	lfs f0, lit_7307(r2)
/* 800D653C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D6540  4C 41 13 82 */	cror 2, 1, 2
/* 800D6544  40 82 00 0C */	bne lbl_800D6550
/* 800D6548  38 00 00 01 */	li r0, 1
/* 800D654C  B0 1E 30 10 */	sth r0, 0x3010(r30)
lbl_800D6550:
/* 800D6550  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800D6554  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800D6558  40 82 00 44 */	bne lbl_800D659C
/* 800D655C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D6560  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800D6564  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D6568  4C 41 13 82 */	cror 2, 1, 2
/* 800D656C  40 82 00 30 */	bne lbl_800D659C
/* 800D6570  7F C3 F3 78 */	mr r3, r30
/* 800D6574  4B FD E3 5D */	bl setJumpMode__9daAlink_cFv
/* 800D6578  3C 60 80 39 */	lis r3, m__26daAlinkHIO_cutLargeJump_c0@ha
/* 800D657C  38 63 DE 18 */	addi r3, r3, m__26daAlinkHIO_cutLargeJump_c0@l
/* 800D6580  C0 03 00 50 */	lfs f0, 0x50(r3)
/* 800D6584  D0 1E 33 98 */	stfs f0, 0x3398(r30)
/* 800D6588  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 800D658C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800D6590  7F C3 F3 78 */	mr r3, r30
/* 800D6594  38 80 00 00 */	li r4, 0
/* 800D6598  4B FF C6 E1 */	bl setCutJumpSpeed__9daAlink_cFi
lbl_800D659C:
/* 800D659C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D65A0  3C 60 80 39 */	lis r3, m__26daAlinkHIO_cutLargeJump_c0@ha
/* 800D65A4  38 63 DE 18 */	addi r3, r3, m__26daAlinkHIO_cutLargeJump_c0@l
/* 800D65A8  C0 03 00 58 */	lfs f0, 0x58(r3)
/* 800D65AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D65B0  4C 41 13 82 */	cror 2, 1, 2
/* 800D65B4  40 82 00 F0 */	bne lbl_800D66A4
/* 800D65B8  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 800D65BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D65C0  40 80 00 E4 */	bge lbl_800D66A4
/* 800D65C4  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800D65C8  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D65CC  40 82 00 14 */	bne lbl_800D65E0
/* 800D65D0  7F C3 F3 78 */	mr r3, r30
/* 800D65D4  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020002@ha */
/* 800D65D8  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00020002@l */
/* 800D65DC  4B FE 8B 11 */	bl seStartSwordCut__9daAlink_cFUl
lbl_800D65E0:
/* 800D65E0  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800D65E4  60 00 00 02 */	ori r0, r0, 2
/* 800D65E8  90 1E 05 80 */	stw r0, 0x580(r30)
/* 800D65EC  48 00 00 B8 */	b lbl_800D66A4
lbl_800D65F0:
/* 800D65F0  A8 7E 30 0E */	lha r3, 0x300e(r30)
/* 800D65F4  2C 03 00 00 */	cmpwi r3, 0
/* 800D65F8  41 82 00 4C */	beq lbl_800D6644
/* 800D65FC  38 03 FF FF */	addi r0, r3, -1
/* 800D6600  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800D6604  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 800D6608  2C 00 00 00 */	cmpwi r0, 0
/* 800D660C  40 82 00 38 */	bne lbl_800D6644
/* 800D6610  7F C3 F3 78 */	mr r3, r30
/* 800D6614  38 80 00 01 */	li r4, 1
/* 800D6618  38 A0 00 03 */	li r5, 3
/* 800D661C  38 C0 00 01 */	li r6, 1
/* 800D6620  38 E0 00 04 */	li r7, 4
/* 800D6624  3D 00 80 39 */	lis r8, m__17daAlinkHIO_cut_c0@ha
/* 800D6628  39 08 DE 8C */	addi r8, r8, m__17daAlinkHIO_cut_c0@l
/* 800D662C  C0 28 00 74 */	lfs f1, 0x74(r8)
/* 800D6630  C0 48 00 78 */	lfs f2, 0x78(r8)
/* 800D6634  4B FF B0 55 */	bl setSwordAtParam__9daAlink_cF11dCcG_At_SplUcUciff
/* 800D6638  7F C3 F3 78 */	mr r3, r30
/* 800D663C  38 80 00 13 */	li r4, 0x13
/* 800D6640  4B FF AE ED */	bl setCutType__9daAlink_cFUc
lbl_800D6644:
/* 800D6644  80 1E 19 9C */	lwz r0, 0x199c(r30)
/* 800D6648  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800D664C  41 82 00 14 */	beq lbl_800D6660
/* 800D6650  7F C3 F3 78 */	mr r3, r30
/* 800D6654  80 9E 31 98 */	lwz r4, 0x3198(r30)
/* 800D6658  48 00 00 69 */	bl procCutLargeJumpLandInit__9daAlink_cFi
/* 800D665C  48 00 00 48 */	b lbl_800D66A4
lbl_800D6660:
/* 800D6660  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 800D6664  3C 60 80 39 */	lis r3, m__26daAlinkHIO_cutLargeJump_c0@ha
/* 800D6668  38 63 DE 18 */	addi r3, r3, m__26daAlinkHIO_cutLargeJump_c0@l
/* 800D666C  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 800D6670  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D6674  4C 41 13 82 */	cror 2, 1, 2
/* 800D6678  40 82 00 2C */	bne lbl_800D66A4
/* 800D667C  80 1E 05 70 */	lwz r0, 0x570(r30)
/* 800D6680  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D6684  40 82 00 14 */	bne lbl_800D6698
/* 800D6688  7F C3 F3 78 */	mr r3, r30
/* 800D668C  3C 80 00 02 */	lis r4, 0x0002 /* 0x00020002@ha */
/* 800D6690  38 84 00 02 */	addi r4, r4, 0x0002 /* 0x00020002@l */
/* 800D6694  4B FE 8A 59 */	bl seStartSwordCut__9daAlink_cFUl
lbl_800D6698:
/* 800D6698  80 1E 05 80 */	lwz r0, 0x580(r30)
/* 800D669C  60 00 00 02 */	ori r0, r0, 2
/* 800D66A0  90 1E 05 80 */	stw r0, 0x580(r30)
lbl_800D66A4:
/* 800D66A4  38 60 00 01 */	li r3, 1
/* 800D66A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D66AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D66B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D66B4  7C 08 03 A6 */	mtlr r0
/* 800D66B8  38 21 00 10 */	addi r1, r1, 0x10
/* 800D66BC  4E 80 00 20 */	blr 
