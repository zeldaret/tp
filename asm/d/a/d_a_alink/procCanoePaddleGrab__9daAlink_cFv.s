lbl_800F6188:
/* 800F6188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800F618C  7C 08 02 A6 */	mflr r0
/* 800F6190  90 01 00 14 */	stw r0, 0x14(r1)
/* 800F6194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800F6198  93 C1 00 08 */	stw r30, 8(r1)
/* 800F619C  7C 7F 1B 78 */	mr r31, r3
/* 800F61A0  4B FF E6 39 */	bl canoeCommon__9daAlink_cFv
/* 800F61A4  2C 03 00 00 */	cmpwi r3, 0
/* 800F61A8  41 82 00 0C */	beq lbl_800F61B4
/* 800F61AC  38 60 00 01 */	li r3, 1
/* 800F61B0  48 00 01 58 */	b lbl_800F6308
lbl_800F61B4:
/* 800F61B4  7F E3 FB 78 */	mr r3, r31
/* 800F61B8  38 80 00 E4 */	li r4, 0xe4
/* 800F61BC  4B FB 63 9D */	bl checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM
/* 800F61C0  2C 03 00 00 */	cmpwi r3, 0
/* 800F61C4  41 82 01 24 */	beq lbl_800F62E8
/* 800F61C8  3B DF 1F D0 */	addi r30, r31, 0x1fd0
/* 800F61CC  7F C3 F3 78 */	mr r3, r30
/* 800F61D0  48 06 82 FD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F61D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F61D8  41 82 00 94 */	beq lbl_800F626C
/* 800F61DC  7F E3 FB 78 */	mr r3, r31
/* 800F61E0  38 80 00 DF */	li r4, 0xdf
/* 800F61E4  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 800F61E8  2C 00 00 00 */	cmpwi r0, 0
/* 800F61EC  40 82 00 18 */	bne lbl_800F6204
/* 800F61F0  3C A0 80 39 */	lis r5, m__19daAlinkHIO_canoe_c0@ha /* 0x8038E610@ha */
/* 800F61F4  38 A5 E6 10 */	addi r5, r5, m__19daAlinkHIO_canoe_c0@l /* 0x8038E610@l */
/* 800F61F8  C0 05 00 04 */	lfs f0, 4(r5)
/* 800F61FC  FC 20 00 50 */	fneg f1, f0
/* 800F6200  48 00 00 10 */	b lbl_800F6210
lbl_800F6204:
/* 800F6204  3C A0 80 39 */	lis r5, m__19daAlinkHIO_canoe_c0@ha /* 0x8038E610@ha */
/* 800F6208  38 A5 E6 10 */	addi r5, r5, m__19daAlinkHIO_canoe_c0@l /* 0x8038E610@l */
/* 800F620C  C0 25 00 04 */	lfs f1, 4(r5)
lbl_800F6210:
/* 800F6210  3C A0 80 39 */	lis r5, m__19daAlinkHIO_canoe_c0@ha /* 0x8038E610@ha */
/* 800F6214  38 C5 E6 10 */	addi r6, r5, m__19daAlinkHIO_canoe_c0@l /* 0x8038E610@l */
/* 800F6218  C0 46 00 08 */	lfs f2, 8(r6)
/* 800F621C  A8 A6 00 00 */	lha r5, 0(r6)
/* 800F6220  C0 66 00 0C */	lfs f3, 0xc(r6)
/* 800F6224  4B FB 6D E9 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800F6228  C0 02 94 B4 */	lfs f0, lit_17382(r2)
/* 800F622C  D0 1F 20 28 */	stfs f0, 0x2028(r31)
/* 800F6230  80 7F 1F 44 */	lwz r3, 0x1f44(r31)
/* 800F6234  D0 03 00 08 */	stfs f0, 8(r3)
/* 800F6238  A8 1F 30 12 */	lha r0, 0x3012(r31)
/* 800F623C  2C 00 00 01 */	cmpwi r0, 1
/* 800F6240  40 82 00 18 */	bne lbl_800F6258
/* 800F6244  38 00 00 00 */	li r0, 0
/* 800F6248  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 800F624C  38 00 00 FE */	li r0, 0xfe
/* 800F6250  98 1F 2F 93 */	stb r0, 0x2f93(r31)
/* 800F6254  48 00 00 B0 */	b lbl_800F6304
lbl_800F6258:
/* 800F6258  38 00 00 FE */	li r0, 0xfe
/* 800F625C  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 800F6260  38 00 00 05 */	li r0, 5
/* 800F6264  98 1F 2F 93 */	stb r0, 0x2f93(r31)
/* 800F6268  48 00 00 9C */	b lbl_800F6304
lbl_800F626C:
/* 800F626C  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 800F6270  C0 02 93 3C */	lfs f0, lit_7808(r2)
/* 800F6274  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800F6278  4C 41 13 82 */	cror 2, 1, 2
/* 800F627C  40 82 00 88 */	bne lbl_800F6304
/* 800F6280  A0 1F 2F DC */	lhz r0, 0x2fdc(r31)
/* 800F6284  28 00 01 05 */	cmplwi r0, 0x105
/* 800F6288  40 82 00 28 */	bne lbl_800F62B0
/* 800F628C  80 1F 28 24 */	lwz r0, 0x2824(r31)
/* 800F6290  80 7F 28 18 */	lwz r3, 0x2818(r31)
/* 800F6294  90 03 14 64 */	stw r0, 0x1464(r3)
/* 800F6298  38 7F 28 24 */	addi r3, r31, 0x2824
/* 800F629C  48 06 8A 61 */	bl clearData__16daPy_actorKeep_cFv
/* 800F62A0  7F E3 FB 78 */	mr r3, r31
/* 800F62A4  38 80 00 00 */	li r4, 0
/* 800F62A8  38 A0 00 00 */	li r5, 0
/* 800F62AC  4B FC B0 31 */	bl deleteEquipItem__9daAlink_cFii
lbl_800F62B0:
/* 800F62B0  38 00 00 FE */	li r0, 0xfe
/* 800F62B4  98 1F 2F 92 */	stb r0, 0x2f92(r31)
/* 800F62B8  A0 9F 2F DE */	lhz r4, 0x2fde(r31)
/* 800F62BC  28 04 00 FF */	cmplwi r4, 0xff
/* 800F62C0  40 82 00 10 */	bne lbl_800F62D0
/* 800F62C4  38 00 01 0B */	li r0, 0x10b
/* 800F62C8  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800F62CC  48 00 00 38 */	b lbl_800F6304
lbl_800F62D0:
/* 800F62D0  7F E3 FB 78 */	mr r3, r31
/* 800F62D4  4B FC 33 6D */	bl itemEquip__9daAlink_cFUs
/* 800F62D8  7F E3 FB 78 */	mr r3, r31
/* 800F62DC  38 80 00 00 */	li r4, 0
/* 800F62E0  4B FF EF 05 */	bl procCanoeWaitInit__9daAlink_cFi
/* 800F62E4  48 00 00 24 */	b lbl_800F6308
lbl_800F62E8:
/* 800F62E8  38 7F 20 18 */	addi r3, r31, 0x2018
/* 800F62EC  48 06 81 E1 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800F62F0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800F62F4  41 82 00 10 */	beq lbl_800F6304
/* 800F62F8  7F E3 FB 78 */	mr r3, r31
/* 800F62FC  38 80 00 00 */	li r4, 0
/* 800F6300  4B FF EE E5 */	bl procCanoeWaitInit__9daAlink_cFi
lbl_800F6304:
/* 800F6304  38 60 00 01 */	li r3, 1
lbl_800F6308:
/* 800F6308  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800F630C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800F6310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800F6314  7C 08 03 A6 */	mtlr r0
/* 800F6318  38 21 00 10 */	addi r1, r1, 0x10
/* 800F631C  4E 80 00 20 */	blr 
