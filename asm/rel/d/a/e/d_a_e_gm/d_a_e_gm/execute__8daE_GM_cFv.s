lbl_806D6708:
/* 806D6708  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806D670C  7C 08 02 A6 */	mflr r0
/* 806D6710  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D6714  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806D6718  93 C1 00 08 */	stw r30, 8(r1)
/* 806D671C  7C 7E 1B 78 */	mr r30, r3
/* 806D6720  3C 60 80 6D */	lis r3, lit_1109@ha
/* 806D6724  3B E3 7E 78 */	addi r31, r3, lit_1109@l
/* 806D6728  4B B6 1B 04 */	b getStatus__12dMsgObject_cFv
/* 806D672C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 806D6730  20 60 00 01 */	subfic r3, r0, 1
/* 806D6734  30 03 FF FF */	addic r0, r3, -1
/* 806D6738  7C 00 19 10 */	subfe r0, r0, r3
/* 806D673C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 806D6740  41 82 00 0C */	beq lbl_806D674C
/* 806D6744  38 60 00 01 */	li r3, 1
/* 806D6748  48 00 01 F8 */	b lbl_806D6940
lbl_806D674C:
/* 806D674C  88 7E 0A 6B */	lbz r3, 0xa6b(r30)
/* 806D6750  28 03 00 00 */	cmplwi r3, 0
/* 806D6754  41 82 00 0C */	beq lbl_806D6760
/* 806D6758  38 03 FF FF */	addi r0, r3, -1
/* 806D675C  98 1E 0A 6B */	stb r0, 0xa6b(r30)
lbl_806D6760:
/* 806D6760  88 7E 0A 6C */	lbz r3, 0xa6c(r30)
/* 806D6764  28 03 00 00 */	cmplwi r3, 0
/* 806D6768  41 82 00 0C */	beq lbl_806D6774
/* 806D676C  38 03 FF FF */	addi r0, r3, -1
/* 806D6770  98 1E 0A 6C */	stb r0, 0xa6c(r30)
lbl_806D6774:
/* 806D6774  88 7E 0A 6D */	lbz r3, 0xa6d(r30)
/* 806D6778  28 03 00 00 */	cmplwi r3, 0
/* 806D677C  41 82 00 0C */	beq lbl_806D6788
/* 806D6780  38 03 FF FF */	addi r0, r3, -1
/* 806D6784  98 1E 0A 6D */	stb r0, 0xa6d(r30)
lbl_806D6788:
/* 806D6788  88 7E 0A 72 */	lbz r3, 0xa72(r30)
/* 806D678C  28 03 00 00 */	cmplwi r3, 0
/* 806D6790  41 82 00 0C */	beq lbl_806D679C
/* 806D6794  38 03 FF FF */	addi r0, r3, -1
/* 806D6798  98 1E 0A 72 */	stb r0, 0xa72(r30)
lbl_806D679C:
/* 806D679C  3C 60 80 6D */	lis r3, data_806D7B34@ha
/* 806D67A0  38 63 7B 34 */	addi r3, r3, data_806D7B34@l
/* 806D67A4  80 63 00 00 */	lwz r3, 0(r3)
/* 806D67A8  28 1E 00 00 */	cmplwi r30, 0
/* 806D67AC  41 82 00 0C */	beq lbl_806D67B8
/* 806D67B0  80 1E 00 04 */	lwz r0, 4(r30)
/* 806D67B4  48 00 00 08 */	b lbl_806D67BC
lbl_806D67B8:
/* 806D67B8  38 00 FF FF */	li r0, -1
lbl_806D67BC:
/* 806D67BC  7C 03 00 40 */	cmplw r3, r0
/* 806D67C0  40 82 00 2C */	bne lbl_806D67EC
/* 806D67C4  88 7F 00 A4 */	lbz r3, 0xa4(r31)
/* 806D67C8  28 03 00 00 */	cmplwi r3, 0
/* 806D67CC  41 82 00 20 */	beq lbl_806D67EC
/* 806D67D0  38 03 FF FF */	addi r0, r3, -1
/* 806D67D4  98 1F 00 A4 */	stb r0, 0xa4(r31)
/* 806D67D8  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 806D67DC  40 82 00 10 */	bne lbl_806D67EC
/* 806D67E0  38 00 FF FF */	li r0, -1
/* 806D67E4  3C 60 80 6D */	lis r3, data_806D7B34@ha
/* 806D67E8  90 03 7B 34 */	stw r0, data_806D7B34@l(r3)
lbl_806D67EC:
/* 806D67EC  7F C3 F3 78 */	mr r3, r30
/* 806D67F0  4B FF FB 2D */	bl damage_check__8daE_GM_cFv
/* 806D67F4  7F C3 F3 78 */	mr r3, r30
/* 806D67F8  4B FF AB 75 */	bl action__8daE_GM_cFv
/* 806D67FC  3C 60 80 6D */	lis r3, data_806D7B38@ha
/* 806D6800  38 63 7B 38 */	addi r3, r3, data_806D7B38@l
/* 806D6804  80 63 00 00 */	lwz r3, 0(r3)
/* 806D6808  28 1E 00 00 */	cmplwi r30, 0
/* 806D680C  41 82 00 0C */	beq lbl_806D6818
/* 806D6810  80 1E 00 04 */	lwz r0, 4(r30)
/* 806D6814  48 00 00 08 */	b lbl_806D681C
lbl_806D6818:
/* 806D6818  38 00 FF FF */	li r0, -1
lbl_806D681C:
/* 806D681C  7C 03 00 40 */	cmplw r3, r0
/* 806D6820  40 82 00 44 */	bne lbl_806D6864
/* 806D6824  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806D6828  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 806D682C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806D6830  38 7F 00 80 */	addi r3, r31, 0x80
/* 806D6834  D0 03 00 04 */	stfs f0, 4(r3)
/* 806D6838  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806D683C  D0 03 00 08 */	stfs f0, 8(r3)
/* 806D6840  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 806D6844  B0 1F 00 98 */	sth r0, 0x98(r31)
/* 806D6848  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806D684C  38 7F 00 98 */	addi r3, r31, 0x98
/* 806D6850  B0 03 00 02 */	sth r0, 2(r3)
/* 806D6854  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 806D6858  B0 03 00 04 */	sth r0, 4(r3)
/* 806D685C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 806D6860  D0 1F 00 A0 */	stfs f0, 0xa0(r31)
lbl_806D6864:
/* 806D6864  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 806D6868  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 806D686C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 806D6870  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 806D6874  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 806D6878  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 806D687C  88 1E 0A 69 */	lbz r0, 0xa69(r30)
/* 806D6880  28 00 00 00 */	cmplwi r0, 0
/* 806D6884  40 82 00 20 */	bne lbl_806D68A4
/* 806D6888  C0 1E 0A 10 */	lfs f0, 0xa10(r30)
/* 806D688C  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 806D6890  C0 1E 0A 14 */	lfs f0, 0xa14(r30)
/* 806D6894  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 806D6898  C0 1E 0A 18 */	lfs f0, 0xa18(r30)
/* 806D689C  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 806D68A0  48 00 00 8C */	b lbl_806D692C
lbl_806D68A4:
/* 806D68A4  28 00 00 02 */	cmplwi r0, 2
/* 806D68A8  40 82 00 3C */	bne lbl_806D68E4
/* 806D68AC  C0 1E 0A 10 */	lfs f0, 0xa10(r30)
/* 806D68B0  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 806D68B4  C0 1E 0A 14 */	lfs f0, 0xa14(r30)
/* 806D68B8  D0 1E 04 F0 */	stfs f0, 0x4f0(r30)
/* 806D68BC  C0 1E 0A 18 */	lfs f0, 0xa18(r30)
/* 806D68C0  D0 1E 04 F4 */	stfs f0, 0x4f4(r30)
/* 806D68C4  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806D68C8  7C 03 07 74 */	extsb r3, r0
/* 806D68CC  4B 95 67 A0 */	b dComIfGp_getReverb__Fi
/* 806D68D0  7C 65 1B 78 */	mr r5, r3
/* 806D68D4  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D68D8  38 80 00 00 */	li r4, 0
/* 806D68DC  4B 93 A7 D4 */	b play__16mDoExt_McaMorfSOFUlSc
/* 806D68E0  48 00 00 4C */	b lbl_806D692C
lbl_806D68E4:
/* 806D68E4  C0 1E 0A 18 */	lfs f0, 0xa18(r30)
/* 806D68E8  38 7F 00 4C */	addi r3, r31, 0x4c
/* 806D68EC  C0 63 00 08 */	lfs f3, 8(r3)
/* 806D68F0  EC 40 00 F2 */	fmuls f2, f0, f3
/* 806D68F4  C0 1E 0A 14 */	lfs f0, 0xa14(r30)
/* 806D68F8  EC 20 00 F2 */	fmuls f1, f0, f3
/* 806D68FC  C0 1E 0A 10 */	lfs f0, 0xa10(r30)
/* 806D6900  EC 00 00 F2 */	fmuls f0, f0, f3
/* 806D6904  D0 1E 04 EC */	stfs f0, 0x4ec(r30)
/* 806D6908  D0 3E 04 F0 */	stfs f1, 0x4f0(r30)
/* 806D690C  D0 5E 04 F4 */	stfs f2, 0x4f4(r30)
/* 806D6910  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 806D6914  7C 03 07 74 */	extsb r3, r0
/* 806D6918  4B 95 67 54 */	b dComIfGp_getReverb__Fi
/* 806D691C  7C 65 1B 78 */	mr r5, r3
/* 806D6920  80 7E 09 64 */	lwz r3, 0x964(r30)
/* 806D6924  38 80 00 00 */	li r4, 0
/* 806D6928  4B 93 A7 88 */	b play__16mDoExt_McaMorfSOFUlSc
lbl_806D692C:
/* 806D692C  7F C3 F3 78 */	mr r3, r30
/* 806D6930  4B FF EE 5D */	bl mtx_set__8daE_GM_cFv
/* 806D6934  7F C3 F3 78 */	mr r3, r30
/* 806D6938  4B FF F0 99 */	bl cc_set__8daE_GM_cFv
/* 806D693C  38 60 00 01 */	li r3, 1
lbl_806D6940:
/* 806D6940  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806D6944  83 C1 00 08 */	lwz r30, 8(r1)
/* 806D6948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806D694C  7C 08 03 A6 */	mtlr r0
/* 806D6950  38 21 00 10 */	addi r1, r1, 0x10
/* 806D6954  4E 80 00 20 */	blr 
