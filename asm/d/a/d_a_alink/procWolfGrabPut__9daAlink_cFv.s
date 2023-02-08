lbl_8013D65C:
/* 8013D65C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8013D660  7C 08 02 A6 */	mflr r0
/* 8013D664  90 01 00 34 */	stw r0, 0x34(r1)
/* 8013D668  39 61 00 30 */	addi r11, r1, 0x30
/* 8013D66C  48 22 4B 71 */	bl _savegpr_29
/* 8013D670  7C 7F 1B 78 */	mr r31, r3
/* 8013D674  3B BF 1F D0 */	addi r29, r31, 0x1fd0
/* 8013D678  83 C3 28 30 */	lwz r30, 0x2830(r3)
/* 8013D67C  C0 23 1F E0 */	lfs f1, 0x1fe0(r3)
/* 8013D680  C0 03 34 78 */	lfs f0, 0x3478(r3)
/* 8013D684  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013D688  40 80 00 C8 */	bge lbl_8013D750
/* 8013D68C  28 1E 00 00 */	cmplwi r30, 0
/* 8013D690  41 82 00 5C */	beq lbl_8013D6EC
/* 8013D694  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013D698  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8013D69C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013D6A0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013D6A4  3C 80 80 44 */	lis r4, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8013D6A8  38 84 9A 20 */	addi r4, r4, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8013D6AC  7C 44 04 2E */	lfsx f2, r4, r0
/* 8013D6B0  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 8013D6B4  C0 1F 33 E4 */	lfs f0, 0x33e4(r31)
/* 8013D6B8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8013D6BC  EC 01 00 2A */	fadds f0, f1, f0
/* 8013D6C0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8013D6C4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013D6C8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013D6CC  7C 84 02 14 */	add r4, r4, r0
/* 8013D6D0  C0 44 00 04 */	lfs f2, 4(r4)
/* 8013D6D4  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 8013D6D8  C0 1F 33 E4 */	lfs f0, 0x33e4(r31)
/* 8013D6DC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8013D6E0  EC 01 00 2A */	fadds f0, f1, f0
/* 8013D6E4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8013D6E8  4B FA 74 ED */	bl freeGrabItem__9daAlink_cFv
lbl_8013D6EC:
/* 8013D6EC  7F A3 EB 78 */	mr r3, r29
/* 8013D6F0  48 02 0D DD */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 8013D6F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013D6F8  41 82 00 38 */	beq lbl_8013D730
/* 8013D6FC  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 8013D700  28 00 00 0D */	cmplwi r0, 0xd
/* 8013D704  40 82 00 1C */	bne lbl_8013D720
/* 8013D708  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013D70C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013D710  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8013D714  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8013D718  4B F0 AA 65 */	bl cutEnd__16dEvent_manager_cFi
/* 8013D71C  48 00 00 E0 */	b lbl_8013D7FC
lbl_8013D720:
/* 8013D720  7F E3 FB 78 */	mr r3, r31
/* 8013D724  38 80 00 00 */	li r4, 0
/* 8013D728  4B FE C4 1D */	bl checkNextActionWolf__9daAlink_cFi
/* 8013D72C  48 00 00 D0 */	b lbl_8013D7FC
lbl_8013D730:
/* 8013D730  C0 3D 00 10 */	lfs f1, 0x10(r29)
/* 8013D734  C0 1F 34 7C */	lfs f0, 0x347c(r31)
/* 8013D738  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013D73C  40 80 00 C0 */	bge lbl_8013D7FC
/* 8013D740  7F E3 FB 78 */	mr r3, r31
/* 8013D744  38 80 00 01 */	li r4, 1
/* 8013D748  4B FE C3 FD */	bl checkNextActionWolf__9daAlink_cFi
/* 8013D74C  48 00 00 B0 */	b lbl_8013D7FC
lbl_8013D750:
/* 8013D750  28 1E 00 00 */	cmplwi r30, 0
/* 8013D754  40 82 00 38 */	bne lbl_8013D78C
/* 8013D758  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 8013D75C  28 00 00 0D */	cmplwi r0, 0xd
/* 8013D760  40 82 00 20 */	bne lbl_8013D780
/* 8013D764  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8013D768  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8013D76C  38 63 4F F8 */	addi r3, r3, 0x4ff8
/* 8013D770  80 9F 31 84 */	lwz r4, 0x3184(r31)
/* 8013D774  4B F0 AA 09 */	bl cutEnd__16dEvent_manager_cFi
/* 8013D778  38 60 00 01 */	li r3, 1
/* 8013D77C  48 00 00 84 */	b lbl_8013D800
lbl_8013D780:
/* 8013D780  38 80 00 00 */	li r4, 0
/* 8013D784  4B FE C3 C1 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013D788  48 00 00 78 */	b lbl_8013D800
lbl_8013D78C:
/* 8013D78C  38 9F 34 E0 */	addi r4, r31, 0x34e0
/* 8013D790  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8013D794  4B FA 83 D9 */	bl grabLineCheck__9daAlink_cFP4cXyzP4cXyz
/* 8013D798  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013D79C  41 82 00 60 */	beq lbl_8013D7FC
/* 8013D7A0  38 7F 1E 70 */	addi r3, r31, 0x1e70
/* 8013D7A4  4B F3 85 69 */	bl dBgS_CheckBWallPoly__FRC13cBgS_PolyInfo
/* 8013D7A8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8013D7AC  41 82 00 50 */	beq lbl_8013D7FC
/* 8013D7B0  38 61 00 08 */	addi r3, r1, 8
/* 8013D7B4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8013D7B8  38 BF 1E 8C */	addi r5, r31, 0x1e8c
/* 8013D7BC  48 12 93 79 */	bl __mi__4cXyzCFRC3Vec
/* 8013D7C0  C0 81 00 08 */	lfs f4, 8(r1)
/* 8013D7C4  D0 81 00 14 */	stfs f4, 0x14(r1)
/* 8013D7C8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8013D7CC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8013D7D0  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8013D7D4  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8013D7D8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 8013D7DC  C0 42 93 2C */	lfs f2, lit_7624(r2)
/* 8013D7E0  EC 02 01 32 */	fmuls f0, f2, f4
/* 8013D7E4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013D7E8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8013D7EC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 8013D7F0  EC 02 00 F2 */	fmuls f0, f2, f3
/* 8013D7F4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013D7F8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
lbl_8013D7FC:
/* 8013D7FC  38 60 00 01 */	li r3, 1
lbl_8013D800:
/* 8013D800  39 61 00 30 */	addi r11, r1, 0x30
/* 8013D804  48 22 4A 25 */	bl _restgpr_29
/* 8013D808  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8013D80C  7C 08 03 A6 */	mtlr r0
/* 8013D810  38 21 00 30 */	addi r1, r1, 0x30
/* 8013D814  4E 80 00 20 */	blr 
