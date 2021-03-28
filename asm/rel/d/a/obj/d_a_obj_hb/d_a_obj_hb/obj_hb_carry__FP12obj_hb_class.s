lbl_80C19688:
/* 80C19688  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C1968C  7C 08 02 A6 */	mflr r0
/* 80C19690  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C19694  39 61 00 20 */	addi r11, r1, 0x20
/* 80C19698  4B 74 8B 40 */	b _savegpr_28
/* 80C1969C  7C 7E 1B 78 */	mr r30, r3
/* 80C196A0  3C 60 80 C2 */	lis r3, lit_3665@ha
/* 80C196A4  38 83 B6 00 */	addi r4, r3, lit_3665@l
/* 80C196A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C196AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C196B0  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 80C196B4  A8 1E 06 54 */	lha r0, 0x654(r30)
/* 80C196B8  2C 00 00 01 */	cmpwi r0, 1
/* 80C196BC  41 82 00 60 */	beq lbl_80C1971C
/* 80C196C0  40 80 01 50 */	bge lbl_80C19810
/* 80C196C4  2C 00 00 00 */	cmpwi r0, 0
/* 80C196C8  40 80 00 08 */	bge lbl_80C196D0
/* 80C196CC  48 00 01 44 */	b lbl_80C19810
lbl_80C196D0:
/* 80C196D0  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80C196D4  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80C196D8  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 80C196DC  38 00 00 01 */	li r0, 1
/* 80C196E0  B0 1E 06 54 */	sth r0, 0x654(r30)
/* 80C196E4  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80C196E8  A8 1E 06 78 */	lha r0, 0x678(r30)
/* 80C196EC  7C 03 00 50 */	subf r0, r3, r0
/* 80C196F0  7C 00 07 34 */	extsh r0, r0
/* 80C196F4  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80C196F8  41 81 00 0C */	bgt lbl_80C19704
/* 80C196FC  2C 00 C0 00 */	cmpwi r0, -16384
/* 80C19700  40 80 00 10 */	bge lbl_80C19710
lbl_80C19704:
/* 80C19704  38 00 80 00 */	li r0, -32768
/* 80C19708  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 80C1970C  48 00 01 04 */	b lbl_80C19810
lbl_80C19710:
/* 80C19710  38 00 00 00 */	li r0, 0
/* 80C19714  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 80C19718  48 00 00 F8 */	b lbl_80C19810
lbl_80C1971C:
/* 80C1971C  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 80C19720  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 80C19724  40 82 00 EC */	bne lbl_80C19810
/* 80C19728  38 00 00 01 */	li r0, 1
/* 80C1972C  B0 1E 06 52 */	sth r0, 0x652(r30)
/* 80C19730  80 1E 09 38 */	lwz r0, 0x938(r30)
/* 80C19734  60 00 00 01 */	ori r0, r0, 1
/* 80C19738  90 1E 09 38 */	stw r0, 0x938(r30)
/* 80C1973C  38 00 FF FF */	li r0, -1
/* 80C19740  90 1E 06 9C */	stw r0, 0x69c(r30)
/* 80C19744  C0 44 00 08 */	lfs f2, 8(r4)
/* 80C19748  D0 5E 06 A0 */	stfs f2, 0x6a0(r30)
/* 80C1974C  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C19750  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80C19754  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C19758  41 81 00 14 */	bgt lbl_80C1976C
/* 80C1975C  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80C19760  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80C19764  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C19768  40 81 00 90 */	ble lbl_80C197F8
lbl_80C1976C:
/* 80C1976C  C0 44 00 14 */	lfs f2, 0x14(r4)
/* 80C19770  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80C19774  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 80C19778  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C1977C  EC 02 00 2A */	fadds f0, f2, f0
/* 80C19780  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80C19784  D0 5E 04 FC */	stfs f2, 0x4fc(r30)
/* 80C19788  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80C1978C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80C19790  38 00 00 00 */	li r0, 0
/* 80C19794  B0 1E 06 54 */	sth r0, 0x654(r30)
/* 80C19798  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C1979C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C197A0  3B 83 56 B8 */	addi r28, r3, 0x56b8
/* 80C197A4  3B A0 00 01 */	li r29, 1
/* 80C197A8  7F 83 E3 78 */	mr r3, r28
/* 80C197AC  4B 45 A0 38 */	b LockonTruth__12dAttention_cFv
/* 80C197B0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C197B4  40 82 00 14 */	bne lbl_80C197C8
/* 80C197B8  80 1C 03 34 */	lwz r0, 0x334(r28)
/* 80C197BC  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 80C197C0  40 82 00 08 */	bne lbl_80C197C8
/* 80C197C4  3B A0 00 00 */	li r29, 0
lbl_80C197C8:
/* 80C197C8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80C197CC  41 82 00 44 */	beq lbl_80C19810
/* 80C197D0  7F 83 E3 78 */	mr r3, r28
/* 80C197D4  38 80 00 00 */	li r4, 0
/* 80C197D8  4B 45 9D 64 */	b LockonTarget__12dAttention_cFl
/* 80C197DC  28 03 00 00 */	cmplwi r3, 0
/* 80C197E0  41 82 00 0C */	beq lbl_80C197EC
/* 80C197E4  80 03 00 04 */	lwz r0, 4(r3)
/* 80C197E8  48 00 00 08 */	b lbl_80C197F0
lbl_80C197EC:
/* 80C197EC  38 00 FF FF */	li r0, -1
lbl_80C197F0:
/* 80C197F0  90 1E 06 9C */	stw r0, 0x69c(r30)
/* 80C197F4  48 00 00 1C */	b lbl_80C19810
lbl_80C197F8:
/* 80C197F8  D0 5E 05 2C */	stfs f2, 0x52c(r30)
/* 80C197FC  D0 5E 04 FC */	stfs f2, 0x4fc(r30)
/* 80C19800  38 00 00 05 */	li r0, 5
/* 80C19804  B0 1E 06 54 */	sth r0, 0x654(r30)
/* 80C19808  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80C1980C  D0 1E 06 88 */	stfs f0, 0x688(r30)
lbl_80C19810:
/* 80C19810  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C19814  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80C19818  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C1981C  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80C19820  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C19824  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80C19828  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C1982C  D0 1E 05 50 */	stfs f0, 0x550(r30)
/* 80C19830  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C19834  D0 1E 05 54 */	stfs f0, 0x554(r30)
/* 80C19838  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C1983C  D0 1E 05 58 */	stfs f0, 0x558(r30)
/* 80C19840  38 7E 06 78 */	addi r3, r30, 0x678
/* 80C19844  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80C19848  A8 1E 06 7E */	lha r0, 0x67e(r30)
/* 80C1984C  7C 04 02 14 */	add r0, r4, r0
/* 80C19850  7C 04 07 34 */	extsh r4, r0
/* 80C19854  38 A0 00 01 */	li r5, 1
/* 80C19858  A8 DE 06 7C */	lha r6, 0x67c(r30)
/* 80C1985C  4B 65 6D AC */	b cLib_addCalcAngleS2__FPssss
/* 80C19860  38 7E 06 7C */	addi r3, r30, 0x67c
/* 80C19864  38 80 20 00 */	li r4, 0x2000
/* 80C19868  38 A0 00 01 */	li r5, 1
/* 80C1986C  38 C0 01 00 */	li r6, 0x100
/* 80C19870  4B 65 6D 98 */	b cLib_addCalcAngleS2__FPssss
/* 80C19874  39 61 00 20 */	addi r11, r1, 0x20
/* 80C19878  4B 74 89 AC */	b _restgpr_28
/* 80C1987C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C19880  7C 08 03 A6 */	mtlr r0
/* 80C19884  38 21 00 20 */	addi r1, r1, 0x20
/* 80C19888  4E 80 00 20 */	blr 
