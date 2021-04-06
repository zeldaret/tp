lbl_800E3218:
/* 800E3218  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 800E321C  7C 08 02 A6 */	mflr r0
/* 800E3220  90 01 00 74 */	stw r0, 0x74(r1)
/* 800E3224  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 800E3228  7C 7F 1B 78 */	mr r31, r3
/* 800E322C  38 61 00 2C */	addi r3, r1, 0x2c
/* 800E3230  38 9F 36 9C */	addi r4, r31, 0x369c
/* 800E3234  48 18 3A FD */	bl normZP__4cXyzCFv
/* 800E3238  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 800E323C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800E3240  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 800E3244  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800E3248  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 800E324C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800E3250  38 61 00 44 */	addi r3, r1, 0x44
/* 800E3254  38 9F 38 34 */	addi r4, r31, 0x3834
/* 800E3258  48 26 3F 3D */	bl PSVECDotProduct
/* 800E325C  38 61 00 50 */	addi r3, r1, 0x50
/* 800E3260  38 81 00 44 */	addi r4, r1, 0x44
/* 800E3264  FC 20 08 50 */	fneg f1, f1
/* 800E3268  48 18 C1 75 */	bl __ct__8cM3dGPlaFPC4cXyzf
/* 800E326C  38 61 00 20 */	addi r3, r1, 0x20
/* 800E3270  38 9F 36 B4 */	addi r4, r31, 0x36b4
/* 800E3274  38 BF 36 9C */	addi r5, r31, 0x369c
/* 800E3278  48 18 38 6D */	bl __pl__4cXyzCFRC3Vec
/* 800E327C  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 800E3280  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800E3284  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800E3288  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800E328C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 800E3290  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800E3294  38 61 00 50 */	addi r3, r1, 0x50
/* 800E3298  38 9F 36 B4 */	addi r4, r31, 0x36b4
/* 800E329C  38 A1 00 44 */	addi r5, r1, 0x44
/* 800E32A0  38 C1 00 38 */	addi r6, r1, 0x38
/* 800E32A4  48 18 C1 65 */	bl crossInfLin__8cM3dGPlaCFRC4cXyzRC4cXyzR4cXyz
/* 800E32A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E32AC  40 82 00 18 */	bne lbl_800E32C4
/* 800E32B0  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800E32B4  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800E32B8  90 01 00 60 */	stw r0, 0x60(r1)
/* 800E32BC  38 60 00 00 */	li r3, 0
/* 800E32C0  48 00 01 80 */	b lbl_800E3440
lbl_800E32C4:
/* 800E32C4  38 61 00 14 */	addi r3, r1, 0x14
/* 800E32C8  38 9F 36 9C */	addi r4, r31, 0x369c
/* 800E32CC  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 800E32D0  48 18 38 B5 */	bl __ml__4cXyzCFf
/* 800E32D4  38 61 00 08 */	addi r3, r1, 8
/* 800E32D8  38 81 00 38 */	addi r4, r1, 0x38
/* 800E32DC  38 A1 00 14 */	addi r5, r1, 0x14
/* 800E32E0  48 18 38 05 */	bl __pl__4cXyzCFRC3Vec
/* 800E32E4  C0 01 00 08 */	lfs f0, 8(r1)
/* 800E32E8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 800E32EC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800E32F0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 800E32F4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 800E32F8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 800E32FC  7F E3 FB 78 */	mr r3, r31
/* 800E3300  38 81 00 38 */	addi r4, r1, 0x38
/* 800E3304  38 A1 00 44 */	addi r5, r1, 0x44
/* 800E3308  4B FF F1 A9 */	bl commonMagneLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 800E330C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E3310  40 82 00 18 */	bne lbl_800E3328
/* 800E3314  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800E3318  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800E331C  90 01 00 60 */	stw r0, 0x60(r1)
/* 800E3320  38 60 00 00 */	li r3, 0
/* 800E3324  48 00 01 1C */	b lbl_800E3440
lbl_800E3328:
/* 800E3328  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800E332C  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800E3330  41 82 00 1C */	beq lbl_800E334C
/* 800E3334  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800E3338  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 800E333C  90 1F 05 70 */	stw r0, 0x570(r31)
/* 800E3340  38 7F 2C A8 */	addi r3, r31, 0x2ca8
/* 800E3344  38 80 00 01 */	li r4, 1
/* 800E3348  48 1E 07 A5 */	bl setMagnetized__14Z2CreatureLinkFb
lbl_800E334C:
/* 800E334C  7F E3 FB 78 */	mr r3, r31
/* 800E3350  38 80 00 CC */	li r4, 0xcc
/* 800E3354  4B FD EC 19 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800E3358  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800E335C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800E3360  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800E3364  38 9F 1D C0 */	addi r4, r31, 0x1dc0
/* 800E3368  38 A1 00 50 */	addi r5, r1, 0x50
/* 800E336C  4B F9 13 D9 */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800E3370  38 7F 1E 2C */	addi r3, r31, 0x1e2c
/* 800E3374  38 9F 1D C0 */	addi r4, r31, 0x1dc0
/* 800E3378  48 18 4D D1 */	bl SetPolyInfo__13cBgS_PolyInfoFRC13cBgS_PolyInfo
/* 800E337C  C0 1F 1D DC */	lfs f0, 0x1ddc(r31)
/* 800E3380  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 800E3384  C0 1F 1D E0 */	lfs f0, 0x1de0(r31)
/* 800E3388  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 800E338C  C0 1F 1D E4 */	lfs f0, 0x1de4(r31)
/* 800E3390  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 800E3394  7F E3 FB 78 */	mr r3, r31
/* 800E3398  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800E339C  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 800E33A0  38 80 00 00 */	li r4, 0
/* 800E33A4  4B FD 83 CD */	bl setSpecialGravity__9daAlink_cFffi
/* 800E33A8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E33AC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800E33B0  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800E33B4  7F E3 FB 78 */	mr r3, r31
/* 800E33B8  38 80 01 15 */	li r4, 0x115
/* 800E33BC  4B FC 9B C5 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800E33C0  A0 7F 2F DC */	lhz r3, 0x2fdc(r31)
/* 800E33C4  28 03 01 03 */	cmplwi r3, 0x103
/* 800E33C8  41 82 00 24 */	beq lbl_800E33EC
/* 800E33CC  48 07 B7 C5 */	bl checkBowItem__9daPy_py_cFi
/* 800E33D0  2C 03 00 00 */	cmpwi r3, 0
/* 800E33D4  40 82 00 18 */	bne lbl_800E33EC
/* 800E33D8  7F E3 FB 78 */	mr r3, r31
/* 800E33DC  38 80 00 00 */	li r4, 0
/* 800E33E0  38 A0 00 01 */	li r5, 1
/* 800E33E4  4B FD DE F9 */	bl deleteEquipItem__9daAlink_cFii
/* 800E33E8  48 00 00 0C */	b lbl_800E33F4
lbl_800E33EC:
/* 800E33EC  7F E3 FB 78 */	mr r3, r31
/* 800E33F0  48 02 D4 51 */	bl offKandelaarModel__9daAlink_cFv
lbl_800E33F4:
/* 800E33F4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800E33F8  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 800E33FC  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800E3400  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800E3404  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 800E3408  D0 1F 05 94 */	stfs f0, 0x594(r31)
/* 800E340C  38 00 00 00 */	li r0, 0
/* 800E3410  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800E3414  7F E3 FB 78 */	mr r3, r31
/* 800E3418  3C 80 00 01 */	lis r4, 0x0001 /* 0x0001005C@ha */
/* 800E341C  38 84 00 5C */	addi r4, r4, 0x005C /* 0x0001005C@l */
/* 800E3420  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800E3424  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800E3428  7D 89 03 A6 */	mtctr r12
/* 800E342C  4E 80 04 21 */	bctrl 
/* 800E3430  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800E3434  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800E3438  90 01 00 60 */	stw r0, 0x60(r1)
/* 800E343C  38 60 00 01 */	li r3, 1
lbl_800E3440:
/* 800E3440  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 800E3444  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800E3448  7C 08 03 A6 */	mtlr r0
/* 800E344C  38 21 00 70 */	addi r1, r1, 0x70
/* 800E3450  4E 80 00 20 */	blr 
