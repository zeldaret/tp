lbl_8015D734:
/* 8015D734  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015D738  7C 08 02 A6 */	mflr r0
/* 8015D73C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015D740  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015D744  7C 7F 1B 78 */	mr r31, r3
/* 8015D748  80 03 05 B8 */	lwz r0, 0x5b8(r3)
/* 8015D74C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8015D750  41 82 00 34 */	beq lbl_8015D784
/* 8015D754  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 8015D758  C0 02 9B C4 */	lfs f0, lit_5050(r2)
/* 8015D75C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015D760  40 81 00 14 */	ble lbl_8015D774
/* 8015D764  38 7F 04 F8 */	addi r3, r31, 0x4f8
/* 8015D768  38 9F 07 64 */	addi r4, r31, 0x764
/* 8015D76C  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015D770  4B FF D6 5D */	bl Reflect__FP4cXyzRC13cBgS_PolyInfof
lbl_8015D774:
/* 8015D774  C0 3F 04 F8 */	lfs f1, 0x4f8(r31)
/* 8015D778  C0 5F 05 00 */	lfs f2, 0x500(r31)
/* 8015D77C  48 10 9E F9 */	bl cM_atan2s__Fff
/* 8015D780  B0 7F 04 DE */	sth r3, 0x4de(r31)
lbl_8015D784:
/* 8015D784  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015D788  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 8015D78C  41 82 00 94 */	beq lbl_8015D820
/* 8015D790  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 8015D794  D0 01 00 08 */	stfs f0, 8(r1)
/* 8015D798  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 8015D79C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8015D7A0  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 8015D7A4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8015D7A8  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 8015D7AC  C0 02 9B C4 */	lfs f0, lit_5050(r2)
/* 8015D7B0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015D7B4  40 81 00 1C */	ble lbl_8015D7D0
/* 8015D7B8  7F E3 FB 78 */	mr r3, r31
/* 8015D7BC  4B FF D8 FD */	bl getData__12daItemBase_cFv
/* 8015D7C0  C0 23 00 04 */	lfs f1, 4(r3)
/* 8015D7C4  38 61 00 08 */	addi r3, r1, 8
/* 8015D7C8  38 9F 07 64 */	addi r4, r31, 0x764
/* 8015D7CC  4B FF D6 01 */	bl Reflect__FP4cXyzRC13cBgS_PolyInfof
lbl_8015D7D0:
/* 8015D7D0  7F E3 FB 78 */	mr r3, r31
/* 8015D7D4  4B FF D8 E5 */	bl getData__12daItemBase_cFv
/* 8015D7D8  C0 23 00 04 */	lfs f1, 4(r3)
/* 8015D7DC  C0 1F 09 54 */	lfs f0, 0x954(r31)
/* 8015D7E0  FC 00 00 50 */	fneg f0, f0
/* 8015D7E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8015D7E8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8015D7EC  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 8015D7F0  C0 02 9B C8 */	lfs f0, lit_5051(r2)
/* 8015D7F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015D7F8  40 80 00 0C */	bge lbl_8015D804
/* 8015D7FC  C0 02 9B 50 */	lfs f0, lit_3857(r2)
/* 8015D800  D0 1F 05 2C */	stfs f0, 0x52c(r31)
lbl_8015D804:
/* 8015D804  88 7F 09 4B */	lbz r3, 0x94b(r31)
/* 8015D808  28 03 00 64 */	cmplwi r3, 0x64
/* 8015D80C  40 80 00 0C */	bge lbl_8015D818
/* 8015D810  38 03 00 01 */	addi r0, r3, 1
/* 8015D814  98 1F 09 4B */	stb r0, 0x94b(r31)
lbl_8015D818:
/* 8015D818  7F E3 FB 78 */	mr r3, r31
/* 8015D81C  48 00 00 19 */	bl set_bound_se__8daItem_cFv
lbl_8015D820:
/* 8015D820  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015D824  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015D828  7C 08 03 A6 */	mtlr r0
/* 8015D82C  38 21 00 20 */	addi r1, r1, 0x20
/* 8015D830  4E 80 00 20 */	blr 
