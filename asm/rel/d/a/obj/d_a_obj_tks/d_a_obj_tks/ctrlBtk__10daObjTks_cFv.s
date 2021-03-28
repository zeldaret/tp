lbl_80D118E8:
/* 80D118E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D118EC  7C 08 02 A6 */	mflr r0
/* 80D118F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D118F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D118F8  7C 7F 1B 78 */	mr r31, r3
/* 80D118FC  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 80D11900  28 00 00 00 */	cmplwi r0, 0
/* 80D11904  41 82 00 A0 */	beq lbl_80D119A4
/* 80D11908  3C 80 80 D1 */	lis r4, l_arcName@ha
/* 80D1190C  38 84 29 54 */	addi r4, r4, l_arcName@l
/* 80D11910  80 84 00 00 */	lwz r4, 0(r4)
/* 80D11914  3C A0 80 D1 */	lis r5, l_btkGetParamList@ha
/* 80D11918  38 A5 29 48 */	addi r5, r5, l_btkGetParamList@l
/* 80D1191C  80 A5 00 00 */	lwz r5, 0(r5)
/* 80D11920  4B 44 12 84 */	b getTexSRTKeyAnmP__8daNpcF_cFPci
/* 80D11924  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 80D11928  7C 03 00 40 */	cmplw r3, r0
/* 80D1192C  40 82 00 6C */	bne lbl_80D11998
/* 80D11930  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80D11934  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80D11938  A8 9F 08 FE */	lha r4, 0x8fe(r31)
/* 80D1193C  48 00 05 65 */	bl func_80D11EA0
/* 80D11940  3C 60 80 D1 */	lis r3, lit_4324@ha
/* 80D11944  C0 43 27 D4 */	lfs f2, lit_4324@l(r3)
/* 80D11948  3C 60 80 D1 */	lis r3, lit_5057@ha
/* 80D1194C  C0 03 28 A4 */	lfs f0, lit_5057@l(r3)
/* 80D11950  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D11954  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D11958  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80D1195C  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 80D11960  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80D11964  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80D11968  A8 9F 08 FC */	lha r4, 0x8fc(r31)
/* 80D1196C  48 00 05 35 */	bl func_80D11EA0
/* 80D11970  3C 60 80 D1 */	lis r3, lit_5057@ha
/* 80D11974  C0 03 28 A4 */	lfs f0, lit_5057@l(r3)
/* 80D11978  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D1197C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80D11980  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 80D11984  38 00 00 01 */	li r0, 1
/* 80D11988  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80D1198C  98 03 01 04 */	stb r0, 0x104(r3)
/* 80D11990  38 60 00 01 */	li r3, 1
/* 80D11994  48 00 00 14 */	b lbl_80D119A8
lbl_80D11998:
/* 80D11998  38 00 00 00 */	li r0, 0
/* 80D1199C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 80D119A0  98 03 01 04 */	stb r0, 0x104(r3)
lbl_80D119A4:
/* 80D119A4  38 60 00 00 */	li r3, 0
lbl_80D119A8:
/* 80D119A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D119AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D119B0  7C 08 03 A6 */	mtlr r0
/* 80D119B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D119B8  4E 80 00 20 */	blr 
