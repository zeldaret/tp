lbl_800FC77C:
/* 800FC77C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800FC780  7C 08 02 A6 */	mflr r0
/* 800FC784  90 01 00 14 */	stw r0, 0x14(r1)
/* 800FC788  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800FC78C  93 C1 00 08 */	stw r30, 8(r1)
/* 800FC790  7C 7E 1B 78 */	mr r30, r3
/* 800FC794  7C 9F 23 78 */	mr r31, r4
/* 800FC798  38 80 00 DC */	li r4, 0xdc
/* 800FC79C  4B FC 57 D1 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800FC7A0  A8 1F 00 08 */	lha r0, 8(r31)
/* 800FC7A4  2C 00 00 F7 */	cmpwi r0, 0xf7
/* 800FC7A8  40 82 00 24 */	bne lbl_800FC7CC
/* 800FC7AC  38 00 00 01 */	li r0, 1
/* 800FC7B0  90 1E 32 CC */	stw r0, 0x32cc(r30)
/* 800FC7B4  7F C3 F3 78 */	mr r3, r30
/* 800FC7B8  38 80 01 72 */	li r4, 0x172
/* 800FC7BC  4B FB 07 C5 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
/* 800FC7C0  7F C3 F3 78 */	mr r3, r30
/* 800FC7C4  4B FB 81 0D */	bl setJumpMode__9daAlink_cFv
/* 800FC7C8  48 00 00 18 */	b lbl_800FC7E0
lbl_800FC7CC:
/* 800FC7CC  38 00 00 00 */	li r0, 0
/* 800FC7D0  90 1E 32 CC */	stw r0, 0x32cc(r30)
/* 800FC7D4  7F C3 F3 78 */	mr r3, r30
/* 800FC7D8  38 80 01 69 */	li r4, 0x169
/* 800FC7DC  4B FB 07 A5 */	bl setSingleAnimeBase__9daAlink_cFQ29daAlink_c11daAlink_ANM
lbl_800FC7E0:
/* 800FC7E0  38 00 01 69 */	li r0, 0x169
/* 800FC7E4  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800FC7E8  7F C3 F3 78 */	mr r3, r30
/* 800FC7EC  38 80 00 01 */	li r4, 1
/* 800FC7F0  38 A0 00 00 */	li r5, 0
/* 800FC7F4  4B FC 4A E9 */	bl deleteEquipItem__9daAlink_cFii
/* 800FC7F8  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800FC7FC  D0 3E 33 98 */	stfs f1, 0x3398(r30)
/* 800FC800  7F C3 F3 78 */	mr r3, r30
/* 800FC804  C0 5E 05 34 */	lfs f2, 0x534(r30)
/* 800FC808  38 80 00 00 */	li r4, 0
/* 800FC80C  4B FB EF 65 */	bl setSpecialGravity__9daAlink_cFffi
/* 800FC810  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800FC814  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 800FC818  38 00 00 00 */	li r0, 0
/* 800FC81C  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800FC820  B0 1E 30 0E */	sth r0, 0x300e(r30)
/* 800FC824  B0 1E 30 10 */	sth r0, 0x3010(r30)
/* 800FC828  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800FC82C  B0 1E 30 12 */	sth r0, 0x3012(r30)
/* 800FC830  B0 1E 30 80 */	sth r0, 0x3080(r30)
/* 800FC834  38 7E 28 0C */	addi r3, r30, 0x280c
/* 800FC838  7F E4 FB 78 */	mr r4, r31
/* 800FC83C  48 06 24 7D */	bl setData__16daPy_actorKeep_cFP10fopAc_ac_c
/* 800FC840  7F C3 F3 78 */	mr r3, r30
/* 800FC844  4B FF FF 05 */	bl setBossBodyHangPos__9daAlink_cFv
/* 800FC848  80 1E 05 8C */	lwz r0, 0x58c(r30)
/* 800FC84C  64 00 80 00 */	oris r0, r0, 0x8000
/* 800FC850  90 1E 05 8C */	stw r0, 0x58c(r30)
/* 800FC854  38 60 00 01 */	li r3, 1
/* 800FC858  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800FC85C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800FC860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800FC864  7C 08 03 A6 */	mtlr r0
/* 800FC868  38 21 00 10 */	addi r1, r1, 0x10
/* 800FC86C  4E 80 00 20 */	blr 
