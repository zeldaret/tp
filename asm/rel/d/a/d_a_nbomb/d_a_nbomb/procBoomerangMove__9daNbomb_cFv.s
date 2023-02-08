lbl_804CA4E0:
/* 804CA4E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CA4E4  7C 08 02 A6 */	mflr r0
/* 804CA4E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CA4EC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804CA4F0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804CA4F4  7C 7F 1B 78 */	mr r31, r3
/* 804CA4F8  4B FF DD E1 */	bl checkExplode__9daNbomb_cFv
/* 804CA4FC  2C 03 00 00 */	cmpwi r3, 0
/* 804CA500  41 82 00 0C */	beq lbl_804CA50C
/* 804CA504  38 60 00 01 */	li r3, 1
/* 804CA508  48 00 01 68 */	b lbl_804CA670
lbl_804CA50C:
/* 804CA50C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CA510  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CA514  83 C3 5D B4 */	lwz r30, 0x5db4(r3)
/* 804CA518  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CA51C  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804CA520  41 82 00 0C */	beq lbl_804CA52C
/* 804CA524  38 C0 00 00 */	li r6, 0
/* 804CA528  48 00 00 08 */	b lbl_804CA530
lbl_804CA52C:
/* 804CA52C  7F E6 FB 78 */	mr r6, r31
lbl_804CA530:
/* 804CA530  28 00 00 00 */	cmplwi r0, 0
/* 804CA534  41 82 00 30 */	beq lbl_804CA564
/* 804CA538  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 804CA53C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804CA540  41 82 00 24 */	beq lbl_804CA564
/* 804CA544  3C 60 80 4D */	lis r3, lit_4255@ha /* 0x804CC380@ha */
/* 804CA548  C0 03 C3 80 */	lfs f0, lit_4255@l(r3)  /* 0x804CC380@l */
/* 804CA54C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804CA550  38 00 00 00 */	li r0, 0
/* 804CA554  90 1F 08 BC */	stw r0, 0x8bc(r31)
/* 804CA558  7F E3 FB 78 */	mr r3, r31
/* 804CA55C  4B FF F3 D5 */	bl procWaitInit__9daNbomb_cFv
/* 804CA560  48 00 01 10 */	b lbl_804CA670
lbl_804CA564:
/* 804CA564  38 7F 0B 40 */	addi r3, r31, 0xb40
/* 804CA568  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804CA56C  38 BF 04 E6 */	addi r5, r31, 0x4e6
/* 804CA570  38 E0 1C 00 */	li r7, 0x1c00
/* 804CA574  4B C9 40 E1 */	bl posMove__20daPy_boomerangMove_cFP4cXyzPsP10fopAc_ac_cs
/* 804CA578  2C 03 00 00 */	cmpwi r3, 0
/* 804CA57C  40 82 00 48 */	bne lbl_804CA5C4
/* 804CA580  7F C3 F3 78 */	mr r3, r30
/* 804CA584  4B C1 91 DD */	bl getBombExplodeTime__9daAlink_cCFv
/* 804CA588  B0 7F 0B 58 */	sth r3, 0xb58(r31)
/* 804CA58C  38 00 00 00 */	li r0, 0
/* 804CA590  90 1F 08 BC */	stw r0, 0x8bc(r31)
/* 804CA594  80 1F 04 9C */	lwz r0, 0x49c(r31)
/* 804CA598  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804CA59C  41 82 00 10 */	beq lbl_804CA5AC
/* 804CA5A0  7F E3 FB 78 */	mr r3, r31
/* 804CA5A4  4B FF EE 3D */	bl procCarryInit__9daNbomb_cFv
/* 804CA5A8  48 00 00 C8 */	b lbl_804CA670
lbl_804CA5AC:
/* 804CA5AC  3C 60 80 4D */	lis r3, lit_4255@ha /* 0x804CC380@ha */
/* 804CA5B0  C0 03 C3 80 */	lfs f0, lit_4255@l(r3)  /* 0x804CC380@l */
/* 804CA5B4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804CA5B8  7F E3 FB 78 */	mr r3, r31
/* 804CA5BC  4B FF F3 75 */	bl procWaitInit__9daNbomb_cFv
/* 804CA5C0  48 00 00 64 */	b lbl_804CA624
lbl_804CA5C4:
/* 804CA5C4  7F C3 F3 78 */	mr r3, r30
/* 804CA5C8  4B C1 91 99 */	bl getBombExplodeTime__9daAlink_cCFv
/* 804CA5CC  7C 63 07 34 */	extsh r3, r3
/* 804CA5D0  A8 1F 0B 58 */	lha r0, 0xb58(r31)
/* 804CA5D4  7C 00 18 00 */	cmpw r0, r3
/* 804CA5D8  40 80 00 4C */	bge lbl_804CA624
/* 804CA5DC  7F C3 F3 78 */	mr r3, r30
/* 804CA5E0  4B C1 91 81 */	bl getBombExplodeTime__9daAlink_cCFv
/* 804CA5E4  7C 60 07 34 */	extsh r0, r3
/* 804CA5E8  3C 60 80 4D */	lis r3, lit_4689@ha /* 0x804CC3D8@ha */
/* 804CA5EC  C8 23 C3 D8 */	lfd f1, lit_4689@l(r3)  /* 0x804CC3D8@l */
/* 804CA5F0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CA5F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804CA5F8  3C 00 43 30 */	lis r0, 0x4330
/* 804CA5FC  90 01 00 08 */	stw r0, 8(r1)
/* 804CA600  C8 01 00 08 */	lfd f0, 8(r1)
/* 804CA604  EC 20 08 28 */	fsubs f1, f0, f1
/* 804CA608  3C 60 80 4D */	lis r3, lit_5021@ha /* 0x804CC3E0@ha */
/* 804CA60C  C0 03 C3 E0 */	lfs f0, lit_5021@l(r3)  /* 0x804CC3E0@l */
/* 804CA610  EC 00 00 72 */	fmuls f0, f0, f1
/* 804CA614  FC 00 00 1E */	fctiwz f0, f0
/* 804CA618  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804CA61C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CA620  B0 1F 0B 58 */	sth r0, 0xb58(r31)
lbl_804CA624:
/* 804CA624  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804CA628  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 804CA62C  34 1F 07 90 */	addic. r0, r31, 0x790
/* 804CA630  41 82 00 14 */	beq lbl_804CA644
/* 804CA634  38 9F 07 90 */	addi r4, r31, 0x790
/* 804CA638  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804CA63C  7C 65 1B 78 */	mr r5, r3
/* 804CA640  4B E7 CA 51 */	bl PSVECAdd
lbl_804CA644:
/* 804CA644  38 7F 05 78 */	addi r3, r31, 0x578
/* 804CA648  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804CA64C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804CA650  38 84 0F 38 */	addi r4, r4, 0xf38
/* 804CA654  4B BA C4 59 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 804CA658  7F E3 FB 78 */	mr r3, r31
/* 804CA65C  4B FF DD D5 */	bl setRoomInfo__9daNbomb_cFv
/* 804CA660  38 7F 0B 40 */	addi r3, r31, 0xb40
/* 804CA664  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804CA668  4B C9 42 15 */	bl bgCheckAfterOffset__20daPy_boomerangMove_cFPC4cXyz
/* 804CA66C  38 60 00 01 */	li r3, 1
lbl_804CA670:
/* 804CA670  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804CA674  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804CA678  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CA67C  7C 08 03 A6 */	mtlr r0
/* 804CA680  38 21 00 20 */	addi r1, r1, 0x20
/* 804CA684  4E 80 00 20 */	blr 
