lbl_80CAF8A4:
/* 80CAF8A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAF8A8  7C 08 02 A6 */	mflr r0
/* 80CAF8AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAF8B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAF8B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CAF8B8  7C 7F 1B 78 */	mr r31, r3
/* 80CAF8BC  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CAF8C0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CAF8C4  40 82 00 B4 */	bne lbl_80CAF978
/* 80CAF8C8  7F E0 FB 79 */	or. r0, r31, r31
/* 80CAF8CC  41 82 00 A0 */	beq lbl_80CAF96C
/* 80CAF8D0  7C 1E 03 78 */	mr r30, r0
/* 80CAF8D4  4B 3C 8D 50 */	b __ct__16dBgS_MoveBgActorFv
/* 80CAF8D8  3C 60 80 CB */	lis r3, __vt__10daPillar_c@ha
/* 80CAF8DC  38 03 0B D8 */	addi r0, r3, __vt__10daPillar_c@l
/* 80CAF8E0  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80CAF8E4  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80CAF8E8  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80CAF8EC  90 1E 05 C4 */	stw r0, 0x5c4(r30)
/* 80CAF8F0  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80CAF8F4  4B 3D 3E 6C */	b __ct__10dCcD_GSttsFv
/* 80CAF8F8  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80CAF8FC  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80CAF900  90 7E 05 C4 */	stw r3, 0x5c4(r30)
/* 80CAF904  38 03 00 20 */	addi r0, r3, 0x20
/* 80CAF908  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 80CAF90C  3B DE 05 E8 */	addi r30, r30, 0x5e8
/* 80CAF910  7F C3 F3 78 */	mr r3, r30
/* 80CAF914  4B 3D 41 14 */	b __ct__12dCcD_GObjInfFv
/* 80CAF918  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80CAF91C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80CAF920  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CAF924  3C 60 80 CB */	lis r3, __vt__8cM3dGAab@ha
/* 80CAF928  38 03 0B CC */	addi r0, r3, __vt__8cM3dGAab@l
/* 80CAF92C  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80CAF930  3C 60 80 CB */	lis r3, __vt__8cM3dGCyl@ha
/* 80CAF934  38 03 0B C0 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80CAF938  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CAF93C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80CAF940  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80CAF944  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80CAF948  38 03 00 58 */	addi r0, r3, 0x58
/* 80CAF94C  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80CAF950  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80CAF954  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80CAF958  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80CAF95C  38 03 00 2C */	addi r0, r3, 0x2c
/* 80CAF960  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80CAF964  38 03 00 84 */	addi r0, r3, 0x84
/* 80CAF968  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80CAF96C:
/* 80CAF96C  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80CAF970  60 00 00 08 */	ori r0, r0, 8
/* 80CAF974  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80CAF978:
/* 80CAF978  88 1F 07 2D */	lbz r0, 0x72d(r31)
/* 80CAF97C  28 00 00 00 */	cmplwi r0, 0
/* 80CAF980  40 82 00 44 */	bne lbl_80CAF9C4
/* 80CAF984  38 00 00 01 */	li r0, 1
/* 80CAF988  98 1F 07 2D */	stb r0, 0x72d(r31)
/* 80CAF98C  A8 1F 04 B4 */	lha r0, 0x4b4(r31)
/* 80CAF990  B0 1F 07 3C */	sth r0, 0x73c(r31)
/* 80CAF994  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80CAF998  B0 1F 07 3E */	sth r0, 0x73e(r31)
/* 80CAF99C  A0 1F 07 3E */	lhz r0, 0x73e(r31)
/* 80CAF9A0  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80CAF9A4  98 1F 07 40 */	stb r0, 0x740(r31)
/* 80CAF9A8  38 00 00 00 */	li r0, 0
/* 80CAF9AC  B0 1F 04 B8 */	sth r0, 0x4b8(r31)
/* 80CAF9B0  B0 1F 04 B4 */	sth r0, 0x4b4(r31)
/* 80CAF9B4  B0 1F 04 E0 */	sth r0, 0x4e0(r31)
/* 80CAF9B8  B0 1F 04 DC */	sth r0, 0x4dc(r31)
/* 80CAF9BC  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80CAF9C0  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
lbl_80CAF9C4:
/* 80CAF9C4  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80CAF9C8  88 1F 07 40 */	lbz r0, 0x740(r31)
/* 80CAF9CC  54 00 10 3A */	slwi r0, r0, 2
/* 80CAF9D0  3C 80 80 CB */	lis r4, l_arcName@ha
/* 80CAF9D4  38 84 0B 08 */	addi r4, r4, l_arcName@l
/* 80CAF9D8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CAF9DC  4B 37 D4 E0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CAF9E0  7C 60 1B 78 */	mr r0, r3
/* 80CAF9E4  2C 00 00 04 */	cmpwi r0, 4
/* 80CAF9E8  40 82 00 54 */	bne lbl_80CAFA3C
/* 80CAF9EC  88 1F 07 40 */	lbz r0, 0x740(r31)
/* 80CAF9F0  54 00 10 3A */	slwi r0, r0, 2
/* 80CAF9F4  7F E3 FB 78 */	mr r3, r31
/* 80CAF9F8  3C 80 80 CB */	lis r4, l_arcName@ha
/* 80CAF9FC  38 84 0B 08 */	addi r4, r4, l_arcName@l
/* 80CAFA00  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CAFA04  3C A0 80 CB */	lis r5, l_dzb@ha
/* 80CAFA08  38 A5 09 DC */	addi r5, r5, l_dzb@l
/* 80CAFA0C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80CAFA10  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80CAFA14  38 C6 5A 24 */	addi r6, r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80CAFA18  3C E0 80 CB */	lis r7, l_heap_size@ha
/* 80CAFA1C  38 E7 09 EC */	addi r7, r7, l_heap_size@l
/* 80CAFA20  7C E7 00 2E */	lwzx r7, r7, r0
/* 80CAFA24  39 00 00 00 */	li r8, 0
/* 80CAFA28  4B 3C 8D 94 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CAFA2C  7C 60 1B 78 */	mr r0, r3
/* 80CAFA30  2C 00 00 05 */	cmpwi r0, 5
/* 80CAFA34  40 82 00 08 */	bne lbl_80CAFA3C
/* 80CAFA38  48 00 00 08 */	b lbl_80CAFA40
lbl_80CAFA3C:
/* 80CAFA3C  7C 03 03 78 */	mr r3, r0
lbl_80CAFA40:
/* 80CAFA40  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAFA44  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CAFA48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAFA4C  7C 08 03 A6 */	mtlr r0
/* 80CAFA50  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAFA54  4E 80 00 20 */	blr 
