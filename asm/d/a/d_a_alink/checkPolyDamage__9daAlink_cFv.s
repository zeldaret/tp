lbl_800D7820:
/* 800D7820  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D7824  7C 08 02 A6 */	mflr r0
/* 800D7828  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D782C  39 61 00 30 */	addi r11, r1, 0x30
/* 800D7830  48 28 A9 A9 */	bl _savegpr_28
/* 800D7834  7C 7F 1B 78 */	mr r31, r3
/* 800D7838  4B F5 81 CD */	bl dComIfGs_PolyDamageOff_Check__Fv
/* 800D783C  7C 60 07 75 */	extsb. r0, r3
/* 800D7840  41 82 00 0C */	beq lbl_800D784C
/* 800D7844  38 60 00 00 */	li r3, 0
/* 800D7848  48 00 02 38 */	b lbl_800D7A80
lbl_800D784C:
/* 800D784C  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800D7850  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 800D7854  41 82 00 0C */	beq lbl_800D7860
/* 800D7858  38 60 00 04 */	li r3, 4
/* 800D785C  48 00 02 24 */	b lbl_800D7A80
lbl_800D7860:
/* 800D7860  7F E3 FB 78 */	mr r3, r31
/* 800D7864  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D7868  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800D786C  7D 89 03 A6 */	mtctr r12
/* 800D7870  4E 80 04 21 */	bctrl 
/* 800D7874  28 03 00 00 */	cmplwi r3, 0
/* 800D7878  40 82 00 94 */	bne lbl_800D790C
/* 800D787C  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800D7880  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800D7884  41 82 00 88 */	beq lbl_800D790C
/* 800D7888  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D788C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D7890  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 800D7894  7F C3 F3 78 */	mr r3, r30
/* 800D7898  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800D789C  4B F9 CD C5 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800D78A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D78A4  41 82 00 68 */	beq lbl_800D790C
/* 800D78A8  38 7F 1A 60 */	addi r3, r31, 0x1a60
/* 800D78AC  48 0D 3C F1 */	bl dKy_pol_argument_get__FPC13cBgS_PolyInfo
/* 800D78B0  54 60 06 75 */	rlwinm. r0, r3, 0, 0x19, 0x1a
/* 800D78B4  41 82 00 58 */	beq lbl_800D790C
/* 800D78B8  3B A0 00 01 */	li r29, 1
/* 800D78BC  38 7F 1A 60 */	addi r3, r31, 0x1a60
/* 800D78C0  4B FF FE A9 */	bl checkIcePolygonDamage__9daAlink_cFP13cBgS_PolyInfo
/* 800D78C4  2C 03 00 00 */	cmpwi r3, 0
/* 800D78C8  41 82 00 08 */	beq lbl_800D78D0
/* 800D78CC  63 BD 00 80 */	ori r29, r29, 0x80
lbl_800D78D0:
/* 800D78D0  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800D78D4  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800D78D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 800D78DC  7F C3 F3 78 */	mr r3, r30
/* 800D78E0  38 9F 1A 60 */	addi r4, r31, 0x1a60
/* 800D78E4  38 A1 00 08 */	addi r5, r1, 8
/* 800D78E8  4B F9 CE 5D */	bl GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 800D78EC  38 61 00 08 */	addi r3, r1, 8
/* 800D78F0  48 18 F8 39 */	bl atan2sX_Z__4cXyzCFv
/* 800D78F4  B0 7F 31 1E */	sth r3, 0x311e(r31)
/* 800D78F8  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 800D78FC  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 800D7900  90 01 00 18 */	stw r0, 0x18(r1)
/* 800D7904  7F A3 EB 78 */	mr r3, r29
/* 800D7908  48 00 01 78 */	b lbl_800D7A80
lbl_800D790C:
/* 800D790C  7F E3 FB 78 */	mr r3, r31
/* 800D7910  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800D7914  81 8C 01 94 */	lwz r12, 0x194(r12)
/* 800D7918  7D 89 03 A6 */	mtctr r12
/* 800D791C  4E 80 04 21 */	bctrl 
/* 800D7920  28 03 00 00 */	cmplwi r3, 0
/* 800D7924  40 82 00 BC */	bne lbl_800D79E0
/* 800D7928  7F E3 FB 78 */	mr r3, r31
/* 800D792C  4B FD 9B 5D */	bl checkWaterPolygonUnder__9daAlink_cFv
/* 800D7930  2C 03 00 00 */	cmpwi r3, 0
/* 800D7934  41 82 00 3C */	beq lbl_800D7970
/* 800D7938  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D793C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D7940  38 63 0F 38 */	addi r3, r3, 0xf38
/* 800D7944  38 9F 1A F0 */	addi r4, r31, 0x1af0
/* 800D7948  4B F9 CD 19 */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800D794C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D7950  41 82 00 20 */	beq lbl_800D7970
/* 800D7954  38 7F 1A F0 */	addi r3, r31, 0x1af0
/* 800D7958  48 0D 3C 45 */	bl dKy_pol_argument_get__FPC13cBgS_PolyInfo
/* 800D795C  54 60 06 75 */	rlwinm. r0, r3, 0, 0x19, 0x1a
/* 800D7960  40 82 00 78 */	bne lbl_800D79D8
/* 800D7964  88 1F 2F BC */	lbz r0, 0x2fbc(r31)
/* 800D7968  28 00 00 06 */	cmplwi r0, 6
/* 800D796C  41 82 00 6C */	beq lbl_800D79D8
lbl_800D7970:
/* 800D7970  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800D7974  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D7978  41 82 00 68 */	beq lbl_800D79E0
/* 800D797C  C0 1F 33 BC */	lfs f0, 0x33bc(r31)
/* 800D7980  C0 5F 33 B8 */	lfs f2, 0x33b8(r31)
/* 800D7984  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 800D7988  40 80 00 58 */	bge lbl_800D79E0
/* 800D798C  C0 02 93 A4 */	lfs f0, lit_9138(r2)
/* 800D7990  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 800D7994  41 82 00 4C */	beq lbl_800D79E0
/* 800D7998  88 1F 2F C6 */	lbz r0, 0x2fc6(r31)
/* 800D799C  54 00 06 75 */	rlwinm. r0, r0, 0, 0x19, 0x1a
/* 800D79A0  40 82 00 10 */	bne lbl_800D79B0
/* 800D79A4  88 1F 2F C5 */	lbz r0, 0x2fc5(r31)
/* 800D79A8  28 00 00 06 */	cmplwi r0, 6
/* 800D79AC  40 82 00 34 */	bne lbl_800D79E0
lbl_800D79B0:
/* 800D79B0  88 1F 2F C5 */	lbz r0, 0x2fc5(r31)
/* 800D79B4  28 00 00 06 */	cmplwi r0, 6
/* 800D79B8  40 82 00 20 */	bne lbl_800D79D8
/* 800D79BC  C0 3F 33 D8 */	lfs f1, 0x33d8(r31)
/* 800D79C0  3C 60 80 39 */	lis r3, m__19daAlinkHIO_basic_c0@ha /* 0x8038D664@ha */
/* 800D79C4  38 63 D6 64 */	addi r3, r3, m__19daAlinkHIO_basic_c0@l /* 0x8038D664@l */
/* 800D79C8  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800D79CC  EC 01 00 2A */	fadds f0, f1, f0
/* 800D79D0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 800D79D4  41 81 00 0C */	bgt lbl_800D79E0
lbl_800D79D8:
/* 800D79D8  38 60 00 02 */	li r3, 2
/* 800D79DC  48 00 00 A4 */	b lbl_800D7A80
lbl_800D79E0:
/* 800D79E0  80 1F 19 9C */	lwz r0, 0x199c(r31)
/* 800D79E4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800D79E8  41 82 00 94 */	beq lbl_800D7A7C
/* 800D79EC  3B BF 18 B0 */	addi r29, r31, 0x18b0
/* 800D79F0  3B 80 00 00 */	li r28, 0
/* 800D79F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800D79F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800D79FC  3B C3 0F 38 */	addi r30, r3, 0xf38
lbl_800D7A00:
/* 800D7A00  80 1D 00 10 */	lwz r0, 0x10(r29)
/* 800D7A04  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800D7A08  41 82 00 64 */	beq lbl_800D7A6C
/* 800D7A0C  7F C3 F3 78 */	mr r3, r30
/* 800D7A10  7F A4 EB 78 */	mr r4, r29
/* 800D7A14  4B F9 CC 4D */	bl ChkPolySafe__4cBgSFRC13cBgS_PolyInfo
/* 800D7A18  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D7A1C  41 82 00 50 */	beq lbl_800D7A6C
/* 800D7A20  7F A3 EB 78 */	mr r3, r29
/* 800D7A24  48 0D 3B 79 */	bl dKy_pol_argument_get__FPC13cBgS_PolyInfo
/* 800D7A28  54 60 06 75 */	rlwinm. r0, r3, 0, 0x19, 0x1a
/* 800D7A2C  41 82 00 40 */	beq lbl_800D7A6C
/* 800D7A30  3B C0 00 03 */	li r30, 3
/* 800D7A34  A8 1D 00 3C */	lha r0, 0x3c(r29)
/* 800D7A38  B0 1F 31 1E */	sth r0, 0x311e(r31)
/* 800D7A3C  7F A3 EB 78 */	mr r3, r29
/* 800D7A40  4B FF FD 29 */	bl checkIcePolygonDamage__9daAlink_cFP13cBgS_PolyInfo
/* 800D7A44  2C 03 00 00 */	cmpwi r3, 0
/* 800D7A48  41 82 00 08 */	beq lbl_800D7A50
/* 800D7A4C  63 DE 00 80 */	ori r30, r30, 0x80
lbl_800D7A50:
/* 800D7A50  7F A3 EB 78 */	mr r3, r29
/* 800D7A54  48 0D 3B 49 */	bl dKy_pol_argument_get__FPC13cBgS_PolyInfo
/* 800D7A58  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 800D7A5C  41 82 00 08 */	beq lbl_800D7A64
/* 800D7A60  63 DE 00 40 */	ori r30, r30, 0x40
lbl_800D7A64:
/* 800D7A64  7F C3 F3 78 */	mr r3, r30
/* 800D7A68  48 00 00 18 */	b lbl_800D7A80
lbl_800D7A6C:
/* 800D7A6C  3B 9C 00 01 */	addi r28, r28, 1
/* 800D7A70  2C 1C 00 03 */	cmpwi r28, 3
/* 800D7A74  3B BD 00 40 */	addi r29, r29, 0x40
/* 800D7A78  41 80 FF 88 */	blt lbl_800D7A00
lbl_800D7A7C:
/* 800D7A7C  88 7F 2F CA */	lbz r3, 0x2fca(r31)
lbl_800D7A80:
/* 800D7A80  39 61 00 30 */	addi r11, r1, 0x30
/* 800D7A84  48 28 A7 A1 */	bl _restgpr_28
/* 800D7A88  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800D7A8C  7C 08 03 A6 */	mtlr r0
/* 800D7A90  38 21 00 30 */	addi r1, r1, 0x30
/* 800D7A94  4E 80 00 20 */	blr 
