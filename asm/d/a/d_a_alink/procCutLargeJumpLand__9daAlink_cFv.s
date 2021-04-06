lbl_800D67FC:
/* 800D67FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D6800  7C 08 02 A6 */	mflr r0
/* 800D6804  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D6808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D680C  93 C1 00 08 */	stw r30, 8(r1)
/* 800D6810  7C 7F 1B 78 */	mr r31, r3
/* 800D6814  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 800D6818  80 03 05 88 */	lwz r0, 0x588(r3)
/* 800D681C  64 00 08 00 */	oris r0, r0, 0x800
/* 800D6820  90 03 05 88 */	stw r0, 0x588(r3)
/* 800D6824  38 00 00 04 */	li r0, 4
/* 800D6828  98 03 2F 99 */	stb r0, 0x2f99(r3)
/* 800D682C  80 03 31 98 */	lwz r0, 0x3198(r3)
/* 800D6830  2C 00 00 02 */	cmpwi r0, 2
/* 800D6834  41 82 00 1C */	beq lbl_800D6850
/* 800D6838  4B FF AB AD */	bl checkCutTurnInput__9daAlink_cCFv
/* 800D683C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D6840  41 82 00 10 */	beq lbl_800D6850
/* 800D6844  7F E3 FB 78 */	mr r3, r31
/* 800D6848  4B FF AB DD */	bl getCutTurnDirection__9daAlink_cCFv
/* 800D684C  90 7F 31 98 */	stw r3, 0x3198(r31)
lbl_800D6850:
/* 800D6850  7F C3 F3 78 */	mr r3, r30
/* 800D6854  48 08 7C 79 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800D6858  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D685C  41 82 00 38 */	beq lbl_800D6894
/* 800D6860  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800D6864  28 00 00 56 */	cmplwi r0, 0x56
/* 800D6868  40 82 00 1C */	bne lbl_800D6884
/* 800D686C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D6870  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D6874  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 800D6878  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 800D687C  4B F7 19 01 */	bl cutEnd__16dEvent_manager_cFi
/* 800D6880  48 00 00 F0 */	b lbl_800D6970
lbl_800D6884:
/* 800D6884  7F E3 FB 78 */	mr r3, r31
/* 800D6888  38 80 00 00 */	li r4, 0
/* 800D688C  4B FE 38 45 */	bl checkNextAction__9daAlink_cFi
/* 800D6890  48 00 00 E0 */	b lbl_800D6970
lbl_800D6894:
/* 800D6894  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800D6898  3C 60 80 39 */	lis r3, m__26daAlinkHIO_cutLargeJump_c0@ha /* 0x8038DE18@ha */
/* 800D689C  38 63 DE 18 */	addi r3, r3, m__26daAlinkHIO_cutLargeJump_c0@l /* 0x8038DE18@l */
/* 800D68A0  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 800D68A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D68A8  40 81 00 20 */	ble lbl_800D68C8
/* 800D68AC  80 BF 31 98 */	lwz r5, 0x3198(r31)
/* 800D68B0  2C 05 00 02 */	cmpwi r5, 2
/* 800D68B4  41 82 00 14 */	beq lbl_800D68C8
/* 800D68B8  7F E3 FB 78 */	mr r3, r31
/* 800D68BC  38 80 00 01 */	li r4, 1
/* 800D68C0  4B FF DF 1D */	bl procCutTurnInit__9daAlink_cFii
/* 800D68C4  48 00 00 AC */	b lbl_800D6970
lbl_800D68C8:
/* 800D68C8  3C 60 80 39 */	lis r3, m__26daAlinkHIO_cutLargeJump_c0@ha /* 0x8038DE18@ha */
/* 800D68CC  38 63 DE 18 */	addi r3, r3, m__26daAlinkHIO_cutLargeJump_c0@l /* 0x8038DE18@l */
/* 800D68D0  C0 03 00 4C */	lfs f0, 0x4c(r3)
/* 800D68D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D68D8  40 81 00 14 */	ble lbl_800D68EC
/* 800D68DC  7F E3 FB 78 */	mr r3, r31
/* 800D68E0  38 80 00 01 */	li r4, 1
/* 800D68E4  4B FE 37 ED */	bl checkNextAction__9daAlink_cFi
/* 800D68E8  48 00 00 88 */	b lbl_800D6970
lbl_800D68EC:
/* 800D68EC  C0 03 00 68 */	lfs f0, 0x68(r3)
/* 800D68F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D68F4  40 80 00 7C */	bge lbl_800D6970
/* 800D68F8  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800D68FC  60 00 00 02 */	ori r0, r0, 2
/* 800D6900  90 1F 05 80 */	stw r0, 0x580(r31)
/* 800D6904  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800D6908  C0 03 00 64 */	lfs f0, 0x64(r3)
/* 800D690C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D6910  4C 41 13 82 */	cror 2, 1, 2
/* 800D6914  40 82 00 5C */	bne lbl_800D6970
/* 800D6918  A8 1F 30 0C */	lha r0, 0x300c(r31)
/* 800D691C  2C 00 00 00 */	cmpwi r0, 0
/* 800D6920  40 82 00 34 */	bne lbl_800D6954
/* 800D6924  7F E3 FB 78 */	mr r3, r31
/* 800D6928  38 80 00 00 */	li r4, 0
/* 800D692C  4B FD 40 B1 */	bl resetAtCollision__9daAlink_cFi
/* 800D6930  38 00 00 01 */	li r0, 1
/* 800D6934  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800D6938  7F E3 FB 78 */	mr r3, r31
/* 800D693C  38 80 00 14 */	li r4, 0x14
/* 800D6940  4B FF AB ED */	bl setCutType__9daAlink_cFUc
/* 800D6944  7F E3 FB 78 */	mr r3, r31
/* 800D6948  C0 3F 34 7C */	lfs f1, 0x347c(r31)
/* 800D694C  38 80 00 04 */	li r4, 4
/* 800D6950  4B FF A6 41 */	bl initCutTurnAt__9daAlink_cFfi
lbl_800D6954:
/* 800D6954  38 7F 34 7C */	addi r3, r31, 0x347c
/* 800D6958  C0 3F 34 78 */	lfs f1, 0x3478(r31)
/* 800D695C  C0 42 93 78 */	lfs f2, lit_8676(r2)
/* 800D6960  48 19 9D E1 */	bl cLib_chaseF__FPfff
/* 800D6964  38 7F 10 DC */	addi r3, r31, 0x10dc
/* 800D6968  C0 3F 34 7C */	lfs f1, 0x347c(r31)
/* 800D696C  48 19 8D 9D */	bl SetR__8cM3dGSphFf
lbl_800D6970:
/* 800D6970  38 60 00 01 */	li r3, 1
/* 800D6974  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D6978  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D697C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D6980  7C 08 03 A6 */	mtlr r0
/* 800D6984  38 21 00 10 */	addi r1, r1, 0x10
/* 800D6988  4E 80 00 20 */	blr 
