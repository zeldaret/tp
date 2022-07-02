lbl_8067968C:
/* 8067968C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80679690  7C 08 02 A6 */	mflr r0
/* 80679694  90 01 00 74 */	stw r0, 0x74(r1)
/* 80679698  39 61 00 70 */	addi r11, r1, 0x70
/* 8067969C  4B CE 8B 35 */	bl _savegpr_26
/* 806796A0  7C 7D 1B 78 */	mr r29, r3
/* 806796A4  3C 60 80 68 */	lis r3, lit_3789@ha /* 0x8067C3FC@ha */
/* 806796A8  3B E3 C3 FC */	addi r31, r3, lit_3789@l /* 0x8067C3FC@l */
/* 806796AC  A8 1D 06 B8 */	lha r0, 0x6b8(r29)
/* 806796B0  2C 00 00 00 */	cmpwi r0, 0
/* 806796B4  41 82 00 1C */	beq lbl_806796D0
/* 806796B8  38 7D 0B C8 */	addi r3, r29, 0xbc8
/* 806796BC  81 9D 0C 04 */	lwz r12, 0xc04(r29)
/* 806796C0  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 806796C4  7D 89 03 A6 */	mtctr r12
/* 806796C8  4E 80 04 21 */	bctrl 
/* 806796CC  48 00 06 E4 */	b lbl_80679DB0
lbl_806796D0:
/* 806796D0  38 7D 08 FC */	addi r3, r29, 0x8fc
/* 806796D4  4B A0 A1 5D */	bl Move__10dCcD_GSttsFv
/* 806796D8  38 00 03 E8 */	li r0, 0x3e8
/* 806796DC  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 806796E0  3B 60 00 00 */	li r27, 0
/* 806796E4  3B 40 00 01 */	li r26, 1
/* 806796E8  38 7D 0B C8 */	addi r3, r29, 0xbc8
/* 806796EC  4B A0 AD 75 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 806796F0  28 03 00 00 */	cmplwi r3, 0
/* 806796F4  41 82 06 BC */	beq lbl_80679DB0
/* 806796F8  38 00 00 05 */	li r0, 5
/* 806796FC  B0 1D 06 B8 */	sth r0, 0x6b8(r29)
/* 80679700  38 7D 0B C8 */	addi r3, r29, 0xbc8
/* 80679704  4B A0 AD F5 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 80679708  7C 7C 1B 78 */	mr r28, r3
/* 8067970C  80 63 00 10 */	lwz r3, 0x10(r3)
/* 80679710  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 80679714  41 82 00 40 */	beq lbl_80679754
/* 80679718  38 00 00 23 */	li r0, 0x23
/* 8067971C  90 1D 0D 1C */	stw r0, 0xd1c(r29)
/* 80679720  3B C0 00 01 */	li r30, 1
/* 80679724  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80679728  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8067972C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80679730  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80679734  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80679738  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8067973C  38 61 00 4C */	addi r3, r1, 0x4c
/* 80679740  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80679744  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 80679748  38 C1 00 40 */	addi r6, r1, 0x40
/* 8067974C  4B BF 76 75 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 80679750  48 00 00 90 */	b lbl_806797E0
lbl_80679754:
/* 80679754  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80679758  41 82 00 0C */	beq lbl_80679764
/* 8067975C  3B 40 00 00 */	li r26, 0
/* 80679760  48 00 00 80 */	b lbl_806797E0
lbl_80679764:
/* 80679764  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 80679768  40 82 06 48 */	bne lbl_80679DB0
/* 8067976C  88 1D 0D 28 */	lbz r0, 0xd28(r29)
/* 80679770  7C 00 07 75 */	extsb. r0, r0
/* 80679774  40 82 00 48 */	bne lbl_806797BC
/* 80679778  38 00 00 23 */	li r0, 0x23
/* 8067977C  90 1D 0D 1C */	stw r0, 0xd1c(r29)
/* 80679780  3B C0 00 01 */	li r30, 1
/* 80679784  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80679788  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8067978C  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 80679790  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80679794  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 80679798  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8067979C  38 61 00 4C */	addi r3, r1, 0x4c
/* 806797A0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806797A4  A8 BD 04 E6 */	lha r5, 0x4e6(r29)
/* 806797A8  38 C1 00 34 */	addi r6, r1, 0x34
/* 806797AC  4B BF 76 15 */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 806797B0  38 00 00 05 */	li r0, 5
/* 806797B4  B0 1D 06 B8 */	sth r0, 0x6b8(r29)
/* 806797B8  48 00 00 28 */	b lbl_806797E0
lbl_806797BC:
/* 806797BC  38 00 00 02 */	li r0, 2
/* 806797C0  90 1D 0D 1C */	stw r0, 0xd1c(r29)
/* 806797C4  3B C0 00 02 */	li r30, 2
/* 806797C8  C0 1D 0C 9C */	lfs f0, 0xc9c(r29)
/* 806797CC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 806797D0  C0 1D 0C A0 */	lfs f0, 0xca0(r29)
/* 806797D4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 806797D8  C0 1D 0C A4 */	lfs f0, 0xca4(r29)
/* 806797DC  D0 01 00 54 */	stfs f0, 0x54(r1)
lbl_806797E0:
/* 806797E0  38 7D 0B C8 */	addi r3, r29, 0xbc8
/* 806797E4  4B A0 AD 15 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 806797E8  90 7D 0D 04 */	stw r3, 0xd04(r29)
/* 806797EC  80 1D 0D 0C */	lwz r0, 0xd0c(r29)
/* 806797F0  28 00 00 00 */	cmplwi r0, 0
/* 806797F4  41 82 00 30 */	beq lbl_80679824
/* 806797F8  80 7D 0D 04 */	lwz r3, 0xd04(r29)
/* 806797FC  88 63 00 74 */	lbz r3, 0x74(r3)
/* 80679800  38 80 00 00 */	li r4, 0
/* 80679804  4B A0 AD AD */	bl getHitSeID__12dCcD_GObjInfFUci
/* 80679808  7C 64 1B 78 */	mr r4, r3
/* 8067980C  80 7D 0D 0C */	lwz r3, 0xd0c(r29)
/* 80679810  80 BD 0D 1C */	lwz r5, 0xd1c(r29)
/* 80679814  81 83 00 00 */	lwz r12, 0(r3)
/* 80679818  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 8067981C  7D 89 03 A6 */	mtctr r12
/* 80679820  4E 80 04 21 */	bctrl 
lbl_80679824:
/* 80679824  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80679828  41 82 05 88 */	beq lbl_80679DB0
/* 8067982C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80679830  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80679834  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80679838  88 63 05 68 */	lbz r3, 0x568(r3)
/* 8067983C  38 03 FF E9 */	addi r0, r3, -23
/* 80679840  28 00 00 01 */	cmplwi r0, 1
/* 80679844  40 81 00 18 */	ble lbl_8067985C
/* 80679848  38 03 FF EE */	addi r0, r3, -18
/* 8067984C  28 00 00 02 */	cmplwi r0, 2
/* 80679850  40 81 00 0C */	ble lbl_8067985C
/* 80679854  28 03 00 1F */	cmplwi r3, 0x1f
/* 80679858  40 82 00 20 */	bne lbl_80679878
lbl_8067985C:
/* 8067985C  88 1D 0D 28 */	lbz r0, 0xd28(r29)
/* 80679860  7C 00 07 75 */	extsb. r0, r0
/* 80679864  40 82 00 14 */	bne lbl_80679878
/* 80679868  38 00 00 00 */	li r0, 0
/* 8067986C  B0 1D 06 B4 */	sth r0, 0x6b4(r29)
/* 80679870  38 00 00 03 */	li r0, 3
/* 80679874  98 1D 0D 29 */	stb r0, 0xd29(r29)
lbl_80679878:
/* 80679878  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 8067987C  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 80679880  41 82 00 24 */	beq lbl_806798A4
/* 80679884  88 1D 0D 28 */	lbz r0, 0xd28(r29)
/* 80679888  7C 00 07 75 */	extsb. r0, r0
/* 8067988C  40 82 00 18 */	bne lbl_806798A4
/* 80679890  38 00 00 03 */	li r0, 3
/* 80679894  98 1D 0D 29 */	stb r0, 0xd29(r29)
/* 80679898  38 00 00 00 */	li r0, 0
/* 8067989C  B0 1D 06 B4 */	sth r0, 0x6b4(r29)
/* 806798A0  48 00 00 48 */	b lbl_806798E8
lbl_806798A4:
/* 806798A4  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 806798A8  41 82 00 40 */	beq lbl_806798E8
/* 806798AC  38 7D 0C 9C */	addi r3, r29, 0xc9c
/* 806798B0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806798B4  4B BF 73 51 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806798B8  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 806798BC  7C 00 18 50 */	subf r0, r0, r3
/* 806798C0  7C 00 07 34 */	extsh r0, r0
/* 806798C4  2C 00 C0 00 */	cmpwi r0, -16384
/* 806798C8  40 81 00 20 */	ble lbl_806798E8
/* 806798CC  2C 00 40 00 */	cmpwi r0, 0x4000
/* 806798D0  40 80 00 18 */	bge lbl_806798E8
/* 806798D4  38 60 00 00 */	li r3, 0
/* 806798D8  B0 7D 06 B4 */	sth r3, 0x6b4(r29)
/* 806798DC  38 00 00 03 */	li r0, 3
/* 806798E0  98 1D 0D 29 */	stb r0, 0xd29(r29)
/* 806798E4  98 7D 0D 28 */	stb r3, 0xd28(r29)
lbl_806798E8:
/* 806798E8  80 7C 00 10 */	lwz r3, 0x10(r28)
/* 806798EC  54 60 01 8D */	rlwinm. r0, r3, 0, 6, 6
/* 806798F0  41 82 00 EC */	beq lbl_806799DC
/* 806798F4  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070066@ha */
/* 806798F8  38 03 00 66 */	addi r0, r3, 0x0066 /* 0x00070066@l */
/* 806798FC  90 01 00 30 */	stw r0, 0x30(r1)
/* 80679900  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 80679904  38 81 00 30 */	addi r4, r1, 0x30
/* 80679908  38 A0 FF FF */	li r5, -1
/* 8067990C  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 80679910  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80679914  7D 89 03 A6 */	mtctr r12
/* 80679918  4E 80 04 21 */	bctrl 
/* 8067991C  3B C0 00 03 */	li r30, 3
/* 80679920  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007009B@ha */
/* 80679924  38 03 00 9B */	addi r0, r3, 0x009B /* 0x0007009B@l */
/* 80679928  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8067992C  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 80679930  38 81 00 2C */	addi r4, r1, 0x2c
/* 80679934  38 A0 00 00 */	li r5, 0
/* 80679938  38 C0 FF FF */	li r6, -1
/* 8067993C  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 80679940  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80679944  7D 89 03 A6 */	mtctr r12
/* 80679948  4E 80 04 21 */	bctrl 
/* 8067994C  38 00 00 03 */	li r0, 3
/* 80679950  B0 1D 06 8E */	sth r0, 0x68e(r29)
/* 80679954  38 80 00 00 */	li r4, 0
/* 80679958  B0 9D 06 92 */	sth r4, 0x692(r29)
/* 8067995C  B0 9D 06 90 */	sth r4, 0x690(r29)
/* 80679960  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80679964  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80679968  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8067996C  90 81 00 08 */	stw r4, 8(r1)
/* 80679970  38 00 FF FF */	li r0, -1
/* 80679974  90 01 00 0C */	stw r0, 0xc(r1)
/* 80679978  90 81 00 10 */	stw r4, 0x10(r1)
/* 8067997C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80679980  90 81 00 18 */	stw r4, 0x18(r1)
/* 80679984  38 80 00 00 */	li r4, 0
/* 80679988  3C A0 00 01 */	lis r5, 0x0001 /* 0x000081D7@ha */
/* 8067998C  38 A5 81 D7 */	addi r5, r5, 0x81D7 /* 0x000081D7@l */
/* 80679990  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80679994  38 E0 00 00 */	li r7, 0
/* 80679998  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 8067999C  39 20 00 00 */	li r9, 0
/* 806799A0  39 40 00 FF */	li r10, 0xff
/* 806799A4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806799A8  4B 9D 30 E9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806799AC  38 00 00 C8 */	li r0, 0xc8
/* 806799B0  B0 1D 06 BA */	sth r0, 0x6ba(r29)
/* 806799B4  38 00 00 02 */	li r0, 2
/* 806799B8  98 1D 0D 23 */	stb r0, 0xd23(r29)
/* 806799BC  38 00 00 03 */	li r0, 3
/* 806799C0  98 1D 0D 29 */	stb r0, 0xd29(r29)
/* 806799C4  38 00 00 05 */	li r0, 5
/* 806799C8  3C 60 80 45 */	lis r3, pauseTimer__9dScnPly_c+0x1@ha /* 0x80451125@ha */
/* 806799CC  98 03 11 25 */	stb r0, pauseTimer__9dScnPly_c+0x1@l(r3)  /* 0x80451125@l */
/* 806799D0  38 00 00 00 */	li r0, 0
/* 806799D4  B0 1D 06 B4 */	sth r0, 0x6b4(r29)
/* 806799D8  48 00 03 B0 */	b lbl_80679D88
lbl_806799DC:
/* 806799DC  88 9D 0D 28 */	lbz r4, 0xd28(r29)
/* 806799E0  7C 80 07 75 */	extsb. r0, r4
/* 806799E4  40 82 02 84 */	bne lbl_80679C68
/* 806799E8  38 00 00 05 */	li r0, 5
/* 806799EC  B0 1D 06 B8 */	sth r0, 0x6b8(r29)
/* 806799F0  88 1D 0D 24 */	lbz r0, 0xd24(r29)
/* 806799F4  28 00 00 10 */	cmplwi r0, 0x10
/* 806799F8  41 82 02 64 */	beq lbl_80679C5C
/* 806799FC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070066@ha */
/* 80679A00  38 03 00 66 */	addi r0, r3, 0x0066 /* 0x00070066@l */
/* 80679A04  90 01 00 28 */	stw r0, 0x28(r1)
/* 80679A08  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 80679A0C  38 81 00 28 */	addi r4, r1, 0x28
/* 80679A10  38 A0 FF FF */	li r5, -1
/* 80679A14  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 80679A18  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80679A1C  7D 89 03 A6 */	mtctr r12
/* 80679A20  4E 80 04 21 */	bctrl 
/* 80679A24  88 7D 0D 29 */	lbz r3, 0xd29(r29)
/* 80679A28  7C 60 07 74 */	extsb r0, r3
/* 80679A2C  2C 00 00 02 */	cmpwi r0, 2
/* 80679A30  41 80 00 C0 */	blt lbl_80679AF0
/* 80679A34  3B C0 00 03 */	li r30, 3
/* 80679A38  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007009B@ha */
/* 80679A3C  38 03 00 9B */	addi r0, r3, 0x009B /* 0x0007009B@l */
/* 80679A40  90 01 00 24 */	stw r0, 0x24(r1)
/* 80679A44  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 80679A48  38 81 00 24 */	addi r4, r1, 0x24
/* 80679A4C  38 A0 00 00 */	li r5, 0
/* 80679A50  38 C0 FF FF */	li r6, -1
/* 80679A54  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 80679A58  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80679A5C  7D 89 03 A6 */	mtctr r12
/* 80679A60  4E 80 04 21 */	bctrl 
/* 80679A64  38 00 00 03 */	li r0, 3
/* 80679A68  B0 1D 06 8E */	sth r0, 0x68e(r29)
/* 80679A6C  38 80 00 00 */	li r4, 0
/* 80679A70  B0 9D 06 92 */	sth r4, 0x692(r29)
/* 80679A74  B0 9D 06 90 */	sth r4, 0x690(r29)
/* 80679A78  3B 60 00 05 */	li r27, 5
/* 80679A7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80679A80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80679A84  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80679A88  90 81 00 08 */	stw r4, 8(r1)
/* 80679A8C  38 00 FF FF */	li r0, -1
/* 80679A90  90 01 00 0C */	stw r0, 0xc(r1)
/* 80679A94  90 81 00 10 */	stw r4, 0x10(r1)
/* 80679A98  90 81 00 14 */	stw r4, 0x14(r1)
/* 80679A9C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80679AA0  38 80 00 00 */	li r4, 0
/* 80679AA4  3C A0 00 01 */	lis r5, 0x0001 /* 0x000081D7@ha */
/* 80679AA8  38 A5 81 D7 */	addi r5, r5, 0x81D7 /* 0x000081D7@l */
/* 80679AAC  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80679AB0  38 E0 00 00 */	li r7, 0
/* 80679AB4  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80679AB8  39 20 00 00 */	li r9, 0
/* 80679ABC  39 40 00 FF */	li r10, 0xff
/* 80679AC0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80679AC4  4B 9D 2F CD */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80679AC8  38 00 00 C8 */	li r0, 0xc8
/* 80679ACC  B0 1D 06 BA */	sth r0, 0x6ba(r29)
/* 80679AD0  38 00 00 00 */	li r0, 0
/* 80679AD4  B0 1D 06 B4 */	sth r0, 0x6b4(r29)
/* 80679AD8  38 00 00 02 */	li r0, 2
/* 80679ADC  98 1D 0D 23 */	stb r0, 0xd23(r29)
/* 80679AE0  88 7D 0D 29 */	lbz r3, 0xd29(r29)
/* 80679AE4  38 03 00 01 */	addi r0, r3, 1
/* 80679AE8  98 1D 0D 29 */	stb r0, 0xd29(r29)
/* 80679AEC  48 00 01 70 */	b lbl_80679C5C
lbl_80679AF0:
/* 80679AF0  3B 60 00 03 */	li r27, 3
/* 80679AF4  38 03 00 01 */	addi r0, r3, 1
/* 80679AF8  98 1D 0D 29 */	stb r0, 0xd29(r29)
/* 80679AFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80679B00  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80679B04  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80679B08  38 80 00 00 */	li r4, 0
/* 80679B0C  90 81 00 08 */	stw r4, 8(r1)
/* 80679B10  38 00 FF FF */	li r0, -1
/* 80679B14  90 01 00 0C */	stw r0, 0xc(r1)
/* 80679B18  90 81 00 10 */	stw r4, 0x10(r1)
/* 80679B1C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80679B20  90 81 00 18 */	stw r4, 0x18(r1)
/* 80679B24  38 80 00 00 */	li r4, 0
/* 80679B28  3C A0 00 01 */	lis r5, 0x0001 /* 0x000081D6@ha */
/* 80679B2C  38 A5 81 D6 */	addi r5, r5, 0x81D6 /* 0x000081D6@l */
/* 80679B30  38 DD 04 D0 */	addi r6, r29, 0x4d0
/* 80679B34  38 E0 00 00 */	li r7, 0
/* 80679B38  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80679B3C  39 20 00 00 */	li r9, 0
/* 80679B40  39 40 00 FF */	li r10, 0xff
/* 80679B44  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80679B48  4B 9D 2F 49 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80679B4C  88 1D 0D 29 */	lbz r0, 0xd29(r29)
/* 80679B50  7C 00 07 74 */	extsb r0, r0
/* 80679B54  2C 00 00 02 */	cmpwi r0, 2
/* 80679B58  41 80 00 0C */	blt lbl_80679B64
/* 80679B5C  38 00 00 03 */	li r0, 3
/* 80679B60  98 1D 0C 82 */	stb r0, 0xc82(r29)
lbl_80679B64:
/* 80679B64  A8 1D 06 8E */	lha r0, 0x68e(r29)
/* 80679B68  2C 00 00 00 */	cmpwi r0, 0
/* 80679B6C  40 82 00 78 */	bne lbl_80679BE4
/* 80679B70  A8 1D 06 90 */	lha r0, 0x690(r29)
/* 80679B74  2C 00 00 01 */	cmpwi r0, 1
/* 80679B78  40 82 00 6C */	bne lbl_80679BE4
/* 80679B7C  38 00 00 03 */	li r0, 3
/* 80679B80  B0 1D 06 90 */	sth r0, 0x690(r29)
/* 80679B84  3C 60 80 68 */	lis r3, d_a_e_ai__stringBase0@ha /* 0x8067C538@ha */
/* 80679B88  38 63 C5 38 */	addi r3, r3, d_a_e_ai__stringBase0@l /* 0x8067C538@l */
/* 80679B8C  38 80 00 12 */	li r4, 0x12
/* 80679B90  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80679B94  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80679B98  3C A5 00 02 */	addis r5, r5, 2
/* 80679B9C  38 C0 00 80 */	li r6, 0x80
/* 80679BA0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80679BA4  4B 9C 27 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80679BA8  7C 65 1B 78 */	mr r5, r3
/* 80679BAC  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 80679BB0  80 63 00 04 */	lwz r3, 4(r3)
/* 80679BB4  80 83 00 04 */	lwz r4, 4(r3)
/* 80679BB8  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 80679BBC  38 84 00 58 */	addi r4, r4, 0x58
/* 80679BC0  38 C0 00 01 */	li r6, 1
/* 80679BC4  38 E0 00 00 */	li r7, 0
/* 80679BC8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80679BCC  39 00 00 00 */	li r8, 0
/* 80679BD0  39 20 FF FF */	li r9, -1
/* 80679BD4  4B 99 3B 39 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80679BD8  38 00 00 12 */	li r0, 0x12
/* 80679BDC  98 1D 05 CC */	stb r0, 0x5cc(r29)
/* 80679BE0  48 00 00 6C */	b lbl_80679C4C
lbl_80679BE4:
/* 80679BE4  88 1D 05 CC */	lbz r0, 0x5cc(r29)
/* 80679BE8  28 00 00 11 */	cmplwi r0, 0x11
/* 80679BEC  40 82 00 60 */	bne lbl_80679C4C
/* 80679BF0  3C 60 80 68 */	lis r3, d_a_e_ai__stringBase0@ha /* 0x8067C538@ha */
/* 80679BF4  38 63 C5 38 */	addi r3, r3, d_a_e_ai__stringBase0@l /* 0x8067C538@l */
/* 80679BF8  38 80 00 10 */	li r4, 0x10
/* 80679BFC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80679C00  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80679C04  3C A5 00 02 */	addis r5, r5, 2
/* 80679C08  38 C0 00 80 */	li r6, 0x80
/* 80679C0C  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80679C10  4B 9C 26 DD */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80679C14  7C 65 1B 78 */	mr r5, r3
/* 80679C18  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 80679C1C  80 63 00 04 */	lwz r3, 4(r3)
/* 80679C20  80 83 00 04 */	lwz r4, 4(r3)
/* 80679C24  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 80679C28  38 84 00 58 */	addi r4, r4, 0x58
/* 80679C2C  38 C0 00 01 */	li r6, 1
/* 80679C30  38 E0 00 00 */	li r7, 0
/* 80679C34  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80679C38  39 00 00 00 */	li r8, 0
/* 80679C3C  39 20 FF FF */	li r9, -1
/* 80679C40  4B 99 3A CD */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80679C44  38 00 00 10 */	li r0, 0x10
/* 80679C48  98 1D 05 CC */	stb r0, 0x5cc(r29)
lbl_80679C4C:
/* 80679C4C  38 00 00 0F */	li r0, 0xf
/* 80679C50  B0 1D 06 BA */	sth r0, 0x6ba(r29)
/* 80679C54  38 00 00 14 */	li r0, 0x14
/* 80679C58  B0 1D 06 BC */	sth r0, 0x6bc(r29)
lbl_80679C5C:
/* 80679C5C  3C 60 80 45 */	lis r3, pauseTimer__9dScnPly_c+0x1@ha /* 0x80451125@ha */
/* 80679C60  9B 63 11 25 */	stb r27, pauseTimer__9dScnPly_c+0x1@l(r3)  /* 0x80451125@l */
/* 80679C64  48 00 01 24 */	b lbl_80679D88
lbl_80679C68:
/* 80679C68  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80679C6C  40 82 00 20 */	bne lbl_80679C8C
/* 80679C70  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 80679C74  40 82 00 18 */	bne lbl_80679C8C
/* 80679C78  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80679C7C  41 82 01 0C */	beq lbl_80679D88
/* 80679C80  7C 80 07 74 */	extsb r0, r4
/* 80679C84  2C 00 00 01 */	cmpwi r0, 1
/* 80679C88  40 82 01 00 */	bne lbl_80679D88
lbl_80679C8C:
/* 80679C8C  A8 1D 06 8E */	lha r0, 0x68e(r29)
/* 80679C90  2C 00 00 00 */	cmpwi r0, 0
/* 80679C94  40 82 00 A4 */	bne lbl_80679D38
/* 80679C98  A8 1D 06 90 */	lha r0, 0x690(r29)
/* 80679C9C  2C 00 00 01 */	cmpwi r0, 1
/* 80679CA0  40 82 00 98 */	bne lbl_80679D38
/* 80679CA4  38 00 00 03 */	li r0, 3
/* 80679CA8  B0 1D 06 90 */	sth r0, 0x690(r29)
/* 80679CAC  3C 60 80 68 */	lis r3, d_a_e_ai__stringBase0@ha /* 0x8067C538@ha */
/* 80679CB0  38 63 C5 38 */	addi r3, r3, d_a_e_ai__stringBase0@l /* 0x8067C538@l */
/* 80679CB4  38 80 00 12 */	li r4, 0x12
/* 80679CB8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80679CBC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80679CC0  3C A5 00 02 */	addis r5, r5, 2
/* 80679CC4  38 C0 00 80 */	li r6, 0x80
/* 80679CC8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80679CCC  4B 9C 26 21 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80679CD0  7C 65 1B 78 */	mr r5, r3
/* 80679CD4  80 7D 05 D0 */	lwz r3, 0x5d0(r29)
/* 80679CD8  80 63 00 04 */	lwz r3, 4(r3)
/* 80679CDC  80 83 00 04 */	lwz r4, 4(r3)
/* 80679CE0  80 7D 05 C8 */	lwz r3, 0x5c8(r29)
/* 80679CE4  38 84 00 58 */	addi r4, r4, 0x58
/* 80679CE8  38 C0 00 01 */	li r6, 1
/* 80679CEC  38 E0 00 00 */	li r7, 0
/* 80679CF0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 80679CF4  39 00 00 00 */	li r8, 0
/* 80679CF8  39 20 FF FF */	li r9, -1
/* 80679CFC  4B 99 3A 11 */	bl init__13mDoExt_brkAnmFP16J3DMaterialTableP15J3DAnmTevRegKeyiifss
/* 80679D00  38 00 00 12 */	li r0, 0x12
/* 80679D04  98 1D 05 CC */	stb r0, 0x5cc(r29)
/* 80679D08  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007009A@ha */
/* 80679D0C  38 03 00 9A */	addi r0, r3, 0x009A /* 0x0007009A@l */
/* 80679D10  90 01 00 20 */	stw r0, 0x20(r1)
/* 80679D14  38 7D 05 D4 */	addi r3, r29, 0x5d4
/* 80679D18  38 81 00 20 */	addi r4, r1, 0x20
/* 80679D1C  38 A0 00 00 */	li r5, 0
/* 80679D20  38 C0 FF FF */	li r6, -1
/* 80679D24  81 9D 05 D4 */	lwz r12, 0x5d4(r29)
/* 80679D28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80679D2C  7D 89 03 A6 */	mtctr r12
/* 80679D30  4E 80 04 21 */	bctrl 
/* 80679D34  48 00 00 54 */	b lbl_80679D88
lbl_80679D38:
/* 80679D38  7F A3 EB 78 */	mr r3, r29
/* 80679D3C  38 80 00 0A */	li r4, 0xa
/* 80679D40  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80679D44  38 A0 00 00 */	li r5, 0
/* 80679D48  C0 5F 00 08 */	lfs f2, 8(r31)
/* 80679D4C  4B FF F6 05 */	bl anm_init__10e_ai_classFifUcf
/* 80679D50  38 00 00 01 */	li r0, 1
/* 80679D54  B0 1D 06 92 */	sth r0, 0x692(r29)
/* 80679D58  38 00 00 03 */	li r0, 3
/* 80679D5C  B0 1D 06 8E */	sth r0, 0x68e(r29)
/* 80679D60  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80679D64  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80679D68  80 1C 00 10 */	lwz r0, 0x10(r28)
/* 80679D6C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80679D70  41 82 00 10 */	beq lbl_80679D80
/* 80679D74  38 00 00 14 */	li r0, 0x14
/* 80679D78  B0 1D 06 B0 */	sth r0, 0x6b0(r29)
/* 80679D7C  48 00 00 0C */	b lbl_80679D88
lbl_80679D80:
/* 80679D80  38 00 00 64 */	li r0, 0x64
/* 80679D84  B0 1D 06 B0 */	sth r0, 0x6b0(r29)
lbl_80679D88:
/* 80679D88  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80679D8C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80679D90  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80679D94  57 C4 06 3E */	clrlwi r4, r30, 0x18
/* 80679D98  7F A5 EB 78 */	mr r5, r29
/* 80679D9C  38 C1 00 4C */	addi r6, r1, 0x4c
/* 80679DA0  38 E0 00 00 */	li r7, 0
/* 80679DA4  39 00 00 00 */	li r8, 0
/* 80679DA8  39 20 00 00 */	li r9, 0
/* 80679DAC  4B 9D 24 6D */	bl setHitMark__13dPa_control_cFUsP10fopAc_ac_cPC4cXyzPC5csXyzPC4cXyzUl
lbl_80679DB0:
/* 80679DB0  39 61 00 70 */	addi r11, r1, 0x70
/* 80679DB4  4B CE 84 69 */	bl _restgpr_26
/* 80679DB8  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80679DBC  7C 08 03 A6 */	mtlr r0
/* 80679DC0  38 21 00 70 */	addi r1, r1, 0x70
/* 80679DC4  4E 80 00 20 */	blr 
