lbl_800F7814:
/* 800F7814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F7818  7C 08 02 A6 */	mflr r0
/* 800F781C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F7820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F7824  7C 7F 1B 78 */	mr r31, r3
/* 800F7828  4B FF CC 69 */	bl setFishGetFace__9daAlink_cFv
/* 800F782C  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800F7830  54 00 01 4B */	rlwinm. r0, r0, 0, 5, 5
/* 800F7834  41 82 00 18 */	beq lbl_800F784C
/* 800F7838  7F E3 FB 78 */	mr r3, r31
/* 800F783C  38 80 00 19 */	li r4, 0x19
/* 800F7840  4B FB 81 69 */	bl setFaceBasicAnime__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800F7844  38 00 00 00 */	li r0, 0
/* 800F7848  98 1F 2F C8 */	stb r0, 0x2fc8(r31)
lbl_800F784C:
/* 800F784C  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800F7850  54 00 03 DF */	rlwinm. r0, r0, 0, 0xf, 0xf
/* 800F7854  41 82 00 54 */	beq lbl_800F78A8
/* 800F7858  A8 1F 30 1A */	lha r0, 0x301a(r31)
/* 800F785C  2C 00 00 FF */	cmpwi r0, 0xff
/* 800F7860  41 82 00 48 */	beq lbl_800F78A8
/* 800F7864  38 00 00 FF */	li r0, 0xff
/* 800F7868  B0 1F 30 1A */	sth r0, 0x301a(r31)
/* 800F786C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800F7870  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800F7874  38 63 00 9C */	addi r3, r3, 0x9c
/* 800F7878  38 80 00 FF */	li r4, 0xff
/* 800F787C  4B F3 C4 C5 */	bl setBaitItem__17dSv_player_item_cFUc
/* 800F7880  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800F7884  28 00 00 5F */	cmplwi r0, 0x5f
/* 800F7888  41 82 00 0C */	beq lbl_800F7894
/* 800F788C  28 00 00 5E */	cmplwi r0, 0x5e
/* 800F7890  40 82 00 10 */	bne lbl_800F78A0
lbl_800F7894:
/* 800F7894  38 00 00 5C */	li r0, 0x5c
/* 800F7898  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800F789C  48 00 00 0C */	b lbl_800F78A8
lbl_800F78A0:
/* 800F78A0  38 00 00 4A */	li r0, 0x4a
/* 800F78A4  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
lbl_800F78A8:
/* 800F78A8  80 1F 05 78 */	lwz r0, 0x578(r31)
/* 800F78AC  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 800F78B0  40 82 00 2C */	bne lbl_800F78DC
/* 800F78B4  7F E3 FB 78 */	mr r3, r31
/* 800F78B8  38 80 00 02 */	li r4, 2
/* 800F78BC  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800F78C0  4B FB 5E 65 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800F78C4  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800F78C8  60 00 10 00 */	ori r0, r0, 0x1000
/* 800F78CC  90 1F 05 88 */	stw r0, 0x588(r31)
/* 800F78D0  7F E3 FB 78 */	mr r3, r31
/* 800F78D4  4B FB E0 19 */	bl checkWaitAction__9daAlink_cFv
/* 800F78D8  48 00 00 9C */	b lbl_800F7974
lbl_800F78DC:
/* 800F78DC  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800F78E0  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800F78E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F78E8  40 81 00 2C */	ble lbl_800F7914
/* 800F78EC  38 7F 04 E6 */	addi r3, r31, 0x4e6
/* 800F78F0  A8 9F 2F E2 */	lha r4, 0x2fe2(r31)
/* 800F78F4  3C A0 80 39 */	lis r5, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800F78F8  38 E5 D6 BC */	addi r7, r5, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800F78FC  A8 A7 00 18 */	lha r5, 0x18(r7)
/* 800F7900  A8 C7 00 14 */	lha r6, 0x14(r7)
/* 800F7904  A8 E7 00 16 */	lha r7, 0x16(r7)
/* 800F7908  48 17 8C 39 */	bl cLib_addCalcAngleS__FPsssss
/* 800F790C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 800F7910  B0 1F 04 DE */	sth r0, 0x4de(r31)
lbl_800F7914:
/* 800F7914  A8 1F 30 0E */	lha r0, 0x300e(r31)
/* 800F7918  2C 00 00 00 */	cmpwi r0, 0
/* 800F791C  41 82 00 2C */	beq lbl_800F7948
/* 800F7920  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800F7924  D0 1F 20 54 */	stfs f0, 0x2054(r31)
/* 800F7928  D0 1F 20 58 */	stfs f0, 0x2058(r31)
/* 800F792C  80 7F 1F 54 */	lwz r3, 0x1f54(r31)
/* 800F7930  D0 03 00 08 */	stfs f0, 8(r3)
/* 800F7934  D0 1F 1F DC */	stfs f0, 0x1fdc(r31)
/* 800F7938  D0 1F 1F E0 */	stfs f0, 0x1fe0(r31)
/* 800F793C  80 7F 1F 2C */	lwz r3, 0x1f2c(r31)
/* 800F7940  D0 03 00 08 */	stfs f0, 8(r3)
/* 800F7944  48 00 00 2C */	b lbl_800F7970
lbl_800F7948:
/* 800F7948  C0 3F 1F DC */	lfs f1, 0x1fdc(r31)
/* 800F794C  C0 02 93 88 */	lfs f0, lit_8782(r2)
/* 800F7950  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F7954  40 80 00 1C */	bge lbl_800F7970
/* 800F7958  3C 60 80 39 */	lis r3, m__18daAlinkHIO_move_c0@ha /* 0x8038D6BC@ha */
/* 800F795C  38 63 D6 BC */	addi r3, r3, m__18daAlinkHIO_move_c0@l /* 0x8038D6BC@l */
/* 800F7960  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 800F7964  D0 1F 1F DC */	stfs f0, 0x1fdc(r31)
/* 800F7968  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800F796C  D0 1F 20 54 */	stfs f0, 0x2054(r31)
lbl_800F7970:
/* 800F7970  38 60 00 01 */	li r3, 1
lbl_800F7974:
/* 800F7974  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F7978  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F797C  7C 08 03 A6 */	mtlr r0
/* 800F7980  38 21 00 10 */	addi r1, r1, 0x10
/* 800F7984  4E 80 00 20 */	blr 
