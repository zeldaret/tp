lbl_8079E684:
/* 8079E684  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8079E688  7C 08 02 A6 */	mflr r0
/* 8079E68C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8079E690  39 61 00 30 */	addi r11, r1, 0x30
/* 8079E694  4B BC 3B 45 */	bl _savegpr_28
/* 8079E698  7C 7D 1B 78 */	mr r29, r3
/* 8079E69C  3C 60 80 7A */	lis r3, lit_3903@ha /* 0x807A6824@ha */
/* 8079E6A0  3B C3 68 24 */	addi r30, r3, lit_3903@l /* 0x807A6824@l */
/* 8079E6A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079E6A8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079E6AC  83 9F 5D AC */	lwz r28, 0x5dac(r31)
/* 8079E6B0  38 7D 0A 38 */	addi r3, r29, 0xa38
/* 8079E6B4  4B 8E 51 7D */	bl Move__10dCcD_GSttsFv
/* 8079E6B8  A8 1D 06 8A */	lha r0, 0x68a(r29)
/* 8079E6BC  2C 00 00 00 */	cmpwi r0, 0
/* 8079E6C0  40 82 03 D0 */	bne lbl_8079EA90
/* 8079E6C4  A8 1D 06 7E */	lha r0, 0x67e(r29)
/* 8079E6C8  2C 00 00 0A */	cmpwi r0, 0xa
/* 8079E6CC  41 82 00 14 */	beq lbl_8079E6E0
/* 8079E6D0  2C 00 00 0D */	cmpwi r0, 0xd
/* 8079E6D4  41 82 00 0C */	beq lbl_8079E6E0
/* 8079E6D8  2C 00 00 0B */	cmpwi r0, 0xb
/* 8079E6DC  40 82 00 34 */	bne lbl_8079E710
lbl_8079E6E0:
/* 8079E6E0  38 7D 0B 98 */	addi r3, r29, 0xb98
/* 8079E6E4  4B 8E 5B DD */	bl ChkAtHit__12dCcD_GObjInfFv
/* 8079E6E8  28 03 00 00 */	cmplwi r3, 0
/* 8079E6EC  41 82 00 24 */	beq lbl_8079E710
/* 8079E6F0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 8079E6F4  D0 1D 07 EC */	stfs f0, 0x7ec(r29)
/* 8079E6F8  38 00 00 00 */	li r0, 0
/* 8079E6FC  B0 1D 07 F0 */	sth r0, 0x7f0(r29)
/* 8079E700  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 8079E704  3C 63 00 01 */	addis r3, r3, 1
/* 8079E708  38 03 80 00 */	addi r0, r3, -32768
/* 8079E70C  B0 1D 07 F2 */	sth r0, 0x7f2(r29)
lbl_8079E710:
/* 8079E710  38 7D 0A 5C */	addi r3, r29, 0xa5c
/* 8079E714  4B 8E 5D 4D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8079E718  28 03 00 00 */	cmplwi r3, 0
/* 8079E71C  41 82 03 60 */	beq lbl_8079EA7C
/* 8079E720  38 7D 0A 5C */	addi r3, r29, 0xa5c
/* 8079E724  4B 8E 5D D5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8079E728  90 7D 0C D0 */	stw r3, 0xcd0(r29)
/* 8079E72C  7F A3 EB 78 */	mr r3, r29
/* 8079E730  38 9D 0C D0 */	addi r4, r29, 0xcd0
/* 8079E734  4B 8E 94 D1 */	bl cc_at_check__FP10fopAc_ac_cP11dCcU_AtInfo
/* 8079E738  80 7D 0C D0 */	lwz r3, 0xcd0(r29)
/* 8079E73C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8079E740  74 00 D8 00 */	andis. r0, r0, 0xd800
/* 8079E744  41 82 00 10 */	beq lbl_8079E754
/* 8079E748  38 00 00 14 */	li r0, 0x14
/* 8079E74C  B0 1D 06 8A */	sth r0, 0x68a(r29)
/* 8079E750  48 00 00 0C */	b lbl_8079E75C
lbl_8079E754:
/* 8079E754  38 00 00 0A */	li r0, 0xa
/* 8079E758  B0 1D 06 8A */	sth r0, 0x68a(r29)
lbl_8079E75C:
/* 8079E75C  80 7D 0C D0 */	lwz r3, 0xcd0(r29)
/* 8079E760  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8079E764  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8079E768  41 82 00 40 */	beq lbl_8079E7A8
/* 8079E76C  3C 60 80 7A */	lis r3, small@ha /* 0x807A6DE0@ha */
/* 8079E770  80 03 6D E0 */	lwz r0, small@l(r3)  /* 0x807A6DE0@l */
/* 8079E774  2C 00 00 00 */	cmpwi r0, 0
/* 8079E778  41 82 00 30 */	beq lbl_8079E7A8
/* 8079E77C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070171@ha */
/* 8079E780  38 03 01 71 */	addi r0, r3, 0x0171 /* 0x00070171@l */
/* 8079E784  90 01 00 0C */	stw r0, 0xc(r1)
/* 8079E788  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 8079E78C  38 81 00 0C */	addi r4, r1, 0xc
/* 8079E790  38 A0 00 00 */	li r5, 0
/* 8079E794  38 C0 FF FF */	li r6, -1
/* 8079E798  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 8079E79C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8079E7A0  7D 89 03 A6 */	mtctr r12
/* 8079E7A4  4E 80 04 21 */	bctrl 
lbl_8079E7A8:
/* 8079E7A8  88 7D 0C F0 */	lbz r3, 0xcf0(r29)
/* 8079E7AC  28 03 00 10 */	cmplwi r3, 0x10
/* 8079E7B0  40 82 00 B4 */	bne lbl_8079E864
/* 8079E7B4  88 1D 07 20 */	lbz r0, 0x720(r29)
/* 8079E7B8  2C 00 00 01 */	cmpwi r0, 1
/* 8079E7BC  40 82 00 50 */	bne lbl_8079E80C
/* 8079E7C0  38 00 00 0C */	li r0, 0xc
/* 8079E7C4  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 8079E7C8  38 00 00 00 */	li r0, 0
/* 8079E7CC  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 8079E7D0  C0 1D 07 10 */	lfs f0, 0x710(r29)
/* 8079E7D4  D0 1D 07 50 */	stfs f0, 0x750(r29)
/* 8079E7D8  C0 1D 07 14 */	lfs f0, 0x714(r29)
/* 8079E7DC  D0 1D 07 54 */	stfs f0, 0x754(r29)
/* 8079E7E0  C0 1D 07 18 */	lfs f0, 0x718(r29)
/* 8079E7E4  D0 1D 07 58 */	stfs f0, 0x758(r29)
/* 8079E7E8  38 00 00 02 */	li r0, 2
/* 8079E7EC  98 1D 07 20 */	stb r0, 0x720(r29)
/* 8079E7F0  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 8079E7F4  C0 3D 07 48 */	lfs f1, 0x748(r29)
/* 8079E7F8  C0 1D 07 54 */	lfs f0, 0x754(r29)
/* 8079E7FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8079E800  EC 02 00 32 */	fmuls f0, f2, f0
/* 8079E804  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 8079E808  48 00 02 74 */	b lbl_8079EA7C
lbl_8079E80C:
/* 8079E80C  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 8079E810  2C 00 00 00 */	cmpwi r0, 0
/* 8079E814  40 82 00 3C */	bne lbl_8079E850
/* 8079E818  38 00 00 13 */	li r0, 0x13
/* 8079E81C  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 8079E820  38 00 00 00 */	li r0, 0
/* 8079E824  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 8079E828  A8 1D 0C DE */	lha r0, 0xcde(r29)
/* 8079E82C  B0 1D 07 DE */	sth r0, 0x7de(r29)
/* 8079E830  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8079E834  D0 1D 07 E0 */	stfs f0, 0x7e0(r29)
/* 8079E838  C0 3D 07 5C */	lfs f1, 0x75c(r29)
/* 8079E83C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8079E840  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079E844  40 81 02 38 */	ble lbl_8079EA7C
/* 8079E848  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 8079E84C  48 00 02 30 */	b lbl_8079EA7C
lbl_8079E850:
/* 8079E850  38 00 00 0C */	li r0, 0xc
/* 8079E854  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 8079E858  38 00 00 00 */	li r0, 0
/* 8079E85C  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 8079E860  48 00 02 1C */	b lbl_8079EA7C
lbl_8079E864:
/* 8079E864  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8079E868  2C 00 00 00 */	cmpwi r0, 0
/* 8079E86C  40 81 00 EC */	ble lbl_8079E958
/* 8079E870  88 1D 07 20 */	lbz r0, 0x720(r29)
/* 8079E874  2C 00 00 01 */	cmpwi r0, 1
/* 8079E878  40 82 00 50 */	bne lbl_8079E8C8
/* 8079E87C  38 00 00 0C */	li r0, 0xc
/* 8079E880  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 8079E884  38 00 00 00 */	li r0, 0
/* 8079E888  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 8079E88C  C0 1D 07 10 */	lfs f0, 0x710(r29)
/* 8079E890  D0 1D 07 50 */	stfs f0, 0x750(r29)
/* 8079E894  C0 1D 07 14 */	lfs f0, 0x714(r29)
/* 8079E898  D0 1D 07 54 */	stfs f0, 0x754(r29)
/* 8079E89C  C0 1D 07 18 */	lfs f0, 0x718(r29)
/* 8079E8A0  D0 1D 07 58 */	stfs f0, 0x758(r29)
/* 8079E8A4  38 00 00 02 */	li r0, 2
/* 8079E8A8  98 1D 07 20 */	stb r0, 0x720(r29)
/* 8079E8AC  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 8079E8B0  C0 3D 07 48 */	lfs f1, 0x748(r29)
/* 8079E8B4  C0 1D 07 54 */	lfs f0, 0x754(r29)
/* 8079E8B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8079E8BC  EC 02 00 32 */	fmuls f0, f2, f0
/* 8079E8C0  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 8079E8C4  48 00 01 B8 */	b lbl_8079EA7C
lbl_8079E8C8:
/* 8079E8C8  A8 1D 06 9C */	lha r0, 0x69c(r29)
/* 8079E8CC  2C 00 00 00 */	cmpwi r0, 0
/* 8079E8D0  40 82 00 74 */	bne lbl_8079E944
/* 8079E8D4  38 00 00 13 */	li r0, 0x13
/* 8079E8D8  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 8079E8DC  38 00 00 00 */	li r0, 0
/* 8079E8E0  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 8079E8E4  A8 1D 0C DE */	lha r0, 0xcde(r29)
/* 8079E8E8  B0 1D 07 DE */	sth r0, 0x7de(r29)
/* 8079E8EC  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8079E8F0  D0 1D 07 E0 */	stfs f0, 0x7e0(r29)
/* 8079E8F4  C0 3D 07 5C */	lfs f1, 0x75c(r29)
/* 8079E8F8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8079E8FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079E900  40 81 00 08 */	ble lbl_8079E908
/* 8079E904  D0 1D 07 5C */	stfs f0, 0x75c(r29)
lbl_8079E908:
/* 8079E908  88 1C 05 68 */	lbz r0, 0x568(r28)
/* 8079E90C  28 00 00 0A */	cmplwi r0, 0xa
/* 8079E910  40 82 01 6C */	bne lbl_8079EA7C
/* 8079E914  7F 83 E3 78 */	mr r3, r28
/* 8079E918  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8079E91C  81 8C 01 3C */	lwz r12, 0x13c(r12)
/* 8079E920  7D 89 03 A6 */	mtctr r12
/* 8079E924  4E 80 04 21 */	bctrl 
/* 8079E928  2C 03 00 00 */	cmpwi r3, 0
/* 8079E92C  41 82 01 50 */	beq lbl_8079EA7C
/* 8079E930  38 00 00 03 */	li r0, 3
/* 8079E934  B0 1D 06 8A */	sth r0, 0x68a(r29)
/* 8079E938  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 8079E93C  D0 1D 07 E0 */	stfs f0, 0x7e0(r29)
/* 8079E940  48 00 01 3C */	b lbl_8079EA7C
lbl_8079E944:
/* 8079E944  38 00 00 0C */	li r0, 0xc
/* 8079E948  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 8079E94C  38 00 00 00 */	li r0, 0
/* 8079E950  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 8079E954  48 00 01 28 */	b lbl_8079EA7C
lbl_8079E958:
/* 8079E958  28 03 00 01 */	cmplwi r3, 1
/* 8079E95C  40 82 00 40 */	bne lbl_8079E99C
/* 8079E960  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8079E964  88 03 05 68 */	lbz r0, 0x568(r3)
/* 8079E968  28 00 00 08 */	cmplwi r0, 8
/* 8079E96C  41 82 00 0C */	beq lbl_8079E978
/* 8079E970  28 00 00 09 */	cmplwi r0, 9
/* 8079E974  40 82 00 28 */	bne lbl_8079E99C
lbl_8079E978:
/* 8079E978  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 8079E97C  4B AC 8F D9 */	bl cM_rndF__Ff
/* 8079E980  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 8079E984  EC 00 08 2A */	fadds f0, f0, f1
/* 8079E988  FC 00 00 1E */	fctiwz f0, f0
/* 8079E98C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8079E990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079E994  B0 1D 07 D4 */	sth r0, 0x7d4(r29)
/* 8079E998  48 00 00 1C */	b lbl_8079E9B4
lbl_8079E99C:
/* 8079E99C  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8079E9A0  4B AC 8F ED */	bl cM_rndFX__Ff
/* 8079E9A4  FC 00 08 1E */	fctiwz f0, f1
/* 8079E9A8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8079E9AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8079E9B0  B0 1D 07 D4 */	sth r0, 0x7d4(r29)
lbl_8079E9B4:
/* 8079E9B4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700BA@ha */
/* 8079E9B8  38 03 00 BA */	addi r0, r3, 0x00BA /* 0x000700BA@l */
/* 8079E9BC  90 01 00 08 */	stw r0, 8(r1)
/* 8079E9C0  38 7D 05 D0 */	addi r3, r29, 0x5d0
/* 8079E9C4  38 81 00 08 */	addi r4, r1, 8
/* 8079E9C8  38 A0 FF FF */	li r5, -1
/* 8079E9CC  81 9D 05 D0 */	lwz r12, 0x5d0(r29)
/* 8079E9D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8079E9D4  7D 89 03 A6 */	mtctr r12
/* 8079E9D8  4E 80 04 21 */	bctrl 
/* 8079E9DC  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8079E9E0  80 03 05 88 */	lwz r0, 0x588(r3)
/* 8079E9E4  64 00 01 00 */	oris r0, r0, 0x100
/* 8079E9E8  90 03 05 88 */	stw r0, 0x588(r3)
/* 8079E9EC  38 00 00 01 */	li r0, 1
/* 8079E9F0  98 1D 07 E4 */	stb r0, 0x7e4(r29)
/* 8079E9F4  38 00 00 14 */	li r0, 0x14
/* 8079E9F8  B0 1D 06 7E */	sth r0, 0x67e(r29)
/* 8079E9FC  38 00 00 00 */	li r0, 0
/* 8079EA00  B0 1D 06 80 */	sth r0, 0x680(r29)
/* 8079EA04  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 8079EA08  4B AC 8F 85 */	bl cM_rndFX__Ff
/* 8079EA0C  FC 00 08 1E */	fctiwz f0, f1
/* 8079EA10  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8079EA14  80 61 00 14 */	lwz r3, 0x14(r1)
/* 8079EA18  A8 1D 0C DE */	lha r0, 0xcde(r29)
/* 8079EA1C  7C 00 1A 14 */	add r0, r0, r3
/* 8079EA20  B0 1D 07 DE */	sth r0, 0x7de(r29)
/* 8079EA24  88 1D 07 20 */	lbz r0, 0x720(r29)
/* 8079EA28  2C 00 00 01 */	cmpwi r0, 1
/* 8079EA2C  40 82 00 50 */	bne lbl_8079EA7C
/* 8079EA30  C0 1D 07 10 */	lfs f0, 0x710(r29)
/* 8079EA34  D0 1D 07 50 */	stfs f0, 0x750(r29)
/* 8079EA38  C0 1D 07 14 */	lfs f0, 0x714(r29)
/* 8079EA3C  D0 1D 07 54 */	stfs f0, 0x754(r29)
/* 8079EA40  C0 1D 07 18 */	lfs f0, 0x718(r29)
/* 8079EA44  D0 1D 07 58 */	stfs f0, 0x758(r29)
/* 8079EA48  38 00 00 02 */	li r0, 2
/* 8079EA4C  98 1D 07 20 */	stb r0, 0x720(r29)
/* 8079EA50  C0 5E 00 58 */	lfs f2, 0x58(r30)
/* 8079EA54  C0 3D 07 48 */	lfs f1, 0x748(r29)
/* 8079EA58  C0 1D 07 54 */	lfs f0, 0x754(r29)
/* 8079EA5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8079EA60  EC 02 00 32 */	fmuls f0, f2, f0
/* 8079EA64  D0 1D 07 5C */	stfs f0, 0x75c(r29)
/* 8079EA68  C0 3D 07 5C */	lfs f1, 0x75c(r29)
/* 8079EA6C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 8079EA70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079EA74  40 81 00 08 */	ble lbl_8079EA7C
/* 8079EA78  D0 1D 07 5C */	stfs f0, 0x75c(r29)
lbl_8079EA7C:
/* 8079EA7C  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8079EA80  2C 00 00 0A */	cmpwi r0, 0xa
/* 8079EA84  41 81 00 0C */	bgt lbl_8079EA90
/* 8079EA88  38 00 00 03 */	li r0, 3
/* 8079EA8C  98 1D 0B 16 */	stb r0, 0xb16(r29)
lbl_8079EA90:
/* 8079EA90  39 61 00 30 */	addi r11, r1, 0x30
/* 8079EA94  4B BC 37 91 */	bl _restgpr_28
/* 8079EA98  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8079EA9C  7C 08 03 A6 */	mtlr r0
/* 8079EAA0  38 21 00 30 */	addi r1, r1, 0x30
/* 8079EAA4  4E 80 00 20 */	blr 
