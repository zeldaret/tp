lbl_80136FF8:
/* 80136FF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80136FFC  7C 08 02 A6 */	mflr r0
/* 80137000  90 01 00 14 */	stw r0, 0x14(r1)
/* 80137004  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80137008  93 C1 00 08 */	stw r30, 8(r1)
/* 8013700C  7C 7E 1B 78 */	mr r30, r3
/* 80137010  3B FE 1F D0 */	addi r31, r30, 0x1fd0
/* 80137014  80 83 05 8C */	lwz r4, 0x58c(r3)
/* 80137018  54 80 07 FF */	clrlwi. r0, r4, 0x1f
/* 8013701C  40 82 00 94 */	bne lbl_801370B0
/* 80137020  A8 1E 30 0E */	lha r0, 0x300e(r30)
/* 80137024  2C 00 00 00 */	cmpwi r0, 0
/* 80137028  41 82 00 54 */	beq lbl_8013707C
/* 8013702C  38 00 00 05 */	li r0, 5
/* 80137030  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 80137034  7F E3 FB 78 */	mr r3, r31
/* 80137038  48 02 74 95 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013703C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80137040  41 82 00 14 */	beq lbl_80137054
/* 80137044  7F C3 F3 78 */	mr r3, r30
/* 80137048  38 80 00 00 */	li r4, 0
/* 8013704C  4B FF 2A F9 */	bl checkNextActionWolf__9daAlink_cFi
/* 80137050  48 00 00 78 */	b lbl_801370C8
lbl_80137054:
/* 80137054  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 80137058  3C 60 80 39 */	lis r3, m__24daAlinkHIO_wlDamLarge_c0@ha /* 0x8038F29C@ha */
/* 8013705C  38 63 F2 9C */	addi r3, r3, m__24daAlinkHIO_wlDamLarge_c0@l /* 0x8038F29C@l */
/* 80137060  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80137064  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80137068  40 81 00 60 */	ble lbl_801370C8
/* 8013706C  7F C3 F3 78 */	mr r3, r30
/* 80137070  38 80 00 01 */	li r4, 1
/* 80137074  4B FF 2A D1 */	bl checkNextActionWolf__9daAlink_cFi
/* 80137078  48 00 00 50 */	b lbl_801370C8
lbl_8013707C:
/* 8013707C  38 00 00 01 */	li r0, 1
/* 80137080  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 80137084  38 80 00 2C */	li r4, 0x2c
/* 80137088  3C A0 80 39 */	lis r5, m__24daAlinkHIO_wlDamLarge_c0@ha /* 0x8038F29C@ha */
/* 8013708C  38 C5 F2 9C */	addi r6, r5, m__24daAlinkHIO_wlDamLarge_c0@l /* 0x8038F29C@l */
/* 80137090  C0 26 00 04 */	lfs f1, 4(r6)
/* 80137094  C0 42 93 78 */	lfs f2, lit_8676(r2)
/* 80137098  A8 A6 00 00 */	lha r5, 0(r6)
/* 8013709C  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 801370A0  4B FF 26 65 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 801370A4  38 00 00 0D */	li r0, 0xd
/* 801370A8  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 801370AC  48 00 00 1C */	b lbl_801370C8
lbl_801370B0:
/* 801370B0  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 801370B4  2C 00 00 00 */	cmpwi r0, 0
/* 801370B8  40 82 00 10 */	bne lbl_801370C8
/* 801370BC  54 80 07 BD */	rlwinm. r0, r4, 0, 0x1e, 0x1e
/* 801370C0  41 82 00 08 */	beq lbl_801370C8
/* 801370C4  4B FF FE 01 */	bl setWolfScreamWaitAnime__9daAlink_cFv
lbl_801370C8:
/* 801370C8  38 60 00 01 */	li r3, 1
/* 801370CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801370D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 801370D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801370D8  7C 08 03 A6 */	mtlr r0
/* 801370DC  38 21 00 10 */	addi r1, r1, 0x10
/* 801370E0  4E 80 00 20 */	blr 
